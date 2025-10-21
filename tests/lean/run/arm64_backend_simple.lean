/-!
Tests basic ARM64 backend code generation.
-/

def simpleAdd (x y : UInt32) : UInt32 :=
  x + y

def main : IO Unit := do
  IO.println s!"Result: {simpleAdd 10 32}"
