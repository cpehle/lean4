/-
Fiber — Lean wrappers over the fiber FFI
Typed yield/resume around an opaque RawFiber handle.
-/
module
prelude
public import Init.Core
public import Init.System.IO

public section

namespace Fiber

opaque RawFiber : Type

structure Fiber (Y R Res : Type) where
  raw : RawFiber

namespace Internal
@[extern "lean_is_fiber_context_io"]
opaque isContextIO : IO Bool

@[extern "lean_fiber_spawn"]
opaque spawnRaw {Res : Type} (f : Unit → Res) (stackSize : @& USize) : IO RawFiber

@[extern "lean_fiber_resume_with"]
opaque resumeWithRaw {Y R Res : Type} (fb : @& RawFiber) (arg : R) : IO (Sum Y Res)

@[extern "lean_fiber_yield_value"]
opaque yieldRaw {Y R : Type} [Inhabited R] (y : Y) : R

@[extern "lean_fiber_state"]
opaque stateRaw (fb : @& RawFiber) : IO UInt8
end Internal

@[inline] def isContext : IO Bool := Internal.isContextIO

inductive State where
  | finished
  | running
  deriving Repr, DecidableEq

@[inline] def state (fb : @& Fiber Y R Res) : IO State := do
  let n ← Internal.stateRaw fb.raw
  pure <| if n == (0 : UInt8) then .finished else .running

@[inline] def resumeWith {Y R Res : Type} (fb : @& Fiber Y R Res) (r : R) : IO (Sum Y Res) :=
  Internal.resumeWithRaw fb.raw r

@[inline] def spawn {Y R Res : Type} (f : Unit → Res) (stack? : Option Nat := none) : IO (Fiber Y R Res) := do
  let sz : USize := match stack? with
    | some n => n.toUSize
    | none   => 0
  let raw ← Internal.spawnRaw f sz
  pure { raw }

@[inline] def yield {Y R : Type} [Inhabited R] (y : Y) : R :=
  Internal.yieldRaw (Y := Y) (R := R) y

@[inline] def yieldNow {R : Type} [Inhabited R] : R :=
  Internal.yieldRaw (Y := Unit) (R := R) ()

partial def runToEnd {Y R Res : Type}
    (fb : Fiber Y R Res) (init : R) (onYield : Y → R) : IO Res := do
  let rec loop (acc : R) : IO Res := do
    let s ← resumeWith (Y := Y) (R := R) (Res := Res) fb acc
    match s with
    | .inl y   => loop (onYield y)
    | .inr res => pure res
  loop init

end Fiber
end
