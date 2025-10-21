/-
Simplest possible recursive test
-/

@[noinline] def countdown (n : Nat) : Nat :=
  match n with
  | 0 => 0
  | k + 1 => countdown k

def main : IO Unit := do
  IO.println s!"countdown 3 = {countdown 3}"
