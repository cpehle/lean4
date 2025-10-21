/-
Debug listSum test with IO
-/

@[noinline] def listSum (xs : List Nat) : IO Nat := do
  IO.println s!"listSum called with {xs}"
  match xs with
  | [] =>
    IO.println "  base case"
    pure 0
  | x :: xs =>
    IO.println s!"  recursive case: head={x}"
    let rest ← listSum xs
    pure (x + rest)

def main : IO Unit := do
  IO.println "Starting..."
  let result ← listSum [1]
  IO.println s!"Result: {result}"
