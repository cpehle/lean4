-- Test file to verify struct backend changes compile correctly
import Init.Data.BitVec

structure TestBitVecStruct where
  field1 : BitVec 5
  field2 : BitVec 3
  field3 : BitVec 8

def test : IO Unit := do
  let s : TestBitVecStruct := ⟨5#5, 2#3, 255#8⟩
  IO.println s!"field1 = {s.field1}"
  IO.println s!"field2 = {s.field2}"
  IO.println s!"field3 = {s.field3}"

#eval test