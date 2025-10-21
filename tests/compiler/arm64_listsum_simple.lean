/-
Simple listSum test
-/

@[noinline] def listSum (xs : List Nat) : Nat :=
  match xs with
  | [] => 0
  | x :: xs => x + listSum xs

def main : IO Unit := do
  IO.println s!"listSum [] = {listSum []}"
  IO.println s!"listSum [1] = {listSum [1]}"
  IO.println s!"listSum [1,2] = {listSum [1,2]}"
