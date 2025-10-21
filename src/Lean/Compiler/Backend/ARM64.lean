/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/

module

prelude
public import Lean.Compiler.IR.Basic
public import Lean.Compiler.IR.SSA
public import Lean.Data.Name

public section

namespace Lean.Compiler.Backend
namespace ARM64

/-- ARM64 physical registers. -/
inductive PhysReg where
  -- General purpose registers (X0-X30)
  | x0 | x1 | x2 | x3 | x4 | x5 | x6 | x7
  | x8 | x9 | x10 | x11 | x12 | x13 | x14 | x15
  | x16 | x17 | x18 | x19 | x20 | x21 | x22 | x23
  | x24 | x25 | x26 | x27 | x28 | x29 | x30
  -- Stack pointer / zero register
  | sp
  | xzr
  -- SIMD/FP registers (V0-V31)
  | v0 | v1 | v2 | v3 | v4 | v5 | v6 | v7
  | v8 | v9 | v10 | v11 | v12 | v13 | v14 | v15
  | v16 | v17 | v18 | v19 | v20 | v21 | v22 | v23
  | v24 | v25 | v26 | v27 | v28 | v29 | v30 | v31
  deriving Inhabited, BEq, DecidableEq, Repr

namespace PhysReg

/-- Convert a register to a numeric identifier. -/
def toNat : PhysReg → Nat
  | x0 => 0 | x1 => 1 | x2 => 2 | x3 => 3 | x4 => 4 | x5 => 5 | x6 => 6 | x7 => 7
  | x8 => 8 | x9 => 9 | x10 => 10 | x11 => 11 | x12 => 12 | x13 => 13 | x14 => 14 | x15 => 15
  | x16 => 16 | x17 => 17 | x18 => 18 | x19 => 19 | x20 => 20 | x21 => 21 | x22 => 22 | x23 => 23
  | x24 => 24 | x25 => 25 | x26 => 26 | x27 => 27 | x28 => 28 | x29 => 29 | x30 => 30
  | sp => 31 | xzr => 31
  | v0 => 32 | v1 => 33 | v2 => 34 | v3 => 35 | v4 => 36 | v5 => 37 | v6 => 38 | v7 => 39
  | v8 => 40 | v9 => 41 | v10 => 42 | v11 => 43 | v12 => 44 | v13 => 45 | v14 => 46 | v15 => 47
  | v16 => 48 | v17 => 49 | v18 => 50 | v19 => 51 | v20 => 52 | v21 => 53 | v22 => 54 | v23 => 55
  | v24 => 56 | v25 => 57 | v26 => 58 | v27 => 59 | v28 => 60 | v29 => 61 | v30 => 62 | v31 => 63

instance : ToString PhysReg where
  toString
    | x0 => "x0" | x1 => "x1" | x2 => "x2" | x3 => "x3" | x4 => "x4" | x5 => "x5" | x6 => "x6" | x7 => "x7"
    | x8 => "x8" | x9 => "x9" | x10 => "x10" | x11 => "x11" | x12 => "x12" | x13 => "x13" | x14 => "x14" | x15 => "x15"
    | x16 => "x16" | x17 => "x17" | x18 => "x18" | x19 => "x19" | x20 => "x20" | x21 => "x21" | x22 => "x22" | x23 => "x23"
    | x24 => "x24" | x25 => "x25" | x26 => "x26" | x27 => "x27" | x28 => "x28" | x29 => "x29" | x30 => "x30"
    | sp => "sp" | xzr => "xzr"
    | v0 => "v0" | v1 => "v1" | v2 => "v2" | v3 => "v3" | v4 => "v4" | v5 => "v5" | v6 => "v6" | v7 => "v7"
    | v8 => "v8" | v9 => "v9" | v10 => "v10" | v11 => "v11" | v12 => "v12" | v13 => "v13" | v14 => "v14" | v15 => "v15"
    | v16 => "v16" | v17 => "v17" | v18 => "v18" | v19 => "v19" | v20 => "v20" | v21 => "v21" | v22 => "v22" | v23 => "v23"
    | v24 => "v24" | v25 => "v25" | v26 => "v26" | v27 => "v27" | v28 => "v28" | v29 => "v29" | v30 => "v30" | v31 => "v31"

/-- Render a general-purpose register using its 32-bit view (`w0`-`w30`). -/
def toGPR32String : PhysReg → String
  | x0 => "w0" | x1 => "w1" | x2 => "w2" | x3 => "w3" | x4 => "w4" | x5 => "w5" | x6 => "w6" | x7 => "w7"
  | x8 => "w8" | x9 => "w9" | x10 => "w10" | x11 => "w11" | x12 => "w12" | x13 => "w13" | x14 => "w14" | x15 => "w15"
  | x16 => "w16" | x17 => "w17" | x18 => "w18" | x19 => "w19" | x20 => "w20" | x21 => "w21" | x22 => "w22" | x23 => "w23"
  | x24 => "w24" | x25 => "w25" | x26 => "w26" | x27 => "w27" | x28 => "w28" | x29 => "w29" | x30 => "w30"
  | xzr => "wzr"
  | sp => "wsp"
  | p => toString p -- fall back for non-GPR registers

/-- Caller-saved registers according to the ARM64 ABI. -/
def isCallerSaved : PhysReg → Bool
  | x0 | x1 | x2 | x3 | x4 | x5 | x6 | x7 => true
  | x8 | x9 | x10 | x11 | x12 | x13 | x14 | x15 => true
  | x16 | x17 | x18 => true
  | v0 | v1 | v2 | v3 | v4 | v5 | v6 | v7 => true
  | v16 | v17 | v18 | v19 | v20 | v21 | v22 | v23 => true
  | v24 | v25 | v26 | v27 | v28 | v29 | v30 | v31 => true
  | _ => false

/-- Callee-saved registers according to the ARM64 ABI. -/
def isCalleeSaved : PhysReg → Bool
  | x19 | x20 | x21 | x22 | x23 | x24 | x25 | x26 | x27 | x28 => true
  | x29 | x30 => true
  | v8 | v9 | v10 | v11 | v12 | v13 | v14 | v15 => true
  | _ => false

end PhysReg

/-- Either a virtual register or a concrete physical register. -/
inductive Reg where
  | virt (id : IR.VarId)
  | phys (r : PhysReg)
  deriving Inhabited, BEq, Repr

instance : ToString Reg where
  toString
    | .virt v => s!"vreg{v.idx}"
    | .phys p => toString p

/-- Render a register as a 32-bit general-purpose name when possible. -/
def Reg.toGPR32String : Reg → String
  | .phys p => PhysReg.toGPR32String p
  | .virt v => s!"vreg{v.idx}"

/-- Operand for ARM64 instructions. -/
inductive Operand where
  | reg (r : Reg)
  | imm (n : Int)
  | mem (base : Reg) (offset : Int)
  | label (name : String)
  deriving Inhabited, BEq, Repr

instance : ToString Operand where
  toString
    | .reg r => toString r
    | .imm n => s!"#{n}"
    | .mem base offset =>
      if offset = 0 then s!"[{base}]"
      else s!"[{base}, #{offset}]"
    | .label name => name

/-- Condition codes for conditional instructions. -/
inductive Cond where
  | eq | ne | lt | le | gt | ge | lo | ls | hi | hs
  deriving Inhabited, BEq, DecidableEq, Repr

instance : ToString Cond where
  toString
    | .eq => "eq" | .ne => "ne" | .lt => "lt" | .le => "le"
    | .gt => "gt" | .ge => "ge" | .lo => "lo" | .ls => "ls"
    | .hi => "hi" | .hs => "hs"

/-- Subset of the ARM64 instruction set used by the backend. -/
inductive Instr where
  -- Data processing instructions
  | add (dst : Reg) (src1 : Reg) (src2 : Operand)
  | sub (dst : Reg) (src1 : Reg) (src2 : Operand)
  | mul (dst : Reg) (src1 : Reg) (src2 : Reg)
  | sdiv (dst : Reg) (src1 : Reg) (src2 : Reg)
  | udiv (dst : Reg) (src1 : Reg) (src2 : Reg)

  -- Logical instructions
  | and (dst : Reg) (src1 : Reg) (src2 : Operand)
  | orr (dst : Reg) (src1 : Reg) (src2 : Operand)
  | eor (dst : Reg) (src1 : Reg) (src2 : Operand)
  | lsl (dst : Reg) (src : Reg) (shift : Operand)
  | lsr (dst : Reg) (src : Reg) (shift : Operand)
  | asr (dst : Reg) (src : Reg) (shift : Operand)

  -- Move instructions
  | mov (dst : Reg) (src : Operand)
  | movz (dst : Reg) (imm : Nat) (shift : Nat)
  | movk (dst : Reg) (imm : Nat) (shift : Nat)
  | adrp (dst : Reg) (label : String)

  -- Load / store instructions
  | ldr (dst : Reg) (src : Operand) (suffix : String := "")
  | ldrb (dst : Reg) (src : Operand)
  | ldrh (dst : Reg) (src : Operand)
  | str (src : Reg) (dst : Operand)
  | strb (src : Reg) (dst : Operand)
  | strh (src : Reg) (dst : Operand)

  -- Load / store pair
  | ldp (dst1 : Reg) (dst2 : Reg) (base : Reg) (offset : Int)
  | stp (src1 : Reg) (src2 : Reg) (base : Reg) (offset : Int)

  -- Comparison
  | cmp (src1 : Reg) (src2 : Operand)
  | tst (src1 : Reg) (src2 : Operand)

  -- Conditional select
  | csel (dst : Reg) (src1 : Reg) (src2 : Reg) (cond : Cond)

  -- Branch instructions
  | b (label : String)
  | bl (fn : String)
  | br (reg : Reg)
  | blr (reg : Reg)
  | ret
  | bCond (cond : Cond) (label : String)

  -- Stack operations
  | push (regs : Array Reg)
  | pop (regs : Array Reg)

  -- Floating point
  | fadd (dst : Reg) (src1 : Reg) (src2 : Reg)
  | fsub (dst : Reg) (src1 : Reg) (src2 : Reg)
  | fmul (dst : Reg) (src1 : Reg) (src2 : Reg)
  | fdiv (dst : Reg) (src1 : Reg) (src2 : Reg)
  | fcmp (src1 : Reg) (src2 : Reg)

  -- Misc
  | label (name : String)
  | comment (text : String)
  deriving Inhabited, Repr

namespace Instr

/-- Render an instruction using GNU assembler syntax. -/
def toString : Instr → String
  | add dst src1 src2 => s!"add {dst}, {src1}, {src2}"
  | sub dst src1 src2 => s!"sub {dst}, {src1}, {src2}"
  | mul dst src1 src2 => s!"mul {dst}, {src1}, {src2}"
  | sdiv dst src1 src2 => s!"sdiv {dst}, {src1}, {src2}"
  | udiv dst src1 src2 => s!"udiv {dst}, {src1}, {src2}"
  | and dst src1 src2 => s!"and {dst}, {src1}, {src2}"
  | orr dst src1 src2 => s!"orr {dst}, {src1}, {src2}"
  | eor dst src1 src2 => s!"eor {dst}, {src1}, {src2}"
  | lsl dst src shift => s!"lsl {dst}, {src}, {shift}"
  | lsr dst src shift => s!"lsr {dst}, {src}, {shift}"
  | asr dst src shift => s!"asr {dst}, {src}, {shift}"
  | mov dst src => s!"mov {dst}, {src}"
  | movz dst imm shift => s!"movz {dst}, #{imm}, lsl #{shift}"
  | movk dst imm shift => s!"movk {dst}, #{imm}, lsl #{shift}"
  | adrp dst lbl => s!"adrp {dst}, {lbl}"
  | ldr dst src suffix =>
    if suffix.isEmpty then s!"ldr {dst}, {src}"
    else s!"ldr {dst}, {src}{suffix}"
  | ldrb dst src =>
    let dstStr := Reg.toGPR32String dst
    s!"ldrb {dstStr}, {src}"
  | ldrh dst src =>
    let dstStr := Reg.toGPR32String dst
    s!"ldrh {dstStr}, {src}"
  | str src dst => s!"str {src}, {dst}"
  | strb src dst =>
    let srcStr := Reg.toGPR32String src
    s!"strb {srcStr}, {dst}"
  | strh src dst =>
    let srcStr := Reg.toGPR32String src
    s!"strh {srcStr}, {dst}"
  | ldp dst1 dst2 base offset => s!"ldp {dst1}, {dst2}, [{base}, #{offset}]"
  | stp src1 src2 base offset => s!"stp {src1}, {src2}, [{base}, #{offset}]"
  | cmp src1 src2 => s!"cmp {src1}, {src2}"
  | tst src1 src2 => s!"tst {src1}, {src2}"
  | csel dst src1 src2 cond => s!"csel {dst}, {src1}, {src2}, {cond}"
  | b lbl => s!"b {lbl}"
  | bl fn => s!"bl {fn}"
  | br reg => s!"br {reg}"
  | blr reg => s!"blr {reg}"
  | ret => "ret"
  | bCond cond lbl => s!"b.{cond} {lbl}"
  | push _ => "stp ..." -- TODO: pretty print stack ops if needed
  | pop _ => "ldp ..."
  | fadd dst src1 src2 => s!"fadd {dst}, {src1}, {src2}"
  | fsub dst src1 src2 => s!"fsub {dst}, {src1}, {src2}"
  | fmul dst src1 src2 => s!"fmul {dst}, {src1}, {src2}"
  | fdiv dst src1 src2 => s!"fdiv {dst}, {src1}, {src2}"
  | fcmp src1 src2 => s!"fcmp {src1}, {src2}"
  | label name => s!"{name}:"
  | comment text => s!"// {text}"

instance : ToString Instr := ⟨toString⟩

end Instr

/-- A basic block in the generated machine function. -/
structure BasicBlock where
  label : String
  instrs : Array Instr
  deriving Inhabited

/-- Record representing an emitted string literal. -/
structure StringLiteral where
  ptrLabel : String
  dataLabel : String
  value : String
  deriving Inhabited

/-- Machine function produced by instruction selection. -/
structure MachineFunction where
  name : Name
  blocks : Array BasicBlock
  stringLits : Array StringLiteral
  deriving Inhabited

end ARM64
end Lean.Compiler.Backend
