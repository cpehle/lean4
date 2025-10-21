/-
Test ARM64 backend with string operations.
Tests string concatenation, length, and character operations.
-/

@[noinline] def stringConcat (s1 s2 : String) : String :=
  s1 ++ s2

@[noinline] def stringLength (s : String) : Nat :=
  s.length

@[noinline] def stringPush (s : String) (c : Char) : String :=
  s.push c

def main : IO Unit := do
  let s1 := "Hello"
  let s2 := " World"

  IO.println s!"concat: {stringConcat s1 s2}"
  IO.println s!"length of 'Hello': {stringLength s1}"

  let s3 := stringPush s1 '!'
  IO.println s!"push '!': {s3}"
