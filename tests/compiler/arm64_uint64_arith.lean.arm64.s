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
  .extern _lean_task_spawn
  .extern _lean_task_get_own
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

  .align 3  // doubleword alignment
  .globl _l_main___boxed__const__2
_l_main___boxed__const__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___boxed__const__1
_l_main___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__2
_l_main___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__1
_l_main___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__0
_l_main___closed__0:
  .quad 0  // Object initialized at startup

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
  sub sp, sp, #272
  // Stack frame: 272 bytes (34 spilled vars)
.Lfn_start_main:
  mov x19, x0
  // load global constant _l_main___boxed__const__2
  adrp x27, _l_main___boxed__const__2@PAGE
  ldr x27, [x27, _l_main___boxed__const__2@PAGEOFF]
  // call ST.Prim.mkRef with 2 runtime args
  mov x0, x27
  mov x1, x19
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
  bl _lean_dec_ref
  // load global constant _l_main___boxed__const__1
  adrp x20, _l_main___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___boxed__const__1@PAGEOFF]
  // call ST.Prim.mkRef with 2 runtime args
  mov x0, x20
  mov x1, x22
  bl _lean_st_mk_ref
  mov x8, x0
  // store result to spilled vreg7
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg7 from stack slot 0
  ldr x8, [sp]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg8
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg8 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg7 from stack slot 0
  ldr x8, [sp]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg9
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  // load spilled vreg9 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg7 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec_ref
  // call ST.Prim.Ref.get with 2 runtime args
  mov x0, x24
  // load spilled vreg9 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _lean_st_ref_get
  mov x8, x0
  // store result to spilled vreg10
  // store to stack slot 3
  str x8, [sp, #24]
  // dec 1
  mov x0, x24
  bl _lean_dec
  // load spilled vreg10 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg10 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg12
  // store to stack slot 6
  str x8, [sp, #48]
  // inc 1
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg10 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // call ST.Prim.Ref.get with 2 runtime args
  // load spilled vreg8 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x1, x8
  bl _lean_st_ref_get
  mov x8, x0
  // store result to spilled vreg13
  // store to stack slot 7
  str x8, [sp, #56]
  // dec 1
  // load spilled vreg8 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec
  // load spilled vreg13 from stack slot 7
  ldr x8, [sp, #56]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg14
  // store to stack slot 8
  str x8, [sp, #64]
  // inc 1
  // load spilled vreg14 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg13 from stack slot 7
  ldr x8, [sp, #56]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg15
  // store to stack slot 9
  str x8, [sp, #72]
  // inc 1
  // load spilled vreg15 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg13 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  // unbox
  asr x8, x8, #1
  // store result to spilled vreg16
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec
  // load spilled vreg14 from stack slot 8
  ldr x8, [sp, #64]
  // unbox
  asr x8, x8, #1
  // store result to spilled vreg17
  // store to stack slot 11
  str x8, [sp, #88]
  // dec 1
  // load spilled vreg14 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_dec
  // load spilled vreg16 from stack slot 10
  ldr x8, [sp, #80]
  // load spilled vreg17 from stack slot 11
  ldr x8, [sp, #88]
  // inline lean_uint64_add
  add x8, x8, x8
  // store result to spilled vreg18
  // store to stack slot 12
  str x8, [sp, #96]
  // load global constant _l_main___closed__0
  adrp x8, _l_main___closed__0@PAGE
  ldr x8, [x8, _l_main___closed__0@PAGEOFF]
  // store result to spilled vreg19
  // store to stack slot 13
  str x8, [sp, #104]
  // call UInt64.toNat with 1 runtime args
  // load spilled vreg18 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _lean_uint64_to_nat
  mov x8, x0
  // store result to spilled vreg20
  // store to stack slot 14
  str x8, [sp, #112]
  // call Nat.reprFast with 1 runtime args
  // load spilled vreg20 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg21
  // store to stack slot 15
  str x8, [sp, #120]
  // call String.append with 2 runtime args
  // load spilled vreg19 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  // load spilled vreg21 from stack slot 15
  ldr x8, [sp, #120]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg22
  // store to stack slot 16
  str x8, [sp, #128]
  // dec 1
  // load spilled vreg21 from stack slot 15
  ldr x8, [sp, #120]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.main.spec_0 with 2 runtime args
  // load spilled vreg22 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  // load spilled vreg15 from stack slot 9
  ldr x8, [sp, #72]
  mov x1, x8
  bl _l_IO_println___at___main_spec__0
  mov x28, x0
  // case
  // runtime scalar check
  tst x28, #1
  b.ne .Lscalar_tag0_fn771961157887135399
  ldrb w8, [x28, #7]
  b .Lcompare_tag1_fn771961157887135399
.Lscalar_tag0_fn771961157887135399:
  lsr x8, x28, #1
.Lcompare_tag1_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor4_fn771961157887135399
  b .Lcase_end2_fn771961157887135399
.Lcase_ctor3_fn771961157887135399:
  // proj field 1
  ldr x8, [x28, #16]
  // store result to spilled vreg24
  // store to stack slot 18
  str x8, [sp, #144]
  // inc 1
  // load spilled vreg24 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x28
  bl _lean_dec_ref
  movz x8, #257, lsl #0
  movk x8, #257, lsl #16
  movk x8, #257, lsl #32
  movk x8, #257, lsl #48
  // store result to spilled vreg25
  // store to stack slot 19
  str x8, [sp, #152]
  // load spilled vreg18 from stack slot 12
  ldr x8, [sp, #96]
  // load spilled vreg25 from stack slot 19
  ldr x8, [sp, #152]
  // inline lean_uint64_sub
  sub x8, x8, x8
  // store result to spilled vreg26
  // store to stack slot 20
  str x8, [sp, #160]
  // load global constant _l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  ldr x8, [x8, _l_main___closed__1@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 21
  str x8, [sp, #168]
  // call UInt64.toNat with 1 runtime args
  // load spilled vreg26 from stack slot 20
  ldr x8, [sp, #160]
  mov x0, x8
  bl _lean_uint64_to_nat
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 22
  str x8, [sp, #176]
  // call Nat.reprFast with 1 runtime args
  // load spilled vreg28 from stack slot 22
  ldr x8, [sp, #176]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg29
  // store to stack slot 23
  str x8, [sp, #184]
  // call String.append with 2 runtime args
  // load spilled vreg27 from stack slot 21
  ldr x8, [sp, #168]
  mov x0, x8
  // load spilled vreg29 from stack slot 23
  ldr x8, [sp, #184]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg30
  // store to stack slot 24
  str x8, [sp, #192]
  // dec 1
  // load spilled vreg29 from stack slot 23
  ldr x8, [sp, #184]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.main.spec_0 with 2 runtime args
  // load spilled vreg30 from stack slot 24
  ldr x8, [sp, #192]
  mov x0, x8
  // load spilled vreg24 from stack slot 18
  ldr x8, [sp, #144]
  mov x1, x8
  bl _l_IO_println___at___main_spec__0
  mov x8, x0
  // store result to spilled vreg31
  // store to stack slot 25
  str x8, [sp, #200]
  // load spilled vreg31 from stack slot 25
  ldr x8, [sp, #200]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn771961157887135399
.Lscalar_tag5_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag6_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor9_fn771961157887135399
  b .Lcase_end7_fn771961157887135399
.Lcase_ctor8_fn771961157887135399:
  // load spilled vreg31 from stack slot 25
  ldr x8, [sp, #200]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg32
  // store to stack slot 26
  str x8, [sp, #208]
  // inc 1
  // load spilled vreg32 from stack slot 26
  ldr x8, [sp, #208]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg31 from stack slot 25
  ldr x8, [sp, #200]
  mov x0, x8
  bl _lean_dec_ref
  mov x8, #3
  // store result to spilled vreg33
  // store to stack slot 27
  str x8, [sp, #216]
  // load spilled vreg26 from stack slot 20
  ldr x8, [sp, #160]
  // load spilled vreg33 from stack slot 27
  ldr x8, [sp, #216]
  // inline lean_uint64_mul
  mul x8, x8, x8
  // store result to spilled vreg34
  // store to stack slot 28
  str x8, [sp, #224]
  // load global constant _l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  ldr x8, [x8, _l_main___closed__2@PAGEOFF]
  // store result to spilled vreg35
  // store to stack slot 29
  str x8, [sp, #232]
  // call UInt64.toNat with 1 runtime args
  // load spilled vreg34 from stack slot 28
  ldr x8, [sp, #224]
  mov x0, x8
  bl _lean_uint64_to_nat
  mov x8, x0
  // store result to spilled vreg36
  // store to stack slot 30
  str x8, [sp, #240]
  // call Nat.reprFast with 1 runtime args
  // load spilled vreg36 from stack slot 30
  ldr x8, [sp, #240]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg37
  // store to stack slot 31
  str x8, [sp, #248]
  // call String.append with 2 runtime args
  // load spilled vreg35 from stack slot 29
  ldr x8, [sp, #232]
  mov x0, x8
  // load spilled vreg37 from stack slot 31
  ldr x8, [sp, #248]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg38
  // store to stack slot 32
  str x8, [sp, #256]
  // dec 1
  // load spilled vreg37 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.main.spec_0 with 2 runtime args
  // load spilled vreg38 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  // load spilled vreg32 from stack slot 26
  ldr x8, [sp, #208]
  mov x1, x8
  bl _l_IO_println___at___main_spec__0
  mov x8, x0
  // store result to spilled vreg39
  // store to stack slot 33
  str x8, [sp, #264]
  // return
  // load spilled vreg39 from stack slot 33
  ldr x8, [sp, #264]
  mov x0, x8
  add sp, sp, #272
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn771961157887135399
.Lcase_ctor9_fn771961157887135399:
  // return
  // load spilled vreg31 from stack slot 25
  ldr x8, [sp, #200]
  mov x0, x8
  add sp, sp, #272
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn771961157887135399
.Lcase_end7_fn771961157887135399:
  b .Lcase_end2_fn771961157887135399
.Lcase_ctor4_fn771961157887135399:
  // return
  mov x0, x28
  add sp, sp, #272
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn771961157887135399
.Lcase_end2_fn771961157887135399:

  .globl __init_l_main___boxed__const__2
  .align 2
__init_l_main___boxed__const__2:
  // Function: main._boxed_const_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._boxed_const_2:
  movz x27, #57072, lsl #0
  movk x27, #39612, lsl #16
  movk x27, #22136, lsl #32
  movk x27, #4660, lsl #48
  // box
  lsl x26, x27, #1
  orr x26, x26, #1
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___boxed__const__1
  .align 2
__init_l_main___boxed__const__1:
  // Function: main._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._boxed_const_1:
  movz x27, #17476, lsl #0
  movk x27, #13107, lsl #16
  movk x27, #8738, lsl #32
  movk x27, #4369, lsl #48
  // box
  lsl x26, x27, #1
  orr x26, x26, #1
  // return
  mov x0, x26
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
.Lfn_start_main._closed_2:
  // string literal: prod=
  adrp x0, .Lstrptr_16294557373898097781_0@PAGE
  ldr x0, [x0, .Lstrptr_16294557373898097781_0@PAGEOFF]
  // DEBUG: str='prod=' byteSize=5 charCount=5
  mov x1, #5
  mov x2, #5
  bl _lean_mk_string_unchecked
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
.Lstrptr_16294557373898097781_0:
  .quad .Lstr_16294557373898097781_0
.Lstr_16294557373898097781_0:
  .asciz "prod="
  .text

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
  // string literal: diff=
  adrp x0, .Lstrptr_7388215039365402614_0@PAGE
  ldr x0, [x0, .Lstrptr_7388215039365402614_0@PAGEOFF]
  // DEBUG: str='diff=' byteSize=5 charCount=5
  mov x1, #5
  mov x2, #5
  bl _lean_mk_string_unchecked
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
  .asciz "diff="
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
  // string literal: sum=
  adrp x0, .Lstrptr_6081877290215468830_0@PAGE
  ldr x0, [x0, .Lstrptr_6081877290215468830_0@PAGEOFF]
  // DEBUG: str='sum=' byteSize=4 charCount=4
  mov x1, #4
  mov x2, #4
  bl _lean_mk_string_unchecked
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
  .asciz "sum="
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

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_arm64__uint64__arith
  .align 2
_initialize_arm64__uint64__arith:
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
  bl _lean_io_mk_world  // Get real IO world object for external init
  mov x1, x0  // Pass world as second argument
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

  // Initialize all declarations
  // Initialize _l_main___closed__0
  bl __init_l_main___closed__0
  adrp x8, _l_main___closed__0@PAGE
  add x8, x8, _l_main___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__0@PAGE
  add x8, x8, _l_main___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__1
  bl __init_l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  add x8, x8, _l_main___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__1@PAGE
  add x8, x8, _l_main___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__2
  bl __init_l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  add x8, x8, _l_main___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__2@PAGE
  add x8, x8, _l_main___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___boxed__const__1
  bl __init_l_main___boxed__const__1
  adrp x8, _l_main___boxed__const__1@PAGE
  add x8, x8, _l_main___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___boxed__const__1@PAGE
  add x8, x8, _l_main___boxed__const__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___boxed__const__2
  bl __init_l_main___boxed__const__2
  adrp x8, _l_main___boxed__const__2@PAGE
  add x8, x8, _l_main___boxed__const__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___boxed__const__2@PAGE
  add x8, x8, _l_main___boxed__const__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

.Lalready_initialized:
  // Return success - inline lean_io_result_mk_ok(lean_box(0))
  mov x0, #0  // tag
  mov x1, #2  // num_objs
  mov x2, #0  // num_scalars
  bl _lean_alloc_ctor
  mov x20, x0  // Save result in callee-saved register
  mov x0, x20
  mov x1, #0  // field index
  mov x2, #1  // lean_box(0)
  bl _lean_ctor_set
  mov x0, x20
  mov x1, #1  // field index
  mov x2, #1  // lean_box(0)
  bl _lean_ctor_set
  mov x0, x20  // Return result
  ldp x19, x20, [sp, #16]
  ldp x29, x30, [sp], #32
  ret

.Linit_error:
  // Return error result
  mov x0, x19
  ldp x19, x20, [sp, #16]
  ldp x29, x30, [sp], #32
  ret
