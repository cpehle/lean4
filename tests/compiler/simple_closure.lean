-- Simple closure test with exactly 17 fixed args (minimal boxed case)
def test17 (a b c d e f g h i j k l m n o p q : Nat) : Nat → Nat :=
  fun r => a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r

def main : IO Unit :=
  let f := test17 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
  IO.println (f 18)
