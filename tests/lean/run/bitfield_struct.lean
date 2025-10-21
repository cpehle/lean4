import Init.Data.BitVec


structure Advanced_simd_table_lookup_cls where
  _fixed1 : BitVec 1 := 0b0#1      -- [31:31]
  Q       : BitVec 1               -- [30:30]
  _fixed2 : BitVec 6 := 0b001110#6 -- [29:24]
  op2     : BitVec 2               -- [23:22]
  _fixed3 : BitVec 1 := 0b0#1      -- [21:21]
  Rm      : BitVec 5               -- [20:16]
  _fixed4 : BitVec 1 := 0b0#1      -- [15:15]
  len     : BitVec 2               -- [14:13]
  op      : BitVec 1               -- [12:12]
  _fixed5 : BitVec 2 := 0b00#2     -- [11:10]
  Rn      : BitVec 5               --   [9:5]
  Rd      : BitVec 5               --   [4:0]
deriving DecidableEq, Repr

#eval { Q := 0b1, op2 := 0b10, Rm := 0b10101, len := 0b11, op := 0b1, Rn := 0b01010, Rd := 0b00101 : Advanced_simd_table_lookup_cls }
