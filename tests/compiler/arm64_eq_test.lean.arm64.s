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
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #80
  // Stack frame: 80 bytes (10 spilled vars)
.Lfn_start_main:
  mov x19, x0
  // load global constant _l_main___closed__0
  adrp x20, _l_main___closed__0@PAGE
  ldr x20, [x20, _l_main___closed__0@PAGEOFF]
  // load global constant _l_main___closed__5
  adrp x8, _l_main___closed__5@PAGE
  add x8, x8, _l_main___closed__5@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg36
  // store to stack slot 8
  str x8, [sp, #64]
  // load spilled vreg36 from stack slot 8
  ldr x8, [sp, #64]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor3_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor4_fn771961157887135399
  b .Lcase_end2_fn771961157887135399
.Lcase_ctor3_fn771961157887135399:
  // load global constant _l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  ldr x8, [x8, _l_main___closed__3@PAGEOFF]
  // store result to spilled vreg37
  // store to stack slot 9
  str x8, [sp, #72]
  // jump to JP17
  b .LJP1_fn771961157887135399
  b .Lcase_end2_fn771961157887135399
.Lcase_ctor4_fn771961157887135399:
  // load global constant _l_main___closed__4
  adrp x28, _l_main___closed__4@PAGE
  ldr x28, [x28, _l_main___closed__4@PAGEOFF]
  // jump to JP17
  b .LJP1_fn771961157887135399
  b .Lcase_end2_fn771961157887135399
.Lcase_end2_fn771961157887135399:
.LJP1_fn771961157887135399:
  // call String.append with 2 runtime args
  mov x0, x20
  // load spilled vreg28 from stack slot 0
  ldr x8, [sp]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg29
  // store to stack slot 1
  str x8, [sp, #8]
  // dec 1
  // load spilled vreg28 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.main.spec_0 with 2 runtime args
  // load spilled vreg29 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  mov x1, x19
  bl _l_IO_println___at___main_spec__0
  mov x8, x0
  // store result to spilled vreg30
  // store to stack slot 2
  str x8, [sp, #16]
  // load spilled vreg30 from stack slot 2
  ldr x8, [sp, #16]
  // case
  ldrb w8, [x8, #7]
  cmp x8, #0
  b.eq .Lcase_ctor6_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor7_fn771961157887135399
  b .Lcase_end5_fn771961157887135399
.Lcase_ctor6_fn771961157887135399:
  // load spilled vreg30 from stack slot 2
  ldr x8, [sp, #16]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg31
  // store to stack slot 3
  str x8, [sp, #24]
  // inc 1
  // load spilled vreg31 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg30 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  ldr x8, [x8, _l_main___closed__1@PAGEOFF]
  // store result to spilled vreg32
  // store to stack slot 4
  str x8, [sp, #32]
  // load global constant _l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  add x8, x8, _l_main___closed__2@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg33
  // store to stack slot 5
  str x8, [sp, #40]
  // load spilled vreg33 from stack slot 5
  ldr x8, [sp, #40]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor9_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor10_fn771961157887135399
  b .Lcase_end8_fn771961157887135399
.Lcase_ctor9_fn771961157887135399:
  // load global constant _l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  ldr x8, [x8, _l_main___closed__3@PAGEOFF]
  // store result to spilled vreg34
  // store to stack slot 6
  str x8, [sp, #48]
  // jump to JP7
  b .LJP0_fn771961157887135399
  b .Lcase_end8_fn771961157887135399
.Lcase_ctor10_fn771961157887135399:
  // load global constant _l_main___closed__4
  adrp x8, _l_main___closed__4@PAGE
  ldr x8, [x8, _l_main___closed__4@PAGEOFF]
  // store result to spilled vreg35
  // store to stack slot 7
  str x8, [sp, #56]
  // jump to JP7
  b .LJP0_fn771961157887135399
  b .Lcase_end8_fn771961157887135399
.Lcase_end8_fn771961157887135399:
  b .Lcase_end5_fn771961157887135399
.Lcase_ctor7_fn771961157887135399:
  // return
  // load spilled vreg30 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end5_fn771961157887135399
.Lcase_end5_fn771961157887135399:
.LJP0_fn771961157887135399:
  // call String.append with 2 runtime args
  mov x0, x26
  mov x1, x23
  bl _lean_string_append
  mov x24, x0
  // dec 1
  mov x0, x23
  bl _lean_dec_ref
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x27
  bl _l_IO_println___at___main_spec__0
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__5
  .align 2
__init_l_main___closed__5:
  // Function: main._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_5:
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call isZero with 1 runtime args
  mov x0, x27
  bl _l_isZero
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

  .globl __init_l_main___closed__4
  .align 2
__init_l_main___closed__4:
  // Function: main._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_4:
  // string literal: true
  adrp x0, .Lstrptr_8500289943117668439_0@PAGE
  ldr x0, [x0, .Lstrptr_8500289943117668439_0@PAGEOFF]
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
.Lstrptr_8500289943117668439_0:
  .quad .Lstr_8500289943117668439_0
.Lstr_8500289943117668439_0:
  .asciz "true"
  .text

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
.Lfn_start_main._closed_3:
  // string literal: false
  adrp x0, .Lstrptr_3548551298948373996_0@PAGE
  ldr x0, [x0, .Lstrptr_3548551298948373996_0@PAGEOFF]
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
.Lstrptr_3548551298948373996_0:
  .quad .Lstr_3548551298948373996_0
.Lstr_3548551298948373996_0:
  .asciz "false"
  .text

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
.Lfn_start_main._closed_2:
  movz x0, #5, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call isZero with 1 runtime args
  mov x0, x27
  bl _l_isZero
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
.Lfn_start_main._closed_1:
  // string literal: isZero 5 = 
  adrp x0, .Lstrptr_7388215039365402614_0@PAGE
  ldr x0, [x0, .Lstrptr_7388215039365402614_0@PAGEOFF]
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
.Lstrptr_7388215039365402614_0:
  .quad .Lstr_7388215039365402614_0
.Lstr_7388215039365402614_0:
  .asciz "isZero 5 = "
  .text

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
.Lfn_start_main._closed_0:
  // string literal: isZero 0 = 
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
  .asciz "isZero 0 = "
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
.Lfn_start_IO.println._at_.main.spec_0:
  mov x19, x0
  mov x20, x1
  mov x27, #10
  // call String.push with 2 runtime args
  mov x0, x19
  mov x1, x27
  bl _lean_string_push
  mov x26, x0
  // call IO.print._at_.IO.println._at_.main.spec_0.spec_0 with 2 runtime args
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
  sub sp, sp, #32
  // Stack frame: 32 bytes (3 spilled vars)
.Lfn_start_IO.print._at_.IO.println._at_.main.spec_0.spec_0:
  mov x19, x0
  mov x20, x1
  // call IO.getStdout with 1 runtime args
  mov x0, x20
  bl _lean_get_stdout
  mov x22, x0
  // proj field 0
  ldr x25, [x22, #8]
  // inc 1
  mov x0, x25
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
  ldr x21, [x25, #40]
  // inc 1
  mov x0, x21
  bl _lean_inc_ref
  // dec 1
  mov x0, x25
  bl _lean_dec
  // application with 2 args
  mov x0, x21
  mov x1, x19
  mov x2, x23
  bl _lean_apply_2
  mov x28, x0
  // return
  mov x0, x28
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_isZero___boxed
  .align 2
_l_isZero___boxed:
  // Function: isZero._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_isZero._boxed:
  mov x19, x0
  // call isZero with 1 runtime args
  mov x0, x19
  bl _l_isZero
  mov x27, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // box
  mov x0, x27
  bl _lean_box_export
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

  .globl _l_isZero
  .align 2
_l_isZero:
  // Function: isZero
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_isZero:
  mov x19, x0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Nat.decEq with 2 runtime args
  mov x0, x19
  mov x1, x27
  bl _lean_nat_dec_eq
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

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_arm64__eq__test
  .align 2
_initialize_arm64__eq__test:
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
  // Initialize _l_main___closed__0
  bl __init_l_main___closed__0
  adrp x8, _l_main___closed__0@PAGE
  str x0, [x8, _l_main___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__0@PAGE
  ldr x0, [x8, _l_main___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__0:

  // Initialize _l_main___closed__1
  bl __init_l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  str x0, [x8, _l_main___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__1@PAGE
  ldr x0, [x8, _l_main___closed__1@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__1
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__1:

  // Initialize _l_main___closed__2
  bl __init_l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  str x0, [x8, _l_main___closed__2@PAGEOFF]

  // Initialize _l_main___closed__3
  bl __init_l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  str x0, [x8, _l_main___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__3@PAGE
  ldr x0, [x8, _l_main___closed__3@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__3
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__3:

  // Initialize _l_main___closed__4
  bl __init_l_main___closed__4
  adrp x8, _l_main___closed__4@PAGE
  str x0, [x8, _l_main___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__4@PAGE
  ldr x0, [x8, _l_main___closed__4@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__4
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__4:

  // Initialize _l_main___closed__5
  bl __init_l_main___closed__5
  adrp x8, _l_main___closed__5@PAGE
  str x0, [x8, _l_main___closed__5@PAGEOFF]

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
