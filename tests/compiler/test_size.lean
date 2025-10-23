def main : IO Unit := do
  let s := "αb"
  IO.println s!"utf8ByteSize: {s.utf8ByteSize}"
  IO.println s!"length: {s.length}"
  let s2 := "αbc"
  IO.println s!"utf8ByteSize: {s2.utf8ByteSize}"
  IO.println s!"length: {s2.length}"
