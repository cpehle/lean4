/-
Test ARM64 backend with closure capture and application.
Tests that closures correctly capture variables and can be called.
-/

-- Simple closure that captures one variable
def makeClosure (x : Nat) : Nat → Nat :=
  fun y => x + y

-- Closure that captures multiple variables
def makeMultiCapture (a b c : Nat) : Nat → Nat :=
  fun d => a + b + c + d

-- Nested closure
def makeNested (x : Nat) : Nat → (Nat → Nat) :=
  fun y => fun z => x + y + z

def main : IO Unit := do
  let f1 := makeClosure 10
  IO.println s!"makeClosure 10 applied to 5 = {f1 5}"

  let f2 := makeMultiCapture 1 2 3
  IO.println s!"makeMultiCapture 1 2 3 applied to 4 = {f2 4}"

  let f3 := makeNested 100
  let f4 := f3 20
  IO.println s!"makeNested 100 20 3 = {f4 3}"
