/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/

module

prelude
-- Re-export from modular files
public import Lean.Compiler.Backend.ARM64.Reg
public import Lean.Compiler.Backend.ARM64.RegClass
public import Lean.Compiler.Backend.ARM64.Instr

public section

namespace Lean.Compiler.Backend.ARM64

-- All definitions now come from the modular files:
-- - Reg.lean: PhysReg, Reg, Operand, FloatPrec, MachineType
-- - RegClass.lean: RegClass, PhysRegSet
-- - Instr.lean: Instr, Cond, BasicBlock, MachineFunction, StringLiteral

end Lean.Compiler.Backend.ARM64

end
