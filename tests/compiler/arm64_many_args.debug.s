  .arch armv8-a
  .file "lean_output.s"
  // External runtime functions (macOS requires _ prefix)
  .extern _lean_alloc_ctor
  .extern _lean_ctor_set
  .extern _lean_ctor_get
  .extern _lean_ctor_get_usize
  .extern _lean_alloc_closure
  .extern _lean_closure_set
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
  .extern _lean_apply_1
  .extern _lean_apply_2
  .extern _lean_apply_3
  .extern _lean_apply_4
  .extern _lean_apply_5
  .extern _lean_apply_6
  .extern _lean_apply_7
  .extern _lean_apply_8
  .extern _lean_apply_9
  .extern _lean_apply_10
  .extern _lean_apply_11
  .extern _lean_apply_12
  .extern _lean_apply_13
  .extern _lean_apply_14
  .extern _lean_apply_15
  .extern _lean_apply_16
  .extern _lean_apply_m

  .text

  .data
  .align 3
  .globl _G_initialized
_G_initialized:
  .byte 0

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
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___closed__3
  adrp x27, _l_main___closed__3@PAGE
  ldr x27, [x27, _l_main___closed__3@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 args
  mov x0, x27
  mov x1, x19
  bl _l_IO_println___at___main_spec__0
  mov x26, x0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__3
  .align 2
__init_l_main___closed__3:
  // Function: main._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__2
  adrp x24, _l_main___closed__2@PAGE
  ldr x24, [x24, _l_main___closed__2@PAGEOFF]
  // load global constant _l_main___closed__0
  adrp x26, _l_main___closed__0@PAGE
  ldr x26, [x26, _l_main___closed__0@PAGEOFF]
  // call String.append with 2 args
  mov x0, x26
  mov x1, x24
  bl _lean_string_append
  mov x25, x0
  // dec 1
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__2
  .align 2
__init_l_main___closed__2:
  // Function: main._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__1
  adrp x27, _l_main___closed__1@PAGE
  ldr x27, [x27, _l_main___closed__1@PAGEOFF]
  // call Nat.reprFast with 1 args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__1
  .align 2
__init_l_main___closed__1:
  // Function: main._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  mov x27, #19
  mov x26, #17
  mov x25, #15
  mov x24, #13
  mov x23, #11
  mov x22, #9
  mov x21, #7
  mov x20, #5
  mov x19, #3
  // call sumNine with 9 args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  mov x6, x25
  mov x7, x26
  sub sp, sp, #16
  str x27, [sp]
  bl _l_sumNine
  add sp, sp, #16
  mov x15, x0
  // return
  mov x0, x15
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__0
  .align 2
__init_l_main___closed__0:
  // Function: main._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: sum = 
  adrp x0, .Lstrptr_6081877290215468830_0@PAGE
  ldr x0, [x0, .Lstrptr_6081877290215468830_0@PAGEOFF]
  bl _lean_mk_string
  mov x27, x0
  // return
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
.Lstrptr_6081877290215468830_0:
  .quad .Lstr_6081877290215468830_0
.Lstr_6081877290215468830_0:
  .asciz "sum = "
  .text

  .globl _l_IO_println___at___main_spec__0
  .align 2
_l_IO_println___at___main_spec__0:
  // Function: IO.println._at_.main.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  .align 2
_l_IO_print___at___IO_println___at___main_spec__0_spec__0:
  // Function: IO.print._at_.IO.println._at_.main.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
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
  bl _lean_dec_ref
  // proj field 4
  ldr x15, [x14, #40]
  // inc 1
  mov x0, x15
  bl _lean_inc_ref
  // dec 1
  mov x0, x14
  bl _lean_dec
  // application with 2 args
  mov x0, x15
  mov x1, x19
  mov x2, x23
  bl _lean_apply_2
  mov x13, x0
  // return
  mov x0, x13
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_sumNine___boxed
  .align 2
_l_sumNine___boxed:
  // Function: sumNine._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // save param 2: xx2 → xx21
  mov x21, x2
  // save param 3: xx3 → xx22
  mov x22, x3
  // save param 4: xx4 → xx23
  mov x23, x4
  // save param 5: xx5 → xx24
  mov x24, x5
  // save param 6: xx6 → xx25
  mov x25, x6
  // save param 7: xx7 → xx26
  mov x26, x7
  // call sumNine with 9 args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  mov x6, x25
  mov x7, x26
  sub sp, sp, #16
  // ERROR: vreg19 not allocated or spilled!
  str vreg19, [sp]
  bl _l_sumNine
  add sp, sp, #16
  mov x27, x0
  // dec 1
  // ERROR: vreg19 not allocated or spilled!
  // dec 1
  mov x0, x26
  bl _lean_dec
  // dec 1
  mov x0, x25
  bl _lean_dec
  // dec 1
  mov x0, x24
  bl _lean_dec
  // dec 1
  mov x0, x23
  bl _lean_dec
  // dec 1
  mov x0, x22
  bl _lean_dec
  // dec 1
  mov x0, x21
  bl _lean_dec
  // dec 1
  mov x0, x20
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec
  // return
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_sumNine
  .align 2
_l_sumNine:
  // Function: sumNine
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #48
  // Stack frame: 48 bytes (5 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // save param 2: xx2 → xx21
  mov x21, x2
  // save param 3: xx3 → xx22
  mov x22, x3
  // save param 4: xx4 → xx23
  mov x23, x4
  // save param 5: xx5 → xx24
  mov x24, x5
  // save param 6: xx6 → xx25
  mov x25, x6
  // save param 7: xx7 → xx26
  mov x26, x7
  // call Nat.add with 2 args
  mov x0, x19
  mov x1, x20
  bl _lean_nat_add
  mov x14, x0
  // call Nat.add with 2 args
  mov x0, x14
  mov x1, x21
  bl _lean_nat_add
  mov x12, x0
  // dec 1
  mov x0, x14
  bl _lean_dec
  // call Nat.add with 2 args
  mov x0, x12
  mov x1, x22
  bl _lean_nat_add
  mov x10, x0
  // dec 1
  mov x0, x12
  bl _lean_dec
  // call Nat.add with 2 args
  mov x0, x10
  mov x1, x23
  bl _lean_nat_add
  mov x11, x0
  // dec 1
  mov x0, x10
  bl _lean_dec
  // call Nat.add with 2 args
  mov x0, x11
  mov x1, x24
  bl _lean_nat_add
  mov x9, x0
  // dec 1
  mov x0, x11
  bl _lean_dec
  // call Nat.add with 2 args
  mov x0, x9
  mov x1, x25
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg32
  // store to stack slot 1
  str x8, [sp, #8]
  // dec 1
  mov x0, x9
  bl _lean_dec
  // call Nat.add with 2 args
  // load spilled vreg32 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  mov x1, x26
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg33
  // store to stack slot 3
  str x8, [sp, #24]
  // dec 1
  // load spilled vreg32 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec
  // call Nat.add with 2 args
  // load spilled vreg33 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  // ERROR: vreg26 not allocated or spilled!
  mov x1, vreg26
  bl _lean_nat_add
  mov x28, x0
  // dec 1
  // load spilled vreg33 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec
  // return
  mov x0, x28
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_arm64__many__args
  .align 2
_initialize_arm64__many__args:
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
  ble .Linit_dec_done_0
  sub w8, w8, #1
  str w8, [x19]
.Linit_dec_done_0:

  // Initialize closed constants
  // Initialize _l_main___closed__3
  bl __init_l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  str x0, [x8, _l_main___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__3@PAGE
  ldr x0, [x8, _l_main___closed__3@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__0
  bl __init_l_main___closed__0
  adrp x8, _l_main___closed__0@PAGE
  str x0, [x8, _l_main___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__0@PAGE
  ldr x0, [x8, _l_main___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__1
  bl __init_l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  str x0, [x8, _l_main___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__1@PAGE
  ldr x0, [x8, _l_main___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__2
  bl __init_l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  str x0, [x8, _l_main___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__2@PAGE
  ldr x0, [x8, _l_main___closed__2@PAGEOFF]
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
