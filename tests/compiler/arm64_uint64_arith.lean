/-
Exercises inlined UInt64 arithmetic to ensure the backend lowers common
primitive operations to real ARM64 instructions.
-/

def main : IO Unit := do
  let xRef ← IO.mkRef (0x1234_5678_9ABC_DEF0 : UInt64)
  let yRef ← IO.mkRef (0x1111_2222_3333_4444 : UInt64)
  let x ← xRef.get
  let y ← yRef.get
  let sum := x + y
  let diff := sum - 0x0101_0101_0101_0101
  let prod := diff * 3
  IO.println s!"sum={sum.toNat}"
  IO.println s!"diff={diff.toNat}"
  IO.println s!"prod={prod.toNat}"
