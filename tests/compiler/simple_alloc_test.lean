-- Test simple repeated allocations
def testAlloc : IO Unit := do
  -- Allocate Option.none twice
  let x : Option Nat := none
  let y : Option Nat := none
  IO.println s!"x={x}, y={y}"

def main : IO Unit := testAlloc
