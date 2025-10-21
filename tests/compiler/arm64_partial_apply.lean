/-
Checks that partial application captures values correctly when lowered to the
ARM64 native backend.
-/

def addBase (base x : Nat) : Nat :=
  base + x

def main : IO Unit := do
  let f := addBase 10
  let first := f 5
  let second := f 17
  IO.println s!"partial {first} {second}"
