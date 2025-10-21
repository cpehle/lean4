/-
Test ARM64 backend with constructor allocation and field access
-/

inductive MyPair where
  | mk : Nat → Nat → MyPair

def makePair (x y : Nat) : MyPair :=
  MyPair.mk x y

def getFirst (p : MyPair) : Nat :=
  match p with
  | MyPair.mk x _ => x

def getSecond (p : MyPair) : Nat :=
  match p with
  | MyPair.mk _ y => y

def main : IO Unit := do
  let p := makePair 42 17
  let first := getFirst p
  let second := getSecond p
  IO.println s!"first = {first}"
  IO.println s!"second = {second}"
  return ()
