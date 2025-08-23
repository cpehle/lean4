-- More complex test with USize struct that can't be simplified
@[struct]
structure Buffer where
  data : USize
  size : USize
  capacity : USize

def makeBuffer (data size cap : USize) : Buffer := Buffer.mk data size cap
def remainingSpace (buf : Buffer) : USize := buf.capacity - buf.size
def isValidBuffer (buf : Buffer) : Bool := buf.size <= buf.capacity

-- Use functions to prevent inlining/simplification
def processBuffer (input : USize) : USize :=
  let buf := makeBuffer (input * 2) (input / 4) (input)
  let remaining := remainingSpace buf
  if isValidBuffer buf then
    remaining + buf.data
  else
    0

def main : IO Unit := do
  let result := processBuffer 1000
  IO.println s!"Result: {result}"