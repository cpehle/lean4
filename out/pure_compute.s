  .arch armv8-a
  .file "lean_output.s"
  // External runtime functions (macOS requires _ prefix)
  .extern _lean_alloc_ctor
  .extern _lean_ctor_set
  .extern _lean_ctor_get
  .extern _lean_ctor_get_usize
  .extern _lean_alloc_closure
  .extern _lean_inc
  .extern _lean_inc_ref
  .extern _lean_inc_n
  .extern _lean_inc_ref_n
  .extern _lean_dec
  .extern _lean_dec_ref
  .extern _lean_mark_persistent
  .extern _lean_is_shared
  .extern _lean_setup_args
  .extern _lean_initialize_runtime_module
  .extern _lean_io_mark_end_initialization
  .extern _lean_io_result_show_error
  .extern _lean_init_task_manager
  .extern _lean_finalize_task_manager
  .extern _lean_mk_string

  .text

  .data
  .align 3
  .globl _G_initialized
_G_initialized:
  .byte 0

  .globl _l_main___redArg___boxed__const__1
_l_main___redArg___boxed__const__1:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__1
_l_main___redArg___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__0
_l_main___redArg___closed__0:
  .quad 0  // Initialized at startup

  .text

  .globl _lean_main
  .align 2
_lean_main:
  // Function: main
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // dec 1
  mov x0, x19
  bl _lean_dec
  // call main._redArg with 1 args
  mov x0, x20
  bl _l_main___redArg
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl _l_main___redArg
  .align 2
_l_main___redArg:
  // Function: main._redArg
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___redArg___boxed__const__1
  adrp x27, _l_main___redArg___boxed__const__1@PAGE
  ldr x27, [x27, _l_main___redArg___boxed__const__1@PAGEOFF]
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  mov x0, x26
  mov x1, #0
  mov x2, x27
  bl _lean_ctor_set
  mov x0, x26
  mov x1, #1
  mov x2, x19
  bl _lean_ctor_set
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___boxed__const__1
  .align 2
__init_l_main___redArg___boxed__const__1:
  // Function: main._redArg._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__1
  adrp x27, _l_main___redArg___closed__1@PAGE
  ldr x27, [x27, _l_main___redArg___closed__1@PAGEOFF]
  // box
  lsl x26, x27, #1
  orr x26, x26, #1
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__1
  .align 2
__init_l_main___redArg___closed__1:
  // Function: main._redArg._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__0
  adrp x25, _l_main___redArg___closed__0@PAGE
  ldr x25, [x25, _l_main___redArg___closed__0@PAGEOFF]
  // call UInt32.ofNat with 1 args
  mov x0, x25
  bl _lean_uint32_of_nat
  mov x26, x0
  // dec 1
  mov x0, x25
  bl _lean_dec
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__0
  .align 2
__init_l_main___redArg___closed__0:
  // Function: main._redArg._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  mov x27, #10
  // call fibonacci with 1 args
  mov x0, x27
  bl _l_fibonacci
  mov x26, x0
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl _l_fibonacci___boxed
  .align 2
_l_fibonacci___boxed:
  // Function: fibonacci._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // call fibonacci with 1 args
  mov x0, x19
  bl _l_fibonacci
  mov x27, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl _l_fibonacci
  .align 2
_l_fibonacci:
  // Function: fibonacci
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  sub sp, sp, #32
  // Stack frame: 32 bytes (4 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  mov x24, #0
  // call Nat.decEq with 2 args
  mov x0, x19
  mov x1, x24
  bl _lean_nat_dec_eq
  mov x25, x0
  // case
  ldr x8, [x25]
  cmp x8, #1
  b.eq .Lcase1_fn8501191356058874083
  cmp x8, #0
  b.eq .Lcase2_fn8501191356058874083
.Lcase1_fn8501191356058874083:
.Lcase_alt3_fn8501191356058874083:
  // return
  mov x0, x24
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn8501191356058874083
.Lcase2_fn8501191356058874083:
.Lcase_alt4_fn8501191356058874083:
  mov x14, #1
  // call Nat.sub with 2 args
  mov x0, x19
  mov x1, x14
  bl _lean_nat_sub
  mov x12, x0
  // call Nat.decEq with 2 args
  mov x0, x12
  mov x1, x24
  bl _lean_nat_dec_eq
  mov x20, x0
  // case
  ldr x8, [x20]
  cmp x8, #1
  b.eq .Lcase6_fn8501191356058874083
  cmp x8, #0
  b.eq .Lcase7_fn8501191356058874083
.Lcase6_fn8501191356058874083:
.Lcase_alt8_fn8501191356058874083:
  // dec 1
  mov x0, x12
  bl _lean_dec
  // return
  mov x0, x14
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end5_fn8501191356058874083
.Lcase7_fn8501191356058874083:
.Lcase_alt9_fn8501191356058874083:
  // call Nat.sub with 2 args
  mov x0, x12
  mov x1, x14
  bl _lean_nat_sub
  mov x9, x0
  // dec 1
  mov x0, x12
  bl _lean_dec
  // call fibonacci with 1 args
  mov x0, x9
  bl _l_fibonacci
  mov x11, x0
  // call Nat.add with 2 args
  mov x0, x9
  mov x1, x14
  bl _lean_nat_add
  mov x10, x0
  // dec 1
  mov x0, x9
  bl _lean_dec
  // call fibonacci with 1 args
  mov x0, x10
  bl _l_fibonacci
  mov x8, x0
  // store result to spilled vreg21
  // store to stack slot 0
  str x8, [sp]
  // dec 1
  mov x0, x10
  bl _lean_dec
  // call Nat.add with 2 args
  mov x0, x11
  // load spilled vreg21 from stack slot 0
  ldr x8, [sp]
  mov x1, x8
  bl _lean_nat_add
  mov x28, x0
  // load spilled vreg21 from stack slot 0
  ldr x8, [sp]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // dec 1
  mov x0, x11
  bl _lean_dec
  // return
  mov x0, x28
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end5_fn8501191356058874083
.Lcase_end5_fn8501191356058874083:
  b .Lcase_end0_fn8501191356058874083
.Lcase_end0_fn8501191356058874083:

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_pure__compute
  .align 2
_initialize_pure__compute:
  // Parameters: x0 = builtin (uint8_t), x1 = world
  stp x29, x30, [sp, #-32]!
  mov x29, sp
  stp x19, x20, [sp, #16]

  // Check if already initialized
  adrp x8, _G_initialized@PAGE
  add x8, x8, _G_initialized@PAGEOFF
  ldrb w9, [x8]
  cbnz w9, .Lalready_initialized

  // Mark as initialized
  mov w10, #1
  strb w10, [x8]

  // Initialize Init
  mov x0, #1  // builtin
  mov x1, #1  // lean_io_mk_world() inlined
  bl _initialize_Init
  mov x19, x0
  // Check for error (inline lean_io_result_is_ok)
  ldrb w8, [x19, #7]  // Load m_tag
  cbnz w8, .Linit_error  // If tag != 0, error
  // Dec ref (simplified for init)
  ldr w8, [x19]  // Load m_rc
  cmp w8, #1
  ble .Linit_dec_done
  sub w8, w8, #1
  str w8, [x19]
.Linit_dec_done:

  // Initialize closed constants
  // Initialize _l_main___redArg___closed__0
  bl __init_l_main___redArg___closed__0
  adrp x8, _l_main___redArg___closed__0@PAGE
  str x0, [x8, _l_main___redArg___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__0@PAGE
  ldr x0, [x8, _l_main___redArg___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___boxed__const__1
  bl __init_l_main___redArg___boxed__const__1
  adrp x8, _l_main___redArg___boxed__const__1@PAGE
  str x0, [x8, _l_main___redArg___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___redArg___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__1
  bl __init_l_main___redArg___closed__1
  adrp x8, _l_main___redArg___closed__1@PAGE
  str x0, [x8, _l_main___redArg___closed__1@PAGEOFF]

.Lalready_initialized:
  // Return success - inline lean_io_result_mk_ok(lean_box(0))
  mov x0, #0  // tag
  mov x1, #2  // num_objs
  mov x2, #0  // num_scalars
  bl _lean_alloc_ctor
  mov x8, x0  // Save result
  mov x0, x8
  mov x1, #0  // field index
  mov x2, #1  // lean_box(0)
  bl _lean_ctor_set
  mov x0, x8
  mov x1, #1  // field index
  mov x2, #1  // lean_box(0)
  bl _lean_ctor_set
  mov x0, x8  // Return result
  ldp x19, x20, [sp, #16]
  ldp x29, x30, [sp], #32
  ret

.Linit_error:
  // Return error result
  mov x0, x19
  ldp x19, x20, [sp, #16]
  ldp x29, x30, [sp], #32
  ret
