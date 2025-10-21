/-
Ensures that direct calls with more than eight arguments spill the remaining
ones to the stack and execute correctly.
-/

def sumNine (a b c d e f g h i : Nat) : Nat :=
  a + b + c + d + e + f + g + h + i

def main : IO Unit := do
  IO.println s!"sum = {sumNine 1 2 3 4 5 6 7 8 9}"
