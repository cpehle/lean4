/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/
module

prelude
public import Lean.Compiler.Backend.ARM64
public import Lean.Compiler.IR.Basic
public import Lean.Compiler.IR.SSA
public import Init.Control.State
public import Std.Data.TreeMap

public section

namespace Lean.Compiler.Backend
namespace RegisterAlloc

open Lean.Compiler.Backend.ARM64
open ARM64
open Lean.IR

/-- Liveness interval for a virtual register -/
structure LiveInterval where
  var : VarId
  start : Nat
  end_ : Nat
  deriving Inhabited, BEq, Repr

/-- Register allocation state -/
structure AllocState where
  /-- Mapping from virtual registers to physical registers -/
  allocation : Std.TreeMap Index PhysReg (fun a b => compare a b)
  /-- Free physical registers -/
  freeRegs : Array PhysReg
  /-- Active intervals (sorted by end point) -/
  active : Array LiveInterval
  /-- Spilled variables -/
  spilled : Array VarId
  /-- Stack slot assignments for spilled variables -/
  stackSlots : Std.TreeMap Index Nat (fun a b => compare a b)
  /-- Next available stack slot -/
  nextStackSlot : Nat
  deriving Inhabited

abbrev M := StateM AllocState

/-- Available general-purpose registers for allocation (excluding special regs).
    IMPORTANT: Only using callee-saved registers (x19-x28) to avoid clobbering across calls.
    Caller-saved registers (x9-x15) can only be used for values that don't cross function calls,
    which requires liveness analysis. For now, we use conservative allocation. -/
def allocatableGPRegs : Array PhysReg :=
  #[ARM64.PhysReg.x19, ARM64.PhysReg.x20, ARM64.PhysReg.x21, ARM64.PhysReg.x22, ARM64.PhysReg.x23, ARM64.PhysReg.x24, ARM64.PhysReg.x25, ARM64.PhysReg.x26, ARM64.PhysReg.x27, ARM64.PhysReg.x28]

/-- Available SIMD/FP registers for allocation -/
def allocatableFPRegs : Array PhysReg :=
  #[ARM64.PhysReg.v0, ARM64.PhysReg.v1, ARM64.PhysReg.v2, ARM64.PhysReg.v3, ARM64.PhysReg.v4, ARM64.PhysReg.v5, ARM64.PhysReg.v6, ARM64.PhysReg.v7,
    ARM64.PhysReg.v16, ARM64.PhysReg.v17, ARM64.PhysReg.v18, ARM64.PhysReg.v19, ARM64.PhysReg.v20, ARM64.PhysReg.v21, ARM64.PhysReg.v22, ARM64.PhysReg.v23,
    ARM64.PhysReg.v24, ARM64.PhysReg.v25, ARM64.PhysReg.v26, ARM64.PhysReg.v27, ARM64.PhysReg.v28, ARM64.PhysReg.v29, ARM64.PhysReg.v30, ARM64.PhysReg.v31]

/-- Get the physical register for a function parameter according to ARM64 ABI -/
def getArgReg (i : Nat) : PhysReg :=
  match i with
  | 0 => ARM64.PhysReg.x0 | 1 => ARM64.PhysReg.x1 | 2 => ARM64.PhysReg.x2 | 3 => ARM64.PhysReg.x3
  | 4 => ARM64.PhysReg.x4 | 5 => ARM64.PhysReg.x5 | 6 => ARM64.PhysReg.x6 | 7 => ARM64.PhysReg.x7
  | _ => ARM64.PhysReg.x8  -- Fallback for >8 params (should be on stack)

/-- Initialize allocation state with available registers -/
def initAllocState (usesFloat : Bool := false) : AllocState :=
  let freeRegs := if usesFloat then allocatableGPRegs ++ allocatableFPRegs else allocatableGPRegs
  { allocation := {}
  , freeRegs := freeRegs
  , active := #[]
  , spilled := #[]
  , stackSlots := {}
  , nextStackSlot := 0
  }

/-- Allocate a physical register for a virtual register -/
def allocReg (v : VarId) (interval : LiveInterval) : M (Option PhysReg) := do
  let s ← get
  match s.freeRegs.back? with
  | none =>
    -- No free registers, need to spill
    return none
  | some reg =>
    let freeRegs := s.freeRegs.pop
    modify fun s =>
      { s with
        allocation := s.allocation.insert v.idx reg,
        freeRegs := freeRegs,
        active := s.active.push interval
      }
    return some reg

/-- Free a register when its live range ends -/
def freeReg (v : VarId) : M Unit := do
  let s ← get
  match s.allocation.get? v.idx with
  | none => return ()
  | some reg =>
    modify fun s =>
      { s with
        allocation := s.allocation.erase v.idx,
        freeRegs := s.freeRegs.push reg,
        active := s.active.filter (fun iv => iv.var != v)
      }

/-- Assign a stack slot for a spilled variable -/
def spillVar (v : VarId) : M Nat := do
  let s ← get
  match s.stackSlots.get? v.idx with
  | some slot => return slot
  | none =>
    let slot := s.nextStackSlot
    modify fun s =>
      { s with
        spilled := s.spilled.push v,
        stackSlots := s.stackSlots.insert v.idx slot,
        nextStackSlot := s.nextStackSlot + 1
      }
    return slot

/-- Expire old intervals that are no longer active -/
def expireOldIntervals (currentPos : Nat) : M Unit := do
  let s ← get
  let (expired, stillActive) := s.active.partition (fun iv => iv.end_ < currentPos)
  for iv in expired do
    freeReg iv.var
  modify fun s => { s with active := stillActive }

/-- Linear scan register allocation algorithm -/
def linearScanAlloc (intervals : Array LiveInterval) : M Unit := do
  -- Sort intervals by start position
  let sortedIntervals := intervals.qsort (fun a b => a.start < b.start)

  for interval in sortedIntervals do
    -- Expire old intervals
    expireOldIntervals interval.start

    -- Try to allocate a register
    match ← allocReg interval.var interval with
    | some _ => pure ()
    | none =>
      -- Need to spill - for now just spill current variable
      let _ ← spillVar interval.var
      pure ()

/-- Simple live interval computation (conservative approximation) -/
partial def computeLiveIntervals (body : FnBody) : Array LiveInterval :=
  -- Conservative: all variables live throughout the function
  let rec collectAllVars (b : FnBody) : Array VarId :=
    match b with
    | .vdecl x _ _ rest => #[x] ++ collectAllVars rest
    | .jdecl _ params jpBody rest =>
      let paramVars := params.map (·.x)
      paramVars ++ collectAllVars jpBody ++ collectAllVars rest
    | .set x _ _ rest => #[x] ++ collectAllVars rest
    | .uset x _ y rest => #[x, y] ++ collectAllVars rest
    | .sset x _ _ y _ rest => #[x, y] ++ collectAllVars rest
    | .setTag x _ rest => #[x] ++ collectAllVars rest
    | .inc x _ _ _ rest => #[x] ++ collectAllVars rest
    | .dec x _ _ _ rest => #[x] ++ collectAllVars rest
    | .del x rest => #[x] ++ collectAllVars rest
    | .case _ x _ alts =>
      let altVars := alts.foldl (fun acc alt => acc ++ collectAllVars alt.body) #[]
      #[x] ++ altVars
    | .ret (.var v) => #[v]
    | .ret _ => #[]
    | .jmp _ _ => #[]
    | .unreachable => #[]

  let allVars := collectAllVars body
  -- Conservative: each variable is live from 0 to end
  let maxPos := 1000
  allVars.map fun v => { var := v, start := 0, end_ := maxPos }

/-- Allocate registers for a function body in SSA form -/
def allocateRegisters (params : Array Param) (body : FnBody) (usesFloat : Bool := false) : AllocState :=
  let intervals := computeLiveIntervals body
  let initState := initAllocState usesFloat

  -- Pre-assign function parameters to callee-saved registers
  -- ARM64 ABI: x0-x7 are caller-saved (clobbered by calls), so we must save
  -- parameters to callee-saved registers (x19-x28) if they're used after calls
  -- We'll generate prologue code to move x0-x7 → callee-saved regs
  let calleeSavedRegs :=
    #[ARM64.PhysReg.x19, ARM64.PhysReg.x20, ARM64.PhysReg.x21, ARM64.PhysReg.x22,
      ARM64.PhysReg.x23, ARM64.PhysReg.x24, ARM64.PhysReg.x25, ARM64.PhysReg.x26,
      ARM64.PhysReg.x27, ARM64.PhysReg.x28]

  -- Pre-allocate specific registers for first 10 parameters to use callee-saved regs
  let stateWithParams := Id.run do
    let mut state := initState
    for h : i in [:min params.size calleeSavedRegs.size] do
      if hp : i < params.size then
        let param := params[i]
        if hr : i < calleeSavedRegs.size then
          let targetReg := calleeSavedRegs[i]
          -- Create an interval for this parameter to mark the register as busy
          let paramInterval : LiveInterval := { var := param.x, start := 0, end_ := 1000 }
          -- Pre-assign this register, remove from free, and add to active
          state := {
            state with
              allocation := state.allocation.insert param.x.idx targetReg
              freeRegs := state.freeRegs.filter (· != targetReg)
              active := state.active.push paramInterval
          }
    -- Parameters 10+ stay on the caller's stack. Reserve stack slot numbers to prevent
    -- local variable spills from using conflicting offsets.
    let numStackParams := if params.size > calleeSavedRegs.size then params.size - calleeSavedRegs.size else 0
    state := { state with nextStackSlot := state.nextStackSlot + numStackParams }
    return state

  -- Filter out parameters from intervals - they're already allocated above
  let nonParamIntervals := intervals.filter fun iv =>
    !params.any fun p => p.x == iv.var

  -- Run linear scan on non-parameter intervals only
  let (_result, finalState) := (linearScanAlloc nonParamIntervals).run stateWithParams
  finalState

/-- Look up the physical register assigned to a virtual register -/
def getAllocation (v : VarId) : M (Option PhysReg) := do
  let s ← get
  return s.allocation.get? v.idx

/-- Check if a variable has been spilled -/
def isSpilled (v : VarId) : M Bool := do
  let s ← get
  return s.spilled.contains v

/-- Get the stack slot for a spilled variable -/
def getStackSlot (v : VarId) : M (Option Nat) := do
  let s ← get
  return s.stackSlots.get? v.idx

end RegisterAlloc
end Lean.Compiler.Backend
