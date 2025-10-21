import Lean.Compiler.Backend.ARM64
import Lean.Compiler.Backend.RegisterAlloc
import Lean.Compiler.Backend.InstrSelect
import Lean.Compiler.Backend.EmitARM64

/-!
# ARM64 Backend Test

Tests that the ARM64 backend modules can be imported and basic types are accessible.
-/

open Lean.Compiler.Backend.ARM64
open Lean.IR

def main : IO Unit := do
  IO.println "ARM64 Backend Import Test"
  IO.println "=========================="

  -- Test that we can create basic types
  let _reg : PhysReg := .x0
  let _instr : Instr := .mov (.phys PhysReg.x0) (.imm 42)

  IO.println "✓ ARM64 types accessible"
  IO.println "✓ Backend modules imported successfully"

  return ()