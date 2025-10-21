def factorial (n : Nat) : Nat :=
  match n with
  | 0 => 1
  | n + 1 => (n + 1) * factorial n

def main (args : List String) : IO Unit := do
  IO.println s!"Factorial 5 = {factorial 5}"
