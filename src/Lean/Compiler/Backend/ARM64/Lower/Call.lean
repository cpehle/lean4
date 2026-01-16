/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/

module

prelude
public import Lean.Compiler.Backend.ARM64.Lower.Base
public import Lean.Compiler.ExternAttr
public import Lean.Compiler.ClosedTermCache

public section

namespace Lean.Compiler.Backend.ARM64.Lower.Call

/-!
# Function Call Lowering

Handles function call expressions:
- .fap: Full application (direct call)
- .pap: Partial application (closure creation)
- .ap: Apply closure
- .box: Box scalar to object
- .unbox: Unbox object to scalar
- .lit: Literal values
-/

open Lean.IR
open Lean.Compiler.Backend.ARM64

/-- Look up a function declaration in the environment -/
def findEnvDecl' (env : Environment) (f : FunId) : Option Decl :=
  IR.findEnvDecl env f

/-- Check if a function is a callable user-defined Lean function.
    Only user-defined functions can be tail-called safely.
    Excludes:
    - Extern C functions (can't branch to external symbols)
    - Closed terms (global constants, not functions) -/
def isUserDefinedFunction (f : FunId) : SelectM Bool := do
  let env ← getEnv
  -- Closed terms are global constants, not callable functions
  if isClosedTermName env f then return false
  match findEnvDecl' env f with
  | some (.fdecl ..) => return true  -- User-defined function
  | _ => return false  -- Extern or unknown - don't tail call

/-- Get the mangled function name for a FunId -/
def getFunctionName (f : FunId) : SelectM String := do
  -- Special case: main function is called _lean_main
  if f == `main then return "_lean_main"

  let env ← getEnv
  match findEnvDecl' env f with
  | some (.extern _ _ _ extData) =>
    -- Try to get the C function name from extern data
    match getExternEntryFor extData `c with
    | some (.standard _ cName) => return s!"_{cName}"
    | _ => return "_" ++ Name.mangle f "l_"
  | _ => return "_" ++ Name.mangle f "l_"

/-- Get the arity of a function -/
def getFunctionArity (f : FunId) : SelectM Nat := do
  let env ← getEnv
  match findEnvDecl' env f with
  | some (.fdecl _ params ..) => return params.size
  | some (.extern _ params ..) => return params.size
  | none => return 0

/-- Get parameter types for a function -/
def getParamTypes (f : FunId) (args : Array Arg) : SelectM (Array Arg × Array IRType) := do
  let env ← getEnv
  match findEnvDecl' env f with
  | some (.extern _ params ..) =>
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
  | _ => return (args, args.map (fun _ => IRType.object))

/-- Get parameter index for a variable (if it's a function parameter) -/
def getParameterIndex? (v : VarId) : SelectM (Option Nat) := pure none

/-- Lower nullary function reference (global constant load) -/
def lowerGlobalLoad (dst : VarId) (f : FunId) (dstType : IRType) : SelectM Unit := do
  let fnName ← getFunctionName f
  let (dstReg, isSpilled) ← getDstReg dst

  emitComment s!"load global constant {fnName}"

  match dstType with
  | .float | .float32 =>
    -- Float constants: use temp GP register for adrp, then ldr into FP register
    let tempReg := Reg.phys PhysReg.x16
    emit (Instr.adrp tempReg s!"{fnName}@PAGE")
    emit (Instr.ldr dstReg (.reg tempReg) s!", {fnName}@PAGEOFF")
  | .uint8 =>
    emit (Instr.adrp dstReg s!"{fnName}@PAGE")
    emit (Instr.add dstReg dstReg (.label s!"{fnName}@PAGEOFF"))
    emit (Instr.ldrb dstReg (.mem dstReg 0))
  | .uint16 =>
    emit (Instr.adrp dstReg s!"{fnName}@PAGE")
    emit (Instr.add dstReg dstReg (.label s!"{fnName}@PAGEOFF"))
    emit (Instr.ldrh dstReg (.mem dstReg 0))
  | .uint32 =>
    emit (Instr.adrp dstReg s!"{fnName}@PAGE")
    emit (Instr.add dstReg dstReg (.label s!"{fnName}@PAGEOFF"))
    emit (Instr.ldrw dstReg (.mem dstReg 0))
  | _ =>
    -- Load doubleword (64-bit) - objects, uint64, usize
    emit (Instr.adrp dstReg s!"{fnName}@PAGE")
    emit (Instr.ldr dstReg (.reg dstReg) s!", {fnName}@PAGEOFF")

  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

/-- Setup argument in register for function call -/
def setupCallArg (i : Nat) (arg : Arg) (paramTy : IRType) : SelectM Unit := do
  let isFloat := paramTy == IRType.float || paramTy == IRType.float32
  match arg with
  | .var v =>
    let vReg ← varToReg v
    if isFloat then
      let fpArgReg := getFPArgReg i
      let prec := typeToFloatPrec paramTy
      emit (Instr.fmov prec (.phys fpArgReg) vReg)
    else
      let argReg := getArgReg i
      emitMove (.phys argReg) (.reg vReg)
  | .erased =>
    let argReg := getArgReg i
    emit (Instr.mov (.phys argReg) (.imm 1))  -- lean_box(0)

/-- Handle result from function call -/
def handleCallResult (dstReg : Reg) (dstType : IRType) : SelectM Unit := do
  if dstType == IRType.float || dstType == IRType.float32 then
    if dstReg != .phys PhysReg.v0 then
      let prec := typeToFloatPrec dstType
      emit (Instr.fmov prec dstReg (.phys PhysReg.v0))
  else if dstType == IRType.uint8 then
    if dstReg == .phys PhysReg.x0 then
      emit (Instr.and (.phys PhysReg.x0) (.phys PhysReg.x0) (.imm 0xFF))
    else
      emit (Instr.and dstReg (.phys PhysReg.x0) (.imm 0xFF))
  else if dstType == IRType.uint16 then
    if dstReg == .phys PhysReg.x0 then
      emit (Instr.and (.phys PhysReg.x0) (.phys PhysReg.x0) (.imm 0xFFFF))
    else
      emit (Instr.and dstReg (.phys PhysReg.x0) (.imm 0xFFFF))
  else
    if dstReg != .phys PhysReg.x0 then
      emitMove dstReg (.reg (.phys PhysReg.x0))

/-- Check if a call is a self-recursive tail call.
    Returns true if the called function is the current function. -/
def isSelfCall (f : FunId) : SelectM Bool := do
  let currentFn ← getFnName
  return f == currentFn

/-- Lower self-recursive tail call: true tail call with stack restore -/
def lowerSelfTailCall (f : FunId) (args : Array Arg) : SelectM Unit := do
  let (callArgs, paramTypes) ← getParamTypes f args
  let fnName ← getFunctionName f
  let spillBytes ← getSpillBytes

  emitComment s!"true tail call to self with {callArgs.size} runtime args"

  -- Setup arguments for the tail call
  for i in [:min callArgs.size 8] do
    let paramTy := if i < paramTypes.size then paramTypes[i]! else IRType.object
    setupCallArg i callArgs[i]! paramTy

  -- Restore stack frame (epilogue without ret)
  if spillBytes > 0 then
    emit (Instr.add (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat spillBytes)))

  -- Only restore callee-saved registers that were saved (reverse order of prologue)
  let usedGP ← getUsedCalleeSavedGP
  let pairs := getCalleeSavedPairs usedGP
  for pair in pairs.reverse do
    emit (Instr.pop pair)

  -- Restore frame pointer and link register
  emit (Instr.pop #[Reg.phys PhysReg.x29, Reg.phys PhysReg.x30])

  -- Jump to function (tail call - reuses caller's return address)
  emit (Instr.b fnName)

/-- Lower general tail call to a different function: tail call with stack restore -/
def lowerTailCall (f : FunId) (args : Array Arg) : SelectM Unit := do
  let (callArgs, paramTypes) ← getParamTypes f args
  let fnName ← getFunctionName f
  let spillBytes ← getSpillBytes

  emitComment s!"general tail call to {f} with {callArgs.size} runtime args"

  -- Setup arguments for the tail call (same as lowerSelfTailCall)
  for i in [:min callArgs.size 8] do
    let paramTy := if i < paramTypes.size then paramTypes[i]! else IRType.object
    setupCallArg i callArgs[i]! paramTy

  -- Handle stack arguments if more than 8 args (callee will pop them)
  -- Note: For tail calls with stack args, we need to set up the stack args
  -- in the callee's expected position. This is complex because we need to
  -- clean up our frame first. For now, only support <= 8 args in tail calls.
  if callArgs.size > 8 then
    emitComment "WARNING: tail call with >8 args, falling back to regular call"
    -- Fall back to regular call - this is a limitation
    -- We can't easily tail-call with stack args because our frame is in the way
    emit (Instr.bl fnName)
    if spillBytes > 0 then
      emit (Instr.add (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat spillBytes)))
    let usedGP ← getUsedCalleeSavedGP
    let pairs := getCalleeSavedPairs usedGP
    for pair in pairs.reverse do
      emit (Instr.pop pair)
    emit (Instr.pop #[Reg.phys PhysReg.x29, Reg.phys PhysReg.x30])
    emit Instr.ret
    return

  -- Restore stack frame (epilogue without ret)
  if spillBytes > 0 then
    emit (Instr.add (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat spillBytes)))

  -- Only restore callee-saved registers that were saved (reverse order of prologue)
  let usedGP ← getUsedCalleeSavedGP
  let pairs := getCalleeSavedPairs usedGP
  for pair in pairs.reverse do
    emit (Instr.pop pair)

  -- Restore frame pointer and link register
  emit (Instr.pop #[Reg.phys PhysReg.x29, Reg.phys PhysReg.x30])

  -- Jump to target function (tail call - reuses caller's return address)
  emit (Instr.b fnName)

/-- Lower .fap (full application / direct call) -/
def lowerFap (dst : VarId) (dstType : IRType) (f : FunId) (args : Array Arg)
    (tryInline : String → Array Arg → Reg → SelectM Bool) : SelectM Unit := do
  let (dstReg, isSpilled) ← getDstReg dst

  if args.size == 0 then
    lowerGlobalLoad dst f dstType
    return

  let fnName ← getFunctionName f
  if ← tryInline fnName args dstReg then
    if isSpilled then
      storeSpilledDst dst dstReg
    return

  -- NOTE: Tail call optimization is now handled at the IR level
  -- lowerFap should NOT do tail call optimization since we don't know if we're in tail position
  -- Self-recursive tail calls in Lean IR are represented differently (goto-style jumps)

  -- Standard function call
  let (callArgs, paramTypes) ← getParamTypes f args
  emitComment s!"call {f} with {callArgs.size} runtime args"

  -- Setup first 8 arguments in registers
  for i in [:min callArgs.size 8] do
    let paramTy := if i < paramTypes.size then paramTypes[i]! else IRType.object
    setupCallArg i callArgs[i]! paramTy

  -- Handle stack arguments (beyond 8)
  let extra := if callArgs.size > 8 then callArgs.size - 8 else 0
  let extraBytes := extra * 8
  let stackBytes := ((extraBytes + 15) / 16) * 16

  if stackBytes > 0 then
    emit (Instr.sub (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat stackBytes)))

  -- Store extra arguments to stack
  if extra > 0 then
    let alloc ← getAllocResult
    for j in [:extra] do
      let argIdx := j + 8
      let offset := Int.ofNat (j * 8)
      match callArgs[argIdx]! with
      | .var v =>
        match alloc.allocation.get? v.idx with
        | some phys =>
          emit (Instr.str (.phys phys) (.mem (.phys PhysReg.sp) offset))
        | none =>
          match alloc.stackSlots.get? v.idx with
          | some slot =>
            let oldOffset := Int.ofNat (stackBytes + slot * 8)
            emit (Instr.ldr (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) oldOffset))
            emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
          | none =>
            emitComment s!"ERROR: arg var{v.idx} not allocated!"
      | .erased =>
        emit (Instr.mov (.phys PhysReg.x8) (.imm 1))
        emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))

  emit (Instr.bl fnName)

  if stackBytes > 0 then
    emit (Instr.add (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat stackBytes)))

  handleCallResult dstReg dstType

  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

/-- Lower .pap (partial application / closure creation) -/
def lowerPap (dst : VarId) (f : FunId) (args : Array Arg) : SelectM Unit := do
  let (dstReg, isSpilled) ← getDstReg dst
  let alloc ← getAllocResult

  emitComment s!"partial application {f} with {args.size} args"
  let fnName ← getFunctionName f
  let arity ← getFunctionArity f

  -- Allocate closure: lean_alloc_closure(fn, arity, num_args)
  emit (Instr.adrp (.phys PhysReg.x0) s!"{fnName}@PAGE")
  emit (Instr.add (.phys PhysReg.x0) (.phys PhysReg.x0) (.label s!"{fnName}@PAGEOFF"))
  emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat arity)))
  emit (Instr.mov (.phys PhysReg.x2) (.imm (Int.ofNat args.size)))
  emit (Instr.bl "_lean_alloc_closure")

  if args.isEmpty then
    if dstReg != .phys PhysReg.x0 then
      emitMove dstReg (.reg (.phys PhysReg.x0))
  else
    -- Check if dstReg is callee-saved (x19-x28)
    let isCalleeSaved := match dstReg with
      | .phys p => p.toNat >= 19 && p.toNat <= 28
      | _ => false

    if isCalleeSaved then
      emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
      for i in [:args.size] do
        emit (Instr.mov (.phys PhysReg.x0) (.reg dstReg))
        emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat i)))
        match args[i]! with
        | .var v =>
          let vReg ← varToReg v
          emitMove (.phys PhysReg.x2) (.reg vReg)
        | .erased =>
          emit (Instr.mov (.phys PhysReg.x2) (.imm 1))
        emit (Instr.bl "_lean_closure_set")
    else if isSpilled then
      -- Use stack slot to hold closure across calls
      match alloc.stackSlots.get? dst.idx with
      | some slot =>
        let offset := Int.ofNat (slot * 8)
        emitComment s!"store closure to stack slot {slot}"
        emit (Instr.str (.phys PhysReg.x0) (.mem (.phys PhysReg.sp) offset))
        for i in [:args.size] do
          emit (Instr.ldr (.phys PhysReg.x0) (.mem (.phys PhysReg.sp) offset))
          emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat i)))
          match args[i]! with
          | .var v =>
            let vReg ← varToReg v
            emitMove (.phys PhysReg.x2) (.reg vReg)
          | .erased =>
            emit (Instr.mov (.phys PhysReg.x2) (.imm 1))
          emit (Instr.bl "_lean_closure_set")
        emit (Instr.ldr dstReg (.mem (.phys PhysReg.sp) offset))
        releaseAllScratch
        return  -- Spill already handled
      | none =>
        emitMove dstReg (.reg (.phys PhysReg.x0))
    else
      emitMove dstReg (.reg (.phys PhysReg.x0))
      for i in [:args.size] do
        emit (Instr.mov (.phys PhysReg.x0) (.reg dstReg))
        emit (Instr.mov (.phys PhysReg.x1) (.imm (Int.ofNat i)))
        match args[i]! with
        | .var v =>
          let vReg ← varToReg v
          emitMove (.phys PhysReg.x2) (.reg vReg)
        | .erased =>
          emit (Instr.mov (.phys PhysReg.x2) (.imm 1))
        emit (Instr.bl "_lean_closure_set")

  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

/-- Lower .ap (apply closure) -/
def lowerAp (dst : VarId) (x : VarId) (args : Array Arg) : SelectM Unit := do
  let xReg ← varToReg x
  let (dstReg, isSpilled) ← getDstReg dst
  let alloc ← getAllocResult

  emitComment s!"apply closure with {args.size} args"

  if args.isEmpty then
    if dstReg != xReg then
      emit (Instr.mov dstReg (.reg xReg))
  else
    let maxArgs := closureMaxArgs
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
          emit (Instr.mov (.phys argReg) (.imm 1))
      emit (Instr.bl s!"_lean_apply_{n}")
      if dstReg != .phys PhysReg.x0 then
        emitMove dstReg (.reg (.phys PhysReg.x0))
    else
      -- Many arguments: use lean_apply_m with argument array
      let argBytes := args.size * 8
      let totalBytes := ((argBytes + 15) / 16) * 16
      if totalBytes > 0 then
        emit (Instr.sub (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat totalBytes)))
      for i in [:args.size] do
        let offset := Int.ofNat (i * 8)
        match args[i]! with
        | .var v =>
          match alloc.allocation.get? v.idx with
          | some phys =>
            emit (Instr.str (.phys phys) (.mem (.phys PhysReg.sp) offset))
          | none =>
            match alloc.stackSlots.get? v.idx with
            | some slot =>
              let oldOffset := Int.ofNat (totalBytes + slot * 8)
              emit (Instr.ldr (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) oldOffset))
              emit (Instr.str (.phys PhysReg.x8) (.mem (.phys PhysReg.sp) offset))
            | none =>
              emitComment s!"ERROR: arg var{v.idx} not allocated!"
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

  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

/-- Lower .box expression -/
def lowerBox (dst : VarId) (ty : IRType) (x : VarId) : SelectM Unit := do
  let xReg ← varToReg x
  let (dstReg, isSpilled) ← getDstReg dst

  emitComment "box"

  match ty with
  | .uint64 =>
    emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
    emit (Instr.bl "_lean_box_uint64")
    if dstReg != .phys PhysReg.x0 then
      emitMove dstReg (.reg (.phys PhysReg.x0))
  | .float =>
    emitMove (.phys PhysReg.v0) (.reg xReg)
    emit (Instr.bl "_lean_box_float")
    if dstReg != .phys PhysReg.x0 then
      emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
  | .float32 =>
    emitMove (.phys PhysReg.v0) (.reg xReg)
    emit (Instr.bl "_lean_box_float32")
    if dstReg != .phys PhysReg.x0 then
      emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
  | .usize =>
    emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
    emit (Instr.bl "_lean_box_usize")
    if dstReg != .phys PhysReg.x0 then
      emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
  | .uint8 | .uint16 | .uint32 =>
    -- Inline scalar boxing: shift left by 1 and set low bit
    emit (Instr.lsl dstReg xReg (.imm 1))
    emit (Instr.orr dstReg dstReg (.imm 1))
  | _ =>
    emit (Instr.mov dstReg (.reg xReg))

  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

/-- Lower .unbox expression -/
def lowerUnbox (dst : VarId) (dstType : IRType) (x : VarId) : SelectM Unit := do
  let xReg ← varToReg x
  let (dstReg, isSpilled) ← getDstReg dst

  emitComment "unbox"

  match dstType with
  | .uint64 =>
    emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
    emit (Instr.bl "_lean_unbox_uint64")
    if dstReg != .phys PhysReg.x0 then
      emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
  | .float =>
    emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
    emit (Instr.bl "_lean_unbox_float")
    if dstReg != .phys PhysReg.v0 then
      emitMove dstReg (.reg (.phys PhysReg.v0))
  | .float32 =>
    emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
    emit (Instr.bl "_lean_unbox_float32")
    if dstReg != .phys PhysReg.v0 then
      emitMove dstReg (.reg (.phys PhysReg.v0))
  | .usize =>
    emit (Instr.mov (.phys PhysReg.x0) (.reg xReg))
    emit (Instr.bl "_lean_unbox_usize")
    if dstReg != .phys PhysReg.x0 then
      emit (Instr.mov dstReg (.reg (.phys PhysReg.x0)))
  | .uint8 | .uint16 | .uint32 =>
    -- Inline scalar unboxing: arithmetic shift right by 1
    emit (Instr.asr dstReg xReg (.imm 1))
  | _ =>
    emit (Instr.asr dstReg xReg (.imm 1))

  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

/-- Lower numeric literal -/
def lowerLitNum (dst : VarId) (dstType : IRType) (n : Nat) : SelectM Unit := do
  let (dstReg, isSpilled) ← getDstReg dst
  let alloc ← getAllocResult
  -- Check if this constant is rematerializable (identified during liveness analysis)
  let isRematerializable := alloc.rematerializable.contains dst.idx

  if dstType.isScalar then
    -- Scalar: direct value
    loadImm64 dstReg n
    -- If spilled and NOT rematerializable, store to stack
    -- If rematerializable, skip store - loadSpilledVar will regenerate the constant
    if isSpilled && !isRematerializable then
      storeSpilledDst dst dstReg
  else
    -- Object: create boxed Nat
    emitComment s!"lit nat {n}"
    if n < (1 <<< 62) then
      -- Small enough for tagged representation
      let taggedVal := n * 2 + 1
      loadImm64 dstReg taggedVal
      -- If spilled and NOT rematerializable, store to stack
      if isSpilled && !isRematerializable then
        storeSpilledDst dst dstReg
    else
      -- Need heap allocation - cannot rematerialize
      loadImm64 (.phys PhysReg.x0) n
      emit (Instr.bl "_lean_unsigned_to_nat")
      if dstReg != .phys PhysReg.x0 then
        emitMove dstReg (.reg (.phys PhysReg.x0))
      if isSpilled then
        storeSpilledDst dst dstReg
  releaseAllScratch

/-- Lower string literal -/
def lowerLitStr (dst : VarId) (s : String) : SelectM Unit := do
  let (dstReg, isSpilled) ← getDstReg dst

  emitComment s!"lit string \"{s.take 20}...\""

  -- Register string literal with unique labels (include function name)
  let state ← get
  let fnName ← getFnName
  let fnSuffix := sanitizeForLabel fnName.toString
  let strId := state.buffer.nextStringId
  let dataLabel := s!"_str_{fnSuffix}_{strId}_data"
  modify fun st => { st with
    buffer := { st.buffer with
      stringLits := st.buffer.stringLits.push {
        id := strId
        ptrLabel := dataLabel  -- We only need the data label now
        dataLabel := dataLabel
        value := s
      }
      nextStringId := strId + 1
    }
  }

  -- Get the UTF-8 byte length of the string
  let byteLen := s.toUTF8.size

  -- Call lean_mk_string_unchecked(s, sz, capacity)
  -- x0 = pointer to raw string data
  -- x1 = byte length (sz)
  -- x2 = capacity (same as sz for string literals)
  emit (Instr.adrp (.phys PhysReg.x0) s!"{dataLabel}@PAGE")
  emit (Instr.add (.phys PhysReg.x0) (.phys PhysReg.x0) (.label s!"{dataLabel}@PAGEOFF"))
  loadImm64 (.phys PhysReg.x1) byteLen
  loadImm64 (.phys PhysReg.x2) byteLen
  emit (Instr.bl "_lean_mk_string_unchecked")

  -- Result is in x0
  if dstReg != .phys PhysReg.x0 then
    emitMove dstReg (.reg (.phys PhysReg.x0))

  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

/-- Lower .isShared expression (inlined) -/
def lowerIsShared (dst : VarId) (x : VarId) : SelectM Unit := do
  let xReg ← varToReg x
  let (dstReg, isSpilled) ← getDstReg dst

  emitComment "isShared (inline)"

  -- If xReg and dstReg are the same, we need to save xReg first
  let ptrReg := if xReg == dstReg then Reg.phys PhysReg.x9 else xReg
  if xReg == dstReg then
    emit (Instr.mov ptrReg (.reg xReg))

  -- Check if tagged pointer (low bit set) - if tagged, not shared
  emit (Instr.tst ptrReg (.imm 1))
  let doneLabel ← freshLabel "is_shared_done"
  emit (Instr.mov dstReg (.imm 0))  -- Default to 0 (not shared)
  emit (Instr.bCond Cond.ne doneLabel)  -- If tagged, skip to done

  -- Not tagged, check reference count
  -- m_rc is at offset 0, 4 bytes (int32_t)
  emit (Instr.ldrw (.phys PhysReg.x8) (.mem ptrReg 0))
  -- The IR `isShared` instruction implements `!lean_is_exclusive`, i.e., rc != 1
  -- (This includes persistent objects with rc=0 and shared objects with rc>=2)
  emit (Instr.cmp (.phys PhysReg.x8) (.imm 1))
  emit (Instr.cset dstReg Cond.ne)  -- dstReg = 1 if rc != 1

  emit (Instr.label doneLabel)

  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

/-- Lower .isTaggedPtr expression -/
def lowerIsTaggedPtr (dst : VarId) (x : VarId) : SelectM Unit := do
  let xReg ← varToReg x
  let (dstReg, isSpilled) ← getDstReg dst

  emitComment "isTaggedPtr"
  -- Check if low bit is set: (x & 1)
  emit (Instr.and dstReg xReg (.imm 1))

  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

end Lean.Compiler.Backend.ARM64.Lower.Call

end
