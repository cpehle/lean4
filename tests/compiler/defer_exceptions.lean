/-! Test defer behavior with exceptions and try/catch/finally blocks -/

-- Test 1: Defer executes even when exception is thrown
def test1 : IO Unit := do
  IO.println "=== Test 1: Defer with exception ==="
  try
    IO.println "Before defer"
    defer IO.println "Defer executed despite exception"
    IO.println "About to throw"
    throw (IO.userError "Test exception")
    IO.println "This should not print"
  catch e =>
    IO.println s!"Caught exception: {e}"

-- Test 2: Multiple defers with exception (LIFO order)
def test2 : IO Unit := do
  IO.println "\n=== Test 2: Multiple defers with exception ==="
  try
    defer IO.println "Defer 1"
    defer IO.println "Defer 2"
    defer IO.println "Defer 3"
    throw (IO.userError "Test exception")
  catch _ =>
    IO.println "Exception caught"

-- Test 3: Defer in try block with finally
def test3 : IO Unit := do
  IO.println "\n=== Test 3: Defer with try/finally ==="
  try
    defer IO.println "Defer in try block"
    IO.println "In try block"
    throw (IO.userError "Test exception")
  catch _ =>
    IO.println "In catch block"
  finally
    IO.println "In finally block"

-- Test 4: Defer in catch block
def test4 : IO Unit := do
  IO.println "\n=== Test 4: Defer in catch block ==="
  try
    throw (IO.userError "Initial exception")
  catch _ =>
    defer IO.println "Defer in catch block"
    IO.println "Processing in catch"

-- Test 5: Nested try/catch with defer
def test5 : IO Unit := do
  IO.println "\n=== Test 5: Nested try/catch with defer ==="
  try
    defer IO.println "Outer defer"
    try
      defer IO.println "Inner defer"
      throw (IO.userError "Inner exception")
    catch _ =>
      IO.println "Inner catch"
    IO.println "After inner try"
  catch _ =>
    IO.println "Outer catch"

-- Test 6: Defer order with finally
def test6 : IO Unit := do
  IO.println "\n=== Test 6: Defer order with finally ==="
  try
    defer IO.println "Defer 1"
    defer IO.println "Defer 2"
    IO.println "Normal execution"
  finally
    IO.println "Finally executes after defers"

-- Test 7: Exception in deferred code (simplified)
def test7 : IO Unit := do
  IO.println "\n=== Test 7: Exception in deferred code ==="
  try
    defer IO.println "Deferred message (no exception)"
    IO.println "Normal execution"
  catch e =>
    IO.println s!"Caught: {e}"


def main : IO Unit := do
  test1
  test2
  test3
  test4
  test5
  test6
  test7
  IO.println "\n=== All exception tests completed ==="