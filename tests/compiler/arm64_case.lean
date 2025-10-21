/-
Test ARM64 backend with pattern matching and case expressions.
Tests various forms of case splits and pattern matching.
-/

-- Simple option matching
@[noinline] def optionTest (o : Option Nat) : Nat :=
  match o with
  | none => 0
  | some n => n + 1

-- List pattern matching
@[noinline] def listHead (xs : List Nat) : Nat :=
  match xs with
  | [] => 0
  | x :: _ => x

-- Nested pattern matching
inductive Tree where
  | leaf : Nat → Tree
  | node : Tree → Tree → Tree

@[noinline] def treeSum (t : Tree) : Nat :=
  match t with
  | .leaf n => n
  | .node left right => treeSum left + treeSum right

def main : IO Unit := do
  IO.println s!"optionTest none = {optionTest none}"
  IO.println s!"optionTest (some 42) = {optionTest (some 42)}"

  IO.println s!"listHead [] = {listHead []}"
  IO.println s!"listHead [1,2,3] = {listHead [1,2,3]}"

  let tree := Tree.node (Tree.leaf 10) (Tree.node (Tree.leaf 20) (Tree.leaf 30))
  IO.println s!"treeSum = {treeSum tree}"
