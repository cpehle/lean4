/-
Simple test for ARM64 backend - just returns a constant
-/

def simpleConst : Nat := 42

def main : IO Unit := do
  IO.println s!"Result: {simpleConst}"
