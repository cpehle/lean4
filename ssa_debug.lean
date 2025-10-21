import Lean.Compiler.IR.SSA
import Lean.Compiler.IR.Basic

open Lean
open Lean.IR

def mkTestAddDecl : Decl :=
  let x : VarId := ⟨0⟩
  let y : VarId := ⟨1⟩
  let z : VarId := ⟨2⟩
  let body : FnBody :=
    .vdecl z .object (.fap `Nat.add #[.var x, .var y])
      (.ret (.var z))
  .fdecl `testAdd
    #[{x := x, borrow := false, ty := .object},
      {x := y, borrow := false, ty := .object}]
    .object
    body
    {}

#eval (let _ := Lean.IR.SSA.convertDecl mkTestAddDecl; ())
