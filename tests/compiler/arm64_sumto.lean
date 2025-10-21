/-
Test ARM64 backend with tail-recursive function only.
-/

-- Tail recursion
@[noinline] def sumTo (n : Nat) (acc : Nat := 0) : Nat :=
  match n with
  | 0 => acc
  | n + 1 => sumTo n (acc + n + 1)

def main : IO Unit := do
  IO.println s!"sumTo 10 = {sumTo 10}"
  IO.println s!"sumTo 100 = {sumTo 100}"
  IO.println s!"sumTo 1000 = {sumTo 1000}"
