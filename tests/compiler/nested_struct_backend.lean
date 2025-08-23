-- Test for nested structs in the struct backend

@[struct]
structure Point where
  x : Float
  y : Float

@[struct] 
structure Rectangle where
  topLeft : Point
  bottomRight : Point

def main : IO Unit := do
  let p1 := Point.mk 1.0 2.0
  let p2 := Point.mk 4.0 6.0
  let rect := Rectangle.mk p1 p2
  
  -- Access nested fields
  let width := rect.bottomRight.x - rect.topLeft.x
  let height := rect.bottomRight.y - rect.topLeft.y
  let area := width * height
  
  IO.println s!"Rectangle: topLeft=({rect.topLeft.x}, {rect.topLeft.y}), bottomRight=({rect.bottomRight.x}, {rect.bottomRight.y})"
  IO.println s!"Width: {width}, Height: {height}"
  IO.println s!"Area: {area}"