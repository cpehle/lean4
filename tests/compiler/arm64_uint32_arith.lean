/-
Exercises UInt32 arithmetic primitives to make sure the ARM64 backend lowers
common operations to instructions.
-/

def main : IO Unit := do
  let a : UInt32 := 0xFFFF_FF00
  let b : UInt32 := 0x1234_5678
  let sum := a + b
  let diff := sum - 0x3456_0000
  let prod := diff * 7
  IO.println s!"sum={sum.toNat}"
  IO.println s!"diff={diff.toNat}"
  IO.println s!"prod={prod.toNat}"
