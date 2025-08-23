-- Test for the struct backend using @[struct] attribute

@[struct]
structure Point where
  x : Float
  y : Float

@[struct]  
structure Color where
  r : UInt8
  g : UInt8
  b : UInt8

def mkPoint (x y : Float) : Point := Point.mk x y

def pointDistance (p1 p2 : Point) : Float :=
  let dx := p1.x - p2.x
  let dy := p1.y - p2.y
  (dx * dx + dy * dy).sqrt

def main : IO Unit := do
  let p1 := mkPoint 0.0 0.0
  let p2 := mkPoint 3.0 4.0
  
  -- Test struct field access
  IO.println s!"Point 1: ({p1.x}, {p1.y})"
  IO.println s!"Point 2: ({p2.x}, {p2.y})"
  IO.println s!"Distance: {pointDistance p1 p2}"
  
  -- Test struct with different field types
  let color : Color := Color.mk 255 128 64
  IO.println s!"Color: RGB({color.r}, {color.g}, {color.b})"