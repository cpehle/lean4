-- Test for packed struct backend using @[packed] attribute

-- Regular struct (with padding)
@[struct]
structure PaddedData where
  a : UInt8    -- 1 byte
  -- 3 bytes padding for alignment
  b : UInt32   -- 4 bytes  
  c : UInt8    -- 1 byte
  -- 3 bytes padding for alignment
  -- Total: 12 bytes with padding

-- Packed struct (no padding)
@[struct, packed]
structure PackedData where
  a : UInt8    -- 1 byte
  b : UInt32   -- 4 bytes
  c : UInt8    -- 1 byte
  -- Total: 6 bytes without padding

def testPadded : PaddedData := {
  a := 0x12
  b := 0x34567890
  c := 0xAB
}

def testPacked : PackedData := {
  a := 0x12
  b := 0x34567890 
  c := 0xAB
}

-- Test with nested packed structs
@[struct, packed]
structure PackedPoint where
  x : Float32
  y : Float32

@[struct, packed] 
structure PackedRect where
  topLeft : PackedPoint
  bottomRight : PackedPoint

def main : IO Unit := do
  let padded := testPadded
  let packed := testPacked
  
  IO.println s!"Padded struct - a: {padded.a}, b: {padded.b}, c: {padded.c}"
  IO.println s!"Packed struct - a: {packed.a}, b: {packed.b}, c: {packed.c}"
  
  let rect : PackedRect := {
    topLeft := { x := 1.0, y := 2.0 }
    bottomRight := { x := 3.0, y := 4.0 }
  }
  
  IO.println s!"Packed rect - top-left: ({rect.topLeft.x}, {rect.topLeft.y})"
  IO.println s!"Packed rect - bottom-right: ({rect.bottomRight.x}, {rect.bottomRight.y})"