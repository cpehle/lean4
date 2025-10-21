-- Minimal test for literal handling
@[noinline] def addOne (n : Nat) : Nat :=
  n + 1

def main : IO Unit := do
  IO.println s!"addOne 5 = {addOne 5}"
