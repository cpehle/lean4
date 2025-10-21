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

  .globl _l_main___boxed__const__2
_l_main___boxed__const__2:
  .quad 0  // Initialized at startup
  .globl _l_main___boxed__const__1
_l_main___boxed__const__1:
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
  sub sp, sp, #256
  // Stack frame: 256 bytes (32 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___boxed__const__2
  adrp x27, _l_main___boxed__const__2@PAGE
  ldr x27, [x27, _l_main___boxed__const__2@PAGEOFF]
  // call ST.Prim.mkRef with 4 args
  mov x0, #0
  mov x1, #0
  mov x2, x27
  mov x3, x19
  bl _lean_st_mk_ref
  mov x21, x0
  // proj field 0
  ldr x24, [x21, #8]
  // inc 1
  mov x0, x24
  bl _lean_inc
  // proj field 1
  ldr x22, [x21, #16]
  // inc 1
  mov x0, x22
  bl _lean_inc
  // dec 1
  mov x0, x21
  bl _lean_dec
  // load global constant _l_main___boxed__const__1
  adrp x20, _l_main___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___boxed__const__1@PAGEOFF]
  // call ST.Prim.mkRef with 4 args
  mov x0, #0
  mov x1, #0
  mov x2, x20
  mov x3, x22
  bl _lean_st_mk_ref
  mov x10, x0
  // proj field 0
  ldr x13, [x10, #8]
  // inc 1
  mov x0, x13
  bl _lean_inc
  // proj field 1
  ldr x11, [x10, #16]
  // inc 1
  mov x0, x11
  bl _lean_inc
  // dec 1
  mov x0, x10
  bl _lean_dec
  // call ST.Prim.Ref.get with 4 args
  mov x0, #0
  mov x1, #0
  mov x2, x24
  mov x3, x11
  bl _lean_st_ref_get
  mov x9, x0
  // dec 1
  mov x0, x24
  bl _lean_dec
  // proj field 0
  ldr x8, [x9, #8]
  // store result to spilled vreg50
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg50 from stack slot 1
  ldr x8, [sp, #8]
  // inc 1
  mov x0, x8
  bl _lean_inc
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg51
  // store to stack slot 2
  str x8, [sp, #16]
  // load spilled vreg51 from stack slot 2
  ldr x8, [sp, #16]
  // inc 1
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec
  // call ST.Prim.Ref.get with 4 args
  mov x0, #0
  mov x1, #0
  mov x2, x13
  // load spilled vreg51 from stack slot 2
  ldr x8, [sp, #16]
  mov x3, x8
  bl _lean_st_ref_get
  mov x8, x0
  // store result to spilled vreg52
  // store to stack slot 4
  str x8, [sp, #32]
  // dec 1
  mov x0, x13
  bl _lean_dec
  // load spilled vreg52 from stack slot 4
  ldr x8, [sp, #32]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg53
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg53 from stack slot 6
  ldr x8, [sp, #48]
  // inc 1
  mov x0, x8
  bl _lean_inc
  // load spilled vreg52 from stack slot 4
  ldr x8, [sp, #32]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg54
  // store to stack slot 7
  str x8, [sp, #56]
  // load spilled vreg54 from stack slot 7
  ldr x8, [sp, #56]
  // inc 1
  mov x0, x8
  bl _lean_inc
  // load spilled vreg52 from stack slot 4
  ldr x8, [sp, #32]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // load spilled vreg50 from stack slot 1
  ldr x8, [sp, #8]
  // unbox
  lsr x8, x8, #1
  // store result to spilled vreg55
  // store to stack slot 8
  str x8, [sp, #64]
  // load spilled vreg50 from stack slot 1
  ldr x8, [sp, #8]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // load spilled vreg53 from stack slot 6
  ldr x8, [sp, #48]
  // unbox
  lsr x8, x8, #1
  // store result to spilled vreg56
  // store to stack slot 9
  str x8, [sp, #72]
  // load spilled vreg53 from stack slot 6
  ldr x8, [sp, #48]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // load spilled vreg55 from stack slot 8
  ldr x8, [sp, #64]
  // load spilled vreg56 from stack slot 9
  ldr x8, [sp, #72]
  // inline lean_uint64_add
  add x8, x8, x8
  // store result to spilled vreg57
  // store to stack slot 10
  str x8, [sp, #80]
  // load global constant _l_main___closed__0
  adrp x8, _l_main___closed__0@PAGE
  ldr x8, [x8, _l_main___closed__0@PAGEOFF]
  // store result to spilled vreg58
  // store to stack slot 11
  str x8, [sp, #88]
  // call UInt64.toNat with 1 args
  // load spilled vreg57 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_uint64_to_nat
  mov x8, x0
  // store result to spilled vreg59
  // store to stack slot 12
  str x8, [sp, #96]
  // call Nat.reprFast with 1 args
  // load spilled vreg59 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg60
  // store to stack slot 13
  str x8, [sp, #104]
  // call String.append with 2 args
  // load spilled vreg58 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  // load spilled vreg60 from stack slot 13
  ldr x8, [sp, #104]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg61
  // store to stack slot 14
  str x8, [sp, #112]
  // load spilled vreg60 from stack slot 13
  ldr x8, [sp, #104]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // call IO.println._at_.main.spec_0 with 2 args
  // load spilled vreg61 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  // load spilled vreg54 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _l_IO_println___at___main_spec__0
  mov x28, x0
  // case
  ldr x8, [x28]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor2_fn771961157887135399
  b .Lcase_end0_fn771961157887135399
.Lcase_ctor1_fn771961157887135399:
  // proj field 1
  ldr x8, [x28, #16]
  // store result to spilled vreg63
  // store to stack slot 16
  str x8, [sp, #128]
  // load spilled vreg63 from stack slot 16
  ldr x8, [sp, #128]
  // inc 1
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x28
  bl _lean_dec
  movz x8, #257, lsl #0
  movk x8, #257, lsl #16
  movk x8, #257, lsl #32
  movk x8, #257, lsl #48
  // store result to spilled vreg64
  // store to stack slot 17
  str x8, [sp, #136]
  // load spilled vreg57 from stack slot 10
  ldr x8, [sp, #80]
  // load spilled vreg64 from stack slot 17
  ldr x8, [sp, #136]
  // inline lean_uint64_sub
  sub x8, x8, x8
  // store result to spilled vreg65
  // store to stack slot 18
  str x8, [sp, #144]
  // load global constant _l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  ldr x8, [x8, _l_main___closed__1@PAGEOFF]
  // store result to spilled vreg66
  // store to stack slot 19
  str x8, [sp, #152]
  // call UInt64.toNat with 1 args
  // load spilled vreg65 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  bl _lean_uint64_to_nat
  mov x8, x0
  // store result to spilled vreg67
  // store to stack slot 20
  str x8, [sp, #160]
  // call Nat.reprFast with 1 args
  // load spilled vreg67 from stack slot 20
  ldr x8, [sp, #160]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg68
  // store to stack slot 21
  str x8, [sp, #168]
  // call String.append with 2 args
  // load spilled vreg66 from stack slot 19
  ldr x8, [sp, #152]
  mov x0, x8
  // load spilled vreg68 from stack slot 21
  ldr x8, [sp, #168]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg69
  // store to stack slot 22
  str x8, [sp, #176]
  // load spilled vreg68 from stack slot 21
  ldr x8, [sp, #168]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // call IO.println._at_.main.spec_0 with 2 args
  // load spilled vreg69 from stack slot 22
  ldr x8, [sp, #176]
  mov x0, x8
  // load spilled vreg63 from stack slot 16
  ldr x8, [sp, #128]
  mov x1, x8
  bl _l_IO_println___at___main_spec__0
  mov x8, x0
  // store result to spilled vreg70
  // store to stack slot 23
  str x8, [sp, #184]
  // load spilled vreg70 from stack slot 23
  ldr x8, [sp, #184]
  // case
  ldr x8, [x8]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor5_fn771961157887135399
  b .Lcase_end3_fn771961157887135399
.Lcase_ctor4_fn771961157887135399:
  // load spilled vreg70 from stack slot 23
  ldr x8, [sp, #184]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg71
  // store to stack slot 24
  str x8, [sp, #192]
  // load spilled vreg71 from stack slot 24
  ldr x8, [sp, #192]
  // inc 1
  mov x0, x8
  bl _lean_inc
  // load spilled vreg70 from stack slot 23
  ldr x8, [sp, #184]
  // dec 1
  mov x0, x8
  bl _lean_dec
  mov x8, #3
  // store result to spilled vreg72
  // store to stack slot 25
  str x8, [sp, #200]
  // load spilled vreg65 from stack slot 18
  ldr x8, [sp, #144]
  // load spilled vreg72 from stack slot 25
  ldr x8, [sp, #200]
  // inline lean_uint64_mul
  mul x8, x8, x8
  // store result to spilled vreg73
  // store to stack slot 26
  str x8, [sp, #208]
  // load global constant _l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  ldr x8, [x8, _l_main___closed__2@PAGEOFF]
  // store result to spilled vreg74
  // store to stack slot 27
  str x8, [sp, #216]
  // call UInt64.toNat with 1 args
  // load spilled vreg73 from stack slot 26
  ldr x8, [sp, #208]
  mov x0, x8
  bl _lean_uint64_to_nat
  mov x8, x0
  // store result to spilled vreg75
  // store to stack slot 28
  str x8, [sp, #224]
  // call Nat.reprFast with 1 args
  // load spilled vreg75 from stack slot 28
  ldr x8, [sp, #224]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg76
  // store to stack slot 29
  str x8, [sp, #232]
  // call String.append with 2 args
  // load spilled vreg74 from stack slot 27
  ldr x8, [sp, #216]
  mov x0, x8
  // load spilled vreg76 from stack slot 29
  ldr x8, [sp, #232]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg77
  // store to stack slot 30
  str x8, [sp, #240]
  // load spilled vreg76 from stack slot 29
  ldr x8, [sp, #232]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // call IO.println._at_.main.spec_0 with 2 args
  // load spilled vreg77 from stack slot 30
  ldr x8, [sp, #240]
  mov x0, x8
  // load spilled vreg71 from stack slot 24
  ldr x8, [sp, #192]
  mov x1, x8
  bl _l_IO_println___at___main_spec__0
  mov x8, x0
  // store result to spilled vreg78
  // store to stack slot 31
  str x8, [sp, #248]
  // return
  // load spilled vreg78 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  add sp, sp, #256
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn771961157887135399
.Lcase_ctor5_fn771961157887135399:
  // return
  // load spilled vreg70 from stack slot 23
  ldr x8, [sp, #184]
  mov x0, x8
  add sp, sp, #256
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn771961157887135399
.Lcase_end3_fn771961157887135399:
  b .Lcase_end0_fn771961157887135399
.Lcase_ctor2_fn771961157887135399:
  // return
  mov x0, x28
  add sp, sp, #256
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn771961157887135399
.Lcase_end0_fn771961157887135399:

  .globl __init_l_main___boxed__const__2
  .align 2
__init_l_main___boxed__const__2:
  // Function: main._boxed_const_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  movz x27, #57072, lsl #0
  movk x27, #39612, lsl #16
  movk x27, #22136, lsl #32
  movk x27, #4660, lsl #48
  // box
  lsl x26, x27, #1
  orr x26, x26, #1
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___boxed__const__1
  .align 2
__init_l_main___boxed__const__1:
  // Function: main._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  movz x27, #17476, lsl #0
  movk x27, #13107, lsl #16
  movk x27, #8738, lsl #32
  movk x27, #4369, lsl #48
  // box
  lsl x26, x27, #1
  orr x26, x26, #1
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__2
  .align 2
__init_l_main___closed__2:
  // Function: main._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // string literal: prod=
  adrp x0, .Lstrptr_16294557373898097781_0@PAGE
  ldr x0, [x0, .Lstrptr_16294557373898097781_0@PAGEOFF]
  bl _lean_mk_string
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__1
  .align 2
__init_l_main___closed__1:
  // Function: main._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // string literal: diff=
  adrp x0, .Lstrptr_7388215039365402614_0@PAGE
  ldr x0, [x0, .Lstrptr_7388215039365402614_0@PAGEOFF]
  bl _lean_mk_string
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__0
  .align 2
__init_l_main___closed__0:
  // Function: main._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // string literal: sum=
  adrp x0, .Lstrptr_6081877290215468830_0@PAGE
  ldr x0, [x0, .Lstrptr_6081877290215468830_0@PAGEOFF]
  bl _lean_mk_string
  mov x27, x0
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
  // application with 2 args
  mov x0, x15
  mov x1, x19
  mov x2, x23
  bl _lean_apply_2
  mov x13, x0
  // return
  mov x0, x13
  ldp x29, x30, [sp], #16
  ret

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_tests_compiler_arm64__uint64__arith
  .align 2
_initialize_tests_compiler_arm64__uint64__arith:
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
  // Initialize _l_main___boxed__const__1
  bl __init_l_main___boxed__const__1
  adrp x8, _l_main___boxed__const__1@PAGE
  str x0, [x8, _l_main___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___boxed__const__1@PAGEOFF]
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

  // Initialize _l_main___boxed__const__2
  bl __init_l_main___boxed__const__2
  adrp x8, _l_main___boxed__const__2@PAGE
  str x0, [x8, _l_main___boxed__const__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___boxed__const__2@PAGE
  ldr x0, [x8, _l_main___boxed__const__2@PAGEOFF]
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
