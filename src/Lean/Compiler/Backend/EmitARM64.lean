/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Assistant
-/
module

prelude
public import Lean.Compiler.Backend.ARM64
public import Lean.Compiler.Backend.InstrSelect
public import Lean.Compiler.IR.Basic
public import Lean.Compiler.IR.CompilerM
public import Lean.Compiler.NameMangling
public import Lean.Compiler.ClosedTermCache
public import Lean.Runtime

public section

namespace Lean.Compiler.Backend
namespace EmitARM64

open Lean.Compiler.Backend.ARM64
open Lean.Compiler.Backend.InstrSelect

/-- Basic prefix check on character lists. -/
private def startsWithList : List Char → List Char → Bool
  | [], _ => true
  | _ :: _, [] => false
  | c1 :: rest1, c2 :: rest2 => c1 = c2 && startsWithList rest1 rest2

/-- Simple substring check implemented via a sliding window on the underlying
    character lists. -/
def containsSubstr (s sub : String) : Bool :=
  let target := sub.data
  let rec loop : List Char → Bool
    | [] => target.isEmpty
    | xs@( _ :: tail ) =>
        if startsWithList target xs then true else loop tail
  loop s.data

/-- Determine whether a declaration corresponds to a closed constant that must be
    materialized in the data section. Besides the standard closed-term cache,
    we also consider the `_boxed_const` helpers generated during extraction. -/
def isClosedConstName (env : Environment) (n : Name) : Bool :=
  isClosedTermName env n || containsSubstr n.mangle "___boxed__const__"

/-- Emit state for tracking output -/
structure EmitState where
  output : String
  deriving Inhabited

abbrev EmitM := StateM EmitState

/-- Mangle Lean function name to match C backend convention -/
def mangleName (name : Name) : String :=
  -- Use Lean's built-in name mangling, which adds "l_" prefix and mangles components
  -- Then add underscore prefix for macOS symbol compatibility
  "_" ++ name.mangle

/-- Mangle a string function name (for external runtime functions) -/
def mangleStringName (name : String) : String :=
  -- For external C functions (lean_*), just add underscore prefix for macOS
  if name.startsWith "lean_" || name.startsWith "_" then
    if name.startsWith "_" then name else s!"_{name}"
  else
    -- Treat as Lean function name - convert to Name and mangle
    -- This handles cases like "String.append" passed as string
    let parts := name.split (· == '.')
    let leanName := parts.foldl (fun n s => Name.str n s) Name.anonymous
    mangleName leanName

/-- Emit a string to the output -/
def emit (s : String) : EmitM Unit :=
  modify fun st => { st with output := st.output ++ s }

/-- Emit a line to the output -/
def emitLn (s : String := "") : EmitM Unit := do
  emit s
  emit "\n"


def hexDigit (n : Nat) : Char :=
  match n % 16 with
  | 0  => '0' | 1  => '1' | 2  => '2' | 3  => '3'
  | 4  => '4' | 5  => '5' | 6  => '6' | 7  => '7'
  | 8  => '8' | 9  => '9' | 10 => 'A' | 11 => 'B'
  | 12 => 'C' | 13 => 'D' | 14 => 'E' | _ => 'F'

/-- Escape a string literal so it can be emitted via `.asciz`. -/
def escapeString (s : String) : String :=
  let step (acc : String) (c : Char) : String :=
    match c with
    | '\\' => acc ++ "\\\\"
    | '"'   => acc ++ "\\\""
    | '\n'  => acc ++ "\\n"
    | '\r'  => acc ++ "\\r"
    | '\t'  => acc ++ "\\t"
    | _     =>
      if c.toNat < 32 || c.toNat > 126 then
        let hi := hexDigit (c.toNat / 16)
        let lo := hexDigit (c.toNat % 16)
        acc ++ "\\x" ++ String.mk [hi, lo]
      else
        acc.push c
  s.foldl step ""

/-- Emit data for a gathered string literal. -/
def emitStringLiteral (lit : StringLiteral) : EmitM Unit := do
  emitLn "  .align 3"
  emitLn s!"{lit.ptrLabel}:"
  emitLn s!"  .quad {lit.dataLabel}"
  emitLn s!"{lit.dataLabel}:"
  emitLn s!"  .asciz \"{escapeString lit.value}\""

/-- Emit an operand as assembly text -/
def emitOperand (op : Operand) : String :=
  match op with
  | .reg r => toString r
  | .imm n => s!"#{n}"
  | .mem base offset =>
    if offset = 0 then
      s!"[{base}]"
    else
      s!"[{base}, #{offset}]"
  | .label name => name

/-- Emit an instruction as assembly text -/
def emitInstr (instr : Instr) : EmitM Unit := do
  match instr with
  | .add dst src1 src2 =>
    emitLn s!"  add {dst}, {src1}, {emitOperand src2}"

  | .sub dst src1 src2 =>
    emitLn s!"  sub {dst}, {src1}, {emitOperand src2}"

  | .mul dst src1 src2 =>
    emitLn s!"  mul {dst}, {src1}, {src2}"

  | .sdiv dst src1 src2 =>
    emitLn s!"  sdiv {dst}, {src1}, {src2}"

  | .udiv dst src1 src2 =>
    emitLn s!"  udiv {dst}, {src1}, {src2}"

  | .and dst src1 src2 =>
    emitLn s!"  and {dst}, {src1}, {emitOperand src2}"

  | .orr dst src1 src2 =>
    emitLn s!"  orr {dst}, {src1}, {emitOperand src2}"

  | .eor dst src1 src2 =>
    emitLn s!"  eor {dst}, {src1}, {emitOperand src2}"

  | .lsl dst src shift =>
    emitLn s!"  lsl {dst}, {src}, {emitOperand shift}"

  | .lsr dst src shift =>
    emitLn s!"  lsr {dst}, {src}, {emitOperand shift}"

  | .asr dst src shift =>
    emitLn s!"  asr {dst}, {src}, {emitOperand shift}"

  | .mov dst src =>
    emitLn s!"  mov {dst}, {emitOperand src}"

  | .movz dst imm shift =>
    emitLn s!"  movz {dst}, #{imm}, lsl #{shift}"

  | .movk dst imm shift =>
    emitLn s!"  movk {dst}, #{imm}, lsl #{shift}"

  | .adrp dst lbl =>
    emitLn s!"  adrp {dst}, {lbl}"

  | .ldr dst src suffix =>
    if suffix.isEmpty then
      emitLn s!"  ldr {dst}, {emitOperand src}"
    else
      emitLn s!"  ldr {dst}, [{dst}{suffix}]"

  | .ldrb dst src =>
    emitLn s!"  ldrb {ARM64.Reg.toGPR32String dst}, {emitOperand src}"

  | .ldrh dst src =>
    emitLn s!"  ldrh {ARM64.Reg.toGPR32String dst}, {emitOperand src}"

  | .str src dst =>
    emitLn s!"  str {src}, {emitOperand dst}"

  | .strb src dst =>
    emitLn s!"  strb {ARM64.Reg.toGPR32String src}, {emitOperand dst}"

  | .strh src dst =>
    emitLn s!"  strh {ARM64.Reg.toGPR32String src}, {emitOperand dst}"

  | .ldp dst1 dst2 base offset =>
    if offset = 0 then
      emitLn s!"  ldp {dst1}, {dst2}, [{base}]"
    else
      emitLn s!"  ldp {dst1}, {dst2}, [{base}, #{offset}]"

  | .stp src1 src2 base offset =>
    if offset = 0 then
      emitLn s!"  stp {src1}, {src2}, [{base}]"
    else
      emitLn s!"  stp {src1}, {src2}, [{base}, #{offset}]"

  | .cmp src1 src2 =>
    emitLn s!"  cmp {src1}, {emitOperand src2}"

  | .tst src1 src2 =>
    emitLn s!"  tst {src1}, {emitOperand src2}"

  | .csel dst src1 src2 cond =>
    emitLn s!"  csel {dst}, {src1}, {src2}, {condToString cond}"

  | .b label =>
    emitLn s!"  b {label}"

  | .bl fn =>
    emitLn s!"  bl {mangleStringName fn}"

  | .br reg =>
    emitLn s!"  br {reg}"

  | .blr reg =>
    emitLn s!"  blr {reg}"

  | .ret =>
    emitLn "  ret"

  | .bCond cond label =>
    emitLn s!"  b.{condToString cond} {label}"

  | .push regs =>
    -- Emit individual stp instructions for pairs
    let mut i := 0
    while i + 1 < regs.size do
      emitLn s!"  stp {regs[i]!}, {regs[i+1]!}, [sp, #-16]!"
      i := i + 2
    if i < regs.size then
      emitLn s!"  str {regs[i]!}, [sp, #-8]!"

  | .pop regs =>
    -- Emit individual ldp instructions for pairs
    let mut i := 0
    while i + 1 < regs.size do
      emitLn s!"  ldp {regs[i]!}, {regs[i+1]!}, [sp], #16"
      i := i + 2
    if i < regs.size then
      emitLn s!"  ldr {regs[i]!}, [sp], #8"

  | .fadd dst src1 src2 =>
    emitLn s!"  fadd {dst}, {src1}, {src2}"

  | .fsub dst src1 src2 =>
    emitLn s!"  fsub {dst}, {src1}, {src2}"

  | .fmul dst src1 src2 =>
    emitLn s!"  fmul {dst}, {src1}, {src2}"

  | .fdiv dst src1 src2 =>
    emitLn s!"  fdiv {dst}, {src1}, {src2}"

  | .fcmp src1 src2 =>
    emitLn s!"  fcmp {src1}, {src2}"

  | .label name =>
    emitLn s!"{name}:"

  | .comment text =>
    emitLn s!"  // {text}"

where
  condToString (c : Cond) : String :=
    match c with
    | .eq => "eq" | .ne => "ne" | .lt => "lt" | .le => "le"
    | .gt => "gt" | .ge => "ge" | .lo => "lo" | .ls => "ls"
    | .hi => "hi" | .hs => "hs"

/-- Emit a basic block -/
def emitBasicBlock (bb : BasicBlock) : EmitM Unit := do
  emitLn s!"{bb.label}:"
  for instr in bb.instrs do
    emitInstr instr

/-- Emit a machine function -/
def emitMachineFunction (fn : MachineFunction) (customName? : Option String := none) : EmitM Unit := do
  emitLn ""
  -- macOS requires underscore prefix for C-compatible symbols
  let exportName := match customName? with
    | some name => name
    | none =>
      if fn.name == `main then "_lean_main"  -- Special case: export main as _lean_main
      else mangleName fn.name
  emitLn s!"  .globl {exportName}"
  emitLn s!"  .align 2"
  emitLn s!"{exportName}:"

  for block in fn.blocks do
    for instr in block.instrs do
      emitInstr instr

  if !fn.stringLits.isEmpty then
    emitLn ""
    emitLn "  .data"
    for lit in fn.stringLits do
      emitStringLiteral lit
    emitLn "  .text"

/-- Extract trailing numeric suffix from a name, defaulting to `0` if absent. -/
def trailingNumber (n : Name) : Nat :=
  let s := n.toString
  let digits := (s.data.reverse.takeWhile Char.isDigit).reverse
  if digits.isEmpty then
    0
  else
    match String.mk digits |>.toNat? with
    | some v => v
    | none => 0

/-- Emit external runtime function declarations -/
def emitExternals : EmitM Unit := do
  emitLn "  // External runtime functions (macOS requires _ prefix)"
  emitLn "  .extern _lean_alloc_ctor"
  emitLn "  .extern _lean_ctor_set"
  emitLn "  .extern _lean_ctor_get"
  emitLn "  .extern _lean_ctor_get_usize"
  emitLn "  .extern _lean_alloc_closure"
  emitLn "  .extern _lean_closure_set"
  emitLn "  .extern _lean_inc"
  emitLn "  .extern _lean_inc_ref"
  emitLn "  .extern _lean_inc_n"
  emitLn "  .extern _lean_inc_ref_n"
  emitLn "  .extern _lean_dec"
  emitLn "  .extern _lean_dec_ref"
  emitLn "  .extern _lean_mark_persistent"
  emitLn "  .extern _lean_is_shared"
  emitLn "  .extern _lean_setup_args"
  emitLn "  .extern _lean_initialize_runtime_module"
  emitLn "  .extern _lean_io_mark_end_initialization"
  emitLn "  .extern _lean_io_result_show_error"
  emitLn "  .extern _lean_init_task_manager"
  emitLn "  .extern _lean_finalize_task_manager"
  emitLn "  .extern _lean_mk_string"
  for i in [:Lean.closureMaxArgs] do
    let idx := i + 1
    emitLn s!"  .extern _lean_apply_{idx}"
  emitLn "  .extern _lean_apply_m"
  emitLn ""

/-- Emit assembly preamble -/
def emitPreamble : EmitM Unit := do
  emitLn "  .arch armv8-a"
  emitLn "  .file \"lean_output.s\""
  emitExternals
  emitLn "  .text"

/-- Emit .data section with global variable declarations -/
def emitDataSection (env : Environment) (decls : Array IR.Decl) : EmitM Unit := do
  emitLn ""
  emitLn "  .data"
  emitLn "  .align 3"
  -- Emit global flag for initialization
  emitLn "  .globl _G_initialized"
  emitLn "_G_initialized:"
  emitLn "  .byte 0"
  emitLn ""
  -- Emit closed constants as global pointers (8 bytes each)
  for decl in decls do
    match decl with
    | .fdecl name params retType _ _ =>
      if params.isEmpty && isClosedConstName env name then
        let mangledName := "_" ++ name.mangle
        emitLn s!"  .globl {mangledName}"
        emitLn s!"{mangledName}:"
        emitLn "  .quad 0  // Initialized at startup"
    | _ => pure ()
  emitLn ""
  emitLn "  .text"

/-- Compile a declaration to ARM64 assembly -/
def emitDecl (env : Environment) (decl : IR.Decl) : String :=
  let machineFunc := InstrSelect.compileDecl env decl
  let initState : EmitState := { output := "" }
  let (_result, finalState) := (emitMachineFunction machineFunc).run initState
  finalState.output

/-- Check if declarations contain a main function -/
def hasMainFn (decls : List IR.Decl) : Bool :=
  decls.any (fun d => d.name == `main)

/-- Emit module initialization function -/
def emitInitFunction (env : Environment) (modName : Name) (decls : Array IR.Decl) : EmitM Unit := do
  let initFnName := "_" ++ Lean.mkModuleInitializationFunctionName modName

  emitLn ""
  emitLn "  // Module initialization function"
  -- Declare imported module initializers as extern
  for imp in env.imports do
    let impInitFn := "_" ++ Lean.mkModuleInitializationFunctionName imp.module
    emitLn s!"  .extern {impInitFn}"

  emitLn s!"  .globl {initFnName}"
  emitLn "  .align 2"
  emitLn s!"{initFnName}:"
  emitLn "  // Parameters: x0 = builtin (uint8_t), x1 = world"
  emitLn "  stp x29, x30, [sp, #-32]!"
  emitLn "  mov x29, sp"
  emitLn "  stp x19, x20, [sp, #16]"
  emitLn ""

  -- Check if already initialized
  emitLn "  // Check if already initialized"
  emitLn "  adrp x8, _G_initialized@PAGE"
  emitLn "  add x8, x8, _G_initialized@PAGEOFF"
  emitLn "  ldrb w9, [x8]"
  emitLn "  cbnz w9, .Lalready_initialized"
  emitLn ""
  emitLn "  // Mark as initialized"
  emitLn "  mov w10, #1"
  emitLn "  strb w10, [x8]"
  emitLn ""

  -- Call each imported module initializer
  for h : idx in [:env.imports.size] do
    let imp := env.imports[idx]!
    let decDoneLabel := s!".Linit_dec_done_{idx}"
    let impInitFn := "_" ++ Lean.mkModuleInitializationFunctionName imp.module
    emitLn s!"  // Initialize {imp.module}"
    emitLn "  mov x0, #1  // builtin"
    emitLn "  mov x1, #1  // lean_io_mk_world() inlined"
    emitLn s!"  bl {impInitFn}"
    emitLn "  mov x19, x0"
    emitLn "  // Check for error (inline lean_io_result_is_ok)"
    emitLn "  ldrb w8, [x19, #7]  // Load m_tag"
    emitLn "  cbnz w8, .Linit_error  // If tag != 0, error"
    emitLn "  // Dec ref (simplified for init)"
    emitLn "  ldr w8, [x19]  // Load m_rc"
    emitLn "  cmp w8, #1"
    emitLn s!"  ble {decDoneLabel}"
    emitLn "  sub w8, w8, #1"
    emitLn "  str w8, [x19]"
    emitLn s!"{decDoneLabel}:"
    emitLn ""

  -- Initialize closed constants by calling their init functions
  emitLn "  // Initialize closed constants"
  for decl in decls.toList.reverse do
    match decl with
    | .fdecl name params ty _ _ =>
      if params.isEmpty && isClosedConstName env name then
        let constName := "_" ++ name.mangle
        let initName := "__init_" ++ name.mangle  -- Double underscore for C-exported function
        emitLn s!"  // Initialize {constName}"
        emitLn s!"  bl {initName}"
        emitLn s!"  adrp x8, {constName}@PAGE"
        emitLn s!"  str x0, [x8, {constName}@PAGEOFF]"
        if ty.isObj then
          emitLn "  // Mark persistent"
          emitLn s!"  adrp x8, {constName}@PAGE"
          emitLn s!"  ldr x0, [x8, {constName}@PAGEOFF]"
          let skipLabel := s!".Lmark_skip_{name.mangle}"
          emitLn s!"  cbz x0, {skipLabel}"
          emitLn "  bl _lean_mark_persistent"
          emitLn s!"{skipLabel}:"
        emitLn ""
      else
        pure ()
    | _ => pure ()

  emitLn ".Lalready_initialized:"
  emitLn "  // Return success - inline lean_io_result_mk_ok(lean_box(0))"
  emitLn "  mov x0, #0  // tag"
  emitLn "  mov x1, #2  // num_objs"
  emitLn "  mov x2, #0  // num_scalars"
  emitLn "  bl _lean_alloc_ctor"
  emitLn "  mov x8, x0  // Save result"
  emitLn "  mov x0, x8"
  emitLn "  mov x1, #0  // field index"
  emitLn "  mov x2, #1  // lean_box(0)"
  emitLn "  bl _lean_ctor_set"
  emitLn "  mov x0, x8"
  emitLn "  mov x1, #1  // field index"
  emitLn "  mov x2, #1  // lean_box(0)"
  emitLn "  bl _lean_ctor_set"
  emitLn "  mov x0, x8  // Return result"
  emitLn "  ldp x19, x20, [sp, #16]"
  emitLn "  ldp x29, x30, [sp], #32"
  emitLn "  ret"
  emitLn ""
  emitLn ".Linit_error:"
  emitLn "  // Return error result"
  emitLn "  mov x0, x19"
  emitLn "  ldp x19, x20, [sp, #16]"
  emitLn "  ldp x29, x30, [sp], #32"
  emitLn "  ret"

/-- Emit ARM64 main wrapper function -/
def emitMainFn (modName : Name) (env : Environment) : EmitM Unit := do
  -- Check if main function exists and get its arity
  match IR.findEnvDecl env `main with
  | none => pure ()
  | some (.fdecl _ params _ _ _) =>
    let arity := params.size
    unless arity == 1 || arity == 2 do
      return ()

    emitLn ""
    emitLn "  // C-compatible main entry point"
    emitLn "  .globl _main"  -- macOS requires underscore prefix
    emitLn "  .align 2"
    emitLn "_main:"
    emitLn "  // Save frame pointer and link register"
    emitLn "  stp x29, x30, [sp, #-16]!"
    emitLn "  mov x29, sp"
    emitLn "  // Save argc and argv"
    emitLn "  stp x0, x1, [sp, #-16]!"
    emitLn ""
    emitLn "  // Call lean_setup_args(argc, argv)"
    emitLn "  bl _lean_setup_args"
    emitLn "  str x0, [sp, #8]  // Save updated argv"
    emitLn ""
    emitLn "  // Call lean_initialize_runtime_module()"
    emitLn "  bl _lean_initialize_runtime_module"
    emitLn ""
    emitLn "  // Call module initializer"
    emitLn "  mov x0, #1  // builtin flag"
    emitLn "  bl _lean_io_mk_world"
    let initFnName := "_" ++ Lean.mkModuleInitializationFunctionName modName
    emitLn s!"  bl {initFnName}"
    emitLn "  mov x19, x0  // Save init result"
    emitLn ""
    emitLn "  // Mark end of initialization"
    emitLn "  bl _lean_io_mark_end_initialization"
    emitLn ""
    emitLn "  // Check if initialization succeeded"
    emitLn "  mov x0, x19"
    emitLn "  bl _lean_io_result_is_ok"
    emitLn "  cbz x0, .Linit_failed"
    emitLn ""
    emitLn "  // Init succeeded, dec result and init task manager"
    emitLn "  mov x0, x19"
    emitLn "  bl _lean_dec_ref"
    emitLn "  bl _lean_init_task_manager"
    emitLn ""

    if arity == 2 then
      -- Build argument list from argv
      emitLn "  // Build argument list from argv"
      emitLn "  ldp x20, x21, [sp]  // Load argc and argv"
      emitLn "  mov x0, #0"
      emitLn "  bl _lean_box  // Empty list"
      emitLn "  mov x22, x0"
      emitLn ".Lbuild_args:"
      emitLn "  subs x20, x20, #1"
      emitLn "  ble .Largs_done"
      emitLn "  ldr x0, [x21, x20, lsl #3]  // argv[i]"
      emitLn "  bl _lean_mk_string"
      emitLn "  mov x23, x0"
      emitLn "  // Allocate cons cell"
      emitLn "  mov x0, #1  // tag for cons"
      emitLn "  mov x1, #2  // 2 fields"
      emitLn "  mov x2, #0  // 0 scalars"
      emitLn "  bl _lean_alloc_ctor"
      emitLn "  mov x1, #0"
      emitLn "  mov x2, x23"
      emitLn "  bl _lean_ctor_set  // Set head"
      emitLn "  mov x1, #1"
      emitLn "  mov x2, x22"
      emitLn "  bl _lean_ctor_set  // Set tail"
      emitLn "  mov x22, x0"
      emitLn "  b .Lbuild_args"
      emitLn ".Largs_done:"
      emitLn "  // Call _lean_main(args, world)"
      emitLn "  mov x0, x22"
      emitLn "  bl _lean_io_mk_world"
      emitLn "  mov x1, x0"
      emitLn "  mov x0, x22"
      emitLn "  bl _lean_main"
    else
      emitLn "  // Call _lean_main(world)"
      emitLn "  bl _lean_io_mk_world"
      emitLn "  bl _lean_main"

    emitLn "  mov x19, x0  // Save main result"
    emitLn ""
    emitLn ".Linit_failed:"
    emitLn "  // Finalize task manager"
    emitLn "  bl _lean_finalize_task_manager"
    emitLn ""
    emitLn "  // Check if result is ok"
    emitLn "  mov x0, x19"
    emitLn "  bl _lean_io_result_is_ok"
    emitLn "  cbz x0, .Lmain_error"
    emitLn ""
    emitLn "  // Success path - get return value"
    emitLn "  mov x0, x19"
    emitLn "  bl _lean_io_result_get_value"
    emitLn "  mov x20, x0"

    -- For simplicity, always check if scalar (UInt32) or return 0
    emitLn "  // Check if return value is scalar (UInt32)"
    emitLn "  mov x0, x20"
    emitLn "  bl _lean_is_scalar"
    emitLn "  cbz x0, .Lreturn_zero"
    emitLn "  // Unbox UInt32"
    emitLn "  mov x0, x20"
    emitLn "  bl _lean_unbox_uint32"
    emitLn "  mov x20, x0"
    emitLn "  b .Lreturn_value"
    emitLn ".Lreturn_zero:"
    emitLn "  mov x20, #0"

    emitLn ".Lreturn_value:"
    emitLn "  mov x0, x19"
    emitLn "  bl _lean_dec_ref"
    emitLn "  mov x0, x20"
    emitLn "  ldp xzr, xzr, [sp], #16"
    emitLn "  ldp x29, x30, [sp], #16"
    emitLn "  ret"
    emitLn ""
    emitLn ".Lmain_error:"
    emitLn "  // Error path"
    emitLn "  mov x0, x19"
    emitLn "  bl _lean_io_result_show_error"
    emitLn "  mov x0, x19"
    emitLn "  bl _lean_dec_ref"
    emitLn "  mov x0, #1"
    emitLn "  ldp xzr, xzr, [sp], #16"
    emitLn "  ldp x29, x30, [sp], #16"
    emitLn "  ret"
  | _ => pure ()

/-- Compile multiple declarations to ARM64 assembly -/
def emitDecls (env : Environment) (modName : Name) (decls : Array IR.Decl) : String :=
  let initState : EmitState := { output := "" }
  let (_result, finalState) := (do
    emitPreamble
    emitDataSection env decls  -- Emit .data section with globals

    -- Emit all function declarations
    for decl in decls do
      match decl with
      | .fdecl name params _ _ _ =>
        -- For closed constants, emit init functions with double underscore prefix
        if params.isEmpty && isClosedConstName env name then
          let initFnName := "__init_" ++ name.mangle
          let machineFunc := InstrSelect.compileDecl env decl
          emitMachineFunction machineFunc (some initFnName)
        else
          let machineFunc := InstrSelect.compileDecl env decl
          emitMachineFunction machineFunc
      | _ => pure ()

    -- Emit module initialization routine
    -- NOTE: We don't emit the C main wrapper here because it needs to use
    -- inline runtime functions. Instead, users should provide a C shim that
    -- calls into the ARM64-compiled _lean_main function.
    emitInitFunction env modName decls
    -- emitMainFn modName env  -- Disabled: use C shim instead
  ).run initState
  finalState.output

/-- Main entry point for compiling to ARM64 assembly -/
def compileToARM64 (env : Environment) (modName : Name) (decls : Array IR.Decl) : String :=
  emitDecls env modName decls

/-- Emit ARM64 assembly for a module (matches emitC API) -/
@[export lean_ir_emit_arm64]
def emitARM64 (env : Environment) (modName : Name) : Except String String :=
  let decls := IR.getDecls env
  Except.ok (emitDecls env modName decls.toArray)

end EmitARM64
end Lean.Compiler.Backend
