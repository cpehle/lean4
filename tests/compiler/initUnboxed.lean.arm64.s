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

  .align 2  // word alignment
  .globl _l_main___closed__4
_l_main___closed__4:
  .long 0  // uint32/float32 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__3
_l_main___closed__3:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__2
_l_main___closed__2:
  .quad 0  // uint64/usize/float initialized at startup
  .align 0  // byte alignment
  .globl _l_main___closed__1
_l_main___closed__1:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__0
_l_main___closed__0:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___main_spec__2___closed__1
_l_IO_println___at___main_spec__2___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___main_spec__2___closed__0
_l_IO_println___at___main_spec__2___closed__0:
  .quad 0  // Object initialized at startup
  .align 2  // word alignment
  .globl _l_test32
_l_test32:
  .long 0  // uint32/float32 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_
_l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testf
_l_testf:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_
_l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_
_l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testu
_l_testu:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_
_l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_:
  .quad 0  // Object initialized at startup
  .align 0  // byte alignment
  .globl _l_testb
_l_testb:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_test
_l_test:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_
_l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_:
  .quad 0  // Object initialized at startup

  .text

  .globl _l_IO_println___at___main_spec__5___boxed
  .align 2
_l_IO_println___at___main_spec__5___boxed:
  // Function: IO.println._at_.main.spec_5._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_5._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec
  // call IO.println._at_.main.spec_5 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___main_spec__5
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

  .globl _l_IO_println___at___main_spec__4___boxed
  .align 2
_l_IO_println___at___main_spec__4___boxed:
  // Function: IO.println._at_.main.spec_4._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_4._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  mov x0, x19
  bl _lean_unbox_float
  fmov d31, d0
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // call IO.println._at_.main.spec_4 with 2 runtime args
  fmov d0, d31
  mov x1, x20
  bl _l_IO_println___at___main_spec__4
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

  .globl _l_IO_println___at___main_spec__3___boxed
  .align 2
_l_IO_println___at___main_spec__3___boxed:
  // Function: IO.println._at_.main.spec_3._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_3._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec
  // call IO.println._at_.main.spec_3 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___main_spec__3
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

  .globl _l_IO_println___at___main_spec__2___boxed
  .align 2
_l_IO_println___at___main_spec__2___boxed:
  // Function: IO.println._at_.main.spec_2._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_2._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // call IO.println._at_.main.spec_2 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___main_spec__2
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

  .globl _l_IO_println___at___main_spec__0___boxed
  .align 2
_l_IO_println___at___main_spec__0___boxed:
  // Function: IO.println._at_.main.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_0._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x27
  mov x1, x20
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
  // Stack frame: 80 bytes (9 spilled vars)
.Lfn_start_main:
  mov x19, x0
  // load global constant _l_main___closed__0
  adrp x27, _l_main___closed__0@PAGE
  ldr x27, [x27, _l_main___closed__0@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_IO_println___at___main_spec__0
  mov x22, x0
  // case
  // runtime scalar check
  tst x22, #1
  b.ne .Lscalar_tag0_fn771961157887135399
  ldrb w8, [x22, #7]
  b .Lcompare_tag1_fn771961157887135399
.Lscalar_tag0_fn771961157887135399:
  lsr x8, x22, #1
.Lcompare_tag1_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor4_fn771961157887135399
  b .Lcase_end2_fn771961157887135399
.Lcase_ctor3_fn771961157887135399:
  // proj field 1
  ldr x23, [x22, #16]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // load global constant _l_main___closed__1
  adrp x21, _l_main___closed__1@PAGE
  add x21, x21, _l_main___closed__1@PAGEOFF
  ldrb w21, [x21]
  // call IO.println._at_.main.spec_2 with 2 runtime args
  mov x0, x21
  mov x1, x23
  bl _l_IO_println___at___main_spec__2
  mov x20, x0
  // case
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag5_fn771961157887135399
  ldrb w8, [x20, #7]
  b .Lcompare_tag6_fn771961157887135399
.Lscalar_tag5_fn771961157887135399:
  lsr x8, x20, #1
.Lcompare_tag6_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor9_fn771961157887135399
  b .Lcase_end7_fn771961157887135399
.Lcase_ctor8_fn771961157887135399:
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg7
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  ldr x8, [x8, _l_main___closed__2@PAGEOFF]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_.main.spec_3 with 2 runtime args
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at___main_spec__3
  mov x8, x0
  // store result to spilled vreg9
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag10_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag11_fn771961157887135399
.Lscalar_tag10_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag11_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor13_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor14_fn771961157887135399
  b .Lcase_end12_fn771961157887135399
.Lcase_ctor13_fn771961157887135399:
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg10
  // store to stack slot 4
  str x8, [sp, #32]
  // inc 1
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_main___closed__3
  adrp x16, _l_main___closed__3@PAGE
  ldr d31, [x16, _l_main___closed__3@PAGEOFF]
  // call IO.println._at_.main.spec_4 with 2 runtime args
  fmov d0, d31
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at___main_spec__4
  mov x8, x0
  // store result to spilled vreg12
  // store to stack slot 5
  str x8, [sp, #40]
  // load spilled vreg12 from stack slot 5
  ldr x8, [sp, #40]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag15_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag16_fn771961157887135399
.Lscalar_tag15_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag16_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor18_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor19_fn771961157887135399
  b .Lcase_end17_fn771961157887135399
.Lcase_ctor18_fn771961157887135399:
  // load spilled vreg12 from stack slot 5
  ldr x8, [sp, #40]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg13
  // store to stack slot 6
  str x8, [sp, #48]
  // inc 1
  // load spilled vreg13 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg12 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_main___closed__4
  adrp x8, _l_main___closed__4@PAGE
  ldr x8, [x8, _l_main___closed__4@PAGEOFF]
  // store result to spilled vreg14
  // store to stack slot 7
  str x8, [sp, #56]
  // call IO.println._at_.main.spec_5 with 2 runtime args
  // load spilled vreg14 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  // load spilled vreg13 from stack slot 6
  ldr x8, [sp, #48]
  mov x1, x8
  bl _l_IO_println___at___main_spec__5
  mov x8, x0
  // store result to spilled vreg15
  // store to stack slot 8
  str x8, [sp, #64]
  // return
  // load spilled vreg15 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end17_fn771961157887135399
.Lcase_ctor19_fn771961157887135399:
  // return
  // load spilled vreg12 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end17_fn771961157887135399
.Lcase_end17_fn771961157887135399:
  b .Lcase_end12_fn771961157887135399
.Lcase_ctor14_fn771961157887135399:
  // return
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn771961157887135399
.Lcase_end12_fn771961157887135399:
  b .Lcase_end7_fn771961157887135399
.Lcase_ctor9_fn771961157887135399:
  // return
  mov x0, x20
  add sp, sp, #80
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
  mov x0, x22
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn771961157887135399
.Lcase_end2_fn771961157887135399:

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
  // load global constant _l_test32
  adrp x27, _l_test32@PAGE
  ldr x27, [x27, _l_test32@PAGEOFF]
  // return
  mov x0, x27
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
.Lfn_start_main._closed_3:
  // load global constant _l_testf
  adrp x16, _l_testf@PAGE
  ldr d30, [x16, _l_testf@PAGEOFF]
  // return
  fmov d0, d30
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
  // load global constant _l_testu
  adrp x27, _l_testu@PAGE
  ldr x27, [x27, _l_testu@PAGEOFF]
  // return
  mov x0, x27
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
  // load global constant _l_testb
  adrp x27, _l_testb@PAGE
  add x27, x27, _l_testb@PAGEOFF
  ldrb w27, [x27]
  // return
  mov x0, x27
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
  // load global constant _l_test
  adrp x27, _l_test@PAGE
  ldr x27, [x27, _l_test@PAGEOFF]
  // return
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___main_spec__5
  .align 2
_l_IO_println___at___main_spec__5:
  // Function: IO.println._at_.main.spec_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_5:
  mov x19, x0
  mov x20, x1
  // call UInt32.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint32_to_nat
  mov x27, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  mov x25, #10
  // call String.push with 2 runtime args
  mov x0, x26
  mov x1, x25
  bl _lean_string_push
  mov x24, x0
  // call IO.print._at_.IO.println._at_.main.spec_0.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  mov x23, x0
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___main_spec__4
  .align 2
_l_IO_println___at___main_spec__4:
  // Function: IO.println._at_.main.spec_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_4:
  fmov d8, d0
  mov x19, x1
  // call Float.toString with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_string
  mov x27, x0
  mov x26, #10
  // call String.push with 2 runtime args
  mov x0, x27
  mov x1, x26
  bl _lean_string_push
  mov x25, x0
  // call IO.print._at_.IO.println._at_.main.spec_0.spec_0 with 2 runtime args
  mov x0, x25
  mov x1, x19
  bl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  mov x24, x0
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___main_spec__3
  .align 2
_l_IO_println___at___main_spec__3:
  // Function: IO.println._at_.main.spec_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_3:
  mov x19, x0
  mov x20, x1
  // call USize.toNat with 1 runtime args
  mov x0, x19
  bl _lean_usize_to_nat
  mov x27, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  mov x25, #10
  // call String.push with 2 runtime args
  mov x0, x26
  mov x1, x25
  bl _lean_string_push
  mov x24, x0
  // call IO.print._at_.IO.println._at_.main.spec_0.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  mov x23, x0
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___main_spec__2
  .align 2
_l_IO_println___at___main_spec__2:
  // Function: IO.println._at_.main.spec_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_2:
  mov x19, x0
  mov x20, x1
  // case
  mov x8, x19
  cmp x8, #0
  b.eq .Lcase_ctor2_fn16669928253027197258
  cmp x8, #1
  b.eq .Lcase_ctor3_fn16669928253027197258
  b .Lcase_end1_fn16669928253027197258
.Lcase_ctor2_fn16669928253027197258:
  // load global constant _l_IO_println___at___main_spec__2___closed__0
  adrp x22, _l_IO_println___at___main_spec__2___closed__0@PAGE
  ldr x22, [x22, _l_IO_println___at___main_spec__2___closed__0@PAGEOFF]
  // jump to JP7
  mov x27, x22
  b .LJP0_fn16669928253027197258
  b .Lcase_end1_fn16669928253027197258
.Lcase_ctor3_fn16669928253027197258:
  // load global constant _l_IO_println___at___main_spec__2___closed__1
  adrp x28, _l_IO_println___at___main_spec__2___closed__1@PAGE
  ldr x28, [x28, _l_IO_println___at___main_spec__2___closed__1@PAGEOFF]
  // jump to JP7
  mov x27, x28
  b .LJP0_fn16669928253027197258
  b .Lcase_end1_fn16669928253027197258
.Lcase_end1_fn16669928253027197258:
.LJP0_fn16669928253027197258:
  mov x26, #10
  // call String.push with 2 runtime args
  mov x0, x27
  mov x1, x26
  bl _lean_string_push
  mov x25, x0
  // call IO.print._at_.IO.println._at_.main.spec_0.spec_0 with 2 runtime args
  mov x0, x25
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  mov x23, x0
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_IO_println___at___main_spec__2___closed__1
  .align 2
__init_l_IO_println___at___main_spec__2___closed__1:
  // Function: IO.println._at_.main.spec_2._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_2._closed_1:
  // string literal: true
  adrp x0, .Lstrptr_6290560350586315503_0@PAGE
  ldr x0, [x0, .Lstrptr_6290560350586315503_0@PAGEOFF]
  // DEBUG: str='true' byteSize=4 charCount=4
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
.Lstrptr_6290560350586315503_0:
  .quad .Lstr_6290560350586315503_0
.Lstr_6290560350586315503_0:
  .asciz "true"
  .text

  .globl __init_l_IO_println___at___main_spec__2___closed__0
  .align 2
__init_l_IO_println___at___main_spec__2___closed__0:
  // Function: IO.println._at_.main.spec_2._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_2._closed_0:
  // string literal: false
  adrp x0, .Lstrptr_5591974804658680103_0@PAGE
  ldr x0, [x0, .Lstrptr_5591974804658680103_0@PAGEOFF]
  // DEBUG: str='false' byteSize=5 charCount=5
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
.Lstrptr_5591974804658680103_0:
  .quad .Lstr_5591974804658680103_0
.Lstr_5591974804658680103_0:
  .asciz "false"
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
  // call UInt64.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint64_to_nat
  mov x27, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  mov x25, #10
  // call String.push with 2 runtime args
  mov x0, x26
  mov x1, x25
  bl _lean_string_push
  mov x24, x0
  // call IO.print._at_.IO.println._at_.main.spec_0.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  mov x23, x0
  // return
  mov x0, x23
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

  .globl _l_initFn____x40_initUnboxed_2208129052____hygCtx___hyg_2_
  .align 2
_l_initFn____x40_initUnboxed_2208129052____hygCtx___hyg_2_:
  // Function: initFn._@.initUnboxed.2208129052._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn.__.initUnboxed.2208129052._hygCtx._hyg.2:
  mov x19, x0
  // load global constant _l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_
  adrp x27, _l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_@PAGE
  ldr x27, [x27, _l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_@PAGEOFF]
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_
  .align 2
__init_l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_:
  // Function: initFn._boxed_const_1._@.initUnboxed.2208129052._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn._boxed_const_1.__.initUnboxed.2208129052._hygCtx._hyg.2:
  mov x27, #16
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

  .globl _l_initFn____x40_initUnboxed_744502646____hygCtx___hyg_2_
  .align 2
_l_initFn____x40_initUnboxed_744502646____hygCtx___hyg_2_:
  // Function: initFn._@.initUnboxed.744502646._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn.__.initUnboxed.744502646._hygCtx._hyg.2:
  mov x19, x0
  // load global constant _l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_
  adrp x27, _l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGE
  ldr x27, [x27, _l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGEOFF]
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_
  .align 2
__init_l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_:
  // Function: initFn._boxed_const_1._@.initUnboxed.744502646._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn._boxed_const_1.__.initUnboxed.744502646._hygCtx._hyg.2:
  // load global constant _l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_
  adrp x16, _l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGE
  ldr d31, [x16, _l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGEOFF]
  // box
  fmov d0, d31
  bl _lean_box_float
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

  .globl __init_l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_
  .align 2
__init_l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_:
  // Function: initFn._closed_0._@.initUnboxed.744502646._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn._closed_0.__.initUnboxed.744502646._hygCtx._hyg.2:
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x28, x0
  mov x27, #1
  movz x0, #5, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
  // call Float.ofScientific with 3 runtime args
  mov x0, x26
  mov x1, x27
  mov x2, x28
  bl _l_Float_ofScientific
  fmov d30, d0
  // return
  fmov d0, d30
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_initFn____x40_initUnboxed_2016441482____hygCtx___hyg_2_
  .align 2
_l_initFn____x40_initUnboxed_2016441482____hygCtx___hyg_2_:
  // Function: initFn._@.initUnboxed.2016441482._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn.__.initUnboxed.2016441482._hygCtx._hyg.2:
  mov x19, x0
  // load global constant _l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_
  adrp x27, _l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_@PAGE
  ldr x27, [x27, _l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_@PAGEOFF]
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_
  .align 2
__init_l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_:
  // Function: initFn._boxed_const_1._@.initUnboxed.2016441482._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn._boxed_const_1.__.initUnboxed.2016441482._hygCtx._hyg.2:
  mov x27, #1
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

  .globl _l_initFn____x40_initUnboxed_3445265930____hygCtx___hyg_2_
  .align 2
_l_initFn____x40_initUnboxed_3445265930____hygCtx___hyg_2_:
  // Function: initFn._@.initUnboxed.3445265930._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn.__.initUnboxed.3445265930._hygCtx._hyg.2:
  mov x19, x0
  mov x27, #0
  // box
  lsl x26, x27, #1
  orr x26, x26, #1
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  mov x0, x25
  mov x1, #0
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x25
  mov x1, #1
  mov x2, x19
  bl _lean_ctor_set
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_initFn____x40_initUnboxed_2887224489____hygCtx___hyg_2_
  .align 2
_l_initFn____x40_initUnboxed_2887224489____hygCtx___hyg_2_:
  // Function: initFn._@.initUnboxed.2887224489._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn.__.initUnboxed.2887224489._hygCtx._hyg.2:
  mov x19, x0
  // load global constant _l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_
  adrp x27, _l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_@PAGE
  ldr x27, [x27, _l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_@PAGEOFF]
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_
  .align 2
__init_l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_:
  // Function: initFn._boxed_const_1._@.initUnboxed.2887224489._hygCtx._hyg.2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_initFn._boxed_const_1.__.initUnboxed.2887224489._hygCtx._hyg.2:
  mov x27, #0
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

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_initUnboxed
  .align 2
_initialize_initUnboxed:
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
  // Initialize _l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_
  bl __init_l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_
  adrp x8, _l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_@PAGE
  add x8, x8, _l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_@PAGE
  add x8, x8, _l_initFn___boxed__const__1____x40_initUnboxed_2887224489____hygCtx___hyg_2_@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize test via initFn initFn._@.initUnboxed.2887224489._hygCtx._hyg.2
  mov x0, #1  // lean_io_mk_world() inlined as lean_box(0)
  bl _l_initFn____x40_initUnboxed_2887224489____hygCtx___hyg_2_
  mov x19, x0  // Save IO result
  ldrb w8, [x19, #7]  // Load m_tag from IO result
  cbnz w8, .Linit_error  // If tag != 0, error
  // Extract value from IO result and store in _l_test
  ldr x0, [x19, #8]  // Get field 0 (the value)
  bl _lean_unbox_uint64  // Unbox to uint64
  adrp x8, _l_test@PAGE
  add x8, x8, _l_test@PAGEOFF
  str x0, [x8]
  // Dec ref IO result
  mov x0, x19
  bl _lean_dec_ref

  // Initialize testb via initFn initFn._@.initUnboxed.3445265930._hygCtx._hyg.2
  mov x0, #1  // lean_io_mk_world() inlined as lean_box(0)
  bl _l_initFn____x40_initUnboxed_3445265930____hygCtx___hyg_2_
  mov x19, x0  // Save IO result
  ldrb w8, [x19, #7]  // Load m_tag from IO result
  cbnz w8, .Linit_error  // If tag != 0, error
  // Extract value from IO result and store in _l_testb
  ldr x0, [x19, #8]  // Get field 0 (the value)
  bl _lean_unbox  // Unbox scalar to native integer
  adrp x8, _l_testb@PAGE
  add x8, x8, _l_testb@PAGEOFF
  strb w0, [x8]
  // Dec ref IO result
  mov x0, x19
  bl _lean_dec_ref

  // Initialize _l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_
  bl __init_l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_
  adrp x8, _l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_@PAGE
  add x8, x8, _l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_@PAGE
  add x8, x8, _l_initFn___boxed__const__1____x40_initUnboxed_2016441482____hygCtx___hyg_2_@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize testu via initFn initFn._@.initUnboxed.2016441482._hygCtx._hyg.2
  mov x0, #1  // lean_io_mk_world() inlined as lean_box(0)
  bl _l_initFn____x40_initUnboxed_2016441482____hygCtx___hyg_2_
  mov x19, x0  // Save IO result
  ldrb w8, [x19, #7]  // Load m_tag from IO result
  cbnz w8, .Linit_error  // If tag != 0, error
  // Extract value from IO result and store in _l_testu
  ldr x0, [x19, #8]  // Get field 0 (the value)
  bl _lean_unbox  // Unbox scalar to native integer
  adrp x8, _l_testu@PAGE
  add x8, x8, _l_testu@PAGEOFF
  str x0, [x8]
  // Dec ref IO result
  mov x0, x19
  bl _lean_dec_ref

  // Initialize _l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_
  bl __init_l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_
  adrp x8, _l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGE
  add x8, x8, _l_initFn___closed__0____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGEOFF
  str d0, [x8]

  // Initialize _l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_
  bl __init_l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_
  adrp x8, _l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGE
  add x8, x8, _l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGE
  add x8, x8, _l_initFn___boxed__const__1____x40_initUnboxed_744502646____hygCtx___hyg_2_@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize testf via initFn initFn._@.initUnboxed.744502646._hygCtx._hyg.2
  mov x0, #1  // lean_io_mk_world() inlined as lean_box(0)
  bl _l_initFn____x40_initUnboxed_744502646____hygCtx___hyg_2_
  mov x19, x0  // Save IO result
  ldrb w8, [x19, #7]  // Load m_tag from IO result
  cbnz w8, .Linit_error  // If tag != 0, error
  // Extract value from IO result and store in _l_testf
  ldr x0, [x19, #8]  // Get field 0 (the value)
  bl _lean_unbox_float  // Unbox to float
  adrp x8, _l_testf@PAGE
  add x8, x8, _l_testf@PAGEOFF
  str d0, [x8]  // Float returns in d0
  // Dec ref IO result
  mov x0, x19
  bl _lean_dec_ref

  // Initialize _l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_
  bl __init_l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_
  adrp x8, _l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_@PAGE
  add x8, x8, _l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_@PAGE
  add x8, x8, _l_initFn___boxed__const__1____x40_initUnboxed_2208129052____hygCtx___hyg_2_@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize test32 via initFn initFn._@.initUnboxed.2208129052._hygCtx._hyg.2
  mov x0, #1  // lean_io_mk_world() inlined as lean_box(0)
  bl _l_initFn____x40_initUnboxed_2208129052____hygCtx___hyg_2_
  mov x19, x0  // Save IO result
  ldrb w8, [x19, #7]  // Load m_tag from IO result
  cbnz w8, .Linit_error  // If tag != 0, error
  // Extract value from IO result and store in _l_test32
  ldr x0, [x19, #8]  // Get field 0 (the value)
  bl _lean_unbox  // Unbox scalar to native integer
  adrp x8, _l_test32@PAGE
  add x8, x8, _l_test32@PAGEOFF
  str w0, [x8]
  // Dec ref IO result
  mov x0, x19
  bl _lean_dec_ref

  // Initialize _l_IO_println___at___main_spec__2___closed__0
  bl __init_l_IO_println___at___main_spec__2___closed__0
  adrp x8, _l_IO_println___at___main_spec__2___closed__0@PAGE
  add x8, x8, _l_IO_println___at___main_spec__2___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___main_spec__2___closed__0@PAGE
  add x8, x8, _l_IO_println___at___main_spec__2___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___main_spec__2___closed__1
  bl __init_l_IO_println___at___main_spec__2___closed__1
  adrp x8, _l_IO_println___at___main_spec__2___closed__1@PAGE
  add x8, x8, _l_IO_println___at___main_spec__2___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___main_spec__2___closed__1@PAGE
  add x8, x8, _l_IO_println___at___main_spec__2___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__0
  bl __init_l_main___closed__0
  adrp x8, _l_main___closed__0@PAGE
  add x8, x8, _l_main___closed__0@PAGEOFF
  str x0, [x8]

  // Initialize _l_main___closed__1
  bl __init_l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  add x8, x8, _l_main___closed__1@PAGEOFF
  strb w0, [x8]

  // Initialize _l_main___closed__2
  bl __init_l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  add x8, x8, _l_main___closed__2@PAGEOFF
  str x0, [x8]

  // Initialize _l_main___closed__3
  bl __init_l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  add x8, x8, _l_main___closed__3@PAGEOFF
  str d0, [x8]

  // Initialize _l_main___closed__4
  bl __init_l_main___closed__4
  adrp x8, _l_main___closed__4@PAGE
  add x8, x8, _l_main___closed__4@PAGEOFF
  str w0, [x8]

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
