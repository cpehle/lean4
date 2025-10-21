/-
Debug factorial with prints
-/

@[noinline] def factorial (n : Nat) : Nat :=
  let _ := IO.println s!"factorial({n})" |>.run'
  match n with
  | 0 =>
    let _ := IO.println s!"  base case: returning 1" |>.run'
    1
  | n + 1 =>
    let rec_result := factorial n
    let result := (n + 1) * rec_result
    let _ := IO.println s!"  recursive case: {n+1} * {rec_result} = {result}" |>.run'
    result

def main : IO Unit := do
  IO.println s!"factorial 5 = {factorial 5}"
