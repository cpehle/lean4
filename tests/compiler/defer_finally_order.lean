/-! Test the execution order of defer vs finally -/

def test1 : IO Unit := do
  IO.println "=== Test 1: Defer and finally order ==="
  try
    IO.println "In try block"
    defer IO.println "Defer in try"
    IO.println "After defer declaration"
  catch _ =>
    IO.println "Should not reach catch"
  finally
    IO.println "In finally block"

def test2 : IO Unit := do
  IO.println "\n=== Test 2: Multiple defers with finally ==="
  try
    defer IO.println "Defer 1"
    defer IO.println "Defer 2"
    IO.println "Normal execution"
  finally
    IO.println "Finally block"

def test3 : IO Unit := do
  IO.println "\n=== Test 3: Defer, exception, and finally ==="
  try
    defer IO.println "Defer before exception"
    IO.println "About to throw"
    throw (IO.userError "Test exception")
  catch e =>
    IO.println s!"Caught: {e}"
  finally
    IO.println "Finally after exception"

def main : IO Unit := do
  test1
  test2
  test3
  IO.println "\n=== Tests completed ==="