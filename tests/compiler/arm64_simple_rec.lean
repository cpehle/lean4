/-
Minimal recursion test
-/

@[noinline] def countdown (n : Nat) : Nat :=
  match n with
  | 0 => 0
  | n + 1 => countdown n

def main : IO Unit := do
  IO.println s!"countdown 3 = {countdown 3}"
