-- Test equality check with literal
@[noinline] def isZero (n : Nat) : Bool :=
  n == 0

def main : IO Unit := do
  IO.println s!"isZero 0 = {isZero 0}"
  IO.println s!"isZero 5 = {isZero 5}"
