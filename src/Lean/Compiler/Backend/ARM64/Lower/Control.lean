/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/

module

prelude
public import Lean.Compiler.Backend.ARM64.Lower.Base

public section

namespace Lean.Compiler.Backend.ARM64.Lower.Control

/-!
# Control Flow Lowering

Handles control flow operations:
- .case: Pattern matching / tag dispatch
- .ret: Function return
- .jmp: Jump to join point
- .jdecl: Join point declaration
- .unreachable: Unreachable code marker
-/

open Lean.IR
open Lean.Compiler.Backend.ARM64

/-- Load a spilled variable from its stack slot -/
def loadSpilledVar (v : VarId) (slot : Nat) : SelectM Reg := do
  let ty := (← read).varTypes.get? v.idx |>.getD .object
  let offset := slot * 8
  let scratch ← acquireScratch
  if ty == .uint8 then
    emit (Instr.ldrb (.phys scratch) (.mem (.phys .sp) (Int.ofNat offset)))
  else if ty == .uint16 then
    emit (Instr.ldrh (.phys scratch) (.mem (.phys .sp) (Int.ofNat offset)))
  else if ty == .uint32 then
    emit (Instr.ldrw (.phys scratch) (.mem (.phys .sp) (Int.ofNat offset)))
  else
    emit (Instr.ldr (.phys scratch) (.mem (.phys .sp) (Int.ofNat offset)))
  return .phys scratch

/-- Store value to a stack slot -/
def storeToStackSlot' (srcReg : Reg) (slot : Nat) (ty : IRType) : SelectM Unit := do
  let offset := Int.ofNat (slot * 8)
  if ty == .uint8 then
    emit (Instr.strb srcReg (.mem (.phys .sp) offset))
  else if ty == .uint16 then
    emit (Instr.strh srcReg (.mem (.phys .sp) offset))
  else if ty == .uint32 then
    emit (Instr.strw srcReg (.mem (.phys .sp) offset))
  else
    emit (Instr.str srcReg (.mem (.phys .sp) offset))

/-- Lower .case expression (pattern matching) -/
def lowerCase (x : VarId) (xType : IRType) (alts : Array Alt)
    (selectBody : FnBody → SelectM Unit) : SelectM Unit := do
  let xReg ← varToReg x

  emitComment "case"

  -- Extract tag based on type
  if xType.isScalar then
    -- For scalar types, the value is already in the register
    emit (Instr.mov (.phys PhysReg.x8) (.reg xReg))
  else if xType.isObj then
    -- For `tagged` or `object` types, value can be scalar OR pointer at runtime
    let scalarLabel ← freshLabel "scalar_tag"
    let compareLabel ← freshLabel "compare_tag"
    emitComment "runtime scalar check"
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

  -- Generate branch targets
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

  -- Emit constructor arms
  for (label, alt) in ctorLabels do
    emit (Instr.label label)
    selectBody (Alt.body alt)
    emit (Instr.b endLabel)

  -- Emit default arm if present
  match defaultAlt with
  | some (label, alt) =>
    emit (Instr.label label)
    selectBody (Alt.body alt)
    emit (Instr.b endLabel)
  | none => pure ()

  emit (Instr.label endLabel)

/-- Lower .ret expression (function return) -/
def lowerRet (arg : Arg) (retTy : IRType) (spillBytes : Nat) : SelectM Unit := do
  emitComment "return"

  match arg with
  | .var v =>
    let vReg ← varToReg v
    if retTy == IRType.float then
      emit (Instr.fmov FloatPrec.double (.phys PhysReg.v0) vReg)
    else if retTy == IRType.float32 then
      emit (Instr.fmov FloatPrec.single (.phys PhysReg.v0) vReg)
    else
      emitMove (.phys PhysReg.x0) (.reg vReg)
  | .erased =>
    emit (Instr.mov (.phys PhysReg.x0) (.imm 0))

  -- Restore stack
  if spillBytes > 0 then
    emit (Instr.add (.phys PhysReg.sp) (.phys PhysReg.sp) (.imm (Int.ofNat spillBytes)))

  -- Only restore callee-saved registers that were saved (reverse order of prologue)
  let usedGP ← getUsedCalleeSavedGP
  let pairs := getCalleeSavedPairs usedGP
  -- Pop in reverse order (last saved = first popped)
  for pair in pairs.reverse do
    emit (Instr.pop pair)

  emit (Instr.pop #[Reg.phys PhysReg.x29, Reg.phys PhysReg.x30])
  emit Instr.ret

/-- Lower .jmp expression (jump to join point) -/
def lowerJmp (j : JoinPointId) (args : Array Arg) : SelectM Unit := do
  emitComment s!"jump to JP{j.idx}"

  let alloc ← getAllocResult
  let jpParams ← getJPParams j

  match jpParams with
  | none =>
    -- No parameters, just jump
    let label ← getJPLabel j
    emit (Instr.b label)
  | some params =>
    let varTypes := (← read).varTypes
    -- Phi resolution: move arguments into parameter locations
    for i in [:min args.size params.size] do
      let arg := args[i]!
      let param := params[i]!

      match arg with
      | .var argVar =>
        let argPhys := alloc.allocation.get? argVar.idx
        let argSpill := alloc.stackSlots.get? argVar.idx
        let paramPhys := alloc.allocation.get? param.idx
        let paramSpill := alloc.stackSlots.get? param.idx

        match argPhys, argSpill, paramPhys, paramSpill with
        | some argReg, _, some paramReg, _ =>
          -- Both in physical registers
          if argReg != paramReg then
            emit (Instr.mov (.phys paramReg) (.reg (.phys argReg)))
        | some argReg, _, none, some paramSlot =>
          -- Arg in register, param spilled to stack
          let paramTy := varTypes.get? param.idx |>.getD IRType.object
          storeToStackSlot' (.phys argReg) paramSlot paramTy
        | none, some argSlot, some paramReg, _ =>
          -- Arg spilled, param in register
          let tmpReg ← loadSpilledVar argVar argSlot
          emit (Instr.mov (.phys paramReg) (.reg tmpReg))
        | none, some argSlot, none, some paramSlot =>
          -- Both spilled to stack
          if argSlot != paramSlot then
            let tmpReg ← loadSpilledVar argVar argSlot
            let paramTy := varTypes.get? param.idx |>.getD IRType.object
            storeToStackSlot' tmpReg paramSlot paramTy
        | _, _, _, _ =>
          emitComment s!"ERROR: phi arg vreg{argVar.idx} or param vreg{param.idx} not allocated!"
      | .erased =>
        let paramPhys := alloc.allocation.get? param.idx
        let paramSpill := alloc.stackSlots.get? param.idx
        match paramPhys, paramSpill with
        | some paramReg, _ =>
          emit (Instr.mov (.phys paramReg) (.imm 0))
        | none, some paramSlot =>
          emit (Instr.mov (.phys PhysReg.x8) (.imm 0))
          let paramTy := varTypes.get? param.idx |>.getD IRType.object
          storeToStackSlot' (.phys PhysReg.x8) paramSlot paramTy
        | _, _ =>
          emitComment s!"ERROR: phi param vreg{param.idx} not allocated!"

    let label ← getJPLabel j
    emit (Instr.b label)

  releaseAllScratch

/-- Lower .jdecl (join point declaration) -/
def lowerJDecl (j : JoinPointId) (params : Array Param) : SelectM Unit := do
  -- Register join point parameters
  let paramVars := params.map (·.x)
  registerJPParams j paramVars

  -- Register parameter types
  for param in params do
    registerVarType param.x param.ty

/-- Lower join point body (emit label and compile body) -/
def lowerJDeclBody (j : JoinPointId) (body : FnBody)
    (selectBody : FnBody → SelectM Unit) : SelectM Unit := do
  let label ← getJPLabel j
  emit (Instr.label label)
  selectBody body

/-- Lower .unreachable -/
def lowerUnreachable : SelectM Unit := do
  emitComment "unreachable"
  emit Instr.ret

/-- Lower field set operations (inlined) -/
def lowerSet (x : VarId) (i : Nat) (y : Arg) : SelectM Unit := do
  let xReg ← varToReg x
  emitComment s!"set field {i} (inline)"
  -- Inline store: field offset = 8 (header) + i * 8
  let fieldOffset := Int.ofNat (8 + i * 8)
  match y with
  | .var v =>
    let yReg ← varToReg v
    emit (Instr.str yReg (.mem xReg fieldOffset))
  | .erased =>
    -- lean_box(0) = 1
    emit (Instr.mov (.phys PhysReg.x9) (.imm 1))
    emit (Instr.str (.phys PhysReg.x9) (.mem xReg fieldOffset))
  releaseAllScratch

/-- Lower usize field set -/
def lowerUSet (x : VarId) (i : Nat) (y : VarId) : SelectM Unit := do
  let xReg ← varToReg x
  let yReg ← varToReg y
  emitComment s!"uset field {i}"
  -- Inline store: offset = 8 + i * 8
  let offset := 8 + i * 8
  emit (Instr.str yReg (.mem xReg (Int.ofNat offset)))
  releaseAllScratch

/-- Lower scalar field set -/
def lowerSSet (x : VarId) (n : Nat) (offset : Nat) (y : VarId) (ty : IRType) : SelectM Unit := do
  let xReg ← varToReg x
  let yReg ← varToReg y
  emitComment s!"sset scalar {n} offset {offset}"
  -- Scalar offset: 8 (header) + n * 8 (usize fields) + offset
  let totalOffset := 8 + n * 8 + offset
  if ty == .uint8 then
    emit (Instr.strb yReg (.mem xReg (Int.ofNat totalOffset)))
  else if ty == .uint16 then
    emit (Instr.strh yReg (.mem xReg (Int.ofNat totalOffset)))
  else if ty == .uint32 then
    emit (Instr.strw yReg (.mem xReg (Int.ofNat totalOffset)))
  else
    emit (Instr.str yReg (.mem xReg (Int.ofNat totalOffset)))
  releaseAllScratch

/-- Lower setTag (inlined) -/
def lowerSetTag (x : VarId) (tag : Nat) : SelectM Unit := do
  let xReg ← varToReg x
  emitComment s!"setTag {tag} (inline)"
  -- m_tag is at offset 7 in lean_object header (little-endian layout)
  -- Use x9 if xReg is x8 to avoid overwriting the pointer
  let tempReg := if xReg == .phys PhysReg.x8 then PhysReg.x9 else PhysReg.x8
  emit (Instr.mov (.phys tempReg) (.imm (Int.ofNat tag)))
  emit (Instr.strb (.phys tempReg) (.mem xReg 7))
  releaseAllScratch

end Lean.Compiler.Backend.ARM64.Lower.Control

end
