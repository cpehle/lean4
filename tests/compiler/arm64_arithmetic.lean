/-
Test ARM64 backend with simple arithmetic operations
-/

def add (x y : Nat) : Nat := x + y

def multiply (x y : Nat) : Nat := x * y

def main : IO Unit := do
  let result1 := add 5 3
  let result2 := multiply 4 7
  IO.println s!"add 5 3 = {result1}"
  IO.println s!"multiply 4 7 = {result2}"
  return ()
