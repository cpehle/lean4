/-! 
Test defer behavior with variables
Note: In Lean's do notation, mutable variables are implemented through shadowing,
so defer captures references to variables, not their values at defer time.
This is different from Go's defer which evaluates arguments immediately.
-/

-- Test 1: Variable reference vs value capture
def test1 : IO Unit := do
  IO.println "=== Test 1: Variable reference capture ==="
  let mut x := 0
  -- The defer captures a reference to x, not its value
  defer IO.println s!"Deferred: x = {x}"
  x := x + 1
  x := x + 1
  IO.println s!"Before exit: x = {x}"
  -- Output shows x = 2 in defer, not x = 0

-- Test 2: Immutable variable behavior
def test2 : IO Unit := do
  IO.println "\n=== Test 2: Immutable variables ==="
  let y := 42
  defer IO.println s!"Deferred: y = {y}"
  -- Cannot reassign immutable variable, so value is stable
  IO.println s!"Before exit: y = {y}"

-- Test 3: Capturing values explicitly
def test3 : IO Unit := do
  IO.println "\n=== Test 3: Explicit value capture ==="
  let mut x := 0
  let capturedX := x  -- Capture current value
  defer IO.println s!"Deferred with captured value: {capturedX}"
  x := x + 1
  x := x + 1
  IO.println s!"Before exit: x = {x}, captured = {capturedX}"

-- Test 4: Multiple defers with changing variable
def test4 : IO Unit := do
  IO.println "\n=== Test 4: Multiple defers with variable changes ==="
  let mut counter := 0
  
  defer IO.println s!"Defer 1: counter = {counter}"
  counter := counter + 1
  
  defer IO.println s!"Defer 2: counter = {counter}"
  counter := counter + 1
  
  defer IO.println s!"Defer 3: counter = {counter}"
  counter := counter + 1
  
  IO.println s!"Before exit: counter = {counter}"

-- Test 5: Defer in loop with mutable variable
def test5 : IO Unit := do
  IO.println "\n=== Test 5: Defer in loop ==="
  for i in [1, 2, 3] do
    let mut x := i * 10
    defer IO.println s!"Defer for i={i}: x = {x}"
    x := x + 5
    IO.println s!"Loop i={i}: x = {x}"

-- Test 6: Nested scopes with variables
def test6 : IO Unit := do
  IO.println "\n=== Test 6: Nested scopes ==="
  let mut outer := 100
  defer IO.println s!"Outer defer: outer = {outer}"
  
  do
    let mut inner := 200
    defer IO.println s!"Inner defer: inner = {inner}, outer = {outer}"
    inner := inner + 10
    outer := outer + 10
    IO.println s!"Inner block: inner = {inner}, outer = {outer}"
  
  outer := outer + 10
  IO.println s!"After inner block: outer = {outer}"

def main : IO Unit := do
  test1
  test2
  test3
  test4
  test5
  test6
  IO.println "\n=== Variable tests completed ==="