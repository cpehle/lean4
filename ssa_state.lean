import Lean.Compiler.IR.SSA
open Lean.IR
open Lean.IR.SSA
#eval (((mkState 0).nextVersion.insert ⟨0⟩ ⟨1⟩).find? ⟨0⟩)
