def main : IO Unit := do
  -- Test the failing case
  IO.println $ ("αb".isPrefixOf "αbc")
  IO.println $ ("ab".isPrefixOf "abc")
  -- Debug: print the strings
  IO.println $ repr "αb"
  IO.println $ repr "αbc"
