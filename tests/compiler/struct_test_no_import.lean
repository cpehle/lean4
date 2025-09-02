-- Test that @[struct] attribute works without explicit import
-- This file intentionally does NOT import Lean.Compiler.StructAttr

@[struct]
structure Point where
  x : Float
  y : Float

@[struct]
structure Complex where
  real : Float
  imag : Float

@[struct, packed]
structure PackedData where
  a : UInt8
  b : UInt32
  c : UInt8

def testPoint : Point := { x := 1.0, y := 2.0 }
def testComplex : Complex := { real := 3.0, imag := 4.0 }
def testPacked : PackedData := { a := 1, b := 100, c := 2 }

def main : IO Unit := do
  let p := testPoint
  let c := testComplex
  let pd := testPacked
  IO.println s!"Point: ({p.x}, {p.y})"
  IO.println s!"Complex: {c.real} + {c.imag}i"
  IO.println s!"Packed: a={pd.a}, b={pd.b}, c={pd.c}"
