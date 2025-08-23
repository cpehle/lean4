-- Test for struct backend with various scalar data types

-- UInt32 structs
@[struct]
structure UIntPoint where
  x : UInt32
  y : UInt32

@[struct]
structure UIntRect where
  topLeft : UIntPoint
  width : UInt32
  height : UInt32

-- UInt8 structs  
@[struct]
structure RGB where
  red : UInt8
  green : UInt8  
  blue : UInt8

-- USize structs
@[struct]
structure Buffer where
  data : USize
  size : USize
  capacity : USize

-- UInt64 struct
@[struct]
structure Counter where
  value : UInt64
  increment : UInt64

def makeUIntPoint (x y : UInt32) : UIntPoint := UIntPoint.mk x y
def makeUIntRect (tl : UIntPoint) (w h : UInt32) : UIntRect := UIntRect.mk tl w h
def calculateArea (rect : UIntRect) : UInt32 := rect.width * rect.height

def makeRGB (r g b : UInt8) : RGB := RGB.mk r g b
def brightness (color : RGB) : UInt8 := 
  let sum := color.red.toNat + color.green.toNat + color.blue.toNat
  (sum / 3).toUInt8

def makeBuffer (data size cap : USize) : Buffer := Buffer.mk data size cap
def remainingSpace (buf : Buffer) : USize := buf.capacity - buf.size

def makeCounter (val inc : UInt64) : Counter := Counter.mk val inc
def nextValue (counter : Counter) : UInt64 := counter.value + counter.increment

def main : IO Unit := do
  -- Test UInt32 structs
  let p := makeUIntPoint 10 20
  let rect := makeUIntRect p 100 50
  let area := calculateArea rect
  IO.println s!"UInt32 Point: ({p.x}, {p.y})"
  IO.println s!"UInt32 Area: {area}"
  
  -- Test UInt8 structs
  let color := makeRGB 255 128 64
  let bright := brightness color
  IO.println s!"UInt8 Color: RGB({color.red}, {color.green}, {color.blue})"
  IO.println s!"UInt8 Brightness: {bright}"
  
  -- Test USize structs
  let buf := makeBuffer 4096 100 200
  let remaining := remainingSpace buf
  IO.println s!"USize Buffer: data={buf.data}, size={buf.size}, capacity={buf.capacity}"
  IO.println s!"USize Remaining: {remaining}"
  
  -- Test UInt64 structs
  let counter := makeCounter 1000000000000 7
  let next := nextValue counter
  IO.println s!"UInt64 Counter: value={counter.value}, increment={counter.increment}"
  IO.println s!"UInt64 Next: {next}"