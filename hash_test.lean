import Std.Data.HashMap
open Std
#eval ((Std.HashMap.empty.insert 1 2 : Std.HashMap Nat Nat).find? 1)
