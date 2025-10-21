/-
Test just factorial in ARM64 backend.
-/

@[noinline] def factorial (n : Nat) : Nat :=
  match n with
  | 0 => 1
  | n + 1 => (n + 1) * factorial n

def main : IO Unit := do
  IO.println s!"factorial 5 = {factorial 5}"
