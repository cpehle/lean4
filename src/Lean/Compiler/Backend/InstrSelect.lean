/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/
module

prelude
public import Lean.Compiler.Backend.ARM64
public import Lean.Compiler.Backend.RegisterAlloc
public import Lean.Compiler.ExportAttr
public import Lean.Compiler.IR.SSA
public import Lean.Compiler.IR.Basic
public import Lean.Compiler.IR.CompilerM
public import Lean.Compiler.IR.EmitUtil
public import Lean.Compiler.IR.Boxing
public import Lean.Compiler.NameMangling
public import Lean.Runtime
public import Std.Data.TreeMap

public section

namespace Lean.Compiler.Backend
namespace InstrSelect

open Lean.Compiler.Backend.ARM64
open Lean.Compiler.Backend.RegisterAlloc
open Lean.IR

/-- Prefer caller-saved temporaries for scratch work while lowering ref-count ops.
    IMPORTANT: Only use caller-saved registers (x9-x15) to avoid clobbering allocated values
    in callee-saved registers (x19-x28). -/
def scratchCandidates : List PhysReg :=
  [PhysReg.x9, PhysReg.x10, PhysReg.x11, PhysReg.x12, PhysReg.x13, PhysReg.x14, PhysReg.x15]

/-- Convert IRType to FloatPrec -/
def typeToFloatPrec (ty : IRType) : FloatPrec :=
  match ty with
  | .float32 => FloatPrec.single
  | .float => FloatPrec.double
  | _ => FloatPrec.double  -- Default to double for safety

/-- Check if a physical register is a floating-point register -/
def isPhysFPReg (r : PhysReg) : Bool :=
  match r with
  | .v0 | .v1 | .v2 | .v3 | .v4 | .v5 | .v6 | .v7
  | .v8 | .v9 | .v10 | .v11 | .v12 | .v13 | .v14 | .v15
  | .v16 | .v17 | .v18 | .v19 | .v20 | .v21 | .v22 | .v23
  | .v24 | .v25 | .v26 | .v27 | .v28 | .v29 | .v30 | .v31 => true
  | _ => false

/-- Check if a register (physical or virtual) might be an FP register -/
def isFPReg (r : Reg) (allocState : AllocState) : Bool :=
  match r with
  | .phys p => isPhysFPReg p
  | .virt v =>
    match allocState.allocation.get? v.idx with
    | some p => isPhysFPReg p
    | none => false  -- Spilled or not yet allocated

/-- Test membership using only the `BEq` instance. -/
def physMem (l : List PhysReg) (r : PhysReg) : Bool :=
  match l with
  | [] => false
  | h :: t => if h == r then true else physMem t r

/-- Remove the "_boxed" suffix from a function name. -/
def stripBoxedSuffix (n : Name) : Name :=
  match n with
  | Name.str pre s => if s == "_boxed" then pre else n
  | _ => n

/-- Greedily pick `count` scratch registers avoiding the supplied set. -/
def pickScratchRegs (avoid : List PhysReg) (count : Nat) : Option (List PhysReg) :=
  let rec loop : List PhysReg → List PhysReg → Nat → List PhysReg → Option (List PhysReg)
    | _, used, 0, acc => some acc.reverse
    | [], _, _, _ => none
    | cand :: rest, used, Nat.succ need, acc =>
        if physMem used cand then
          loop rest used (Nat.succ need) acc
        else
          loop rest (cand :: used) need (cand :: acc)
  loop scratchCandidates avoid count []

/-- Instruction selection state -/
structure SelectState where
  /-- Generated instructions -/
  instrs : Array Instr
  /-- Register allocation state -/
  allocState : AllocState
  /-- Size in bytes reserved on the stack for spills (aligned to 16) -/
  stackSpillBytes : Nat
  /-- Label counter for basic blocks -/
  nextLabel : Nat
  /-- Mapping from join point IDs to labels -/
  jpLabels : Std.TreeMap Index String (fun a b => compare a b)
  /-- Mapping from join point IDs to their parameter variables (for phi resolution) -/
  jpParams : Std.TreeMap Index (Array VarId) (fun a b => compare a b)
  /-- Environment for looking up declarations -/
  env : Environment
  /-- Function name for unique label generation -/
  fnName : Name
  /-- Cached string literals needed by this function -/
  stringLitOrder : Array StringLiteral
  /-- Counter for generating unique string literal labels -/
  nextStringId : Nat
  /-- Mapping from virtual registers to their IR types. -/
  varTypes : Std.TreeMap Index IRType (fun a b => compare a b)
  /-- Function parameters (for accessing stack parameters) -/
  params : Array Param
  /-- Function return type (for correct register selection in returns) -/
  returnType : IRType

abbrev SelectM := StateM SelectState

/-- Emit an instruction -/
def emit (instr : Instr) : SelectM Unit :=
  modify fun s => { s with instrs := s.instrs.push instr }

/-- Emit multiple instructions -/
def emitAll (instrs : Array Instr) : SelectM Unit :=
  modify fun s => { s with instrs := s.instrs ++ instrs }

/-- Emit a move instruction, automatically using fmov when needed -/
def emitMove (dst : Reg) (src : Operand) : SelectM Unit := do
  let allocState := (← get).allocState
  match src with
  | .reg srcReg =>
    -- Check if we're moving between different register classes
    -- For physical registers, check directly; for virtual registers, check allocation
    let dstIsFP := match dst with
      | .phys p => isPhysFPReg p
      | .virt v => match allocState.allocation.get? v.idx with
        | some p => isPhysFPReg p
        | none => false
    let srcIsFP := match srcReg with
      | .phys p => isPhysFPReg p
      | .virt v => match allocState.allocation.get? v.idx with
        | some p => isPhysFPReg p
        | none => false
    if dstIsFP && srcIsFP then
      -- Both are FP registers - use fmov for scalar FP moves
      emit (Instr.fmov FloatPrec.double dst srcReg)
    else if dstIsFP != srcIsFP then
      -- Moving between GP and FP registers - use fmov with double precision
      emit (Instr.fmov FloatPrec.double dst srcReg)
    else
      -- Both are GP registers - use regular mov
      emit (Instr.mov dst src)
  | _ =>
    -- Immediate or memory operand - use regular mov
    emit (Instr.mov dst src)

/-- Generate a fresh label unique to this function -/
def freshLabel (pfx : String := "L") : SelectM String := do
  let n := (← get).nextLabel
  let fnName := (← get).fnName
  modify fun s => { s with nextLabel := n + 1 }
  -- Local labels must start with .L for assembler
  -- Include function name hash to ensure uniqueness across functions
  let fnHash := fnName.hash
  return s!".L{pfx}{n}_fn{fnHash}"

/-- Get or create a label for a join point -/
def getJPLabel (j : JoinPointId) : SelectM String := do
  let s ← get
  match s.jpLabels.get? j.idx with
  | some lbl => return lbl
  | none =>
    let lbl ← freshLabel "JP"
    modify fun s => { s with jpLabels := s.jpLabels.insert j.idx lbl }
    return lbl

/-- Sanitize a string for use as an assembly label by replacing problematic characters -/
def sanitizeForLabel (s : String) : String :=
  -- Replace special characters that cause assembly syntax errors
  -- Keep only alphanumerics, underscores, and dots
  let chars := s.toList
  let sanitized := chars.map fun c =>
    if c.isAlphanum || c == '_' || c == '.' then c else '_'
  String.mk sanitized

/-- Get the external C name for an extern function -/
def getExternCName (extData : ExternAttrData) : Option String :=
  match extData.entries.findSome? fun entry =>
    match entry with
    | .standard `c name => some name
    | .standard `all name => some name  -- `all` backend works for ARM64 too
    | .inline `c _ => none  -- inline patterns not supported yet
    | .inline `all _ => none  -- inline patterns not supported yet
    | _ => none
  with
  | some name => some ("_" ++ name)  -- Add macOS underscore prefix
  | none => none

/-- Resolve a declaration's exported C symbol if it has a simple `@[export]` name. -/
def getExportSymbol? (env : Environment) (name : Name) : Option String :=
  match getExportNameFor? env name with
  | some (.str .anonymous s) => some s
  | _ => none

/-- Get the mangled function name for a call, accounting for `extern` and `@[export]` names. -/
def getFunctionName (f : FunId) : SelectM String := do
  let env := (← get).env
  let default := "_" ++ f.mangle
  match findEnvDecl env f with
  | some (Decl.extern _ _ _ extData) =>
    match getExternCName extData with
    | some extName => return extName
    | none =>
      match getExportSymbol? env f with
      | some exportName => return "_" ++ exportName
      | none => return default
  | some _ =>
      match getExportSymbol? env f with
      | some exportName => return "_" ++ exportName
      | none => return default
  | none =>
    return default

/-- Retrieve the arity (number of parameters) for the given function id. -/
def getFunctionArity (f : FunId) : SelectM Nat := do
  let env := (← get).env
  match findEnvDecl env f with
  | some (Decl.fdecl _ params ..) => return params.size
  | some (Decl.extern _ params ..) => return params.size
  | none => return 0

/-- Check if a VarId is a function parameter and return its index if so -/
def getParameterIndex? (v : VarId) : SelectM (Option Nat) := do
  let s ← get
  for h : i in [:s.params.size] do
    if s.params[i].x == v then
      return some i
  return none

/-- Get stack slot offset in bytes for a spilled variable -/
def getStackOffset (slot : Nat) : Int :=
  -- Spilled variables are stored in the stack area reserved after the prologue adjustments
  Int.ofNat (slot * 8)

/-- Load a spilled variable from stack into a temporary register -/
def loadSpilledVar (v : VarId) (slot : Nat) : SelectM Reg := do
  let tmpReg := Reg.phys PhysReg.x8
  let offset := getStackOffset slot
  emit (Instr.comment s!"load spilled vreg{v.idx} from stack slot {slot}")
  -- Check variable type to use correct load instruction
  let st ← get
  match st.varTypes.get? v.idx with
  | some IRType.uint8 =>
    emit (Instr.ldrb tmpReg (.mem (.phys PhysReg.sp) offset))
  | _ =>
    emit (Instr.ldr tmpReg (.mem (.phys PhysReg.sp) offset))
  return tmpReg

/-- Store a register value to a spilled variable's stack slot -/
def storeToStackSlot (reg : Reg) (slot : Nat) (ty : IRType) : SelectM Unit := do
  let offset := getStackOffset slot
  emit (Instr.comment s!"store to stack slot {slot}")
  -- Use correct store instruction based on type
  match ty with
  | IRType.uint8 =>
    emit (Instr.strb reg (.mem (.phys PhysReg.sp) offset))
  | _ =>
    emit (Instr.str reg (.mem (.phys PhysReg.sp) offset))

/-- Get or create a string literal record for the current function. -/
def getStringLiteral (value : String) : SelectM StringLiteral := do
  let st ← get
  let existing := st.stringLitOrder.findSome? fun lit =>
    if lit.value == value then some lit else none
  match existing with
  | some lit => return lit
  | none =>
    let id := st.nextStringId
    let fnHash := st.fnName.hash
    let ptrLabel := s!".Lstrptr_{fnHash}_{id}"
    let dataLabel := s!".Lstr_{fnHash}_{id}"
    let lit : StringLiteral := { ptrLabel := ptrLabel, dataLabel := dataLabel, value := value }
    modify fun s =>
      { s with
          stringLitOrder := s.stringLitOrder.push lit
          nextStringId := s.nextStringId + 1 }
    return lit

/-- Convert a virtual register to a register operand -/
def varToReg (v : VarId) : SelectM Reg := do
  let s ← get
  -- First check if allocated to physical register
  match s.allocState.allocation.get? v.idx with
  | some phys => return .phys phys
  | none =>
    -- Check if spilled to stack
    match s.allocState.stackSlots.get? v.idx with
    | some slot =>
      -- Load from stack into temporary register
      loadSpilledVar v slot
    | none =>
      -- Check if this is a stack parameter (param index ≥ 10)
      match s.params.findIdx? (fun p => p.x == v) with
      | some idx =>
        if idx >= 10 then
          -- This is a stack parameter at [x29, #offset]
          -- Load it into a temporary register on demand
          let extra := idx - 8
          let stackOffset := Int.ofNat (16 + extra * 8)
          emit (Instr.comment s!"load stack param {idx} from [x29, #{stackOffset}]")
          -- Use x9 (a caller-saved scratch register) for stack parameter loads
          let tmp := Reg.phys PhysReg.x9
          emit (Instr.ldr tmp (.mem (.phys PhysReg.x29) stackOffset))
          return tmp
        else
          -- Parameter should have been allocated to a register
          emit (Instr.comment s!"ERROR: param {idx} (vreg{v.idx}) not allocated!")
          return .virt v
      | none =>
        -- Not a parameter, this shouldn't happen
        emit (Instr.comment s!"ERROR: vreg{v.idx} not allocated or spilled!")
        return .virt v

/-- Look up the IR type associated with a variable if available. -/
def getVarType? (v : VarId) : SelectM (Option IRType) := do
  return (← get).varTypes.get? v.idx

/-- Convert an IR argument to an ARM64 operand -/
def argToOperand (arg : Arg) : SelectM Operand := do
  match arg with
  | .var v => .reg <$> varToReg v
  | .erased => return .imm 0

/-- Convert an argument to a register, treating erased arguments as zero. -/
def argToRegOrZero (arg : Arg) : SelectM Reg := do
  match arg with
  | .var v => varToReg v
  | .erased => return Reg.phys PhysReg.xzr

/-- Load a 64-bit immediate into a register using movz/movk sequence -/
def loadImm64 (dst : Reg) (value : Nat) : SelectM Unit := do
  let w0 := value &&& 0xFFFF
  let w1 := (value >>> 16) &&& 0xFFFF
  let w2 := (value >>> 32) &&& 0xFFFF
  let w3 := (value >>> 48) &&& 0xFFFF

  emit (Instr.movz dst w0 0)
  if w1 != 0 then emit (Instr.movk dst w1 16)
  if w2 != 0 then emit (Instr.movk dst w2 32)
  if w3 != 0 then emit (Instr.movk dst w3 48)

/-- Get argument register for calling convention (general-purpose) -/
def getArgReg (i : Nat) : PhysReg :=
  match i with
  | 0 => PhysReg.x0 | 1 => PhysReg.x1 | 2 => PhysReg.x2 | 3 => PhysReg.x3
  | 4 => PhysReg.x4 | 5 => PhysReg.x5 | 6 => PhysReg.x6 | 7 => PhysReg.x7
  | _ => PhysReg.x8  -- Fallback

/-- Get FP argument register for floating-point calling convention -/
def getFPArgReg (i : Nat) : PhysReg :=
  match i with
  | 0 => PhysReg.v0 | 1 => PhysReg.v1 | 2 => PhysReg.v2 | 3 => PhysReg.v3
  | 4 => PhysReg.v4 | 5 => PhysReg.v5 | 6 => PhysReg.v6 | 7 => PhysReg.v7
  | _ => PhysReg.v16  -- Fallback

/-- Store result to spilled variable if needed -/
def storeSpilledDst (v : VarId) (srcReg : Reg) : SelectM Unit := do
  let s ← get
  -- Check if destination is spilled
  match s.allocState.stackSlots.get? v.idx with
  | some slot =>
    emit (Instr.comment s!"store result to spilled vreg{v.idx}")
    let ty := s.varTypes.get? v.idx |>.getD IRType.object
    storeToStackSlot srcReg slot ty
  | none => pure ()  -- Not spilled, already in register

/-- Inline selected Lean runtime helper calls that are provided only as C header inlines.
    Returns true if the call was fully handled. -/
def tryInlineExternCall (fnName : String) (args : Array Arg) (dstReg : Reg) : SelectM Bool := do
  match fnName with
  | "_lean_box" =>
    if args.size == 1 then
      match args[0]! with
      | .var v =>
        let vReg ← varToReg v
        emit (Instr.comment "call lean_box_export")
        emitMove (.phys PhysReg.x0) (.reg vReg)
        emit (Instr.bl "lean_box_export")
        if dstReg != .phys PhysReg.x0 then
          emitMove dstReg (.reg (.phys PhysReg.x0))
      | .erased =>
        emit (Instr.comment "lean_box(erased)")
        emit (Instr.mov dstReg (.imm 1))
      return true
    else
      return false

  | "_lean_unbox" =>
    if args.size == 1 then
      match args[0]! with
      | .var v =>
        let vReg ← varToReg v
        emit (Instr.comment "call lean_unbox_export")
        emitMove (.phys PhysReg.x0) (.reg vReg)
        emit (Instr.bl "lean_unbox_export")
        if dstReg != .phys PhysReg.x0 then
          emitMove dstReg (.reg (.phys PhysReg.x0))
      | .erased =>
        emit (Instr.comment "lean_unbox(erased)")
        emit (Instr.mov dstReg (.imm 0))
      return true
    else
      return false

  | "_lean_unbox_uint32" =>
    if args.size == 1 then
      match args[0]! with
      | .var v =>
        let vReg ← varToReg v
        emit (Instr.comment "inline lean_unbox_uint32")
        emit (Instr.lsr dstReg vReg (.imm 1))
      | .erased =>
        emit (Instr.comment "inline lean_unbox_uint32(erased)")
        emit (Instr.mov dstReg (.imm 0))
      return true
    else
      return false

  | "_lean_is_scalar" =>
    if args.size == 1 then
      match args[0]! with
      | .var v =>
        let vReg ← varToReg v
        emit (Instr.comment "inline lean_is_scalar")
        emit (Instr.and dstReg vReg (.imm 1))
      | .erased =>
        emit (Instr.comment "inline lean_is_scalar(erased)")
        emit (Instr.mov dstReg (.imm 0))
      return true
    else
      return false

  | "_lean_io_mk_world" =>
    if args.isEmpty then
      emit (Instr.comment "inline lean_io_mk_world")
      emit (Instr.mov dstReg (.imm 1))
      return true
    else
      return false

  | "_lean_io_result_is_ok" =>
    if args.size == 1 then
      match args[0]! with
      | .var v =>
        let vReg ← varToReg v
        emit (Instr.comment "inline lean_io_result_is_ok")
        emit (Instr.ldrb dstReg (.mem vReg 7))
        emit (Instr.cmp dstReg (.imm 0))
        emit (Instr.mov dstReg (.imm 1))
        emit (Instr.csel dstReg dstReg (.phys PhysReg.xzr) Cond.eq)
      | .erased =>
        emit (Instr.comment "inline lean_io_result_is_ok(erased)")
        emit (Instr.mov dstReg (.imm 0))
      return true
    else
      return false

  -- Don't inline lean_io_result_get_value - let it call the runtime function
  -- The runtime handles both scalar and object IO.Result correctly

  -- Don't inline lean_io_result_mk_ok - let it call the runtime function
  -- The C runtime has the correct implementation for both scalar and object results

  | "_lean_mk_empty_array_with_capacity" =>
    if args.size == 2 then
      emit (Instr.comment "inline lean_mk_empty_array_with_capacity")
      match args[1]! with
      | .var v =>
        let capReg ← varToReg v
        let ty? ← getVarType? v
        let treatAsScalar :=
          match ty? with
          | some ty => ty.isScalar
          | none => false
        if treatAsScalar then
          -- Convert small scalar to Nat via lean_unsigned_to_nat.
          match capReg with
          | .phys r =>
            if r != PhysReg.x0 then
              emit (Instr.mov (.phys PhysReg.x0) (.reg capReg))
          | _ =>
            emit (Instr.mov (.phys PhysReg.x0) (.reg capReg))
          emit (Instr.bl "_lean_unsigned_to_nat")
        else
          match capReg with
          | .phys r =>
            if r != PhysReg.x0 then
              emit (Instr.mov (.phys PhysReg.x0) (.reg capReg))
          | _ =>
            emit (Instr.mov (.phys PhysReg.x0) (.reg capReg))
        emit (Instr.bl "_lean_mk_empty_array_with_capacity")
      | .erased =>
        emit (Instr.mov (.phys PhysReg.x0) (.imm 0))
        emit (Instr.bl "_lean_unsigned_to_nat")
        emit (Instr.bl "_lean_mk_empty_array_with_capacity")
      if dstReg != .phys PhysReg.x0 then
        emitMove dstReg (.reg (.phys PhysReg.x0))
      return true
    else
      return false

  | "_lean_uint64_add" =>
    if args.size == 2 then
      let lhsReg ←
        match args[0]! with
        | .var v => varToReg v
        | .erased => pure (Reg.phys PhysReg.xzr)
      -- If lhs was loaded into x8 (spilled), save it to x10 before loading rhs
      -- which might also use x8
      let safeLhsReg ← do
        if lhsReg == .phys PhysReg.x8 then
          emit (Instr.mov (.phys PhysReg.x10) (.reg lhsReg))
          pure (.phys PhysReg.x10)
        else
          pure lhsReg
      let rhsOp ←
        match args[1]! with
        | .var v => do
          let r ← varToReg v
          pure (Operand.reg r)
        | .erased => pure (Operand.reg (Reg.phys PhysReg.xzr))
      emit (Instr.comment "inline lean_uint64_add")
      emit (Instr.add dstReg safeLhsReg rhsOp)
      return true
    else
      return false

  | "_lean_uint64_sub" =>
    if args.size == 2 then
      let lhsReg ←
        match args[0]! with
        | .var v => varToReg v
        | .erased => pure (Reg.phys PhysReg.xzr)
      -- Save lhs if it's in x8 to avoid clobbering when loading rhs
      let safeLhsReg ← do
        if lhsReg == .phys PhysReg.x8 then
          emit (Instr.mov (.phys PhysReg.x10) (.reg lhsReg))
          pure (.phys PhysReg.x10)
        else
          pure lhsReg
      let rhsOp ←
        match args[1]! with
        | .var v => do
          let r ← varToReg v
          pure (Operand.reg r)
        | .erased => pure (Operand.reg (Reg.phys PhysReg.xzr))
      emit (Instr.comment "inline lean_uint64_sub")
      emit (Instr.sub dstReg safeLhsReg rhsOp)
      return true
    else
      return false

  | "_lean_uint64_mul" =>
    if args.size == 2 then
      let lhsReg ←
        match args[0]! with
        | .var v => varToReg v
        | .erased => pure (Reg.phys PhysReg.xzr)
      -- Save lhs if it's in x8 to avoid clobbering when loading rhs
      let safeLhsReg ← do
        if lhsReg == .phys PhysReg.x8 then
          emit (Instr.mov (.phys PhysReg.x10) (.reg lhsReg))
          pure (.phys PhysReg.x10)
        else
          pure lhsReg
      let rhsReg ←
        match args[1]! with
        | .var v => varToReg v
        | .erased => pure (Reg.phys PhysReg.xzr)
      emit (Instr.comment "inline lean_uint64_mul")
      emit (Instr.mul dstReg safeLhsReg rhsReg)
      return true
    else
      return false

  | "_lean_uint32_add" =>
    if args.size == 2 then
      let lhs ← argToRegOrZero args[0]!
      let rhs ← argToRegOrZero args[1]!
      emit (Instr.comment "inline lean_uint32_add")
      emit (Instr.add dstReg lhs (.reg rhs))
      let scratch :=
        match dstReg with
        | .phys PhysReg.x8 => Reg.phys PhysReg.x9
        | .phys PhysReg.x9 => Reg.phys PhysReg.x8
        | _ => Reg.phys PhysReg.x8
      loadImm64 scratch 0xFFFF_FFFF
      emit (Instr.and dstReg dstReg (.reg scratch))
      return true
    else
      return false

  | "_lean_uint32_sub" =>
    if args.size == 2 then
      let lhs ← argToRegOrZero args[0]!
      let rhs ← argToRegOrZero args[1]!
      emit (Instr.comment "inline lean_uint32_sub")
      emit (Instr.sub dstReg lhs (.reg rhs))
      let scratch :=
        match dstReg with
        | .phys PhysReg.x8 => Reg.phys PhysReg.x9
        | .phys PhysReg.x9 => Reg.phys PhysReg.x8
        | _ => Reg.phys PhysReg.x8
      loadImm64 scratch 0xFFFF_FFFF
      emit (Instr.and dstReg dstReg (.reg scratch))
      return true
    else
      return false

  | "_lean_uint32_mul" =>
    if args.size == 2 then
      let lhs ← argToRegOrZero args[0]!
      let rhs ← argToRegOrZero args[1]!
      emit (Instr.comment "inline lean_uint32_mul")
      emit (Instr.mul dstReg lhs rhs)
      let scratch :=
        match dstReg with
        | .phys PhysReg.x8 => Reg.phys PhysReg.x9
        | .phys PhysReg.x9 => Reg.phys PhysReg.x8
        | _ => Reg.phys PhysReg.x8
      loadImm64 scratch 0xFFFF_FFFF
      emit (Instr.and dstReg dstReg (.reg scratch))
      return true
    else
      return false

  | "_lean_usize_add" =>
    if args.size == 2 then
      let lhs ← argToRegOrZero args[0]!
      let rhs ← argToRegOrZero args[1]!
      emit (Instr.comment "inline lean_usize_add")
      emit (Instr.add dstReg lhs (.reg rhs))
      return true
    else
      return false

  | "_lean_usize_sub" =>
    if args.size == 2 then
      let lhs ← argToRegOrZero args[0]!
      let rhs ← argToRegOrZero args[1]!
      emit (Instr.comment "inline lean_usize_sub")
      emit (Instr.sub dstReg lhs (.reg rhs))
      return true
    else
      return false

  | "_lean_usize_mul" =>
    if args.size == 2 then
      let lhs ← argToRegOrZero args[0]!
      let rhs ← argToRegOrZero args[1]!
      emit (Instr.comment "inline lean_usize_mul")
      emit (Instr.mul dstReg lhs rhs)
      return true
    else
      return false

  -- Floating-point arithmetic operations
  | "lean_float_add" =>
    if args.size == 2 then
      match args[0]!, args[1]! with
      | .var v1, .var v2 =>
        let v1Reg ← varToReg v1
        let v2Reg ← varToReg v2
        emit (Instr.comment "inline lean_float_add")
        -- Move from GPR to FP registers
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v16) v1Reg)
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v17) v2Reg)
        -- Perform FP addition
        emit (Instr.fadd FloatPrec.double (.phys PhysReg.v16) (.phys PhysReg.v16) (.phys PhysReg.v17))
        -- Move result back to GPR
        emit (Instr.fmov FloatPrec.double dstReg (.phys PhysReg.v16))
        return true
      | _, _ => return false
    else
      return false

  | "lean_float_sub" =>
    if args.size == 2 then
      match args[0]!, args[1]! with
      | .var v1, .var v2 =>
        let v1Reg ← varToReg v1
        let v2Reg ← varToReg v2
        emit (Instr.comment "inline lean_float_sub")
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v16) v1Reg)
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v17) v2Reg)
        emit (Instr.fsub FloatPrec.double (.phys PhysReg.v16) (.phys PhysReg.v16) (.phys PhysReg.v17))
        emit (Instr.fmov FloatPrec.double dstReg (.phys PhysReg.v16))
        return true
      | _, _ => return false
    else
      return false

  | "lean_float_mul" =>
    if args.size == 2 then
      match args[0]!, args[1]! with
      | .var v1, .var v2 =>
        let v1Reg ← varToReg v1
        let v2Reg ← varToReg v2
        emit (Instr.comment "inline lean_float_mul")
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v16) v1Reg)
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v17) v2Reg)
        emit (Instr.fmul FloatPrec.double (.phys PhysReg.v16) (.phys PhysReg.v16) (.phys PhysReg.v17))
        emit (Instr.fmov FloatPrec.double dstReg (.phys PhysReg.v16))
        return true
      | _, _ => return false
    else
      return false

  | "lean_float_div" =>
    if args.size == 2 then
      match args[0]!, args[1]! with
      | .var v1, .var v2 =>
        let v1Reg ← varToReg v1
        let v2Reg ← varToReg v2
        emit (Instr.comment "inline lean_float_div")
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v16) v1Reg)
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v17) v2Reg)
        emit (Instr.fdiv FloatPrec.double (.phys PhysReg.v16) (.phys PhysReg.v16) (.phys PhysReg.v17))
        emit (Instr.fmov FloatPrec.double dstReg (.phys PhysReg.v16))
        return true
      | _, _ => return false
    else
      return false

  | "lean_float_negate" =>
    if args.size == 1 then
      match args[0]! with
      | .var v =>
        let vReg ← varToReg v
        emit (Instr.comment "inline lean_float_negate")
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v16) vReg)
        emit (Instr.fneg FloatPrec.double (.phys PhysReg.v16) (.phys PhysReg.v16))
        emit (Instr.fmov FloatPrec.double dstReg (.phys PhysReg.v16))
        return true
      | .erased => return false
    else
      return false

  | "lean_float_beq" =>
    if args.size == 2 then
      match args[0]!, args[1]! with
      | .var v1, .var v2 =>
        let v1Reg ← varToReg v1
        let v2Reg ← varToReg v2
        emit (Instr.comment "inline lean_float_beq")
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v16) v1Reg)
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v17) v2Reg)
        emit (Instr.fcmp FloatPrec.double (.phys PhysReg.v16) (.phys PhysReg.v17))
        -- Set result to 1 if equal, 0 otherwise (as boxed scalar)
        emit (Instr.mov (.phys PhysReg.x8) (.imm 1))
        emit (Instr.csel dstReg (.phys PhysReg.x8) (.phys PhysReg.xzr) Cond.eq)
        return true
      | _, _ => return false
    else
      return false

  | "lean_float_decLt" =>
    if args.size == 2 then
      match args[0]!, args[1]! with
      | .var v1, .var v2 =>
        let v1Reg ← varToReg v1
        let v2Reg ← varToReg v2
        emit (Instr.comment "inline lean_float_decLt")
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v16) v1Reg)
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v17) v2Reg)
        emit (Instr.fcmp FloatPrec.double (.phys PhysReg.v16) (.phys PhysReg.v17))
        -- Returns decidable: isTrue (boxed 0) or isFalse (boxed 1)
        -- lt means v1 < v2, which sets the 'mi' (minus/negative) flag
        emit (Instr.mov (.phys PhysReg.x8) (.imm 1))  -- isTrue tag = 0, boxed = 1
        emit (Instr.mov (.phys PhysReg.x9) (.imm 3))  -- isFalse tag = 1, boxed = 3
        emit (Instr.csel dstReg (.phys PhysReg.x8) (.phys PhysReg.x9) Cond.lt)
        return true
      | _, _ => return false
    else
      return false

  | "lean_float_decLe" =>
    if args.size == 2 then
      match args[0]!, args[1]! with
      | .var v1, .var v2 =>
        let v1Reg ← varToReg v1
        let v2Reg ← varToReg v2
        emit (Instr.comment "inline lean_float_decLe")
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v16) v1Reg)
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v17) v2Reg)
        emit (Instr.fcmp FloatPrec.double (.phys PhysReg.v16) (.phys PhysReg.v17))
        -- le means v1 <= v2
        emit (Instr.mov (.phys PhysReg.x8) (.imm 1))  -- isTrue tag = 0, boxed = 1
        emit (Instr.mov (.phys PhysReg.x9) (.imm 3))  -- isFalse tag = 1, boxed = 3
        emit (Instr.csel dstReg (.phys PhysReg.x8) (.phys PhysReg.x9) Cond.le)
        return true
      | _, _ => return false
    else
      return false

  | _ =>
    return false

/-- Select instructions for an expression -/
def selectExpr (dst : VarId) (dstType : IRType) (e : IR.Expr) : SelectM Unit := do
  let s ← get
  -- Determine if dst is spilled or in register
  let dstRegAndSpilled : Reg × Bool := match s.allocState.allocation.get? dst.idx with
  | some phys => (Reg.phys phys, false)
  | none =>
    -- Destination is spilled, use temp register based on type
    match s.allocState.stackSlots.get? dst.idx with
    | some _ =>
      -- Choose temp register based on destination type
      let tempReg := if dstType == IRType.float || dstType == IRType.float32 then
        Reg.phys PhysReg.v16  -- Use FP temp for float types
      else
        Reg.phys PhysReg.x8   -- Use GP temp for other types
      (tempReg, true)
    | none => (Reg.virt dst, false)  -- Shouldn't happen
  let dstReg := dstRegAndSpilled.1
  let mut isSpilled := dstRegAndSpilled.2
  let mut spillHandled := false  -- Track if we've already handled spilling

  match e with
  | .ctor info args =>
    emit (Instr.comment s!"ctor {info.name} (tag={info.cidx}, objs={info.size}, scalar={info.ssize})")

    -- Zero-sized constructors (no objects, no scalars) should be represented as boxed tags
    if info.size == 0 && info.ssize == 0 then
      -- Just box the tag value: (tag << 1) | 1
      let tagVal := info.cidx * 2 + 1
      emit (Instr.mov dstReg (.imm (Int.ofNat tagVal)))
      if isSpilled then
        match s.allocState.stackSlots.get? dst.idx with
        | some slot => storeToStackSlot dstReg slot IRType.object
        | none => pure ()
    else
      -- Normal constructor allocation
      let destSlot? := s.allocState.stackSlots.get? dst.idx
      let stackSlotInfo? := destSlot?.map fun slot => (slot, Int.ofNat (slot * 8))
      let pointerReg? : Option Reg := if isSpilled then none else some dstReg

      -- CRITICAL: When we keep the constructor pointer in a register we must ensure that
      -- arguments using the same register are preserved before runtime calls.
      let mut conflictVar : Option VarId := none
      match pointerReg? with
      | some tempReg =>
        for arg in args do
          match arg with
          | .var v =>
            let vReg ← varToReg v
            if vReg == tempReg then
              conflictVar := some v
              break
          | .erased => pure ()
      | none => pure ()

      -- If there's a conflict, save the argument value before we overwrite the register.
      match pointerReg? with
      | some tempReg =>
        match conflictVar with
        | some v =>
          emit (Instr.comment s!"save vreg{v.idx} from {tempReg} to x9 (constructor will overwrite {tempReg})")
          emit (Instr.mov (.phys PhysReg.x9) (.reg tempReg))
        | none => pure ()
      | none => pure ()

      -- Call lean_alloc_ctor(tag, num_objs, scalar_sz)
      -- Arguments: x0=tag, x1=num_objs, x2=scalar_sz
      emit (Instr.mov (.phys PhysReg.x0) (.imm (Int.ofNat info.cidx)))
      emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat info.size)))
      emit (Instr.mov (.phys PhysReg.x2) (.imm (Int.ofNat info.ssize)))
      emit (Instr.bl "lean_alloc_ctor")
      -- lean_ctor_set can clobber caller-saved registers (x0-x18).
      -- Keep the constructor pointer either in a callee-saved register or spill directly to stack.
      match pointerReg? with
      | some tempReg =>
        emit (Instr.mov tempReg (.reg (.phys PhysReg.x0)))
      | none =>
        match stackSlotInfo? with
        | some (slot, offset) =>
          emit (Instr.comment s!"store constructor for spilled dst vreg{dst.idx} into stack slot {slot}")
          emit (Instr.str (.phys PhysReg.x0) (.mem (.phys PhysReg.sp) offset))
          spillHandled := true
        | none =>
          emit (Instr.comment s!"ERROR: spilled constructor destination vreg{dst.idx} has no stack slot")

      -- Set fields using lean_ctor_set(o, i, v)
      for i in [:args.size] do
        let arg := args[i]!
        -- Load constructor from tempReg (preserved across calls since it's callee-saved)
        match pointerReg? with
        | some tempReg =>
          emit (Instr.mov (.phys PhysReg.x0) (.reg tempReg))
          -- tempReg is callee-saved, so the constructor pointer survives the call
        | none =>
          match stackSlotInfo? with
          | some (_, offset) =>
            emit (Instr.ldr (.phys PhysReg.x0) (.mem (.phys PhysReg.sp) offset))
          | none =>
            emit (Instr.comment s!"ERROR: missing constructor pointer for spilled dst vreg{dst.idx}")
        emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat i)))
        match arg with
        | .var v =>
          -- Load the argument value, using x9 if it's the saved conflict variable
          let vReg ← varToReg v
          let actualReg := match conflictVar with
            | some cv => if cv == v then Reg.phys PhysReg.x9 else vReg
            | none => vReg
          emitMove (.phys PhysReg.x2) (.reg actualReg)
        | .erased =>
          emit (Instr.comment s!"field {i} erased, set to lean_box(0) = 1")
          emit (Instr.mov (.phys PhysReg.x2) (.imm 1))  -- lean_box(0) = 1
        emit (Instr.bl "lean_ctor_set")
        -- tempReg is callee-saved, so still contains the constructor

      -- Move result to final destination
      match pointerReg? with
      | some tempReg =>
        if tempReg != dstReg then
          emit (Instr.mov dstReg (.reg tempReg))
      | none => pure ()

  | .reset n x =>
    let xReg ← varToReg x
    emit (Instr.comment s!"reset {n}")
    emit (Instr.mov dstReg (.reg xReg))

  | .reuse x info updtHeader args =>
    let xReg ← varToReg x
    emit (Instr.comment s!"reuse {info.name}")

    -- Zero-sized constructors don't need field updates, just copy the pointer
    if info.size == 0 && info.ssize == 0 then
      emit (Instr.mov dstReg (.reg xReg))
      if isSpilled then
        match s.allocState.stackSlots.get? dst.idx with
        | some slot => storeToStackSlot dstReg slot IRType.object
        | none => pure ()
    else
      -- Handle similar to .ctor: keep pointer in dstReg if not spilled, else use stack
      let destSlot? := s.allocState.stackSlots.get? dst.idx
      let stackSlotInfo? := destSlot?.map fun slot => (slot, Int.ofNat (slot * 8))
      let pointerReg? : Option Reg := if isSpilled then none else some dstReg

      -- Check for conflicts: if any arg uses dstReg, save it first
      let mut conflictVar : Option VarId := none
      match pointerReg? with
      | some tempReg =>
        for arg in args do
          match arg with
          | .var v =>
            let vReg ← varToReg v
            if vReg == tempReg then
              conflictVar := some v
              break
          | .erased => pure ()
      | none => pure ()

      -- Save conflicting argument before overwriting
      match pointerReg? with
      | some tempReg =>
        match conflictVar with
        | some v =>
          emit (Instr.comment s!"save vreg{v.idx} from {tempReg} to x9 (reuse will overwrite {tempReg})")
          emit (Instr.mov (.phys PhysReg.x9) (.reg tempReg))
        | none => pure ()
      | none => pure ()

      -- Copy the reused pointer to destination
      match pointerReg? with
      | some tempReg =>
        emit (Instr.mov tempReg (.reg xReg))
      | none =>
        match stackSlotInfo? with
        | some (slot, offset) =>
          emit (Instr.comment s!"store reused object for spilled dst vreg{dst.idx} into stack slot {slot}")
          emit (Instr.mov (.phys PhysReg.x8) (.reg xReg))
          emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
          spillHandled := true
        | none =>
          emit (Instr.comment s!"ERROR: spilled reuse destination vreg{dst.idx} has no stack slot")

      -- Update tag if needed (tag is at offset 4 in object header, 32-bit value)
      if updtHeader then
        emit (Instr.comment s!"update tag to {info.cidx}")
        -- Use lean_ctor_set_tag runtime function instead of direct memory write
        match pointerReg? with
        | some tempReg =>
          emit (Instr.mov (.phys PhysReg.x0) (.reg tempReg))
          emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat info.cidx)))
          emit (Instr.bl "lean_ctor_set_tag")
        | none =>
          match stackSlotInfo? with
          | some (_, offset) =>
            emit (Instr.ldr (.phys PhysReg.x0) (.mem (.phys PhysReg.sp) offset))
            emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat info.cidx)))
            emit (Instr.bl "lean_ctor_set_tag")
          | none =>
            emit (Instr.comment s!"ERROR: missing object pointer for tag update")

      -- Set fields using lean_ctor_set(o, i, v) - same as .ctor case
      for i in [:args.size] do
        let arg := args[i]!
        -- Load object pointer before each lean_ctor_set call
        match pointerReg? with
        | some tempReg =>
          emit (Instr.mov (.phys PhysReg.x0) (.reg tempReg))
          -- tempReg is callee-saved, so survives the call
        | none =>
          match stackSlotInfo? with
          | some (_, offset) =>
            emit (Instr.ldr (.phys PhysReg.x0) (.mem (.phys PhysReg.sp) offset))
          | none =>
            emit (Instr.comment s!"ERROR: missing object pointer for spilled dst vreg{dst.idx}")
        emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat i)))
        match arg with
        | .var v =>
          let vReg ← varToReg v
          let actualReg := match conflictVar with
            | some cv => if cv == v then Reg.phys PhysReg.x9 else vReg
            | none => vReg
          emitMove (.phys PhysReg.x2) (.reg actualReg)
        | .erased =>
          emit (Instr.comment s!"field {i} erased, set to lean_box(0) = 1")
          emit (Instr.mov (.phys PhysReg.x2) (.imm 1))  -- lean_box(0) = 1
        emit (Instr.bl "lean_ctor_set")
        -- tempReg/stack pointer is preserved across calls

      -- Move result to final destination if needed
      match pointerReg? with
      | some tempReg =>
        if tempReg != dstReg then
          emit (Instr.mov dstReg (.reg tempReg))
      | none => pure ()

  | .proj i x =>
    let xReg ← varToReg x
    emit (Instr.comment s!"proj field {i}")
    -- Inline: lean_ctor_get(o, i) loads field at offset 8 + i*8
    -- Layout: [RC:4bytes, tag:4bytes, field0:8bytes, field1:8bytes, ...]
    let offset := 8 + i * 8
    emit (Instr.ldr dstReg (.mem xReg (Int.ofNat offset)))

  | .uproj i x =>
    let xReg ← varToReg x
    -- USize field offset: 8 (header) + i * 8 (field index)
    let offset := 8 + i * 8
    emit (Instr.ldr dstReg (.mem xReg (Int.ofNat offset)))

  | .sproj n offset x =>
    let xReg ← varToReg x
    -- Scalar field offset: 8 (header) + n * 8 (usize fields) + offset (scalar offset)
    let totalOffset := 8 + n * 8 + offset
    emit (Instr.ldr dstReg (.mem xReg (Int.ofNat totalOffset)))

  | .fap f args =>
    if args.size == 0 then
      -- Nullary application - this is a reference to a global constant/thunk
      -- Load the global variable address
      let fnName ← getFunctionName f
      emit (Instr.comment s!"load global constant {fnName}")
      -- Use adrp + appropriate load instruction based on type
      match dstType with
      | .float | .float32 =>
        -- Float constants: use temp GP register for adrp, then ldr into FP register
        let tempReg := Reg.phys PhysReg.x16
        emit (Instr.adrp tempReg s!"{fnName}@PAGE")
        emit (Instr.ldr dstReg (.reg tempReg) s!", {fnName}@PAGEOFF")
      | .uint8 =>
        -- Load byte: ldrb wN, [base, offset]
        emit (Instr.adrp dstReg s!"{fnName}@PAGE")
        emit (Instr.add dstReg dstReg (.label s!"{fnName}@PAGEOFF"))
        emit (Instr.ldrb dstReg (.mem dstReg 0))
      | .uint16 =>
        -- Load halfword: ldrh wN, [base, offset]
        emit (Instr.adrp dstReg s!"{fnName}@PAGE")
        emit (Instr.add dstReg dstReg (.label s!"{fnName}@PAGEOFF"))
        emit (Instr.ldrh dstReg (.mem dstReg 0))
      | .uint32 =>
        -- Load word (32-bit): must use explicit add + ldrw to load only 32 bits
        emit (Instr.adrp dstReg s!"{fnName}@PAGE")
        emit (Instr.add dstReg dstReg (.label s!"{fnName}@PAGEOFF"))
        emit (Instr.ldrw dstReg (.mem dstReg 0))
      | _ =>
        -- Load doubleword (64-bit) - objects, uint64, usize
        emit (Instr.adrp dstReg s!"{fnName}@PAGE")
        emit (Instr.ldr dstReg (.reg dstReg) s!", {fnName}@PAGEOFF")
    else
      let fnName ← getFunctionName f
      if ← tryInlineExternCall fnName args dstReg then
        pure ()
      else
        -- Not inlineable, emit standard function call
        let env := (← get).env
        -- Build call argument list and track parameter types
        let (callArgs, paramTypes) :=
          match findEnvDecl env f with
          | some (.extern _ params ..) =>
            Id.run do
              let mut acc := #[]
              let mut types := #[]
              for idx in [:args.size] do
                let arg := args[idx]!
                if h : idx < params.size then
                  let param := params[idx]!
                  if !param.ty.isErased then
                    acc := acc.push arg
                    types := types.push param.ty
                else
                  acc := acc.push arg
                  types := types.push IRType.object
              return (acc, types)
          | some (.fdecl _ params ..) =>
            -- Also extract parameter types from fdecl (regular Lean functions)
            Id.run do
              let mut acc := #[]
              let mut types := #[]
              for idx in [:args.size] do
                let arg := args[idx]!
                if h : idx < params.size then
                  let param := params[idx]!
                  if !param.ty.isErased then
                    acc := acc.push arg
                    types := types.push param.ty
                else
                  acc := acc.push arg
                  types := types.push IRType.object
              return (acc, types)
          | _ => (args, args.map (fun _ => IRType.object))
        emit (Instr.comment s!"call {f} with {callArgs.size} runtime args")
        -- Setup arguments using correct calling convention (FP regs for floats, GPRs for others)
        for i in [:min callArgs.size 8] do
          let paramTy := if i < paramTypes.size then paramTypes[i]! else IRType.object
          let isFloat := paramTy == IRType.float || paramTy == IRType.float32
          match callArgs[i]! with
          | .var v =>
            let vReg ← varToReg v
            if isFloat then
              -- Float parameter: load into FP register (d0-d7 or s0-s7)
              let fpArgReg := getFPArgReg i
              let prec := typeToFloatPrec paramTy
              emit (Instr.fmov prec (.phys fpArgReg) vReg)
            else
              -- Non-float parameter: use general-purpose register (x0-x7)
              let argReg := getArgReg i
              emitMove (.phys argReg) (.reg vReg)
          | .erased =>
            let argReg := getArgReg i
            emit (Instr.mov (.phys argReg) (.imm 1))  -- lean_box(0)
        let extra := if callArgs.size > 8 then callArgs.size - 8 else 0
        let extraBytes := extra * 8
        let stackBytes := ((extraBytes + 15) / 16) * 16
        if stackBytes > 0 then
          emit (Instr.sub (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat stackBytes)))
        -- CRITICAL: For spilled variables, we must load and store immediately
        -- because varToReg uses a single temp register (x8) for all spilled vars
        if extra > 0 then
          for j in [:extra] do
            let argIdx := j + 8
            let offset := Int.ofNat (j * 8)
            match callArgs[argIdx]! with
            | .var v =>
              -- Check if this var is in a register or spilled
              let s ← get
              match s.allocState.allocation.get? v.idx with
              | some phys =>
                -- In register, just store it
                emit (Instr.str (.phys phys) (.mem (.phys PhysReg.sp) offset))
              | none =>
                -- Spilled: need to load from OLD sp position
                match s.allocState.stackSlots.get? v.idx with
                | some slot =>
                  let oldOffset := Int.ofNat (stackBytes + slot * 8)
                  emit (Instr.ldr (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) oldOffset))
                  emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
                | none =>
                  -- Check if this is a stack parameter (param index >= 10)
                  let paramIdx? ← getParameterIndex? v
                  match paramIdx? with
                  | some paramIdx =>
                    if paramIdx >= 10 then
                      -- Stack parameter: load from caller's frame at [x29, #...]
                      -- Stack params start at [x29, #16] for param 8, so param N is at [x29, #(16 + (N - 8) * 8)]
                      let callerOffset := Int.ofNat (16 + (paramIdx - 8) * 8)
                      emit (Instr.ldr (.phys PhysReg.x8) (.mem (.phys PhysReg.x29) callerOffset))
                      emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
                    else
                      emit (Instr.comment s!"ERROR: param {paramIdx} not in register (expected x19-x28)!")
                  | none =>
                    emit (Instr.comment s!"ERROR: arg var{v.idx} not allocated!")
            | .erased =>
              emit (Instr.mov (.phys PhysReg.x8) (.imm 1))  -- lean_box(0)
              emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
        emit (Instr.bl fnName)
        if stackBytes > 0 then
          emit (Instr.add (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat stackBytes)))
        -- Get result from correct register based on return type
        if dstType == IRType.float || dstType == IRType.float32 then
          -- Float result is in d0/s0
          if dstReg != .phys PhysReg.v0 then
            let prec := typeToFloatPrec dstType
            emit (Instr.fmov prec dstReg (.phys PhysReg.v0))
        else if dstType == IRType.uint8 then
          -- uint8_t result is in w0 (lower 8 bits), upper bits undefined
          -- Zero-extend using AND with 0xFF mask (works for all cases including dstReg == x0)
          if dstReg == .phys PhysReg.x0 then
            -- Result stays in x0, need to zero-extend in place
            emit (Instr.and (.phys PhysReg.x0) (.phys PhysReg.x0) (.imm 0xFF))
          else
            -- Moving to different register, zero-extend during move
            emit (Instr.and dstReg (.phys PhysReg.x0) (.imm 0xFF))
        else if dstType == IRType.uint16 then
          -- uint16_t result is in w0 (lower 16 bits), upper bits undefined
          -- Zero-extend using AND with 0xFFFF mask
          if dstReg == .phys PhysReg.x0 then
            emit (Instr.and (.phys PhysReg.x0) (.phys PhysReg.x0) (.imm 0xFFFF))
          else
            emit (Instr.and dstReg (.phys PhysReg.x0) (.imm 0xFFFF))
        else
          -- Non-float result is in x0
          if dstReg != .phys PhysReg.x0 then
            emitMove dstReg (.reg (.phys PhysReg.x0))

  | .pap f args =>
    emit (Instr.comment s!"partial application {f} with {args.size} args")
    let fnName ← getFunctionName f
    let arity ← getFunctionArity f
    -- Load function pointer into x0 using PC-relative pair
    emit (Instr.adrp (.phys PhysReg.x0) s!"{fnName}@PAGE")
    emit (Instr.add (.phys PhysReg.x0) (.phys PhysReg.x0) (.label s!"{fnName}@PAGEOFF"))
    emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat arity)))
    emit (Instr.mov (.phys PhysReg.x2) (.imm (Int.ofNat args.size)))
    emit (Instr.bl "_lean_alloc_closure")
    -- Keep closure in x0 throughout the loop to avoid register conflicts
    -- Populate captured arguments using lean_closure_set
    for i in [:args.size] do
      -- x0 already contains the closure pointer from alloc or previous iteration
      emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat i)))
      match args[i]! with
      | .var v =>
        let vReg ← varToReg v
        emitMove (.phys PhysReg.x2) (.reg vReg)
      | .erased =>
        emit (Instr.mov (.phys PhysReg.x2) (.imm 0))
      emit (Instr.bl "_lean_closure_set")
    -- After all closure_set calls, save result to dstReg if needed
    if dstReg != .phys PhysReg.x0 then
      emitMove dstReg (.reg (.phys PhysReg.x0))

  | .ap x args =>
    let xReg ← varToReg x
    emit (Instr.comment s!"application with {args.size} args")
    if args.isEmpty then
      if dstReg != xReg then
        emit (Instr.mov dstReg (.reg xReg))
    else
      let maxArgs := Lean.closureMaxArgs
      if args.size ≤ maxArgs then
        let n := args.size
        emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
        for i in [:n] do
          let argReg := getArgReg (i + 1)
          match args[i]! with
          | .var v =>
            let vReg ← varToReg v
            emit (Instr.mov (.phys argReg) (.reg vReg))
          | .erased =>
            emit (Instr.mov (.phys argReg) (.imm 1))  -- lean_box(0)
        emit (Instr.bl s!"_lean_apply_{n}")
        if dstReg != .phys PhysReg.x0 then
          emitMove dstReg (.reg (.phys PhysReg.x0))
      else
        let argBytes := args.size * 8
        let totalBytes := ((argBytes + 15) / 16) * 16
        if totalBytes > 0 then
          emit (Instr.sub (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat totalBytes)))
        -- CRITICAL: For spilled variables, load and store immediately
        for i in [:args.size] do
          let offset := Int.ofNat (i * 8)
          match args[i]! with
          | .var v =>
            -- Check if this var is in a register or spilled
            let s ← get
            match s.allocState.allocation.get? v.idx with
            | some phys =>
              -- In register, just store it
              emit (Instr.str (.phys phys) (.mem (.phys PhysReg.sp) offset))
            | none =>
              -- Spilled: need to load from OLD sp position
              match s.allocState.stackSlots.get? v.idx with
              | some slot =>
                let oldOffset := Int.ofNat (totalBytes + slot * 8)
                emit (Instr.ldr (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) oldOffset))
                emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
              | none =>
                -- Check if this is a stack parameter (param index >= 10)
                let paramIdx? ← getParameterIndex? v
                match paramIdx? with
                | some paramIdx =>
                  if paramIdx >= 10 then
                    -- Stack parameter: load from caller's frame at [x29, #...]
                    let callerOffset := Int.ofNat (16 + (paramIdx - 8) * 8)
                    emit (Instr.ldr (.phys PhysReg.x8) (.mem (.phys PhysReg.x29) callerOffset))
                    emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
                  else
                    emit (Instr.comment s!"ERROR: param {paramIdx} not in register!")
                | none =>
                  emit (Instr.comment s!"ERROR: arg var{v.idx} not allocated!")
          | .erased =>
            emit (Instr.mov (.phys PhysReg.x8) (.imm 0))
            emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
        emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
        emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat args.size)))
        emit (Instr.mov (.phys PhysReg.x2) (.reg (.phys PhysReg.sp)))
        emit (Instr.bl "_lean_apply_m")
        if totalBytes > 0 then
          emit (Instr.add (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat totalBytes)))
        if dstReg != .phys PhysReg.x0 then
          emitMove dstReg (.reg (.phys PhysReg.x0))

  | .box ty x =>
    let xReg ← varToReg x
    emit (Instr.comment "box")
    -- Match C backend boxing behavior: on 64-bit ARM64, only uint8/uint16/uint32 use inline boxing
    -- uint64, usize, float, float32 all require heap allocation
    match ty with
    | IRType.uint64 =>
      -- Call lean_box_uint64: allocates heap object with 8-byte scalar storage
      emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
      emit (Instr.bl "_lean_box_uint64")
      if dstReg != .phys PhysReg.x0 then
        emitMove dstReg (.reg (.phys PhysReg.x0))
    | IRType.usize =>
      -- Call lean_box_usize: allocates heap object with sizeof(size_t) scalar storage
      emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
      emit (Instr.bl "_lean_box_usize")
      if dstReg != .phys PhysReg.x0 then
        emitMove dstReg (.reg (.phys PhysReg.x0))
    | IRType.float =>
      -- Call lean_box_float: takes double in d0, returns object* in x0
      emitMove (.phys PhysReg.v0) (.reg xReg)
      emit (Instr.bl "_lean_box_float")
      if dstReg != .phys PhysReg.x0 then
        emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
    | IRType.float32 =>
      -- Call lean_box_float32: takes float in s0, returns object* in x0
      emitMove (.phys PhysReg.v0) (.reg xReg)
      emit (Instr.bl "_lean_box_float32")
      if dstReg != .phys PhysReg.x0 then
        emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
    | IRType.uint8 | IRType.uint16 | IRType.uint32 =>
      -- Inline scalar boxing: shift left by 1 and set low bit (fits in 63 bits on 64-bit)
      emit (Instr.lsl dstReg xReg (.imm 1))
      emit (Instr.orr dstReg dstReg (.imm 1))
    | _ =>
      -- For non-scalar types (object, tagged, irrelevant), just move
      emit (Instr.mov dstReg (.reg xReg))

  | .unbox x =>
    let xReg ← varToReg x
    emit (Instr.comment "unbox")
    -- Match C backend unboxing behavior
    match dstType with
    | IRType.uint64 =>
      -- Call lean_unbox_uint64: takes object* in x0, returns uint64_t in x0
      emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
      emit (Instr.bl "_lean_unbox_uint64")
      if dstReg != .phys PhysReg.x0 then
        emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
    | IRType.usize =>
      -- Call lean_unbox_usize: takes object* in x0, returns size_t in x0
      emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
      emit (Instr.bl "_lean_unbox_usize")
      if dstReg != .phys PhysReg.x0 then
        emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
    | IRType.float =>
      -- Call lean_unbox_float: takes object* in x0, returns double in d0
      emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
      emit (Instr.bl "_lean_unbox_float")
      if dstReg != .phys PhysReg.v0 then
        emitMove dstReg (.reg (.phys PhysReg.v0))
    | IRType.float32 =>
      -- Call lean_unbox_float32: takes object* in x0, returns float in s0
      emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
      emit (Instr.bl "_lean_unbox_float32")
      if dstReg != .phys PhysReg.v0 then
        emitMove dstReg (.reg (.phys PhysReg.v0))
    | IRType.uint8 | IRType.uint16 | IRType.uint32 =>
      -- Inline scalar unboxing: arithmetic shift right by 1 to extract value
      emit (Instr.asr dstReg xReg (.imm 1))
    | _ =>
      -- For non-scalar types, shouldn't happen but handle gracefully
      emit (Instr.asr dstReg xReg (.imm 1))

  | .lit (.num n) =>
    if dstType.isScalar then
      if n < 65536 then
        emit (Instr.mov dstReg (.imm (Int.ofNat n)))
      else
        loadImm64 dstReg n
    else
      -- For object types, use runtime shim functions like C backend
      -- This handles tagging correctly and is more compatible
      if n < UInt32.size then
        loadImm64 (.phys PhysReg.x0) n
        emit (Instr.bl "lean_unsigned_to_nat_export")
        if dstReg != .phys PhysReg.x0 then
          emitMove dstReg (.reg (.phys PhysReg.x0))
      else if n < UInt64.size then
        loadImm64 (.phys PhysReg.x0) n
        emit (Instr.bl "lean_uint64_to_nat")
        if dstReg != .phys PhysReg.x0 then
          emitMove dstReg (.reg (.phys PhysReg.x0))
      else
        -- Numbers that do not fit in 64 bits: materialize via decimal string like the C backend
        let decStr := toString n
        let lit ← getStringLiteral decStr
        emit (Instr.adrp (.phys PhysReg.x0) s!"{lit.ptrLabel}@PAGE")
        emit (Instr.ldr (.phys PhysReg.x0) (.reg (.phys PhysReg.x0)) s!", {lit.ptrLabel}@PAGEOFF")
        emit (Instr.bl "lean_cstr_to_nat")
        if dstReg != .phys PhysReg.x0 then
          emitMove dstReg (.reg (.phys PhysReg.x0))

  | .lit (.str s) =>
    let lit ← getStringLiteral s
    -- Escape special chars in comment to avoid breaking assembly syntax
    let escapedStr := s.replace "\n" "\\n" |>.replace "\r" "\\r" |>.replace "\t" "\\t"
    emit (Instr.comment s!"string literal: {escapedStr}")
    emit (Instr.adrp (.phys PhysReg.x0) s!"{lit.ptrLabel}@PAGE")
    emit (Instr.ldr (.phys PhysReg.x0) (.reg (.phys PhysReg.x0)) s!", {lit.ptrLabel}@PAGEOFF")
    -- Calculate byte size and character count for lean_mk_string_unchecked
    let byteSize := s.utf8ByteSize
    let charCount := s.length
    emit (Instr.comment s!"DEBUG: str='{escapedStr}' byteSize={byteSize} charCount={charCount}")
    emit (Instr.mov (.phys PhysReg.x1) (.imm byteSize))
    emit (Instr.mov (.phys PhysReg.x2) (.imm charCount))
    emit (Instr.bl "lean_mk_string_unchecked")
    if dstReg != .phys PhysReg.x0 then
      emitMove dstReg (.reg (.phys PhysReg.x0))

  | .isShared x =>
    let xReg ← varToReg x
    emit (Instr.comment "isShared")
    emit (Instr.ldr dstReg (.mem xReg 0))  -- Load refcount
    emit (Instr.cmp dstReg (.imm 1))       -- Compare with 1
    -- csel requires two registers, so load 1 into x8 first
    emit (Instr.mov (.phys PhysReg.x8) (.imm 1))
    emit (Instr.csel dstReg (.phys PhysReg.x8) (.phys PhysReg.xzr) Cond.gt)

  -- If destination is spilled and we haven't handled it yet, store result to stack
  if isSpilled && !spillHandled then
    storeSpilledDst dst dstReg

/-- Select instructions for a function body -/
partial def selectFnBody (body : FnBody) : SelectM Unit := do
  match body with
  | .vdecl x ty e rest => do
    -- Check if this is a tail call to the current function
    let currentFn := (← get).fnName
    let body := FnBody.vdecl x ty e rest
    if isTailCallTo currentFn body then
      -- This is a self-recursive tail call - optimize it
      match e with
      | Expr.fap f args =>
        emit (Instr.comment s!"tail call to {f}")
        -- Set up arguments in registers x0-x7 (matching function parameters)
        for i in [:min args.size 8] do
          let argReg := getArgReg i
          match args[i]! with
          | .var v =>
            let vReg ← varToReg v
            -- Use temporary register to avoid overwriting source before it's read
            if i == 0 then
              emit (Instr.mov (.phys argReg) (.reg vReg))
            else
              -- For subsequent args, we need to be careful about register conflicts
              emit (Instr.mov (.phys argReg) (.reg vReg))
          | .erased =>
            emit (Instr.mov (.phys argReg) (.imm 1))  -- lean_box(0)
        -- Branch back to function start (after prologue)
        emit (Instr.b s!".Lfn_start_{sanitizeForLabel currentFn.toString}")
      | _ => pure () -- Should not happen based on isTailCallTo check
    else
      -- Normal variable declaration
      modify fun st => { st with varTypes := st.varTypes.insert x.idx ty }
      selectExpr x ty e
      selectFnBody rest

  | .jdecl j params jpBody rest => do
    let jpLabel ← getJPLabel j
    -- Store parameter VarIds for phi resolution
    let paramVars := params.map (·.x)
    modify fun st => { st with jpParams := st.jpParams.insert j.idx paramVars }
    selectFnBody rest
    emit (Instr.label jpLabel)
    selectFnBody jpBody

  | .set x i y rest => do
    let xReg ← varToReg x
    let yOp ← argToOperand y
    let offset := i * 8
    match yOp with
    | .reg yReg => emit (Instr.str yReg (.mem xReg (Int.ofNat offset)))
    | .imm n =>
      let tmpReg := Reg.phys PhysReg.x8
      emit (Instr.mov tmpReg (.imm n))
      emit (Instr.str tmpReg (.mem xReg (Int.ofNat offset)))
    | _ => pure ()

  | .uset x i y rest => do
    let xReg ← varToReg x
    let yReg ← varToReg y
    -- USize field offset: 8 (header) + i * 8 (field index)
    let offset := 8 + i * 8
    emit (Instr.str yReg (.mem xReg (Int.ofNat offset)))
    selectFnBody rest

  | .sset x i offset y _ rest => do
    let xReg ← varToReg x
    let yReg ← varToReg y
    -- Scalar field offset: 8 (header) + i * 8 (object fields) + offset (scalar offset)
    let totalOffset := 8 + i * 8 + offset
    emit (Instr.str yReg (.mem xReg (Int.ofNat totalOffset)))
    selectFnBody rest

  | .setTag x tag rest => do
    let xReg ← varToReg x
    emit (Instr.comment s!"setTag {tag}")
    let tmpReg := Reg.phys PhysReg.x8
    emit (Instr.mov tmpReg (.imm (Int.ofNat tag)))
    emit (Instr.str tmpReg (.mem xReg 0))
    selectFnBody rest

  | .inc x n c persistent rest => do
    emit (Instr.comment s!"inc {n}")
    -- Check if the variable is a scalar type - scalars don't need reference counting
    let xType? ← getVarType? x
    let isScalar := match xType? with
      | some ty => ty.isScalar
      | none => false
    if persistent || n == 0 || isScalar then
      pure ()
    else
      let ptrReg ← varToReg x
      let runtimeName :=
        if c then
          if n == 1 then "lean_inc" else "lean_inc_n"
        else
          if n == 1 then "lean_inc_ref" else "lean_inc_ref_n"
      let runtimeCall : Option String → SelectM Unit := fun jumpLabel? => do
        match ptrReg with
        | .phys _ =>
          emit (Instr.mov (.phys PhysReg.x0) (.reg ptrReg))
          if n != 1 then
            loadImm64 (.phys PhysReg.x1) n
          emit (Instr.bl runtimeName)
          match jumpLabel? with
          | some lbl => emit (Instr.b lbl)
          | none => pure ()
        | _ => pure ()
      runtimeCall none
    selectFnBody rest

  | .dec x n c persistent rest => do
    emit (Instr.comment s!"dec {n}")
    -- Check if the variable is a scalar type - scalars don't need reference counting
    let xType? ← getVarType? x
    let isScalar := match xType? with
      | some ty => ty.isScalar
      | none => false
    if persistent || n == 0 || isScalar then
      pure ()
    else
      let ptrReg ← varToReg x
      let runtimeName := if c then "lean_dec" else "lean_dec_ref"
      let runtimeCall : Option String → Nat → SelectM Unit := fun jumpLabel? count => do
        match ptrReg with
        | .phys _ =>
          if count == 0 then
            match jumpLabel? with
            | some lbl => emit (Instr.b lbl)
            | none => pure ()
          else if count == 1 then
            emit (Instr.mov (.phys PhysReg.x0) (.reg ptrReg))
            emit (Instr.bl runtimeName)
            match jumpLabel? with
            | some lbl => emit (Instr.b lbl)
            | none => pure ()
          else
            let loopLabel ← freshLabel "dec_loop"
            loadImm64 (.phys PhysReg.x1) count
            emit (Instr.label loopLabel)
            emit (Instr.mov (.phys PhysReg.x0) (.reg ptrReg))
            emit (Instr.bl runtimeName)
            emit (Instr.sub (.phys PhysReg.x1) (.phys PhysReg.x1) (.imm 1))
            emit (Instr.cmp (.phys PhysReg.x1) (.imm 0))
            emit (Instr.bCond Cond.gt loopLabel)
            match jumpLabel? with
            | some lbl => emit (Instr.b lbl)
            | none => pure ()
        | _ => pure ()
      runtimeCall none n
    selectFnBody rest

  | .del x rest => do
    let xReg ← varToReg x
    emit (Instr.comment "del")
    emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
    emit (Instr.bl "lean_dec_ref")
    selectFnBody rest

  | .case _ x xType alts => do
    let xReg ← varToReg x
    emit (Instr.comment "case")
    -- Check if discriminant is scalar (e.g., uint8 for Bool) or object
    if xType.isScalar then
      -- For scalar types, the value is already in the register
      emit (Instr.mov (.phys PhysReg.x8) (.reg xReg))
    else if xType.isObj then
      -- For `tagged` or `object` types, value can be scalar OR pointer at runtime.
      -- Emit runtime check: if (value & 1), it's scalar; else it's a pointer.
      let scalarLabel ← freshLabel "scalar_tag"
      let compareLabel ← freshLabel "compare_tag"
      emit (Instr.comment "runtime scalar check")
      emit (Instr.tst xReg (.imm 1))
      emit (Instr.bCond Cond.ne scalarLabel)
      -- Pointer case: load tag from object header
      emit (Instr.ldrb (.phys PhysReg.x8) (.mem xReg 7))
      emit (Instr.b compareLabel)
      -- Scalar case: unbox to get tag (shift right by 1)
      emit (Instr.label scalarLabel)
      emit (Instr.lsr (.phys PhysReg.x8) xReg (.imm 1))
      emit (Instr.label compareLabel)
    else
      -- Unknown type, assume pointer
      emit (Instr.ldrb (.phys PhysReg.x8) (.mem xReg 7))

    let endLabel ← freshLabel "case_end"

    -- Generate branch targets for ctor arms and optional default
    let mut ctorLabels : Array (String × Alt) := #[]
    let mut defaultAlt : Option (String × Alt) := none
    for alt in alts do
      match alt with
      | .ctor info _ =>
        let label ← freshLabel "case_ctor"
        ctorLabels := ctorLabels.push (label, alt)
        emit (Instr.cmp (.phys PhysReg.x8) (.imm (Int.ofNat info.cidx)))
        emit (Instr.bCond Cond.eq label)
      | .default _ =>
        let label ← freshLabel "case_default"
        defaultAlt := some (label, alt)
    match defaultAlt with
    | some (label, _) => emit (Instr.b label)
    | none => emit (Instr.b endLabel)

    -- Emit ctor arms
    for (label, alt) in ctorLabels do
      emit (Instr.label label)
      selectFnBody (Alt.body alt)
      emit (Instr.b endLabel)

    -- Emit default arm if present
    match defaultAlt with
    | some (label, alt) =>
      emit (Instr.label label)
      selectFnBody (Alt.body alt)
      emit (Instr.b endLabel)
    | none => pure ()

    emit (Instr.label endLabel)

  | .ret arg => do
    emit (Instr.comment "return")
    let retTy := (← get).returnType
    match arg with
    | .var v =>
      let vReg ← varToReg v
      if retTy == IRType.float then
        -- Float functions return in d0
        emit (Instr.fmov FloatPrec.double (.phys PhysReg.v0) vReg)
      else if retTy == IRType.float32 then
        -- Float32 functions return in s0 (bottom 32 bits of v0)
        emit (Instr.fmov FloatPrec.single (.phys PhysReg.v0) vReg)
      else
        -- All other types return in x0
        emitMove (.phys PhysReg.x0) (.reg vReg)
    | .erased =>
      emit (Instr.mov (.phys PhysReg.x0) (.imm 0))
    let spillBytes := (← get).stackSpillBytes
    if spillBytes > 0 then
      emit (Instr.add (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat spillBytes)))
    let calleeSavedPairs : Array (Array Reg) :=
      #[
        #[Reg.phys PhysReg.x27, Reg.phys PhysReg.x28],
        #[Reg.phys PhysReg.x25, Reg.phys PhysReg.x26],
        #[Reg.phys PhysReg.x23, Reg.phys PhysReg.x24],
        #[Reg.phys PhysReg.x21, Reg.phys PhysReg.x22],
        #[Reg.phys PhysReg.x19, Reg.phys PhysReg.x20]
      ]
    for pair in calleeSavedPairs do
      emit (Instr.pop pair)
    emit (Instr.pop #[Reg.phys PhysReg.x29, Reg.phys PhysReg.x30])
    emit Instr.ret

  | .jmp j args => do
    emit (Instr.comment s!"jump to JP{j.idx}")
    -- Phi resolution: move arguments into parameter locations
    let s ← get
    match s.jpParams.get? j.idx with
    | none =>
      -- No parameters, just jump
      let label ← getJPLabel j
      emit (Instr.b label)
    | some params =>
      -- For each (arg, param) pair, move arg value into param location
      for i in [:min args.size params.size] do
        let arg := args[i]!
        let param := params[i]!
        match arg with
        | .var argVar =>
          -- Check allocation status of both arg and param
          let argPhys := s.allocState.allocation.get? argVar.idx
          let argSpill := s.allocState.stackSlots.get? argVar.idx
          let paramPhys := s.allocState.allocation.get? param.idx
          let paramSpill := s.allocState.stackSlots.get? param.idx

          match argPhys, argSpill, paramPhys, paramSpill with
          | some argReg, _, some paramReg, _ =>
            -- Both in physical registers
            if argReg != paramReg then
              emit (Instr.mov (.phys paramReg) (.reg (.phys argReg)))
          | some argReg, _, none, some paramSlot =>
            -- Arg in register, param spilled to stack
            let paramTy := s.varTypes.get? param.idx |>.getD IRType.object
            storeToStackSlot (.phys argReg) paramSlot paramTy
          | none, some argSlot, some paramReg, _ =>
            -- Arg spilled, param in register
            let _ ← loadSpilledVar argVar argSlot
            emit (Instr.mov (.phys paramReg) (.reg (.phys PhysReg.x8)))
          | none, some argSlot, none, some paramSlot =>
            -- Both spilled to stack
            if argSlot != paramSlot then
              let _ ← loadSpilledVar argVar argSlot
              let paramTy := s.varTypes.get? param.idx |>.getD IRType.object
              storeToStackSlot (.phys PhysReg.x8) paramSlot paramTy
          | _, _, _, _ =>
            emit (Instr.comment s!"ERROR: phi arg vreg{argVar.idx} or param vreg{param.idx} not allocated!")
        | .erased =>
          -- Erased argument - set param to 0 (placeholder, will be replaced by actual erased handling)
          let paramPhys := s.allocState.allocation.get? param.idx
          let paramSpill := s.allocState.stackSlots.get? param.idx
          match paramPhys, paramSpill with
          | some paramReg, _ =>
            emit (Instr.mov (.phys paramReg) (.imm 0))
          | none, some paramSlot =>
            emit (Instr.mov (.phys PhysReg.x8) (.imm 0))
            let paramTy := s.varTypes.get? param.idx |>.getD IRType.object
            storeToStackSlot (.phys PhysReg.x8) paramSlot paramTy
          | _, _ =>
            emit (Instr.comment s!"ERROR: phi param vreg{param.idx} not allocated!")
      let label ← getJPLabel j
      emit (Instr.b label)

  | .unreachable => do
    emit (Instr.comment "unreachable")
    emit Instr.ret

/-- Select instructions for a function declaration -/
def selectDecl (decl : Decl) : SelectM MachineFunction := do
  match decl with
  | .fdecl f _params retTy body _ =>
    emit (Instr.comment s!"Function: {f}")

    -- Register parameter types in varTypes map for proper scalar handling
    for param in _params do
      modify fun st => { st with varTypes := st.varTypes.insert param.x.idx param.ty }

    -- Get stack frame size (already calculated during initialization)
    let s ← get
    let numSpilled := s.allocState.nextStackSlot

    -- Check if this is a boxed function - needs special stack layout
    let isBoxed := _params.size > Lean.closureMaxArgs && Lean.IR.ExplicitBoxing.isBoxedName f
    if isBoxed then
      -- Boxed wrapper needs space for all args (will be unpacked from array)
      let argBytes := _params.size * 8
      let extra := if _params.size > 8 then _params.size - 8 else 0
      let callStackBytes := extra * 8
      let boxedSpillBytes := ((argBytes + callStackBytes + 15) / 16) * 16
      modify fun st => { st with stackSpillBytes := boxedSpillBytes }

    -- Get the (possibly updated) stack size
    let s ← get
    let spillBytes := s.stackSpillBytes

    -- Function prologue
    let allocState := s.allocState
    emit (Instr.push #[Reg.phys PhysReg.x29, Reg.phys PhysReg.x30])
    emit (Instr.mov (.phys PhysReg.x29) (.reg (.phys PhysReg.sp)))

    let calleeSavedPairs : Array (Array Reg) :=
      #[
        #[Reg.phys PhysReg.x19, Reg.phys PhysReg.x20],
        #[Reg.phys PhysReg.x21, Reg.phys PhysReg.x22],
        #[Reg.phys PhysReg.x23, Reg.phys PhysReg.x24],
        #[Reg.phys PhysReg.x25, Reg.phys PhysReg.x26],
        #[Reg.phys PhysReg.x27, Reg.phys PhysReg.x28]
      ]
    for pair in calleeSavedPairs do
      emit (Instr.push pair)
    if spillBytes > 0 then
      emit (Instr.sub (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat spillBytes)))
    if numSpilled > 0 then
      emit (Instr.comment s!"Stack frame: {spillBytes} bytes ({numSpilled} spilled vars)")

    -- Check if this is a boxed function with array-pointer calling convention
    let isBoxed := _params.size > Lean.closureMaxArgs && Lean.IR.ExplicitBoxing.isBoxedName f

    if isBoxed then
      -- Boxed function wrapper: x0 contains pointer to argument array
      -- This is a thin wrapper that unpacks the array and calls the non-boxed version
      emit (Instr.comment s!"Boxed wrapper: unpacking {_params.size} args from array")

      -- Stack layout (spillBytes already allocated in prologue):
      -- [sp+0] to [sp+(extra*8-1)]: args 8+ for the call (at top for callee)
      -- [sp+(extra*8)] to [sp+(extra*8 + params*8 - 1)]: temporary storage for all args
      let extra := if _params.size > 8 then _params.size - 8 else 0
      let argStorageOffset := extra * 8

      -- Unpack all arguments from array to temporary storage
      for idx in [:_params.size] do
        let arrayOffset := Int.ofNat (idx * 8)
        let spillOffset := Int.ofNat (argStorageOffset + idx * 8)
        emit (Instr.ldr (.phys PhysReg.x8) (.mem (.phys PhysReg.x0) arrayOffset))
        emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) spillOffset))

      -- Remove "_boxed" suffix from function name
      let baseFunc := stripBoxedSuffix f

      -- Load args 0-7 into x0-x7
      for i in [:min _params.size 8] do
        let argReg := getArgReg i
        let spillOffset := Int.ofNat (argStorageOffset + i * 8)
        emit (Instr.ldr (.phys argReg) (.mem (.phys PhysReg.sp) spillOffset))

      -- Copy args 8+ from temporary storage to call stack positions
      for j in [:extra] do
        let argIdx := j + 8
        let srcOffset := Int.ofNat (argStorageOffset + argIdx * 8)
        let dstOffset := Int.ofNat (j * 8)
        emit (Instr.ldr (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) srcOffset))
        emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) dstOffset))

      -- Call the non-boxed version
      emit (Instr.bl (baseFunc.mangle "_l_"))

      -- Generate epilogue to properly return
      if spillBytes > 0 then
        emit (Instr.add (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat spillBytes)))

      -- Pop callee-saved registers in reverse order
      let calleeSavedPairs : Array (Array Reg) :=
        #[
          #[Reg.phys PhysReg.x27, Reg.phys PhysReg.x28],
          #[Reg.phys PhysReg.x25, Reg.phys PhysReg.x26],
          #[Reg.phys PhysReg.x23, Reg.phys PhysReg.x24],
          #[Reg.phys PhysReg.x21, Reg.phys PhysReg.x22],
          #[Reg.phys PhysReg.x19, Reg.phys PhysReg.x20]
        ]
      for pair in calleeSavedPairs do
        emit (Instr.pop pair)

      emit (Instr.pop #[Reg.phys PhysReg.x29, Reg.phys PhysReg.x30])
      emit Instr.ret

      -- Result is already in x0
      -- Skip normal function body generation
      let s ← get
      return {
        name := f
        blocks := #[{ label := f.toString, instrs := s.instrs }]
        stringLits := s.stringLitOrder
      }
    else
      -- Normal function: arguments in x0-x7 and on stack
      -- Load arguments that were passed on the caller stack (idx ≥ 8).
      for h : idx in [:_params.size] do
        if hStack : idx ≥ 8 then
          let param := _params[idx]!
          let extra := idx - 8
          -- After prologue: stp x29,x30,[sp,#-16]!; mov x29,sp
          -- x29 points to saved frame record. Caller's stack args start at x29+16.
          let stackOffset := Int.ofNat (16 + extra * 8)
          match allocState.allocation.get? param.x.idx with
          | some allocReg =>
            emit (Instr.comment s!"load stack param {idx}: [x29, #{stackOffset}] → {allocReg}")
            emit (Instr.ldr (.phys allocReg) (.mem (.phys PhysReg.x29) stackOffset))
          | none =>
            -- Stack parameters without register allocation stay on the caller's stack.
            -- They will be accessed via [x29, #offset] when needed.
            emit (Instr.comment s!"stack param {idx} remains at [x29, #{stackOffset}]")
            pure ()
        else
          pure ()

      -- Add label for tail call optimization BEFORE parameter saves
      -- Tail calls will put new values in x0-x7, then jump here to re-save them
      emit (Instr.label s!".Lfn_start_{sanitizeForLabel f.toString}")

      -- Save parameters from argument registers to their allocated registers
      -- This happens on initial entry AND when tail calls jump to .Lfn_start
      for i in [:min _params.size 8] do
        let param := _params[i]!
        match allocState.allocation.get? param.x.idx with
        | some allocReg =>
          -- Check if parameter is float type - use FP registers if so
          let isFloat := param.ty == IRType.float || param.ty == IRType.float32
          if isFloat then
            -- Float parameter comes in d0-d7 (or s0-s7 for float32)
            let fpArgReg := getFPArgReg i
            if allocReg != fpArgReg then
              let prec := typeToFloatPrec param.ty
              emit (Instr.fmov prec (.phys allocReg) (.phys fpArgReg))
          else
            -- Non-float parameter comes in x0-x7
            let argReg := getArgReg i
            if allocReg != argReg then
              emitMove (.phys allocReg) (.reg (.phys argReg))
        | none => pure ()

    -- Select instructions for body
    selectFnBody body

    let s ← get
    return {
      name := f
      blocks := #[{ label := f.toString, instrs := s.instrs }]
      stringLits := s.stringLitOrder
    }

  | .extern f _ _ _ =>
    return { name := f, blocks := #[], stringLits := #[] }

/-- Collect variable types from IR body for register allocation -/
partial def collectVarTypes (body : FnBody) (params : Array Param) : Std.TreeMap Index IRType (fun a b => compare a b) :=
  let rec collect (b : FnBody) (acc : Std.TreeMap Index IRType (fun a b => compare a b)) : Std.TreeMap Index IRType (fun a b => compare a b) :=
    match b with
    | .vdecl x ty _ rest => collect rest (acc.insert x.idx ty)
    | .jdecl _ jparams _ rest =>
      let acc := jparams.foldl (fun m p => m.insert p.x.idx p.ty) acc
      collect rest acc
    | .case _ _ _ alts =>
      alts.foldl (fun m alt => collect alt.body m) acc
    | .set _ _ _ rest | .uset _ _ _ rest | .sset _ _ _ _ _ rest
    | .setTag _ _ rest | .inc _ _ _ _ rest | .dec _ _ _ _ rest | .del _ rest => collect rest acc
    | .ret _ | .jmp _ _ | .unreachable => acc
  -- Start with parameter types
  let initMap := params.foldl (fun m p => m.insert p.x.idx p.ty) {}
  collect body initMap

/-- Compile a declaration to ARM64 machine code -/
def compileDecl (env : Environment) (decl : Decl) : MachineFunction :=
  -- Don't convert to SSA form - work with original IR like C backend does
  -- SSA conversion transforms multi-scalar constructors into nested single-scalar
  -- constructors, which breaks float field handling and creates inefficient code
  let ssaDecl := decl  -- Use original IR, not SSA

  -- Extract body, parameters, and return type for analysis
  let (params, body, retTy) := match ssaDecl with
    | .fdecl _ ps ty b _ => (ps, b, ty)
    | _ => (#[], FnBody.unreachable, IRType.object)

  -- Pre-collect variable types for register allocation
  let varTypes := collectVarTypes body params

  -- Check if function uses floating-point types (in params, return type, or local variables)
  let usesFloat :=
    params.any (fun p => p.ty == IRType.float || p.ty == IRType.float32) ||
    retTy == IRType.float || retTy == IRType.float32 ||
    varTypes.any (fun _ ty => ty == IRType.float || ty == IRType.float32)

  -- Perform register allocation
  let allocState := allocateRegisters params body varTypes usesFloat

  -- Get function name
  let fnName := match ssaDecl with
    | .fdecl name _ _ _ _ => name
    | _ => `unknown

  -- Initialize instruction selection state
  -- Calculate stack size based on register allocation results
  let initState : SelectState := {
    instrs := #[],
    allocState := allocState,
    stackSpillBytes := ((allocState.nextStackSlot * 8 + 15) / 16) * 16,
    nextLabel := 0,
    jpLabels := {},
    jpParams := {},
    env := env,
    fnName := fnName,
    stringLitOrder := #[],
    nextStringId := 0,
    varTypes := {},
    params := params,
    returnType := retTy
  }

  -- Run instruction selection
  let (result, _finalState) := (selectDecl ssaDecl).run initState
  result

end InstrSelect
end Lean.Compiler.Backend
