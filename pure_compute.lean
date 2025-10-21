-- Pure computational function without closed constants
def fibonacci : Nat → Nat
  | 0 => 0
  | 1 => 1  
  | n+2 => fibonacci n + fibonacci (n+1)

def main (_args : List String) : IO UInt32 := do
  let result := fibonacci 10
  return result.toUInt32
