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

  .globl _l_main___closed__6
_l_main___closed__6:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__5
_l_main___closed__5:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__4
_l_main___closed__4:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__3
_l_main___closed__3:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__2
_l_main___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__1
_l_main___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__0
_l_main___closed__0:
  .quad 0  // Initialized at startup

  .text

  .globl _lean_main
  .align 2
_lean_main:
  // Function: main
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  sub sp, sp, #32
  // Stack frame: 32 bytes (4 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___closed__2
  adrp x27, _l_main___closed__2@PAGE
  ldr x27, [x27, _l_main___closed__2@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 args
  mov x0, x27
  mov x1, x19
  bl _l_IO_println___at___main_spec__0
  mov x22, x0
  // case
  ldr x8, [x22]
  cmp x8, #0
  b.eq .Lcase1_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase2_fn771961157887135399
.Lcase1_fn771961157887135399:
.Lcase_alt3_fn771961157887135399:
  // proj field 1
  ldr x23, [x22, #16]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // dec 1
  mov x0, x22
  bl _lean_dec
  // load global constant _l_main___closed__6
  adrp x21, _l_main___closed__6@PAGE
  ldr x21, [x21, _l_main___closed__6@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 args
  mov x0, x21
  mov x1, x23
  bl _l_IO_println___at___main_spec__0
  mov x15, x0
  // case
  ldr x8, [x15]
  cmp x8, #0
  b.eq .Lcase5_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase6_fn771961157887135399
.Lcase5_fn771961157887135399:
.Lcase_alt7_fn771961157887135399:
  // isShared
  ldr x13, [x15]
  cmp x13, #1
  csel x13, x1, xzr, gt
  // case
  ldr x8, [x13]
  cmp x8, #0
  b.eq .Lcase9_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase10_fn771961157887135399
.Lcase9_fn771961157887135399:
.Lcase_alt11_fn771961157887135399:
  // proj field 0
  ldr x11, [x15, #8]
  // dec 1
  mov x0, x11
  bl _lean_dec
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x10, x0
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x9, x0
  mov x0, x9
  mov x1, #0
  mov x2, x15
  bl _lean_ctor_set
  mov x0, x9
  mov x1, #1
  mov x2, x10
  bl _lean_ctor_set
  // return
  mov x0, x9
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end8_fn771961157887135399
.Lcase10_fn771961157887135399:
.Lcase_alt12_fn771961157887135399:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg23
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg23 from stack slot 1
  ldr x8, [sp, #8]
  // inc 1
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x8, x0
  // store result to spilled vreg24
  // store to stack slot 2
  str x8, [sp, #16]
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x8, x0
  // load spilled vreg24 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg23 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // store result to spilled vreg25
  // store to stack slot 3
  str x8, [sp, #24]
  // return
  // load spilled vreg25 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end8_fn771961157887135399
.Lcase_end8_fn771961157887135399:
  b .Lcase_end4_fn771961157887135399
.Lcase6_fn771961157887135399:
.Lcase_alt13_fn771961157887135399:
  // return
  mov x0, x9
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end4_fn771961157887135399
.Lcase_end4_fn771961157887135399:
  b .Lcase_end0_fn771961157887135399
.Lcase2_fn771961157887135399:
.Lcase_alt14_fn771961157887135399:
  // return
  mov x0, x22
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn771961157887135399
.Lcase_end0_fn771961157887135399:

  .globl __init_l_main___closed__6
  .align 2
__init_l_main___closed__6:
  // Function: main._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___closed__5
  adrp x24, _l_main___closed__5@PAGE
  ldr x24, [x24, _l_main___closed__5@PAGEOFF]
  // load global constant _l_main___closed__4
  adrp x26, _l_main___closed__4@PAGE
  ldr x26, [x26, _l_main___closed__4@PAGEOFF]
  // call String.append with 2 args
  mov x0, x26
  mov x1, x24
  bl _lean_string_append
  mov x25, x0
  // dec 1
  mov x0, x24
  bl _lean_dec
  // return
  mov x0, x25
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__5
  .align 2
__init_l_main___closed__5:
  // Function: main._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___closed__3
  adrp x27, _l_main___closed__3@PAGE
  ldr x27, [x27, _l_main___closed__3@PAGEOFF]
  // call Nat.reprFast with 1 args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__4
  .align 2
__init_l_main___closed__4:
  // Function: main._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // string literal: multiply 4 7 = 
  mov x27, #0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__3
  .align 2
__init_l_main___closed__3:
  // Function: main._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  mov x27, #7
  mov x26, #4
  // call Nat.mul with 2 args
  mov x0, x26
  mov x1, x27
  bl _lean_nat_mul
  mov x25, x0
  // return
  mov x0, x25
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__2
  .align 2
__init_l_main___closed__2:
  // Function: main._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___closed__1
  adrp x24, _l_main___closed__1@PAGE
  ldr x24, [x24, _l_main___closed__1@PAGEOFF]
  // load global constant _l_main___closed__0
  adrp x26, _l_main___closed__0@PAGE
  ldr x26, [x26, _l_main___closed__0@PAGEOFF]
  // call String.append with 2 args
  mov x0, x26
  mov x1, x24
  bl _lean_string_append
  mov x25, x0
  // dec 1
  mov x0, x24
  bl _lean_dec
  // return
  mov x0, x25
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__1
  .align 2
__init_l_main___closed__1:
  // Function: main._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  mov x27, #8
  // call Nat.reprFast with 1 args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__0
  .align 2
__init_l_main___closed__0:
  // Function: main._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // string literal: add 5 3 = 
  mov x27, #0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___main_spec__0
  .align 2
_l_IO_println___at___main_spec__0:
  // Function: IO.println._at_.main.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  mov x27, #10
  // call String.push with 2 args
  mov x0, x19
  mov x1, x27
  bl _lean_string_push
  mov x26, x0
  // call IO.print._at_.IO.println._at_.main.spec_0.spec_0 with 2 args
  mov x0, x26
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  mov x25, x0
  // return
  mov x0, x25
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  .align 2
_l_IO_print___at___IO_println___at___main_spec__0_spec__0:
  // Function: IO.print._at_.IO.println._at_.main.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // call IO.getStdout with 1 args
  mov x0, x20
  bl _lean_get_stdout
  mov x22, x0
  // proj field 0
  ldr x14, [x22, #8]
  // inc 1
  mov x0, x14
  bl _lean_inc
  // proj field 1
  ldr x23, [x22, #16]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // dec 1
  mov x0, x22
  bl _lean_dec
  // proj field 4
  ldr x15, [x14, #40]
  // inc 1
  mov x0, x15
  bl _lean_inc
  // dec 1
  mov x0, x14
  bl _lean_dec
  // indirect call with 2 args
  mov x0, x19
  mov x1, x23
  blr x15
  mov x13, x0
  // return
  mov x0, x13
  ldp x29, x30, [sp], #16
  ret

  .globl _l_multiply___boxed
  .align 2
_l_multiply___boxed:
  // Function: multiply._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // call multiply with 2 args
  mov x0, x19
  mov x1, x20
  bl _l_multiply
  mov x27, x0
  // dec 1
  mov x0, x20
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl _l_multiply
  .align 2
_l_multiply:
  // Function: multiply
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // call Nat.mul with 2 args
  mov x0, x19
  mov x1, x20
  bl _lean_nat_mul
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl _l_add___boxed
  .align 2
_l_add___boxed:
  // Function: add._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // call add with 2 args
  mov x0, x19
  mov x1, x20
  bl _l_add
  mov x27, x0
  // dec 1
  mov x0, x20
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl _l_add
  .align 2
_l_add:
  // Function: add
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // call Nat.add with 2 args
  mov x0, x19
  mov x1, x20
  bl _lean_nat_add
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_tests_compiler_arm64__arithmetic
  .align 2
_initialize_tests_compiler_arm64__arithmetic:
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
  // Initialize _l_main___closed__6
  bl __init_l_main___closed__6
  adrp x8, _l_main___closed__6@PAGE
  str x0, [x8, _l_main___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__6@PAGE
  ldr x0, [x8, _l_main___closed__6@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__5
  bl __init_l_main___closed__5
  adrp x8, _l_main___closed__5@PAGE
  str x0, [x8, _l_main___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__5@PAGE
  ldr x0, [x8, _l_main___closed__5@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__4
  bl __init_l_main___closed__4
  adrp x8, _l_main___closed__4@PAGE
  str x0, [x8, _l_main___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__4@PAGE
  ldr x0, [x8, _l_main___closed__4@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__3
  bl __init_l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  str x0, [x8, _l_main___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__3@PAGE
  ldr x0, [x8, _l_main___closed__3@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__2
  bl __init_l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  str x0, [x8, _l_main___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__2@PAGE
  ldr x0, [x8, _l_main___closed__2@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__1
  bl __init_l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  str x0, [x8, _l_main___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__1@PAGE
  ldr x0, [x8, _l_main___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__0
  bl __init_l_main___closed__0
  adrp x8, _l_main___closed__0@PAGE
  str x0, [x8, _l_main___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__0@PAGE
  ldr x0, [x8, _l_main___closed__0@PAGEOFF]
  bl _lean_mark_persistent

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
