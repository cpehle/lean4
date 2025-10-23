def test : IO Unit := do
  let x : Option Nat := none
  let y : Unit := ()
  let z : Option Nat := none
  IO.println s!"x={x}, y={y}, z={z}"

def main := test
