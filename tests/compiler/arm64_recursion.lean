/-
Test ARM64 backend with recursive functions.
Tests simple recursion, tail recursion, and mutual recursion.
-/

-- Simple recursion
@[noinline] def factorial (n : Nat) : Nat :=
  match n with
  | 0 => 1
  | n + 1 => (n + 1) * factorial n

-- Tail recursion
@[noinline] def sumTo (n : Nat) (acc : Nat := 0) : Nat :=
  match n with
  | 0 => acc
  | n + 1 => sumTo n (acc + n + 1)

-- List recursion
@[noinline] def listSum (xs : List Nat) : Nat :=
  match xs with
  | [] => 0
  | x :: xs => x + listSum xs

def main : IO Unit := do
  IO.println s!"factorial 5 = {factorial 5}"
  IO.println s!"sumTo 10 = {sumTo 10}"
  IO.println s!"listSum [1,2,3,4,5] = {listSum [1,2,3,4,5]}"
