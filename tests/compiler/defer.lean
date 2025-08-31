-- Test file for defer functionality in do notation

def test1 : IO Unit := do
  IO.println "Starting test1"
  defer IO.println "Deferred action 1"
  IO.println "Main action"
  IO.println "End of test1"

def test2 : IO Unit := do
  IO.println "Starting test2"
  defer IO.println "Deferred action 2"
  defer IO.println "Deferred action 1"  -- Should execute first (LIFO)
  IO.println "Main action"

def test3 : IO Bool := do
  IO.println "Starting test3"
  defer IO.println "This should execute before return"
  if true then
    return true  -- Defer should execute here
  IO.println "This won't print"
  return false

def test4 : IO Unit := do
  IO.println "Starting test4"
  for i in [1, 2, 3] do
    defer IO.println s!"Deferred in iteration {i}"
    IO.println s!"Iteration {i}"
    if i == 2 then
      break  -- Defer should execute before break
  IO.println "After loop"

def test5 : IO Unit := do
  IO.println "Starting test5"
  let mut x := 0
  defer IO.println s!"Final value of x: {x}"
  x := x + 1
  x := x + 1
  IO.println s!"Current value of x: {x}"

def main : IO Unit := do
  IO.println "=== Test 1: Basic defer ==="
  test1
  
  IO.println "\n=== Test 2: Multiple defers (LIFO order) ==="
  test2
  
  IO.println "\n=== Test 3: Defer with early return ==="
  let _ ← test3
  
  IO.println "\n=== Test 4: Defer in loop with break ==="
  test4
  
  IO.println "\n=== Test 5: Defer with mutable variables ==="
  test5
  
  IO.println "\n=== All tests completed ==="