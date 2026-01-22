/-
Copyright (c) 2025 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Pehle

Inline ARM64 implementations of common Lean runtime functions.
These replace extern calls with direct assembly sequences for better performance.
-/
namespace Lean.Compiler.Backend.ARM64.RuntimeInlines

/-- Emit inline implementation of lean_box(n) = (n << 1) | 1 -/
def emitInlineBox (reg : String) : List String :=
  [ s!"  lsl {reg}, {reg}, #1  // n << 1"
  , s!"  orr {reg}, {reg}, #1  // | 1"
  ]

/-- Emit inline implementation of lean_unbox(o) = o >> 1 -/
def emitInlineUnbox (reg : String) : List String :=
  [ s!"  lsr {reg}, {reg}, #1  // o >> 1"
  ]

/-- Emit inline implementation of lean_is_scalar(o) = (o & 1) == 1 -/
def emitInlineIsScalar (objReg : String) (resultReg : String) : List String :=
  [ s!"  and {resultReg}, {objReg}, #1  // o & 1"
  ]

/-- Emit inline implementation of lean_io_mk_world() = lean_box(0) = 1 -/
def emitInlineIoMkWorld (resultReg : String) : List String :=
  [ s!"  mov {resultReg}, #1  // lean_box(0) = (0 << 1) | 1"
  ]

/-- Emit inline implementation of lean_io_result_is_ok(r)
    Checks if tag (byte at offset 7) == 0 -/
def emitInlineIoResultIsOk (objReg : String) (resultReg : String) : List String :=
  [ s!"  ldrb {resultReg}, [{objReg}, #7]  // Load m_tag (byte at offset 7)"
  , s!"  cmp {resultReg}, #0  // Compare with 0"
  , s!"  cset {resultReg}, eq  // Set 1 if equal, 0 otherwise"
  ]

/-- Emit inline implementation of lean_io_result_get_value(r)
    Returns ctor_get(r, 0) = *(r + 8) (first field after 8-byte header) -/
def emitInlineIoResultGetValue (objReg : String) (resultReg : String) : List String :=
  [ s!"  ldr {resultReg}, [{objReg}, #8]  // Load first field (offset 8)"
  ]

/-- Emit inline implementation of lean_io_result_mk_ok(a)
    Allocates constructor(0, 2, 0) and sets fields -/
def emitInlineIoResultMkOk (argReg : String) (resultReg : String) (tempRegs : List String) : List String :=
  let [temp1, temp2] := tempRegs | panic! "Need 2 temp registers"
  [ s!"  mov x0, #0  // tag"
  , s!"  mov x1, #2  // num_objs"
  , s!"  mov x2, #0  // num_scalars"
  , s!"  bl _lean_alloc_ctor"
  , s!"  mov {resultReg}, x0  // Save result"
  , s!"  mov x0, {resultReg}"
  , s!"  mov x1, #0  // field index"
  , s!"  mov x2, {argReg}  // value"
  , s!"  bl _lean_ctor_set"
  , s!"  mov x0, {resultReg}"
  , s!"  mov x1, #1  // field index"
  , s!"  mov {temp1}, #1  // lean_box(0)"
  , s!"  mov x2, {temp1}"
  , s!"  bl _lean_ctor_set"
  , s!"  mov {resultReg}, x0"
  ]

/-- Emit inline implementation of lean_dec_ref(o)
    if (o->m_rc > 1) o->m_rc-- else if (o->m_rc != 0) lean_dec_ref_cold(o) -/
def emitInlineDecRef (objReg : String) (tempReg : String) : List String :=
  let label := "_dec_ref_done_" ++ objReg
  [ s!"  ldr {tempReg}, [{objReg}]  // Load m_rc"
  , s!"  cmp {tempReg}, #1"
  , s!"  ble .Ldec_ref_cold_{objReg}  // If <= 1, go to cold path"
  , s!"  sub {tempReg}, {tempReg}, #1  // m_rc--"
  , s!"  str {tempReg}, [{objReg}]  // Store m_rc"
  , s!"  b {label}"
  , s!".Ldec_ref_cold_{objReg}:"
  , s!"  cbz {tempReg}, {label}  // If m_rc == 0, skip (persistent)"
  , s!"  mov x0, {objReg}"
  , s!"  bl _lean_dec_ref_cold"
  , s!"{label}:"
  ]

end Lean.Compiler.Backend.ARM64.RuntimeInlines
