/-
Program-style fiber API (pure, statically safe surface)
Provides a small monadic interface around the low-level fiber FFI so that
`yield` is only used inside a fiber program.
-/
module
prelude
public import Init.Fiber

public section

namespace Fiber

abbrev Program (Y R : Type) (α : Type) := Unit → α

namespace Program

@[inline] def pure (a : α) : Program Y R α := fun _ => a
@[inline] def bind (p : Program Y R α) (k : α → Program Y R β) : Program Y R β :=
  fun u => k (p u) u

instance : Pure (Program Y R) := ⟨pure⟩
instance : Bind (Program Y R) := ⟨bind⟩
instance : Monad (Program Y R) := { pure := pure, bind := bind }

@[inline] def yield {Y R : Type} [Inhabited R] (y : Y) : Program Y R R :=
  fun u => match u with | () => Internal.yieldRaw (Y := Y) (R := R) y

@[inline] def yieldNow {R : Type} [Inhabited R] : Program Unit R R :=
  yield (Y := Unit) (R := R) ()

@[inline] def spawn {Y R Res : Type} (p : Program Y R Res) (stack? : Option Nat := none) : IO (Fiber Y R Res) := do
  let sz : USize := match stack? with
    | some n => n.toUSize
    | none   => 0
  let raw ← Internal.spawnRaw p sz
  return ({ raw := raw } : Fiber Y R Res)

end Program

end Fiber
end
