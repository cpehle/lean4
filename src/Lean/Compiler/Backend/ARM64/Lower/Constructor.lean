/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/

module

prelude
public import Lean.Compiler.Backend.ARM64.Lower.Base

public section

namespace Lean.Compiler.Backend.ARM64.Lower.Constructor

/-!
# Constructor Lowering

This module handles lowering of constructor-related IR expressions:
- .ctor: Allocate a new constructor and set its fields
- .reuse: Reuse an existing object's memory for a new constructor
- .reset: Reset an object for reuse

Constructor lowering is complex due to:
1. Register conflicts (arg may use same register as result)
2. Spilled destinations requiring stack management
3. Boxing of scalar fields
4. ABI compliance for runtime calls
-/

open Lean.IR
open Lean.Compiler.Backend.ARM64

/-- Lower a boxed tag constructor (size=0, ssize=0) -/
def lowerBoxedTag (dstReg : Reg) (tag : Nat) : SelectM Unit := do
  -- (tag << 1) | 1
  let tagVal := tag * 2 + 1
  emit (Instr.mov dstReg (.imm (Int.ofNat tagVal)))

/-- Detect if any argument would conflict with destination register -/
def detectConflict (dstReg : Reg) (args : Array Arg) : SelectM (Option VarId) := do
  for arg in args do
    match arg with
    | .var v =>
      let vReg ← varToReg v
      if vReg == dstReg then return some v
    | .erased => pure ()
  return none

/-- Save a conflicting argument to x9 before it gets overwritten -/
def saveConflict (conflict : VarId) (dstReg : Reg) : SelectM Unit := do
  emitComment s!"save vreg{conflict.idx} from {dstReg} to x9 (constructor will overwrite)"
  emit (Instr.mov (.phys .x9) (.reg dstReg))

/-- Emit constructor allocation call -/
def emitAllocCtor (tag : Nat) (numObjs : Nat) (scalarSize : Nat) : SelectM Unit := do
  emit (Instr.mov (.phys .x0) (.imm (Int.ofNat tag)))
  emit (Instr.mov (.phys .x1) (.imm (Int.ofNat numObjs)))
  emit (Instr.mov (.phys .x2) (.imm (Int.ofNat scalarSize)))
  emit (Instr.bl "lean_alloc_ctor")

/-- Emit field set by inlining the store instruction.
    This avoids function call overhead and register clobbering from lean_ctor_set. -/
def emitFieldSet (fieldIdx : Nat) (arg : Arg) (conflict : Option VarId)
    (ctorReg : Reg) (ctorStackSlot : Option Nat) : SelectM Unit := do
  -- Field offset: header is 8 bytes, each field is 8 bytes
  let fieldOffset := Int.ofNat (8 + fieldIdx * 8)

  match arg with
  | .var v =>
    let vReg ← varToReg v
    let actualReg := match conflict with
      | some cv => if cv.idx == v.idx then .phys .x9 else vReg
      | none => vReg

    -- Check if field needs boxing
    let vType ← getVarType v
    let needsBoxing := match vType with
      | some ty => ty.isScalar
      | none => false

    if needsBoxing then
      let ty := vType.getD .object
      emitComment s!"box {ty} field {fieldIdx}"
      emit (Instr.mov (.phys .x0) (.reg actualReg))

      -- Check if boxing requires a function call (destruction point)
      let boxingIsCall := match ty with
        | .usize | .uint64 | .float | .float32 => true
        | _ => false

      -- For calls, we need to handle ctorReg potentially being clobbered
      -- ctorReg is either a callee-saved register (x19-x28) or x8
      -- If it's x8 and we have a stack slot, we can reload from there
      let ctorRegAfterCall ← if boxingIsCall then
        -- x8 is caller-saved, need to preserve it if used
        let needsSave := match ctorReg with
          | .phys .x8 => true
          | _ => false
        if needsSave then
          -- Save ctorReg to x10 before the call
          emit (Instr.mov (.phys .x10) (.reg ctorReg))
        pure ()
      else
        pure ()

      match ty with
      | .usize => emit (Instr.bl "_lean_box_usize")
      | .uint64 => emit (Instr.bl "_lean_box_uint64")
      | .uint8 | .uint16 | .uint32 =>
        -- Inline box for small uints: (val << 1) | 1
        emit (Instr.lsl (.phys .x0) (.phys .x0) (.imm 1))
        emit (Instr.orr (.phys .x0) (.phys .x0) (.imm 1))
      | .float =>
        emitMove (.phys .v0) (.reg actualReg)
        emit (Instr.bl "_lean_box_float")
      | .float32 =>
        emitMove (.phys .v0) (.reg actualReg)
        emit (Instr.bl "_lean_box_float32")
      | _ =>
        emit (Instr.lsl (.phys .x0) (.phys .x0) (.imm 1))
        emit (Instr.orr (.phys .x0) (.phys .x0) (.imm 1))

      -- After boxing, x0 has the boxed value
      -- Determine which register holds the constructor pointer
      let finalCtorReg ← if boxingIsCall then
        match ctorReg with
        | .phys .x8 =>
          -- x8 was saved to x10 before the call, restore it
          emit (Instr.mov (.phys .x8) (.reg (.phys .x10)))
          pure ctorReg
        | _ =>
          -- Callee-saved registers survive the call
          pure ctorReg
      else
        pure ctorReg

      -- Inline store: str x0, [ctorReg, #offset]
      emit (Instr.str (.phys .x0) (.mem finalCtorReg fieldOffset))

    else
      -- No boxing needed, direct inline store
      emit (Instr.str actualReg (.mem ctorReg fieldOffset))

  | .erased =>
    emitComment s!"field {fieldIdx} erased, set to lean_box(0) = 1"
    emit (Instr.mov (.phys .x9) (.imm 1))
    emit (Instr.str (.phys .x9) (.mem ctorReg fieldOffset))

/-- Lower .ctor expression -/
def lowerCtor (dst : VarId) (info : CtorInfo) (args : Array Arg) : SelectM Unit := do
  let alloc ← getAllocResult
  let (dstReg, isSpilled) ← getDstReg dst

  emitComment s!"ctor {info.name} (tag={info.cidx}, objs={info.size}, scalar={info.ssize})"

  -- Zero-sized constructors are just boxed tags
  if info.size == 0 && info.ssize == 0 then
    lowerBoxedTag dstReg info.cidx
    if isSpilled then
      storeSpilledDst dst dstReg
    return

  -- Check for register conflicts
  let conflict ← detectConflict dstReg args
  match conflict with
  | some v => saveConflict v dstReg
  | none => pure ()

  -- Allocate constructor
  emitAllocCtor info.cidx info.size info.ssize

  -- Move result to destination register (if not spilled)
  let ctorReg := if isSpilled then .phys .x8 else dstReg
  emit (Instr.mov ctorReg (.reg (.phys .x0)))

  -- If spilled, also store to stack
  if isSpilled then
    match alloc.stackSlots.get? dst.idx with
    | some slot =>
      let offset := Int.ofNat (slot * 8)
      emitComment s!"store constructor for spilled vreg{dst.idx}"
      emit (Instr.str (.phys .x0) (.mem (.phys .sp) offset))
    | none => pure ()

  -- Set all fields (pass stack slot for potential reload after boxing calls)
  let ctorStackSlot := if isSpilled then alloc.stackSlots.get? dst.idx else none
  for i in [:args.size] do
    let arg := args[i]!
    emitFieldSet i arg conflict ctorReg ctorStackSlot

  -- Final move to destination if needed
  if !isSpilled && ctorReg != dstReg then
    emit (Instr.mov dstReg (.reg ctorReg))

  releaseAllScratch

/-- Lower .reset expression -/
def lowerReset (dst : VarId) (n : Nat) (x : VarId) : SelectM Unit := do
  let xReg ← varToReg x
  let (dstReg, isSpilled) ← getDstReg dst
  emitComment s!"reset {n}"
  emit (Instr.mov dstReg (.reg xReg))
  if isSpilled then
    storeSpilledDst dst dstReg
  releaseAllScratch

/-- Lower .reuse expression -/
def lowerReuse (dst : VarId) (x : VarId) (info : CtorInfo)
    (updtHeader : Bool) (args : Array Arg) : SelectM Unit := do
  let xReg ← varToReg x
  let alloc ← getAllocResult
  let (dstReg, isSpilled) ← getDstReg dst

  emitComment s!"reuse {info.name}"

  -- Zero-sized just copies pointer
  if info.size == 0 && info.ssize == 0 then
    emit (Instr.mov dstReg (.reg xReg))
    if isSpilled then
      storeSpilledDst dst dstReg
    return

  -- Check for conflicts
  let conflict ← detectConflict dstReg args
  match conflict with
  | some v => saveConflict v dstReg
  | none => pure ()

  -- Copy pointer to destination
  let ctorReg := if isSpilled then .phys .x8 else dstReg
  emit (Instr.mov ctorReg (.reg xReg))

  -- Store to stack if spilled
  let ctorStackSlot := if isSpilled then alloc.stackSlots.get? dst.idx else none
  if isSpilled then
    match ctorStackSlot with
    | some slot =>
      let offset := Int.ofNat (slot * 8)
      emitComment s!"store reused object for spilled vreg{dst.idx}"
      emit (Instr.str ctorReg (.mem (.phys .sp) offset))
    | none => pure ()

  -- Update tag if needed (inline as strb to avoid function call)
  if updtHeader then
    emitComment s!"update tag to {info.cidx} (inline)"
    emit (Instr.mov (.phys .x9) (.imm (Int.ofNat info.cidx)))
    -- Tag is at byte offset 7 in the header (little-endian)
    emit (Instr.strb (.phys .x9) (.mem ctorReg 7))

  -- Set all fields
  for i in [:args.size] do
    let arg := args[i]!
    emitFieldSet i arg conflict ctorReg ctorStackSlot

  -- Final move if needed
  if !isSpilled && ctorReg != dstReg then
    emit (Instr.mov dstReg (.reg ctorReg))

  releaseAllScratch

end Lean.Compiler.Backend.ARM64.Lower.Constructor

end
