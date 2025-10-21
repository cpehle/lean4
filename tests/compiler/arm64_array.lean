/-
Test ARM64 backend with array operations.
Tests array creation, indexing, modification, and iteration.
-/

@[noinline] def arraySize (a : Array Nat) : Nat :=
  a.size

@[noinline] def arrayGet (a : Array Nat) (i : Nat) : Nat :=
  a[i]!

@[noinline] def arrayPush (a : Array Nat) (x : Nat) : Array Nat :=
  a.push x

@[noinline] def arrayMap (a : Array Nat) : Array Nat :=
  a.map (· + 10)

def main : IO Unit := do
  let arr := #[1, 2, 3, 4, 5]

  IO.println s!"size = {arraySize arr}"
  IO.println s!"arr[2] = {arrayGet arr 2}"

  let arr2 := arrayPush arr 6
  IO.println s!"after push: size = {arraySize arr2}"
  IO.println s!"after push: arr[5] = {arrayGet arr2 5}"

  let arr3 := arrayMap arr
  IO.println s!"after map (+10): {arr3}"
