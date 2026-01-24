/-
Debug factorial with prints
-/

@[noinline] def factorial (n : Nat) : Nat :=
  match n with
  | 0 => 1
  | n + 1 =>
    let rec_result := factorial n
    (n + 1) * rec_result

def main : IO Unit := do
  IO.println s!"factorial 5 = {factorial 5}"
