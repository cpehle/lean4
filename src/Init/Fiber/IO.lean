/-
IO-style fiber helpers
Convenience wrappers for running IO workers and yielding via IO.
-/
module
prelude
public import Init.Fiber
public import Init.System.IO

public section

namespace Fiber

namespace Internal
@[extern "lean_fiber_spawn_io"]
opaque spawnRawIO {Res : Type} (f : Unit → IO Res) (stackSize : @& USize) : IO RawFiber

@[extern "lean_fiber_yield_io"]
opaque yieldRawIO {Y R : Type} [Inhabited R] (y : Y) : IO R
end Internal

@[inline] def spawnIO {Y R Res : Type} (f : Unit → IO Res) (stack? : Option Nat := none) : IO (Fiber Y R Res) := do
  let sz : USize := match stack? with
    | some n => n.toUSize
    | none   => 0
  let raw ← Internal.spawnRawIO f sz
  return ({ raw := raw } : Fiber Y R Res)

@[inline] def yieldIO {Y R : Type} [Inhabited R] (y : Y) : IO R :=
  Internal.yieldRawIO (Y := Y) (R := R) y

end Fiber
end
