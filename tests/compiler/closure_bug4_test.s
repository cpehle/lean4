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
  .globl _l_main___closed__0
_l_main___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_toString___at___f_spec__0___closed__2
_l_List_toString___at___f_spec__0___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_toString___at___f_spec__0___closed__1
_l_List_toString___at___f_spec__0___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_toString___at___f_spec__0___closed__0
_l_List_toString___at___f_spec__0___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0
_l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0:
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
  sub sp, sp, #64
  // Stack frame: 64 bytes (5 spilled vars)
.Lfn_start_main:
  mov x19, x0
  mov x20, x1
  // case
  // runtime scalar check
  tst x19, #1
  b.ne .Lscalar_tag1_fn771961157887135399
  ldrb w8, [x19, #7]
  b .Lcompare_tag2_fn771961157887135399
.Lscalar_tag1_fn771961157887135399:
  lsr x8, x19, #1
.Lcompare_tag2_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor4_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor5_fn771961157887135399
  b .Lcase_end3_fn771961157887135399
.Lcase_ctor4_fn771961157887135399:
  // load global constant _l_main___closed__0
  adrp x8, _l_main___closed__0@PAGE
  ldr x8, [x8, _l_main___closed__0@PAGEOFF]
  // store result to spilled vreg20
  // store to stack slot 3
  str x8, [sp, #24]
  // jump to JP9
  // load spilled vreg20 from stack slot 3
  ldr x8, [sp, #24]
  mov x25, x8
  b .LJP0_fn771961157887135399
  b .Lcase_end3_fn771961157887135399
.Lcase_ctor5_fn771961157887135399:
  // proj field 0
  ldr x28, [x19, #8]
  // inc 1
  mov x0, x28
  bl _lean_inc
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // jump to JP9
  mov x25, x28
  b .LJP0_fn771961157887135399
  b .Lcase_end3_fn771961157887135399
.Lcase_end3_fn771961157887135399:
.LJP0_fn771961157887135399:
  // call String.toNat! with 1 runtime args
  mov x0, x25
  bl _l_String_toNat_x21
  mov x24, x0
  // dec 1
  mov x0, x25
  bl _lean_dec_ref
  // inc 1
  mov x0, x24
  bl _lean_inc
  // call f with 1 runtime args
  mov x0, x24
  bl _l_f
  mov x23, x0
  // proj field 1
  ldr x21, [x23, #16]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x23
  bl _lean_dec_ref
  // application with 1 args
  mov x0, x21
  mov x1, x24
  bl _lean_apply_1
  mov x8, x0
  // store result to spilled vreg18
  // store to stack slot 1
  str x8, [sp, #8]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  // load spilled vreg18 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  mov x1, x20
  bl _l_IO_println___at___main_spec__0
  mov x8, x0
  // store result to spilled vreg19
  // store to stack slot 2
  str x8, [sp, #16]
  // return
  // load spilled vreg19 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #64
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
.Lfn_start_main._closed_0:
  // string literal: 0
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
  .asciz "0"
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
  sub sp, sp, #16
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
  add sp, sp, #16
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
  sub sp, sp, #48
  // Stack frame: 48 bytes (3 spilled vars)
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
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_f___lam__0___boxed
  .align 2
_l_f___lam__0___boxed:
  // Function: f._lam_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #128
  // Stack frame: 128 bytes (7 spilled vars)
  // load stack param 8: [x29, #16] → x27
  ldr x27, [x29, #16]
  // load stack param 9: [x29, #24] → x28
  ldr x28, [x29, #24]
  // stack param 10 remains at [x29, #32]
  // stack param 11 remains at [x29, #40]
  // stack param 12 remains at [x29, #48]
  // stack param 13 remains at [x29, #56]
  // stack param 14 remains at [x29, #64]
  // stack param 15 remains at [x29, #72]
.Lfn_start_f._lam_0._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  mov x26, x7
  // call f._lam_0 with 16 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  mov x6, x25
  mov x7, x26
  sub sp, sp, #64
  str x27, [sp]
  str x28, [sp, #8]
  ldr x8, [x29, #32]
  str x8, [sp, #16]
  ldr x8, [x29, #40]
  str x8, [sp, #24]
  ldr x8, [x29, #48]
  str x8, [sp, #32]
  ldr x8, [x29, #56]
  str x8, [sp, #40]
  ldr x8, [x29, #64]
  str x8, [sp, #48]
  ldr x8, [x29, #72]
  str x8, [sp, #56]
  bl _l_f___lam__0
  add sp, sp, #64
  mov x8, x0
  // store result to spilled vreg34
  // store to stack slot 6
  str x8, [sp, #48]
  // dec 1
  // load stack param 15 from [x29, #72]
  ldr x9, [x29, #72]
  mov x0, x9
  bl _lean_dec
  // return
  // load spilled vreg34 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #128
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_f
  .align 2
_l_f:
  // Function: f
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #208
  // Stack frame: 208 bytes (24 spilled vars)
.Lfn_start_f:
  mov x19, x0
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Nat.add with 2 runtime args
  mov x0, x19
  mov x1, x27
  bl _lean_nat_add
  mov x26, x0
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // call Nat.add with 2 runtime args
  mov x0, x19
  mov x1, x25
  bl _lean_nat_add
  mov x24, x0
  movz x0, #3, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x23, x0
  // call Nat.add with 2 runtime args
  mov x0, x19
  mov x1, x23
  bl _lean_nat_add
  mov x22, x0
  movz x0, #4, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x21, x0
  // call Nat.add with 2 runtime args
  mov x0, x19
  mov x1, x21
  bl _lean_nat_add
  mov x20, x0
  movz x0, #5, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg43
  // store to stack slot 0
  str x8, [sp]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg43 from stack slot 0
  ldr x8, [sp]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg44
  // store to stack slot 1
  str x8, [sp, #8]
  movz x0, #6, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg45
  // store to stack slot 2
  str x8, [sp, #16]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg45 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg46
  // store to stack slot 3
  str x8, [sp, #24]
  movz x0, #7, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg47
  // store to stack slot 4
  str x8, [sp, #32]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg47 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg48
  // store to stack slot 5
  str x8, [sp, #40]
  movz x0, #8, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg49
  // store to stack slot 6
  str x8, [sp, #48]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg49 from stack slot 6
  ldr x8, [sp, #48]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg50
  // store to stack slot 7
  str x8, [sp, #56]
  movz x0, #9, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg51
  // store to stack slot 8
  str x8, [sp, #64]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg51 from stack slot 8
  ldr x8, [sp, #64]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg52
  // store to stack slot 9
  str x8, [sp, #72]
  movz x0, #10, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg53
  // store to stack slot 10
  str x8, [sp, #80]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg53 from stack slot 10
  ldr x8, [sp, #80]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg54
  // store to stack slot 11
  str x8, [sp, #88]
  movz x0, #11, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg55
  // store to stack slot 12
  str x8, [sp, #96]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg55 from stack slot 12
  ldr x8, [sp, #96]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg56
  // store to stack slot 13
  str x8, [sp, #104]
  movz x0, #12, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg57
  // store to stack slot 14
  str x8, [sp, #112]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg57 from stack slot 14
  ldr x8, [sp, #112]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg58
  // store to stack slot 15
  str x8, [sp, #120]
  movz x0, #13, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg59
  // store to stack slot 16
  str x8, [sp, #128]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg59 from stack slot 16
  ldr x8, [sp, #128]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg60
  // store to stack slot 17
  str x8, [sp, #136]
  movz x0, #14, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg61
  // store to stack slot 18
  str x8, [sp, #144]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg61 from stack slot 18
  ldr x8, [sp, #144]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg62
  // store to stack slot 19
  str x8, [sp, #152]
  movz x0, #15, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg63
  // store to stack slot 20
  str x8, [sp, #160]
  // call Nat.add with 2 runtime args
  mov x0, x19
  // load spilled vreg63 from stack slot 20
  ldr x8, [sp, #160]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg64
  // store to stack slot 21
  str x8, [sp, #168]
  // partial application f._lam_0._boxed with 15 args
  adrp x0, _l_f___lam__0___boxed@PAGE
  add x0, x0, _l_f___lam__0___boxed@PAGEOFF
  mov x1, #16
  mov x2, #15
  bl _lean_alloc_closure
  mov x1, #0
  // load spilled vreg64 from stack slot 21
  ldr x8, [sp, #168]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #1
  // load spilled vreg62 from stack slot 19
  ldr x8, [sp, #152]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #2
  // load spilled vreg60 from stack slot 17
  ldr x8, [sp, #136]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #3
  // load spilled vreg58 from stack slot 15
  ldr x8, [sp, #120]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #4
  // load spilled vreg56 from stack slot 13
  ldr x8, [sp, #104]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #5
  // load spilled vreg54 from stack slot 11
  ldr x8, [sp, #88]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #6
  // load spilled vreg52 from stack slot 9
  ldr x8, [sp, #72]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #7
  // load spilled vreg50 from stack slot 7
  ldr x8, [sp, #56]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #8
  // load spilled vreg48 from stack slot 5
  ldr x8, [sp, #40]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #9
  // load spilled vreg46 from stack slot 3
  ldr x8, [sp, #24]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #10
  // load spilled vreg44 from stack slot 1
  ldr x8, [sp, #8]
  mov x2, x8
  bl _lean_closure_set
  mov x1, #11
  mov x2, x20
  bl _lean_closure_set
  mov x1, #12
  mov x2, x22
  bl _lean_closure_set
  mov x1, #13
  mov x2, x24
  bl _lean_closure_set
  mov x1, #14
  mov x2, x26
  bl _lean_closure_set
  mov x8, x0
  // store result to spilled vreg65
  // store to stack slot 22
  str x8, [sp, #176]
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  // load spilled vreg65 from stack slot 22
  ldr x8, [sp, #176]
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  mov x0, x28
  mov x1, #0
  mov x2, x19
  bl _lean_ctor_set
  // load spilled vreg65 from stack slot 22
  ldr x8, [sp, #176]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #208
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_f___lam__0
  .align 2
_l_f___lam__0:
  // Function: f._lam_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #256
  // Stack frame: 256 bytes (23 spilled vars)
  // load stack param 8: [x29, #16] → x27
  ldr x27, [x29, #16]
  // load stack param 9: [x29, #24] → x28
  ldr x28, [x29, #24]
  // stack param 10 remains at [x29, #32]
  // stack param 11 remains at [x29, #40]
  // stack param 12 remains at [x29, #48]
  // stack param 13 remains at [x29, #56]
  // stack param 14 remains at [x29, #64]
  // stack param 15 remains at [x29, #72]
.Lfn_start_f._lam_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  mov x26, x7
  // ctor List.nil (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg50 into stack slot 7
  str x0, [sp, #56]
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg51 into stack slot 8
  str x0, [sp, #64]
  ldr x0, [sp, #64]
  mov x1, #0
  mov x2, x19
  bl _lean_ctor_set
  // load spilled vreg50 from stack slot 7
  ldr x8, [sp, #56]
  ldr x0, [sp, #64]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg52 into stack slot 9
  str x0, [sp, #72]
  ldr x0, [sp, #72]
  mov x1, #0
  mov x2, x20
  bl _lean_ctor_set
  // load spilled vreg51 from stack slot 8
  ldr x8, [sp, #64]
  ldr x0, [sp, #72]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg53 into stack slot 10
  str x0, [sp, #80]
  ldr x0, [sp, #80]
  mov x1, #0
  mov x2, x21
  bl _lean_ctor_set
  // load spilled vreg52 from stack slot 9
  ldr x8, [sp, #72]
  ldr x0, [sp, #80]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg54 into stack slot 11
  str x0, [sp, #88]
  ldr x0, [sp, #88]
  mov x1, #0
  mov x2, x22
  bl _lean_ctor_set
  // load spilled vreg53 from stack slot 10
  ldr x8, [sp, #80]
  ldr x0, [sp, #88]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg55 into stack slot 12
  str x0, [sp, #96]
  ldr x0, [sp, #96]
  mov x1, #0
  mov x2, x23
  bl _lean_ctor_set
  // load spilled vreg54 from stack slot 11
  ldr x8, [sp, #88]
  ldr x0, [sp, #96]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg56 into stack slot 13
  str x0, [sp, #104]
  ldr x0, [sp, #104]
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  // load spilled vreg55 from stack slot 12
  ldr x8, [sp, #96]
  ldr x0, [sp, #104]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg57 into stack slot 14
  str x0, [sp, #112]
  ldr x0, [sp, #112]
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  // load spilled vreg56 from stack slot 13
  ldr x8, [sp, #104]
  ldr x0, [sp, #112]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg58 into stack slot 15
  str x0, [sp, #120]
  ldr x0, [sp, #120]
  mov x1, #0
  mov x2, x26
  bl _lean_ctor_set
  // load spilled vreg57 from stack slot 14
  ldr x8, [sp, #112]
  ldr x0, [sp, #120]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg59 into stack slot 16
  str x0, [sp, #128]
  ldr x0, [sp, #128]
  mov x1, #0
  mov x2, x27
  bl _lean_ctor_set
  // load spilled vreg58 from stack slot 15
  ldr x8, [sp, #120]
  ldr x0, [sp, #128]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg60 into stack slot 17
  str x0, [sp, #136]
  ldr x0, [sp, #136]
  mov x1, #0
  mov x2, x28
  bl _lean_ctor_set
  // load spilled vreg59 from stack slot 16
  ldr x8, [sp, #128]
  ldr x0, [sp, #136]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg61 into stack slot 18
  str x0, [sp, #144]
  // load stack param 10 from [x29, #32]
  ldr x9, [x29, #32]
  ldr x0, [sp, #144]
  mov x1, #0
  mov x2, x9
  bl _lean_ctor_set
  // load spilled vreg60 from stack slot 17
  ldr x8, [sp, #136]
  ldr x0, [sp, #144]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg62 into stack slot 19
  str x0, [sp, #152]
  // load stack param 11 from [x29, #40]
  ldr x9, [x29, #40]
  ldr x0, [sp, #152]
  mov x1, #0
  mov x2, x9
  bl _lean_ctor_set
  // load spilled vreg61 from stack slot 18
  ldr x8, [sp, #144]
  ldr x0, [sp, #152]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg63 into stack slot 20
  str x0, [sp, #160]
  // load stack param 12 from [x29, #48]
  ldr x9, [x29, #48]
  ldr x0, [sp, #160]
  mov x1, #0
  mov x2, x9
  bl _lean_ctor_set
  // load spilled vreg62 from stack slot 19
  ldr x8, [sp, #152]
  ldr x0, [sp, #160]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg64 into stack slot 21
  str x0, [sp, #168]
  // load stack param 13 from [x29, #56]
  ldr x9, [x29, #56]
  ldr x0, [sp, #168]
  mov x1, #0
  mov x2, x9
  bl _lean_ctor_set
  // load spilled vreg63 from stack slot 20
  ldr x8, [sp, #160]
  ldr x0, [sp, #168]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg65 into stack slot 22
  str x0, [sp, #176]
  // load stack param 14 from [x29, #64]
  ldr x9, [x29, #64]
  ldr x0, [sp, #176]
  mov x1, #0
  mov x2, x9
  bl _lean_ctor_set
  // load spilled vreg64 from stack slot 21
  ldr x8, [sp, #168]
  ldr x0, [sp, #176]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // call List.toString._at_.f.spec_0 with 1 runtime args
  // load spilled vreg65 from stack slot 22
  ldr x8, [sp, #176]
  mov x0, x8
  bl _l_List_toString___at___f_spec__0
  mov x8, x0
  // store result to spilled vreg66
  // store to stack slot 6
  str x8, [sp, #48]
  // return
  // load spilled vreg66 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #256
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_List_toString___at___f_spec__0
  .align 2
_l_List_toString___at___f_spec__0:
  // Function: List.toString._at_.f.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #112
  // Stack frame: 112 bytes (12 spilled vars)
.Lfn_start_List.toString._at_.f.spec_0:
  mov x19, x0
  // case
  // runtime scalar check
  tst x19, #1
  b.ne .Lscalar_tag0_fn2531526937997518333
  ldrb w8, [x19, #7]
  b .Lcompare_tag1_fn2531526937997518333
.Lscalar_tag0_fn2531526937997518333:
  lsr x8, x19, #1
.Lcompare_tag1_fn2531526937997518333:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn2531526937997518333
  cmp x8, #1
  b.eq .Lcase_ctor4_fn2531526937997518333
  b .Lcase_end2_fn2531526937997518333
.Lcase_ctor3_fn2531526937997518333:
  // load global constant _l_List_toString___at___f_spec__0___closed__0
  adrp x26, _l_List_toString___at___f_spec__0___closed__0@PAGE
  ldr x26, [x26, _l_List_toString___at___f_spec__0___closed__0@PAGEOFF]
  // return
  mov x0, x26
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn2531526937997518333
.Lcase_ctor4_fn2531526937997518333:
  // proj field 1
  ldr x24, [x19, #16]
  // case
  // runtime scalar check
  tst x24, #1
  b.ne .Lscalar_tag5_fn2531526937997518333
  ldrb w8, [x24, #7]
  b .Lcompare_tag6_fn2531526937997518333
.Lscalar_tag5_fn2531526937997518333:
  lsr x8, x24, #1
.Lcompare_tag6_fn2531526937997518333:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn2531526937997518333
  cmp x8, #1
  b.eq .Lcase_ctor9_fn2531526937997518333
  b .Lcase_end7_fn2531526937997518333
.Lcase_ctor8_fn2531526937997518333:
  // proj field 0
  ldr x22, [x19, #8]
  // inc 1
  mov x0, x22
  bl _lean_inc
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load global constant _l_List_toString___at___f_spec__0___closed__1
  adrp x21, _l_List_toString___at___f_spec__0___closed__1@PAGE
  ldr x21, [x21, _l_List_toString___at___f_spec__0___closed__1@PAGEOFF]
  // call Nat.reprFast with 1 runtime args
  mov x0, x22
  bl _l_Nat_reprFast
  mov x20, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x21
  mov x1, x20
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg23
  // store to stack slot 0
  str x8, [sp]
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_List_toString___at___f_spec__0___closed__2
  adrp x8, _l_List_toString___at___f_spec__0___closed__2@PAGE
  ldr x8, [x8, _l_List_toString___at___f_spec__0___closed__2@PAGEOFF]
  // store result to spilled vreg24
  // store to stack slot 2
  str x8, [sp, #16]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg23 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  // load spilled vreg24 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg25
  // store to stack slot 3
  str x8, [sp, #24]
  // dec 1
  // return
  // load spilled vreg25 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn2531526937997518333
.Lcase_ctor9_fn2531526937997518333:
  // inc 1
  mov x0, x24
  bl _lean_inc_ref
  // proj field 0
  ldr x8, [x19, #8]
  // store result to spilled vreg26
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  // load spilled vreg26 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load global constant _l_List_toString___at___f_spec__0___closed__1
  adrp x8, _l_List_toString___at___f_spec__0___closed__1@PAGE
  ldr x8, [x8, _l_List_toString___at___f_spec__0___closed__1@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 6
  str x8, [sp, #48]
  // call Nat.reprFast with 1 runtime args
  // load spilled vreg26 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 7
  str x8, [sp, #56]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg27 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  // load spilled vreg28 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg29
  // store to stack slot 8
  str x8, [sp, #64]
  // dec 1
  // load spilled vreg28 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // call List.foldl._at_.List.toString._at_.f.spec_0.spec_0 with 2 runtime args
  // load spilled vreg29 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  mov x1, x24
  bl _l_List_foldl___at___List_toString___at___f_spec__0_spec__0
  mov x8, x0
  // store result to spilled vreg30
  // store to stack slot 9
  str x8, [sp, #72]
  mov x8, #93
  // store result to spilled vreg31
  // store to stack slot 10
  str x8, [sp, #80]
  // call String.push with 2 runtime args
  // load spilled vreg30 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  // load spilled vreg31 from stack slot 10
  ldr x8, [sp, #80]
  mov x1, x8
  bl _lean_string_push
  mov x28, x0
  // return
  mov x0, x28
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn2531526937997518333
.Lcase_end7_fn2531526937997518333:
  b .Lcase_end2_fn2531526937997518333
.Lcase_end2_fn2531526937997518333:

  .globl __init_l_List_toString___at___f_spec__0___closed__2
  .align 2
__init_l_List_toString___at___f_spec__0___closed__2:
  // Function: List.toString._at_.f.spec_0._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.toString._at_.f.spec_0._closed_2:
  // string literal: ]
  adrp x0, .Lstrptr_5619101324606972247_0@PAGE
  ldr x0, [x0, .Lstrptr_5619101324606972247_0@PAGEOFF]
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
.Lstrptr_5619101324606972247_0:
  .quad .Lstr_5619101324606972247_0
.Lstr_5619101324606972247_0:
  .asciz "]"
  .text

  .globl __init_l_List_toString___at___f_spec__0___closed__1
  .align 2
__init_l_List_toString___at___f_spec__0___closed__1:
  // Function: List.toString._at_.f.spec_0._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.toString._at_.f.spec_0._closed_1:
  // string literal: [
  adrp x0, .Lstrptr_16237776327571169044_0@PAGE
  ldr x0, [x0, .Lstrptr_16237776327571169044_0@PAGEOFF]
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
.Lstrptr_16237776327571169044_0:
  .quad .Lstr_16237776327571169044_0
.Lstr_16237776327571169044_0:
  .asciz "["
  .text

  .globl __init_l_List_toString___at___f_spec__0___closed__0
  .align 2
__init_l_List_toString___at___f_spec__0___closed__0:
  // Function: List.toString._at_.f.spec_0._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.toString._at_.f.spec_0._closed_0:
  // string literal: []
  adrp x0, .Lstrptr_17720142301033017388_0@PAGE
  ldr x0, [x0, .Lstrptr_17720142301033017388_0@PAGEOFF]
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
.Lstrptr_17720142301033017388_0:
  .quad .Lstr_17720142301033017388_0
.Lstr_17720142301033017388_0:
  .asciz "[]"
  .text

  .globl _l_List_foldl___at___List_toString___at___f_spec__0_spec__0
  .align 2
_l_List_foldl___at___List_toString___at___f_spec__0_spec__0:
  // Function: List.foldl._at_.List.toString._at_.f.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #48
  // Stack frame: 48 bytes (3 spilled vars)
.Lfn_start_List.foldl._at_.List.toString._at_.f.spec_0.spec_0:
  mov x19, x0
  mov x20, x1
  // case
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn11999939322627758825
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn11999939322627758825
.Lscalar_tag0_fn11999939322627758825:
  lsr x8, x20, #1
.Lcompare_tag1_fn11999939322627758825:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn11999939322627758825
  cmp x8, #1
  b.eq .Lcase_ctor4_fn11999939322627758825
  b .Lcase_end2_fn11999939322627758825
.Lcase_ctor3_fn11999939322627758825:
  // return
  mov x0, x19
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn11999939322627758825
.Lcase_ctor4_fn11999939322627758825:
  // proj field 0
  ldr x26, [x20, #8]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // proj field 1
  ldr x24, [x20, #16]
  // inc 1
  mov x0, x24
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0
  adrp x21, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGE
  ldr x21, [x21, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGEOFF]
  // call String.Internal.append with 2 runtime args
  mov x0, x19
  mov x1, x21
  bl _lean_string_append
  mov x22, x0
  // dec 1
  // call Nat.reprFast with 1 runtime args
  mov x0, x26
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg16
  // store to stack slot 0
  str x8, [sp]
  // call String.Internal.append with 2 runtime args
  mov x0, x22
  // load spilled vreg16 from stack slot 0
  ldr x8, [sp]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg17
  // store to stack slot 1
  str x8, [sp, #8]
  // dec 1
  // load spilled vreg16 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec_ref
  // tail call to List.foldl._at_.List.toString._at_.f.spec_0.spec_0
  // load spilled vreg17 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  mov x1, x24
  b .Lfn_start_List.foldl._at_.List.toString._at_.f.spec_0.spec_0
  b .Lcase_end2_fn11999939322627758825
.Lcase_end2_fn11999939322627758825:

  .globl __init_l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0
  .align 2
__init_l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0:
  // Function: List.foldl._at_.List.toString._at_.f.spec_0.spec_0._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.foldl._at_.List.toString._at_.f.spec_0.spec_0._closed_0:
  // string literal: , 
  adrp x0, .Lstrptr_10667160596146848648_0@PAGE
  ldr x0, [x0, .Lstrptr_10667160596146848648_0@PAGEOFF]
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
.Lstrptr_10667160596146848648_0:
  .quad .Lstr_10667160596146848648_0
.Lstr_10667160596146848648_0:
  .asciz ", "
  .text

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_closure__bug4
  .align 2
_initialize_closure__bug4:
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

  // Initialize closed constants and 0-param defs
  // Initialize _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0
  bl __init_l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0
  adrp x8, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGE
  str x0, [x8, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGE
  ldr x0, [x8, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_List_toString___at___f_spec__0___closed__0
  bl __init_l_List_toString___at___f_spec__0___closed__0
  adrp x8, _l_List_toString___at___f_spec__0___closed__0@PAGE
  str x0, [x8, _l_List_toString___at___f_spec__0___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_toString___at___f_spec__0___closed__0@PAGE
  ldr x0, [x8, _l_List_toString___at___f_spec__0___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_List_toString___at___f_spec__0___closed__1
  bl __init_l_List_toString___at___f_spec__0___closed__1
  adrp x8, _l_List_toString___at___f_spec__0___closed__1@PAGE
  str x0, [x8, _l_List_toString___at___f_spec__0___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_toString___at___f_spec__0___closed__1@PAGE
  ldr x0, [x8, _l_List_toString___at___f_spec__0___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_List_toString___at___f_spec__0___closed__2
  bl __init_l_List_toString___at___f_spec__0___closed__2
  adrp x8, _l_List_toString___at___f_spec__0___closed__2@PAGE
  str x0, [x8, _l_List_toString___at___f_spec__0___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_toString___at___f_spec__0___closed__2@PAGE
  ldr x0, [x8, _l_List_toString___at___f_spec__0___closed__2@PAGEOFF]
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
