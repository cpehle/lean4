-- Test for the struct backend using @[struct] attribute

@[struct]
structure Point where
  x : Float
  y : Float

@[struct]
structure Rectangle where
  size : Point
  position : Point

def mkPoint (x y : Float) : Point := Point.mk x y

def pointDistance (p1 p2 : Point) : Float :=
  let dx := p1.x - p2.x
  let dy := p1.y - p2.y
  (dx * dx + dy * dy).sqrt

def area (rect : Rectangle) : Float :=
  rect.size.x * rect.size.y

def diagonalLength (rect : Rectangle) : Float :=
  pointDistance rect.position (Point.mk (rect.position.x + rect.size.x) (rect.position.y + rect.size.y))

def main : IO Unit := do
  let p1 := mkPoint 0.0 0.0
  let p2 := mkPoint 3.0 4.0

  -- Test struct field access
  IO.println s!"Point 1: ({p1.x}, {p1.y})"
  IO.println s!"Point 2: ({p2.x}, {p2.y})"
  IO.println s!"Distance: {pointDistance p1 p2}"

  -- Test struct with different field types

  let rect := Rectangle.mk (mkPoint 2.0 2.0) (mkPoint 3.0 4.0)

  IO.println s!"Rectangle: (Position: ({rect.position.x}, {rect.position.y}), Size: ({rect.size.x}, {rect.size.y}))"
  IO.println s!"Area: {area rect}"
  IO.println s!"Diagonal Length: {diagonalLength rect}"
