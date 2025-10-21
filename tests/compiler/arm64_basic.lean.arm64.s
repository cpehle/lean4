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

  .globl _l_main___closed__2
_l_main___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__1
_l_main___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__0
_l_main___closed__0:
  .quad 0  // Initialized at startup
  .globl _l_testBox___closed__7
_l_testBox___closed__7:
  .quad 0  // Initialized at startup
  .globl _l_testBox___closed__6
_l_testBox___closed__6:
  .quad 0  // Initialized at startup
  .globl _l_testBox___closed__5
_l_testBox___closed__5:
  .quad 0  // Initialized at startup
  .globl _l_testBox___closed__4
_l_testBox___closed__4:
  .quad 0  // Initialized at startup
  .globl _l_testBox___closed__3
_l_testBox___closed__3:
  .quad 0  // Initialized at startup
  .globl _l_testBox___closed__2
_l_testBox___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_testBox___closed__1
_l_testBox___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_testBox___closed__0
_l_testBox___closed__0:
  .quad 0  // Initialized at startup
  .globl _l_testLit___closed__7
_l_testLit___closed__7:
  .quad 0  // Initialized at startup
  .globl _l_testLit___closed__6
_l_testLit___closed__6:
  .quad 0  // Initialized at startup
  .globl _l_testLit___closed__5
_l_testLit___closed__5:
  .quad 0  // Initialized at startup
  .globl _l_testLit___closed__4
_l_testLit___closed__4:
  .quad 0  // Initialized at startup
  .globl _l_testLit___closed__3
_l_testLit___closed__3:
  .quad 0  // Initialized at startup
  .globl _l_testLit___closed__2
_l_testLit___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_testLit___closed__1
_l_testLit___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_testLit___closed__0
_l_testLit___closed__0:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__19
_l_testCase___closed__19:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__18
_l_testCase___closed__18:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__17
_l_testCase___closed__17:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__16
_l_testCase___closed__16:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__15
_l_testCase___closed__15:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__14
_l_testCase___closed__14:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__13
_l_testCase___closed__13:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__12
_l_testCase___closed__12:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__11
_l_testCase___closed__11:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__10
_l_testCase___closed__10:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__9
_l_testCase___closed__9:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__8
_l_testCase___closed__8:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__7
_l_testCase___closed__7:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__6
_l_testCase___closed__6:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__5
_l_testCase___closed__5:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__4
_l_testCase___closed__4:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__3
_l_testCase___closed__3:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__2
_l_testCase___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__1
_l_testCase___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_testCase___closed__0
_l_testCase___closed__0:
  .quad 0  // Initialized at startup
  .globl _l_testProj___closed__6
_l_testProj___closed__6:
  .quad 0  // Initialized at startup
  .globl _l_testProj___closed__5
_l_testProj___closed__5:
  .quad 0  // Initialized at startup
  .globl _l_testProj___closed__4
_l_testProj___closed__4:
  .quad 0  // Initialized at startup
  .globl _l_testProj___closed__3
_l_testProj___closed__3:
  .quad 0  // Initialized at startup
  .globl _l_testProj___closed__2
_l_testProj___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_testProj___closed__1
_l_testProj___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_testProj___closed__0
_l_testProj___closed__0:
  .quad 0  // Initialized at startup
  .globl _l_testCtor___closed__8
_l_testCtor___closed__8:
  .quad 0  // Initialized at startup
  .globl _l_testCtor___closed__7
_l_testCtor___closed__7:
  .quad 0  // Initialized at startup
  .globl _l_testCtor___closed__6
_l_testCtor___closed__6:
  .quad 0  // Initialized at startup
  .globl _l_testCtor___closed__5
_l_testCtor___closed__5:
  .quad 0  // Initialized at startup
  .globl _l_testCtor___closed__4
_l_testCtor___closed__4:
  .quad 0  // Initialized at startup
  .globl _l_testCtor___closed__3
_l_testCtor___closed__3:
  .quad 0  // Initialized at startup
  .globl _l_testCtor___closed__2
_l_testCtor___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_testCtor___closed__1
_l_testCtor___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_testCtor___closed__0
_l_testCtor___closed__0:
  .quad 0  // Initialized at startup
  .globl _l_testReturn___closed__6
_l_testReturn___closed__6:
  .quad 0  // Initialized at startup
  .globl _l_testReturn___closed__5
_l_testReturn___closed__5:
  .quad 0  // Initialized at startup
  .globl _l_testReturn___closed__4
_l_testReturn___closed__4:
  .quad 0  // Initialized at startup
  .globl _l_testReturn___closed__3
_l_testReturn___closed__3:
  .quad 0  // Initialized at startup
  .globl _l_testReturn___closed__2
_l_testReturn___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_testReturn___closed__1
_l_testReturn___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_testReturn___closed__0
_l_testReturn___closed__0:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__20
_l_testAdd___closed__20:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__19
_l_testAdd___closed__19:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__18
_l_testAdd___closed__18:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__17
_l_testAdd___closed__17:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__16
_l_testAdd___closed__16:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__15
_l_testAdd___closed__15:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__14
_l_testAdd___closed__14:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__13
_l_testAdd___closed__13:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__12
_l_testAdd___closed__12:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__11
_l_testAdd___closed__11:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__10
_l_testAdd___closed__10:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__9
_l_testAdd___closed__9:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__8
_l_testAdd___closed__8:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__7
_l_testAdd___closed__7:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__6
_l_testAdd___closed__6:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__5
_l_testAdd___closed__5:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__4
_l_testAdd___closed__4:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__3
_l_testAdd___closed__3:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__2
_l_testAdd___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__1
_l_testAdd___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_testAdd___closed__0
_l_testAdd___closed__0:
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
  sub sp, sp, #160
  // Stack frame: 160 bytes (19 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___closed__0
  adrp x27, _l_main___closed__0@PAGE
  ldr x27, [x27, _l_main___closed__0@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x22, x0
  // case
  ldrb w8, [x22, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor2_fn771961157887135399
  b .Lcase_end0_fn771961157887135399
.Lcase_ctor1_fn771961157887135399:
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
  ldr x21, [x21, _l_main___closed__1@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x21
  mov x1, x23
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x12, x0
  // case
  ldrb w8, [x12, #7]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor5_fn771961157887135399
  b .Lcase_end3_fn771961157887135399
.Lcase_ctor4_fn771961157887135399:
  // proj field 1
  ldr x13, [x12, #16]
  // inc 1
  mov x0, x13
  bl _lean_inc
  // dec 1
  mov x0, x12
  bl _lean_dec_ref
  // load global constant _l_testAdd___closed__20
  adrp x11, _l_testAdd___closed__20@PAGE
  ldr x11, [x11, _l_testAdd___closed__20@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x11
  mov x1, x13
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x9, x0
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor7_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor8_fn771961157887135399
  b .Lcase_end6_fn771961157887135399
.Lcase_ctor7_fn771961157887135399:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg36
  // store to stack slot 0
  str x8, [sp]
  // inc 1
  // load spilled vreg36 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec_ref
  // call testAdd with 1 runtime args
  // load spilled vreg36 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _l_testAdd
  mov x8, x0
  // store result to spilled vreg37
  // store to stack slot 2
  str x8, [sp, #16]
  // load spilled vreg37 from stack slot 2
  ldr x8, [sp, #16]
  // case
  ldrb w8, [x8, #7]
  cmp x8, #0
  b.eq .Lcase_ctor10_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor11_fn771961157887135399
  b .Lcase_end9_fn771961157887135399
.Lcase_ctor10_fn771961157887135399:
  // load spilled vreg37 from stack slot 2
  ldr x8, [sp, #16]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg38
  // store to stack slot 3
  str x8, [sp, #24]
  // inc 1
  // load spilled vreg38 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg37 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec_ref
  // call testReturn with 1 runtime args
  // load spilled vreg38 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _l_testReturn
  mov x8, x0
  // store result to spilled vreg39
  // store to stack slot 4
  str x8, [sp, #32]
  // load spilled vreg39 from stack slot 4
  ldr x8, [sp, #32]
  // case
  ldrb w8, [x8, #7]
  cmp x8, #0
  b.eq .Lcase_ctor13_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor14_fn771961157887135399
  b .Lcase_end12_fn771961157887135399
.Lcase_ctor13_fn771961157887135399:
  // load spilled vreg39 from stack slot 4
  ldr x8, [sp, #32]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg40
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  // load spilled vreg40 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg39 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // call testCtor with 1 runtime args
  // load spilled vreg40 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _l_testCtor
  mov x8, x0
  // store result to spilled vreg41
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg41 from stack slot 6
  ldr x8, [sp, #48]
  // case
  ldrb w8, [x8, #7]
  cmp x8, #0
  b.eq .Lcase_ctor16_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor17_fn771961157887135399
  b .Lcase_end15_fn771961157887135399
.Lcase_ctor16_fn771961157887135399:
  // load spilled vreg41 from stack slot 6
  ldr x8, [sp, #48]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg42
  // store to stack slot 7
  str x8, [sp, #56]
  // inc 1
  // load spilled vreg42 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg41 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _lean_dec_ref
  // call testProj with 1 runtime args
  // load spilled vreg42 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _l_testProj
  mov x8, x0
  // store result to spilled vreg43
  // store to stack slot 8
  str x8, [sp, #64]
  // load spilled vreg43 from stack slot 8
  ldr x8, [sp, #64]
  // case
  ldrb w8, [x8, #7]
  cmp x8, #0
  b.eq .Lcase_ctor19_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor20_fn771961157887135399
  b .Lcase_end18_fn771961157887135399
.Lcase_ctor19_fn771961157887135399:
  // load spilled vreg43 from stack slot 8
  ldr x8, [sp, #64]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg44
  // store to stack slot 9
  str x8, [sp, #72]
  // inc 1
  // load spilled vreg44 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg43 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_dec_ref
  // call testCase with 1 runtime args
  // load spilled vreg44 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _l_testCase
  mov x8, x0
  // store result to spilled vreg45
  // store to stack slot 10
  str x8, [sp, #80]
  // load spilled vreg45 from stack slot 10
  ldr x8, [sp, #80]
  // case
  ldrb w8, [x8, #7]
  cmp x8, #0
  b.eq .Lcase_ctor22_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor23_fn771961157887135399
  b .Lcase_end21_fn771961157887135399
.Lcase_ctor22_fn771961157887135399:
  // load spilled vreg45 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg46
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg46 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg45 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec_ref
  // call testLit with 1 runtime args
  // load spilled vreg46 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _l_testLit
  mov x8, x0
  // store result to spilled vreg47
  // store to stack slot 12
  str x8, [sp, #96]
  // load spilled vreg47 from stack slot 12
  ldr x8, [sp, #96]
  // case
  ldrb w8, [x8, #7]
  cmp x8, #0
  b.eq .Lcase_ctor25_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor26_fn771961157887135399
  b .Lcase_end24_fn771961157887135399
.Lcase_ctor25_fn771961157887135399:
  // load spilled vreg47 from stack slot 12
  ldr x8, [sp, #96]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg48
  // store to stack slot 13
  str x8, [sp, #104]
  // inc 1
  // load spilled vreg48 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg47 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _lean_dec_ref
  // call testBox with 1 runtime args
  // load spilled vreg48 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _l_testBox
  mov x8, x0
  // store result to spilled vreg49
  // store to stack slot 14
  str x8, [sp, #112]
  // load spilled vreg49 from stack slot 14
  ldr x8, [sp, #112]
  // case
  ldrb w8, [x8, #7]
  cmp x8, #0
  b.eq .Lcase_ctor28_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor29_fn771961157887135399
  b .Lcase_end27_fn771961157887135399
.Lcase_ctor28_fn771961157887135399:
  // load spilled vreg49 from stack slot 14
  ldr x8, [sp, #112]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg50
  // store to stack slot 15
  str x8, [sp, #120]
  // inc 1
  // load spilled vreg50 from stack slot 15
  ldr x8, [sp, #120]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg49 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  ldr x8, [x8, _l_main___closed__2@PAGEOFF]
  // store result to spilled vreg51
  // store to stack slot 16
  str x8, [sp, #128]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg51 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  // load spilled vreg50 from stack slot 15
  ldr x8, [sp, #120]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg52
  // store to stack slot 17
  str x8, [sp, #136]
  // return
  // load spilled vreg52 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end27_fn771961157887135399
.Lcase_ctor29_fn771961157887135399:
  // return
  // load spilled vreg49 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end27_fn771961157887135399
.Lcase_end27_fn771961157887135399:
  b .Lcase_end24_fn771961157887135399
.Lcase_ctor26_fn771961157887135399:
  // return
  // load spilled vreg47 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end24_fn771961157887135399
.Lcase_end24_fn771961157887135399:
  b .Lcase_end21_fn771961157887135399
.Lcase_ctor23_fn771961157887135399:
  // return
  // load spilled vreg45 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end21_fn771961157887135399
.Lcase_end21_fn771961157887135399:
  b .Lcase_end18_fn771961157887135399
.Lcase_ctor20_fn771961157887135399:
  // return
  // load spilled vreg43 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end18_fn771961157887135399
.Lcase_end18_fn771961157887135399:
  b .Lcase_end15_fn771961157887135399
.Lcase_ctor17_fn771961157887135399:
  // return
  // load spilled vreg41 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn771961157887135399
.Lcase_end15_fn771961157887135399:
  b .Lcase_end12_fn771961157887135399
.Lcase_ctor14_fn771961157887135399:
  // return
  // load spilled vreg39 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn771961157887135399
.Lcase_end12_fn771961157887135399:
  b .Lcase_end9_fn771961157887135399
.Lcase_ctor11_fn771961157887135399:
  // return
  // load spilled vreg37 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn771961157887135399
.Lcase_end9_fn771961157887135399:
  b .Lcase_end6_fn771961157887135399
.Lcase_ctor8_fn771961157887135399:
  // return
  mov x0, x9
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn771961157887135399
.Lcase_end6_fn771961157887135399:
  b .Lcase_end3_fn771961157887135399
.Lcase_ctor5_fn771961157887135399:
  // return
  mov x0, x12
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn771961157887135399
.Lcase_end3_fn771961157887135399:
  b .Lcase_end0_fn771961157887135399
.Lcase_ctor2_fn771961157887135399:
  // return
  mov x0, x22
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn771961157887135399
.Lcase_end0_fn771961157887135399:

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
  // string literal: All tests completed!
  adrp x0, .Lstrptr_16294557373898097781_0@PAGE
  ldr x0, [x0, .Lstrptr_16294557373898097781_0@PAGEOFF]
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
.Lstrptr_16294557373898097781_0:
  .quad .Lstr_16294557373898097781_0
.Lstr_16294557373898097781_0:
  .asciz "All tests completed!"
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
  // string literal: ====================
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
  .asciz "===================="
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
  // string literal: ARM64 Backend Tests
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
  .asciz "ARM64 Backend Tests"
  .text

  .globl _l_testBox
  .align 2
_l_testBox:
  // Function: testBox
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #96
  // Stack frame: 96 bytes (11 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_testBox___closed__6
  adrp x27, _l_testBox___closed__6@PAGE
  ldr x27, [x27, _l_testBox___closed__6@PAGEOFF]
  // call emitAsm with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_emitAsm
  mov x20, x0
  // case
  ldrb w8, [x20, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn7713160247578158366
  cmp x8, #1
  b.eq .Lcase_ctor2_fn7713160247578158366
  b .Lcase_end0_fn7713160247578158366
.Lcase_ctor1_fn7713160247578158366:
  // proj field 0
  ldr x23, [x20, #8]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // proj field 1
  ldr x21, [x20, #16]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_testBox___closed__7
  adrp x15, _l_testBox___closed__7@PAGE
  ldr x15, [x15, _l_testBox___closed__7@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x15
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x10, x0
  // case
  ldrb w8, [x10, #7]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn7713160247578158366
  cmp x8, #1
  b.eq .Lcase_ctor5_fn7713160247578158366
  b .Lcase_end3_fn7713160247578158366
.Lcase_ctor4_fn7713160247578158366:
  // proj field 1
  ldr x11, [x10, #16]
  // inc 1
  mov x0, x11
  bl _lean_inc
  // dec 1
  mov x0, x10
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  mov x1, x11
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x9, x0
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor7_fn7713160247578158366
  cmp x8, #1
  b.eq .Lcase_ctor8_fn7713160247578158366
  b .Lcase_end6_fn7713160247578158366
.Lcase_ctor7_fn7713160247578158366:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg26
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec_ref
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg27 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 3
  str x8, [sp, #24]
  // return
  // load spilled vreg28 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn7713160247578158366
.Lcase_ctor8_fn7713160247578158366:
  // return
  mov x0, x9
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn7713160247578158366
.Lcase_end6_fn7713160247578158366:
  b .Lcase_end3_fn7713160247578158366
.Lcase_ctor5_fn7713160247578158366:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x10
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn7713160247578158366
.Lcase_end3_fn7713160247578158366:
  b .Lcase_end0_fn7713160247578158366
.Lcase_ctor2_fn7713160247578158366:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  csel x8, x1, xzr, gt
  // store result to spilled vreg29
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor10_fn7713160247578158366
  cmp x8, #1
  b.eq .Lcase_ctor11_fn7713160247578158366
  b .Lcase_end9_fn7713160247578158366
.Lcase_ctor10_fn7713160247578158366:
  // return
  mov x0, x20
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn7713160247578158366
.Lcase_ctor11_fn7713160247578158366:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg30
  // store to stack slot 8
  str x8, [sp, #64]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg31
  // store to stack slot 9
  str x8, [sp, #72]
  // inc 1
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn7713160247578158366
.Lcase_end9_fn7713160247578158366:
  b .Lcase_end0_fn7713160247578158366
.Lcase_end0_fn7713160247578158366:

  .globl __init_l_testBox___closed__7
  .align 2
__init_l_testBox___closed__7:
  // Function: testBox._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: === Test Boxing ===
  adrp x0, .Lstrptr_17264342934264736606_0@PAGE
  ldr x0, [x0, .Lstrptr_17264342934264736606_0@PAGEOFF]
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
.Lstrptr_17264342934264736606_0:
  .quad .Lstr_17264342934264736606_0
.Lstr_17264342934264736606_0:
  .asciz "=== Test Boxing ==="
  .text

  .globl __init_l_testBox___closed__6
  .align 2
__init_l_testBox___closed__6:
  // Function: testBox._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  // load global constant _l_testBox___closed__1
  adrp x26, _l_testBox___closed__1@PAGE
  ldr x26, [x26, _l_testBox___closed__1@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  // load global constant _l_testBox___closed__5
  adrp x24, _l_testBox___closed__5@PAGE
  ldr x24, [x24, _l_testBox___closed__5@PAGEOFF]
  // load global constant _l_testBox___closed__3
  adrp x23, _l_testBox___closed__3@PAGE
  ldr x23, [x23, _l_testBox___closed__3@PAGEOFF]
  // ctor Lean.IR.Decl.fdecl (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  mov x0, x22
  mov x1, #0
  mov x2, x23
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #1
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #2
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #3
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #4
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x22
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testBox___closed__5
  .align 2
__init_l_testBox___closed__5:
  // Function: testBox._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testBox___closed__4
  adrp x27, _l_testBox___closed__4@PAGE
  ldr x27, [x27, _l_testBox___closed__4@PAGEOFF]
  // load global constant _l_testReturn___closed__3
  adrp x26, _l_testReturn___closed__3@PAGE
  ldr x26, [x26, _l_testReturn___closed__3@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_array_push
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

  .globl __init_l_testBox___closed__4
  .align 2
__init_l_testBox___closed__4:
  // Function: testBox._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Lean.IR.IRType.usize (tag=5, objs=0, scalar=0)
  mov x0, #5
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  mov x26, #0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // ctor Lean.IR.Param.mk (tag=0, objs=2, scalar=1)
  mov x0, #0
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // ctor sset (tag=0, objs=1, scalar=8)
  mov x0, #0
  mov x1, #1
  mov x2, #8
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x26
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testBox___closed__3
  .align 2
__init_l_testBox___closed__3:
  // Function: testBox._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testBox___closed__2
  adrp x27, _l_testBox___closed__2@PAGE
  ldr x27, [x27, _l_testBox___closed__2@PAGEOFF]
  // call Lean.Name.mkStr1 with 1 runtime args
  mov x0, x27
  bl _l_Lean_Name_mkStr1
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

  .globl __init_l_testBox___closed__2
  .align 2
__init_l_testBox___closed__2:
  // Function: testBox._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: boxNat
  adrp x0, .Lstrptr_6556839623093199288_0@PAGE
  ldr x0, [x0, .Lstrptr_6556839623093199288_0@PAGEOFF]
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
.Lstrptr_6556839623093199288_0:
  .quad .Lstr_6556839623093199288_0
.Lstr_6556839623093199288_0:
  .asciz "boxNat"
  .text

  .globl __init_l_testBox___closed__1
  .align 2
__init_l_testBox___closed__1:
  // Function: testBox._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testProj___closed__1
  adrp x27, _l_testProj___closed__1@PAGE
  ldr x27, [x27, _l_testProj___closed__1@PAGEOFF]
  // load global constant _l_testBox___closed__0
  adrp x26, _l_testBox___closed__0@PAGE
  ldr x26, [x26, _l_testBox___closed__0@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x24, x0
  // ctor Lean.IR.FnBody.vdecl (tag=0, objs=4, scalar=0)
  mov x0, #0
  mov x1, #4
  mov x2, #0
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #2
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #3
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testBox___closed__0
  .align 2
__init_l_testBox___closed__0:
  // Function: testBox._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // ctor Lean.IR.IRType.usize (tag=5, objs=0, scalar=0)
  mov x0, #5
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  // ctor Lean.IR.Expr.box (tag=9, objs=2, scalar=0)
  mov x0, #9
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
  mov x2, x27
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

  .globl _l_testLit
  .align 2
_l_testLit:
  // Function: testLit
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #96
  // Stack frame: 96 bytes (11 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_testLit___closed__6
  adrp x27, _l_testLit___closed__6@PAGE
  ldr x27, [x27, _l_testLit___closed__6@PAGEOFF]
  // call emitAsm with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_emitAsm
  mov x20, x0
  // case
  ldrb w8, [x20, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn3001445248310534890
  cmp x8, #1
  b.eq .Lcase_ctor2_fn3001445248310534890
  b .Lcase_end0_fn3001445248310534890
.Lcase_ctor1_fn3001445248310534890:
  // proj field 0
  ldr x23, [x20, #8]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // proj field 1
  ldr x21, [x20, #16]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_testLit___closed__7
  adrp x15, _l_testLit___closed__7@PAGE
  ldr x15, [x15, _l_testLit___closed__7@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x15
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x10, x0
  // case
  ldrb w8, [x10, #7]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn3001445248310534890
  cmp x8, #1
  b.eq .Lcase_ctor5_fn3001445248310534890
  b .Lcase_end3_fn3001445248310534890
.Lcase_ctor4_fn3001445248310534890:
  // proj field 1
  ldr x11, [x10, #16]
  // inc 1
  mov x0, x11
  bl _lean_inc
  // dec 1
  mov x0, x10
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  mov x1, x11
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x9, x0
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor7_fn3001445248310534890
  cmp x8, #1
  b.eq .Lcase_ctor8_fn3001445248310534890
  b .Lcase_end6_fn3001445248310534890
.Lcase_ctor7_fn3001445248310534890:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg26
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec_ref
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg27 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 3
  str x8, [sp, #24]
  // return
  // load spilled vreg28 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn3001445248310534890
.Lcase_ctor8_fn3001445248310534890:
  // return
  mov x0, x9
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn3001445248310534890
.Lcase_end6_fn3001445248310534890:
  b .Lcase_end3_fn3001445248310534890
.Lcase_ctor5_fn3001445248310534890:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x10
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn3001445248310534890
.Lcase_end3_fn3001445248310534890:
  b .Lcase_end0_fn3001445248310534890
.Lcase_ctor2_fn3001445248310534890:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  csel x8, x1, xzr, gt
  // store result to spilled vreg29
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor10_fn3001445248310534890
  cmp x8, #1
  b.eq .Lcase_ctor11_fn3001445248310534890
  b .Lcase_end9_fn3001445248310534890
.Lcase_ctor10_fn3001445248310534890:
  // return
  mov x0, x20
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn3001445248310534890
.Lcase_ctor11_fn3001445248310534890:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg30
  // store to stack slot 8
  str x8, [sp, #64]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg31
  // store to stack slot 9
  str x8, [sp, #72]
  // inc 1
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn3001445248310534890
.Lcase_end9_fn3001445248310534890:
  b .Lcase_end0_fn3001445248310534890
.Lcase_end0_fn3001445248310534890:

  .globl __init_l_testLit___closed__7
  .align 2
__init_l_testLit___closed__7:
  // Function: testLit._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: === Test Literal ===
  adrp x0, .Lstrptr_14652603252703416314_0@PAGE
  ldr x0, [x0, .Lstrptr_14652603252703416314_0@PAGEOFF]
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
.Lstrptr_14652603252703416314_0:
  .quad .Lstr_14652603252703416314_0
.Lstr_14652603252703416314_0:
  .asciz "=== Test Literal ==="
  .text

  .globl __init_l_testLit___closed__6
  .align 2
__init_l_testLit___closed__6:
  // Function: testLit._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  // load global constant _l_testLit___closed__2
  adrp x26, _l_testLit___closed__2@PAGE
  ldr x26, [x26, _l_testLit___closed__2@PAGEOFF]
  // ctor Lean.IR.IRType.usize (tag=5, objs=0, scalar=0)
  mov x0, #5
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  // load global constant _l_testLit___closed__5
  adrp x24, _l_testLit___closed__5@PAGE
  ldr x24, [x24, _l_testLit___closed__5@PAGEOFF]
  // load global constant _l_testLit___closed__4
  adrp x23, _l_testLit___closed__4@PAGE
  ldr x23, [x23, _l_testLit___closed__4@PAGEOFF]
  // ctor Lean.IR.Decl.fdecl (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  mov x0, x22
  mov x1, #0
  mov x2, x23
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #1
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #2
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #3
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #4
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x22
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testLit___closed__5
  .align 2
__init_l_testLit___closed__5:
  // Function: testLit._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // inline lean_mk_empty_array_with_capacity
  mov x0, x27
  bl _lean_mk_empty_array_with_capacity
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

  .globl __init_l_testLit___closed__4
  .align 2
__init_l_testLit___closed__4:
  // Function: testLit._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testLit___closed__3
  adrp x27, _l_testLit___closed__3@PAGE
  ldr x27, [x27, _l_testLit___closed__3@PAGEOFF]
  // call Lean.Name.mkStr1 with 1 runtime args
  mov x0, x27
  bl _l_Lean_Name_mkStr1
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

  .globl __init_l_testLit___closed__3
  .align 2
__init_l_testLit___closed__3:
  // Function: testLit._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: const42
  adrp x0, .Lstrptr_2530273624046867909_0@PAGE
  ldr x0, [x0, .Lstrptr_2530273624046867909_0@PAGEOFF]
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
.Lstrptr_2530273624046867909_0:
  .quad .Lstr_2530273624046867909_0
.Lstr_2530273624046867909_0:
  .asciz "const42"
  .text

  .globl __init_l_testLit___closed__2
  .align 2
__init_l_testLit___closed__2:
  // Function: testLit._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testReturn___closed__0
  adrp x27, _l_testReturn___closed__0@PAGE
  ldr x27, [x27, _l_testReturn___closed__0@PAGEOFF]
  // load global constant _l_testLit___closed__1
  adrp x26, _l_testLit___closed__1@PAGE
  ldr x26, [x26, _l_testLit___closed__1@PAGEOFF]
  // ctor Lean.IR.IRType.usize (tag=5, objs=0, scalar=0)
  mov x0, #5
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x24, x0
  // ctor Lean.IR.FnBody.vdecl (tag=0, objs=4, scalar=0)
  mov x0, #0
  mov x1, #4
  mov x2, #0
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #2
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #3
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testLit___closed__1
  .align 2
__init_l_testLit___closed__1:
  // Function: testLit._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testLit___closed__0
  adrp x27, _l_testLit___closed__0@PAGE
  ldr x27, [x27, _l_testLit___closed__0@PAGEOFF]
  // ctor Lean.IR.Expr.lit (tag=11, objs=1, scalar=0)
  mov x0, #11
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  mov x0, x26
  mov x1, #0
  mov x2, x27
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

  .globl __init_l_testLit___closed__0
  .align 2
__init_l_testLit___closed__0:
  // Function: testLit._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #42, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // ctor Lean.IR.LitVal.num (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  mov x0, x26
  mov x1, #0
  mov x2, x27
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

  .globl _l_testCase
  .align 2
_l_testCase:
  // Function: testCase
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #96
  // Stack frame: 96 bytes (11 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_testCase___closed__18
  adrp x27, _l_testCase___closed__18@PAGE
  ldr x27, [x27, _l_testCase___closed__18@PAGEOFF]
  // call emitAsm with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_emitAsm
  mov x20, x0
  // case
  ldrb w8, [x20, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn17613161905928067802
  cmp x8, #1
  b.eq .Lcase_ctor2_fn17613161905928067802
  b .Lcase_end0_fn17613161905928067802
.Lcase_ctor1_fn17613161905928067802:
  // proj field 0
  ldr x23, [x20, #8]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // proj field 1
  ldr x21, [x20, #16]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_testCase___closed__19
  adrp x15, _l_testCase___closed__19@PAGE
  ldr x15, [x15, _l_testCase___closed__19@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x15
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x10, x0
  // case
  ldrb w8, [x10, #7]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn17613161905928067802
  cmp x8, #1
  b.eq .Lcase_ctor5_fn17613161905928067802
  b .Lcase_end3_fn17613161905928067802
.Lcase_ctor4_fn17613161905928067802:
  // proj field 1
  ldr x11, [x10, #16]
  // inc 1
  mov x0, x11
  bl _lean_inc
  // dec 1
  mov x0, x10
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  mov x1, x11
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x9, x0
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor7_fn17613161905928067802
  cmp x8, #1
  b.eq .Lcase_ctor8_fn17613161905928067802
  b .Lcase_end6_fn17613161905928067802
.Lcase_ctor7_fn17613161905928067802:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg26
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec_ref
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg27 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 3
  str x8, [sp, #24]
  // return
  // load spilled vreg28 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn17613161905928067802
.Lcase_ctor8_fn17613161905928067802:
  // return
  mov x0, x9
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn17613161905928067802
.Lcase_end6_fn17613161905928067802:
  b .Lcase_end3_fn17613161905928067802
.Lcase_ctor5_fn17613161905928067802:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x10
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn17613161905928067802
.Lcase_end3_fn17613161905928067802:
  b .Lcase_end0_fn17613161905928067802
.Lcase_ctor2_fn17613161905928067802:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  csel x8, x1, xzr, gt
  // store result to spilled vreg29
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor10_fn17613161905928067802
  cmp x8, #1
  b.eq .Lcase_ctor11_fn17613161905928067802
  b .Lcase_end9_fn17613161905928067802
.Lcase_ctor10_fn17613161905928067802:
  // return
  mov x0, x20
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn17613161905928067802
.Lcase_ctor11_fn17613161905928067802:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg30
  // store to stack slot 8
  str x8, [sp, #64]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg31
  // store to stack slot 9
  str x8, [sp, #72]
  // inc 1
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn17613161905928067802
.Lcase_end9_fn17613161905928067802:
  b .Lcase_end0_fn17613161905928067802
.Lcase_end0_fn17613161905928067802:

  .globl __init_l_testCase___closed__19
  .align 2
__init_l_testCase___closed__19:
  // Function: testCase._closed_19
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: === Test Case ===
  adrp x0, .Lstrptr_12046409857428060185_0@PAGE
  ldr x0, [x0, .Lstrptr_12046409857428060185_0@PAGEOFF]
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
.Lstrptr_12046409857428060185_0:
  .quad .Lstr_12046409857428060185_0
.Lstr_12046409857428060185_0:
  .asciz "=== Test Case ==="
  .text

  .globl __init_l_testCase___closed__18
  .align 2
__init_l_testCase___closed__18:
  // Function: testCase._closed_18
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  // load global constant _l_testCase___closed__13
  adrp x26, _l_testCase___closed__13@PAGE
  ldr x26, [x26, _l_testCase___closed__13@PAGEOFF]
  // ctor Lean.IR.IRType.tagged (tag=12, objs=0, scalar=0)
  mov x0, #12
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  // load global constant _l_testCase___closed__17
  adrp x24, _l_testCase___closed__17@PAGE
  ldr x24, [x24, _l_testCase___closed__17@PAGEOFF]
  // load global constant _l_testCase___closed__15
  adrp x23, _l_testCase___closed__15@PAGE
  ldr x23, [x23, _l_testCase___closed__15@PAGEOFF]
  // ctor Lean.IR.Decl.fdecl (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  mov x0, x22
  mov x1, #0
  mov x2, x23
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #1
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #2
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #3
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #4
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x22
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testCase___closed__17
  .align 2
__init_l_testCase___closed__17:
  // Function: testCase._closed_17
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCase___closed__16
  adrp x27, _l_testCase___closed__16@PAGE
  ldr x27, [x27, _l_testCase___closed__16@PAGEOFF]
  // load global constant _l_testReturn___closed__3
  adrp x26, _l_testReturn___closed__3@PAGE
  ldr x26, [x26, _l_testReturn___closed__3@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_array_push
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

  .globl __init_l_testCase___closed__16
  .align 2
__init_l_testCase___closed__16:
  // Function: testCase._closed_16
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Lean.IR.IRType.tagged (tag=12, objs=0, scalar=0)
  mov x0, #12
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  mov x26, #0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // ctor Lean.IR.Param.mk (tag=0, objs=2, scalar=1)
  mov x0, #0
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // ctor sset (tag=0, objs=1, scalar=8)
  mov x0, #0
  mov x1, #1
  mov x2, #8
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x26
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testCase___closed__15
  .align 2
__init_l_testCase___closed__15:
  // Function: testCase._closed_15
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCase___closed__14
  adrp x27, _l_testCase___closed__14@PAGE
  ldr x27, [x27, _l_testCase___closed__14@PAGEOFF]
  // call Lean.Name.mkStr1 with 1 runtime args
  mov x0, x27
  bl _l_Lean_Name_mkStr1
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

  .globl __init_l_testCase___closed__14
  .align 2
__init_l_testCase___closed__14:
  // Function: testCase._closed_14
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: notBool
  adrp x0, .Lstrptr_18144924362114520358_0@PAGE
  ldr x0, [x0, .Lstrptr_18144924362114520358_0@PAGEOFF]
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
.Lstrptr_18144924362114520358_0:
  .quad .Lstr_18144924362114520358_0
.Lstr_18144924362114520358_0:
  .asciz "notBool"
  .text

  .globl __init_l_testCase___closed__13
  .align 2
__init_l_testCase___closed__13:
  // Function: testCase._closed_13
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCase___closed__12
  adrp x27, _l_testCase___closed__12@PAGE
  ldr x27, [x27, _l_testCase___closed__12@PAGEOFF]
  // ctor Lean.IR.IRType.tagged (tag=12, objs=0, scalar=0)
  mov x0, #12
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // load global constant _l_testCase___closed__7
  adrp x24, _l_testCase___closed__7@PAGE
  ldr x24, [x24, _l_testCase___closed__7@PAGEOFF]
  // ctor Lean.IR.FnBody.case (tag=9, objs=4, scalar=0)
  mov x0, #9
  mov x1, #4
  mov x2, #0
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #2
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #3
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testCase___closed__12
  .align 2
__init_l_testCase___closed__12:
  // Function: testCase._closed_12
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCase___closed__9
  adrp x27, _l_testCase___closed__9@PAGE
  ldr x27, [x27, _l_testCase___closed__9@PAGEOFF]
  // load global constant _l_testCase___closed__11
  adrp x26, _l_testCase___closed__11@PAGE
  ldr x26, [x26, _l_testCase___closed__11@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_array_push
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

  .globl __init_l_testCase___closed__11
  .align 2
__init_l_testCase___closed__11:
  // Function: testCase._closed_11
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCase___closed__8
  adrp x27, _l_testCase___closed__8@PAGE
  ldr x27, [x27, _l_testCase___closed__8@PAGEOFF]
  // load global constant _l_testCase___closed__10
  adrp x26, _l_testCase___closed__10@PAGE
  ldr x26, [x26, _l_testCase___closed__10@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_array_push
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

  .globl __init_l_testCase___closed__10
  .align 2
__init_l_testCase___closed__10:
  // Function: testCase._closed_10
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // inline lean_mk_empty_array_with_capacity
  mov x0, x27
  bl _lean_mk_empty_array_with_capacity
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

  .globl __init_l_testCase___closed__9
  .align 2
__init_l_testCase___closed__9:
  // Function: testCase._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testReturn___closed__0
  adrp x27, _l_testReturn___closed__0@PAGE
  ldr x27, [x27, _l_testReturn___closed__0@PAGEOFF]
  // load global constant _l_testCase___closed__6
  adrp x26, _l_testCase___closed__6@PAGE
  ldr x26, [x26, _l_testCase___closed__6@PAGEOFF]
  // ctor Lean.IR.Alt.ctor (tag=0, objs=2, scalar=0)
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
  mov x2, x27
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

  .globl __init_l_testCase___closed__8
  .align 2
__init_l_testCase___closed__8:
  // Function: testCase._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testReturn___closed__0
  adrp x27, _l_testReturn___closed__0@PAGE
  ldr x27, [x27, _l_testReturn___closed__0@PAGEOFF]
  // load global constant _l_testCase___closed__3
  adrp x26, _l_testCase___closed__3@PAGE
  ldr x26, [x26, _l_testCase___closed__3@PAGEOFF]
  // ctor Lean.IR.Alt.ctor (tag=0, objs=2, scalar=0)
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
  mov x2, x27
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

  .globl __init_l_testCase___closed__7
  .align 2
__init_l_testCase___closed__7:
  // Function: testCase._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCase___closed__0
  adrp x27, _l_testCase___closed__0@PAGE
  ldr x27, [x27, _l_testCase___closed__0@PAGEOFF]
  // call Lean.Name.mkStr1 with 1 runtime args
  mov x0, x27
  bl _l_Lean_Name_mkStr1
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

  .globl __init_l_testCase___closed__6
  .align 2
__init_l_testCase___closed__6:
  // Function: testCase._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
  // load global constant _l_testCase___closed__5
  adrp x25, _l_testCase___closed__5@PAGE
  ldr x25, [x25, _l_testCase___closed__5@PAGEOFF]
  // ctor Lean.IR.CtorInfo.mk (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #2
  mov x2, x27
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #3
  mov x2, x27
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #4
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testCase___closed__5
  .align 2
__init_l_testCase___closed__5:
  // Function: testCase._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCase___closed__4
  adrp x27, _l_testCase___closed__4@PAGE
  ldr x27, [x27, _l_testCase___closed__4@PAGEOFF]
  // load global constant _l_testCase___closed__0
  adrp x26, _l_testCase___closed__0@PAGE
  ldr x26, [x26, _l_testCase___closed__0@PAGEOFF]
  // call Lean.Name.mkStr2 with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _l_Lean_Name_mkStr2
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

  .globl __init_l_testCase___closed__4
  .align 2
__init_l_testCase___closed__4:
  // Function: testCase._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: false
  adrp x0, .Lstrptr_16247073826748057022_0@PAGE
  ldr x0, [x0, .Lstrptr_16247073826748057022_0@PAGEOFF]
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
.Lstrptr_16247073826748057022_0:
  .quad .Lstr_16247073826748057022_0
.Lstr_16247073826748057022_0:
  .asciz "false"
  .text

  .globl __init_l_testCase___closed__3
  .align 2
__init_l_testCase___closed__3:
  // Function: testCase._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // load global constant _l_testCase___closed__2
  adrp x26, _l_testCase___closed__2@PAGE
  ldr x26, [x26, _l_testCase___closed__2@PAGEOFF]
  // ctor Lean.IR.CtorInfo.mk (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  mov x0, x25
  mov x1, #0
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x25
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  mov x0, x25
  mov x1, #2
  mov x2, x27
  bl _lean_ctor_set
  mov x0, x25
  mov x1, #3
  mov x2, x27
  bl _lean_ctor_set
  mov x0, x25
  mov x1, #4
  mov x2, x27
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

  .globl __init_l_testCase___closed__2
  .align 2
__init_l_testCase___closed__2:
  // Function: testCase._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCase___closed__1
  adrp x27, _l_testCase___closed__1@PAGE
  ldr x27, [x27, _l_testCase___closed__1@PAGEOFF]
  // load global constant _l_testCase___closed__0
  adrp x26, _l_testCase___closed__0@PAGE
  ldr x26, [x26, _l_testCase___closed__0@PAGEOFF]
  // call Lean.Name.mkStr2 with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _l_Lean_Name_mkStr2
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

  .globl __init_l_testCase___closed__1
  .align 2
__init_l_testCase___closed__1:
  // Function: testCase._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: true
  adrp x0, .Lstrptr_13793947166757847327_0@PAGE
  ldr x0, [x0, .Lstrptr_13793947166757847327_0@PAGEOFF]
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
.Lstrptr_13793947166757847327_0:
  .quad .Lstr_13793947166757847327_0
.Lstr_13793947166757847327_0:
  .asciz "true"
  .text

  .globl __init_l_testCase___closed__0
  .align 2
__init_l_testCase___closed__0:
  // Function: testCase._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: Bool
  adrp x0, .Lstrptr_14744183132251809527_0@PAGE
  ldr x0, [x0, .Lstrptr_14744183132251809527_0@PAGEOFF]
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
.Lstrptr_14744183132251809527_0:
  .quad .Lstr_14744183132251809527_0
.Lstr_14744183132251809527_0:
  .asciz "Bool"
  .text

  .globl _l_testProj
  .align 2
_l_testProj:
  // Function: testProj
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #96
  // Stack frame: 96 bytes (11 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_testProj___closed__5
  adrp x27, _l_testProj___closed__5@PAGE
  ldr x27, [x27, _l_testProj___closed__5@PAGEOFF]
  // call emitAsm with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_emitAsm
  mov x20, x0
  // case
  ldrb w8, [x20, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn6483817805893696951
  cmp x8, #1
  b.eq .Lcase_ctor2_fn6483817805893696951
  b .Lcase_end0_fn6483817805893696951
.Lcase_ctor1_fn6483817805893696951:
  // proj field 0
  ldr x23, [x20, #8]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // proj field 1
  ldr x21, [x20, #16]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_testProj___closed__6
  adrp x15, _l_testProj___closed__6@PAGE
  ldr x15, [x15, _l_testProj___closed__6@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x15
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x10, x0
  // case
  ldrb w8, [x10, #7]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn6483817805893696951
  cmp x8, #1
  b.eq .Lcase_ctor5_fn6483817805893696951
  b .Lcase_end3_fn6483817805893696951
.Lcase_ctor4_fn6483817805893696951:
  // proj field 1
  ldr x11, [x10, #16]
  // inc 1
  mov x0, x11
  bl _lean_inc
  // dec 1
  mov x0, x10
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  mov x1, x11
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x9, x0
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor7_fn6483817805893696951
  cmp x8, #1
  b.eq .Lcase_ctor8_fn6483817805893696951
  b .Lcase_end6_fn6483817805893696951
.Lcase_ctor7_fn6483817805893696951:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg26
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec_ref
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg27 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 3
  str x8, [sp, #24]
  // return
  // load spilled vreg28 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn6483817805893696951
.Lcase_ctor8_fn6483817805893696951:
  // return
  mov x0, x9
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn6483817805893696951
.Lcase_end6_fn6483817805893696951:
  b .Lcase_end3_fn6483817805893696951
.Lcase_ctor5_fn6483817805893696951:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x10
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn6483817805893696951
.Lcase_end3_fn6483817805893696951:
  b .Lcase_end0_fn6483817805893696951
.Lcase_ctor2_fn6483817805893696951:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  csel x8, x1, xzr, gt
  // store result to spilled vreg29
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor10_fn6483817805893696951
  cmp x8, #1
  b.eq .Lcase_ctor11_fn6483817805893696951
  b .Lcase_end9_fn6483817805893696951
.Lcase_ctor10_fn6483817805893696951:
  // return
  mov x0, x20
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn6483817805893696951
.Lcase_ctor11_fn6483817805893696951:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg30
  // store to stack slot 8
  str x8, [sp, #64]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg31
  // store to stack slot 9
  str x8, [sp, #72]
  // inc 1
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn6483817805893696951
.Lcase_end9_fn6483817805893696951:
  b .Lcase_end0_fn6483817805893696951
.Lcase_end0_fn6483817805893696951:

  .globl __init_l_testProj___closed__6
  .align 2
__init_l_testProj___closed__6:
  // Function: testProj._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: === Test Projection ===
  adrp x0, .Lstrptr_1042949959667115582_0@PAGE
  ldr x0, [x0, .Lstrptr_1042949959667115582_0@PAGEOFF]
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
.Lstrptr_1042949959667115582_0:
  .quad .Lstr_1042949959667115582_0
.Lstr_1042949959667115582_0:
  .asciz "=== Test Projection ==="
  .text

  .globl __init_l_testProj___closed__5
  .align 2
__init_l_testProj___closed__5:
  // Function: testProj._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  // load global constant _l_testProj___closed__2
  adrp x26, _l_testProj___closed__2@PAGE
  ldr x26, [x26, _l_testProj___closed__2@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  // load global constant _l_testReturn___closed__4
  adrp x24, _l_testReturn___closed__4@PAGE
  ldr x24, [x24, _l_testReturn___closed__4@PAGEOFF]
  // load global constant _l_testProj___closed__4
  adrp x23, _l_testProj___closed__4@PAGE
  ldr x23, [x23, _l_testProj___closed__4@PAGEOFF]
  // ctor Lean.IR.Decl.fdecl (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  mov x0, x22
  mov x1, #0
  mov x2, x23
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #1
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #2
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #3
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #4
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x22
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testProj___closed__4
  .align 2
__init_l_testProj___closed__4:
  // Function: testProj._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testProj___closed__3
  adrp x27, _l_testProj___closed__3@PAGE
  ldr x27, [x27, _l_testProj___closed__3@PAGEOFF]
  // call Lean.Name.mkStr1 with 1 runtime args
  mov x0, x27
  bl _l_Lean_Name_mkStr1
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

  .globl __init_l_testProj___closed__3
  .align 2
__init_l_testProj___closed__3:
  // Function: testProj._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: fst
  adrp x0, .Lstrptr_4476971352567330204_0@PAGE
  ldr x0, [x0, .Lstrptr_4476971352567330204_0@PAGEOFF]
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
.Lstrptr_4476971352567330204_0:
  .quad .Lstr_4476971352567330204_0
.Lstr_4476971352567330204_0:
  .asciz "fst"
  .text

  .globl __init_l_testProj___closed__2
  .align 2
__init_l_testProj___closed__2:
  // Function: testProj._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testProj___closed__1
  adrp x27, _l_testProj___closed__1@PAGE
  ldr x27, [x27, _l_testProj___closed__1@PAGEOFF]
  // load global constant _l_testProj___closed__0
  adrp x26, _l_testProj___closed__0@PAGE
  ldr x26, [x26, _l_testProj___closed__0@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x24, x0
  // ctor Lean.IR.FnBody.vdecl (tag=0, objs=4, scalar=0)
  mov x0, #0
  mov x1, #4
  mov x2, #0
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #2
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #3
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testProj___closed__1
  .align 2
__init_l_testProj___closed__1:
  // Function: testProj._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__4
  adrp x27, _l_testAdd___closed__4@PAGE
  ldr x27, [x27, _l_testAdd___closed__4@PAGEOFF]
  // ctor Lean.IR.FnBody.ret (tag=10, objs=1, scalar=0)
  mov x0, #10
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  mov x0, x26
  mov x1, #0
  mov x2, x27
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

  .globl __init_l_testProj___closed__0
  .align 2
__init_l_testProj___closed__0:
  // Function: testProj._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // ctor Lean.IR.Expr.proj (tag=3, objs=2, scalar=0)
  mov x0, #3
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
  mov x2, x27
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

  .globl _l_testCtor
  .align 2
_l_testCtor:
  // Function: testCtor
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #96
  // Stack frame: 96 bytes (11 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_testCtor___closed__7
  adrp x27, _l_testCtor___closed__7@PAGE
  ldr x27, [x27, _l_testCtor___closed__7@PAGEOFF]
  // call emitAsm with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_emitAsm
  mov x20, x0
  // case
  ldrb w8, [x20, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn11028337522619079292
  cmp x8, #1
  b.eq .Lcase_ctor2_fn11028337522619079292
  b .Lcase_end0_fn11028337522619079292
.Lcase_ctor1_fn11028337522619079292:
  // proj field 0
  ldr x23, [x20, #8]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // proj field 1
  ldr x21, [x20, #16]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_testCtor___closed__8
  adrp x15, _l_testCtor___closed__8@PAGE
  ldr x15, [x15, _l_testCtor___closed__8@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x15
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x10, x0
  // case
  ldrb w8, [x10, #7]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn11028337522619079292
  cmp x8, #1
  b.eq .Lcase_ctor5_fn11028337522619079292
  b .Lcase_end3_fn11028337522619079292
.Lcase_ctor4_fn11028337522619079292:
  // proj field 1
  ldr x11, [x10, #16]
  // inc 1
  mov x0, x11
  bl _lean_inc
  // dec 1
  mov x0, x10
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  mov x1, x11
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x9, x0
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor7_fn11028337522619079292
  cmp x8, #1
  b.eq .Lcase_ctor8_fn11028337522619079292
  b .Lcase_end6_fn11028337522619079292
.Lcase_ctor7_fn11028337522619079292:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg26
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec_ref
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg27 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 3
  str x8, [sp, #24]
  // return
  // load spilled vreg28 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn11028337522619079292
.Lcase_ctor8_fn11028337522619079292:
  // return
  mov x0, x9
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn11028337522619079292
.Lcase_end6_fn11028337522619079292:
  b .Lcase_end3_fn11028337522619079292
.Lcase_ctor5_fn11028337522619079292:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x10
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn11028337522619079292
.Lcase_end3_fn11028337522619079292:
  b .Lcase_end0_fn11028337522619079292
.Lcase_ctor2_fn11028337522619079292:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  csel x8, x1, xzr, gt
  // store result to spilled vreg29
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor10_fn11028337522619079292
  cmp x8, #1
  b.eq .Lcase_ctor11_fn11028337522619079292
  b .Lcase_end9_fn11028337522619079292
.Lcase_ctor10_fn11028337522619079292:
  // return
  mov x0, x20
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn11028337522619079292
.Lcase_ctor11_fn11028337522619079292:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg30
  // store to stack slot 8
  str x8, [sp, #64]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg31
  // store to stack slot 9
  str x8, [sp, #72]
  // inc 1
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn11028337522619079292
.Lcase_end9_fn11028337522619079292:
  b .Lcase_end0_fn11028337522619079292
.Lcase_end0_fn11028337522619079292:

  .globl __init_l_testCtor___closed__8
  .align 2
__init_l_testCtor___closed__8:
  // Function: testCtor._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: === Test Constructor ===
  adrp x0, .Lstrptr_6347186555709408574_0@PAGE
  ldr x0, [x0, .Lstrptr_6347186555709408574_0@PAGEOFF]
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
.Lstrptr_6347186555709408574_0:
  .quad .Lstr_6347186555709408574_0
.Lstr_6347186555709408574_0:
  .asciz "=== Test Constructor ==="
  .text

  .globl __init_l_testCtor___closed__7
  .align 2
__init_l_testCtor___closed__7:
  // Function: testCtor._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  // load global constant _l_testCtor___closed__4
  adrp x26, _l_testCtor___closed__4@PAGE
  ldr x26, [x26, _l_testCtor___closed__4@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  // load global constant _l_testAdd___closed__17
  adrp x24, _l_testAdd___closed__17@PAGE
  ldr x24, [x24, _l_testAdd___closed__17@PAGEOFF]
  // load global constant _l_testCtor___closed__6
  adrp x23, _l_testCtor___closed__6@PAGE
  ldr x23, [x23, _l_testCtor___closed__6@PAGEOFF]
  // ctor Lean.IR.Decl.fdecl (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  mov x0, x22
  mov x1, #0
  mov x2, x23
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #1
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #2
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #3
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #4
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x22
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testCtor___closed__6
  .align 2
__init_l_testCtor___closed__6:
  // Function: testCtor._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCtor___closed__5
  adrp x27, _l_testCtor___closed__5@PAGE
  ldr x27, [x27, _l_testCtor___closed__5@PAGEOFF]
  // call Lean.Name.mkStr1 with 1 runtime args
  mov x0, x27
  bl _l_Lean_Name_mkStr1
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

  .globl __init_l_testCtor___closed__5
  .align 2
__init_l_testCtor___closed__5:
  // Function: testCtor._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: mkPair
  adrp x0, .Lstrptr_8270244870511563114_0@PAGE
  ldr x0, [x0, .Lstrptr_8270244870511563114_0@PAGEOFF]
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
.Lstrptr_8270244870511563114_0:
  .quad .Lstr_8270244870511563114_0
.Lstr_8270244870511563114_0:
  .asciz "mkPair"
  .text

  .globl __init_l_testCtor___closed__4
  .align 2
__init_l_testCtor___closed__4:
  // Function: testCtor._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__10
  adrp x27, _l_testAdd___closed__10@PAGE
  ldr x27, [x27, _l_testAdd___closed__10@PAGEOFF]
  // load global constant _l_testCtor___closed__3
  adrp x26, _l_testCtor___closed__3@PAGE
  ldr x26, [x26, _l_testCtor___closed__3@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x24, x0
  // ctor Lean.IR.FnBody.vdecl (tag=0, objs=4, scalar=0)
  mov x0, #0
  mov x1, #4
  mov x2, #0
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #2
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #3
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testCtor___closed__3
  .align 2
__init_l_testCtor___closed__3:
  // Function: testCtor._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__7
  adrp x27, _l_testAdd___closed__7@PAGE
  ldr x27, [x27, _l_testAdd___closed__7@PAGEOFF]
  // load global constant _l_testCtor___closed__2
  adrp x26, _l_testCtor___closed__2@PAGE
  ldr x26, [x26, _l_testCtor___closed__2@PAGEOFF]
  // ctor Lean.IR.Expr.ctor (tag=0, objs=2, scalar=0)
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
  mov x2, x27
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

  .globl __init_l_testCtor___closed__2
  .align 2
__init_l_testCtor___closed__2:
  // Function: testCtor._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
  // load global constant _l_testCtor___closed__1
  adrp x25, _l_testCtor___closed__1@PAGE
  ldr x25, [x25, _l_testCtor___closed__1@PAGEOFF]
  // ctor Lean.IR.CtorInfo.mk (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #2
  mov x2, x27
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #3
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #4
  mov x2, x26
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testCtor___closed__1
  .align 2
__init_l_testCtor___closed__1:
  // Function: testCtor._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testCtor___closed__0
  adrp x27, _l_testCtor___closed__0@PAGE
  ldr x27, [x27, _l_testCtor___closed__0@PAGEOFF]
  // call Lean.Name.mkStr1 with 1 runtime args
  mov x0, x27
  bl _l_Lean_Name_mkStr1
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

  .globl __init_l_testCtor___closed__0
  .align 2
__init_l_testCtor___closed__0:
  // Function: testCtor._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: Pair
  adrp x0, .Lstrptr_6616822843807774529_0@PAGE
  ldr x0, [x0, .Lstrptr_6616822843807774529_0@PAGEOFF]
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
.Lstrptr_6616822843807774529_0:
  .quad .Lstr_6616822843807774529_0
.Lstr_6616822843807774529_0:
  .asciz "Pair"
  .text

  .globl _l_testReturn
  .align 2
_l_testReturn:
  // Function: testReturn
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #96
  // Stack frame: 96 bytes (11 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_testReturn___closed__5
  adrp x27, _l_testReturn___closed__5@PAGE
  ldr x27, [x27, _l_testReturn___closed__5@PAGEOFF]
  // call emitAsm with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_emitAsm
  mov x20, x0
  // case
  ldrb w8, [x20, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn10389973045596875388
  cmp x8, #1
  b.eq .Lcase_ctor2_fn10389973045596875388
  b .Lcase_end0_fn10389973045596875388
.Lcase_ctor1_fn10389973045596875388:
  // proj field 0
  ldr x23, [x20, #8]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // proj field 1
  ldr x21, [x20, #16]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_testReturn___closed__6
  adrp x15, _l_testReturn___closed__6@PAGE
  ldr x15, [x15, _l_testReturn___closed__6@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x15
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x10, x0
  // case
  ldrb w8, [x10, #7]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn10389973045596875388
  cmp x8, #1
  b.eq .Lcase_ctor5_fn10389973045596875388
  b .Lcase_end3_fn10389973045596875388
.Lcase_ctor4_fn10389973045596875388:
  // proj field 1
  ldr x11, [x10, #16]
  // inc 1
  mov x0, x11
  bl _lean_inc
  // dec 1
  mov x0, x10
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  mov x1, x11
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x9, x0
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor7_fn10389973045596875388
  cmp x8, #1
  b.eq .Lcase_ctor8_fn10389973045596875388
  b .Lcase_end6_fn10389973045596875388
.Lcase_ctor7_fn10389973045596875388:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg26
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec_ref
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg27 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 3
  str x8, [sp, #24]
  // return
  // load spilled vreg28 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn10389973045596875388
.Lcase_ctor8_fn10389973045596875388:
  // return
  mov x0, x9
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn10389973045596875388
.Lcase_end6_fn10389973045596875388:
  b .Lcase_end3_fn10389973045596875388
.Lcase_ctor5_fn10389973045596875388:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x10
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn10389973045596875388
.Lcase_end3_fn10389973045596875388:
  b .Lcase_end0_fn10389973045596875388
.Lcase_ctor2_fn10389973045596875388:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  csel x8, x1, xzr, gt
  // store result to spilled vreg29
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor10_fn10389973045596875388
  cmp x8, #1
  b.eq .Lcase_ctor11_fn10389973045596875388
  b .Lcase_end9_fn10389973045596875388
.Lcase_ctor10_fn10389973045596875388:
  // return
  mov x0, x20
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn10389973045596875388
.Lcase_ctor11_fn10389973045596875388:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg30
  // store to stack slot 8
  str x8, [sp, #64]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg31
  // store to stack slot 9
  str x8, [sp, #72]
  // inc 1
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn10389973045596875388
.Lcase_end9_fn10389973045596875388:
  b .Lcase_end0_fn10389973045596875388
.Lcase_end0_fn10389973045596875388:

  .globl __init_l_testReturn___closed__6
  .align 2
__init_l_testReturn___closed__6:
  // Function: testReturn._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: === Test Return ===
  adrp x0, .Lstrptr_7766827055725990545_0@PAGE
  ldr x0, [x0, .Lstrptr_7766827055725990545_0@PAGEOFF]
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
.Lstrptr_7766827055725990545_0:
  .quad .Lstr_7766827055725990545_0
.Lstr_7766827055725990545_0:
  .asciz "=== Test Return ==="
  .text

  .globl __init_l_testReturn___closed__5
  .align 2
__init_l_testReturn___closed__5:
  // Function: testReturn._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  // load global constant _l_testReturn___closed__0
  adrp x26, _l_testReturn___closed__0@PAGE
  ldr x26, [x26, _l_testReturn___closed__0@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  // load global constant _l_testReturn___closed__4
  adrp x24, _l_testReturn___closed__4@PAGE
  ldr x24, [x24, _l_testReturn___closed__4@PAGEOFF]
  // load global constant _l_testReturn___closed__2
  adrp x23, _l_testReturn___closed__2@PAGE
  ldr x23, [x23, _l_testReturn___closed__2@PAGEOFF]
  // ctor Lean.IR.Decl.fdecl (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  mov x0, x22
  mov x1, #0
  mov x2, x23
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #1
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #2
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #3
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #4
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x22
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testReturn___closed__4
  .align 2
__init_l_testReturn___closed__4:
  // Function: testReturn._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__14
  adrp x27, _l_testAdd___closed__14@PAGE
  ldr x27, [x27, _l_testAdd___closed__14@PAGEOFF]
  // load global constant _l_testReturn___closed__3
  adrp x26, _l_testReturn___closed__3@PAGE
  ldr x26, [x26, _l_testReturn___closed__3@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_array_push
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

  .globl __init_l_testReturn___closed__3
  .align 2
__init_l_testReturn___closed__3:
  // Function: testReturn._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // inline lean_mk_empty_array_with_capacity
  mov x0, x27
  bl _lean_mk_empty_array_with_capacity
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

  .globl __init_l_testReturn___closed__2
  .align 2
__init_l_testReturn___closed__2:
  // Function: testReturn._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testReturn___closed__1
  adrp x27, _l_testReturn___closed__1@PAGE
  ldr x27, [x27, _l_testReturn___closed__1@PAGEOFF]
  // call Lean.Name.mkStr1 with 1 runtime args
  mov x0, x27
  bl _l_Lean_Name_mkStr1
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

  .globl __init_l_testReturn___closed__1
  .align 2
__init_l_testReturn___closed__1:
  // Function: testReturn._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: testId
  adrp x0, .Lstrptr_3614892389610432297_0@PAGE
  ldr x0, [x0, .Lstrptr_3614892389610432297_0@PAGEOFF]
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
.Lstrptr_3614892389610432297_0:
  .quad .Lstr_3614892389610432297_0
.Lstr_3614892389610432297_0:
  .asciz "testId"
  .text

  .globl __init_l_testReturn___closed__0
  .align 2
__init_l_testReturn___closed__0:
  // Function: testReturn._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__3
  adrp x27, _l_testAdd___closed__3@PAGE
  ldr x27, [x27, _l_testAdd___closed__3@PAGEOFF]
  // ctor Lean.IR.FnBody.ret (tag=10, objs=1, scalar=0)
  mov x0, #10
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  mov x0, x26
  mov x1, #0
  mov x2, x27
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

  .globl _l_testAdd
  .align 2
_l_testAdd:
  // Function: testAdd
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #96
  // Stack frame: 96 bytes (11 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_testAdd___closed__18
  adrp x27, _l_testAdd___closed__18@PAGE
  ldr x27, [x27, _l_testAdd___closed__18@PAGEOFF]
  // call emitAsm with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_emitAsm
  mov x20, x0
  // case
  ldrb w8, [x20, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn15615137417596984274
  cmp x8, #1
  b.eq .Lcase_ctor2_fn15615137417596984274
  b .Lcase_end0_fn15615137417596984274
.Lcase_ctor1_fn15615137417596984274:
  // proj field 0
  ldr x23, [x20, #8]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // proj field 1
  ldr x21, [x20, #16]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_testAdd___closed__19
  adrp x15, _l_testAdd___closed__19@PAGE
  ldr x15, [x15, _l_testAdd___closed__19@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x15
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x10, x0
  // case
  ldrb w8, [x10, #7]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn15615137417596984274
  cmp x8, #1
  b.eq .Lcase_ctor5_fn15615137417596984274
  b .Lcase_end3_fn15615137417596984274
.Lcase_ctor4_fn15615137417596984274:
  // proj field 1
  ldr x11, [x10, #16]
  // inc 1
  mov x0, x11
  bl _lean_inc
  // dec 1
  mov x0, x10
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  mov x1, x11
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x9, x0
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor7_fn15615137417596984274
  cmp x8, #1
  b.eq .Lcase_ctor8_fn15615137417596984274
  b .Lcase_end6_fn15615137417596984274
.Lcase_ctor7_fn15615137417596984274:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg26
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec_ref
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg27 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 3
  str x8, [sp, #24]
  // return
  // load spilled vreg28 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn15615137417596984274
.Lcase_ctor8_fn15615137417596984274:
  // return
  mov x0, x9
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn15615137417596984274
.Lcase_end6_fn15615137417596984274:
  b .Lcase_end3_fn15615137417596984274
.Lcase_ctor5_fn15615137417596984274:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x10
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn15615137417596984274
.Lcase_end3_fn15615137417596984274:
  b .Lcase_end0_fn15615137417596984274
.Lcase_ctor2_fn15615137417596984274:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  csel x8, x1, xzr, gt
  // store result to spilled vreg29
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor10_fn15615137417596984274
  cmp x8, #1
  b.eq .Lcase_ctor11_fn15615137417596984274
  b .Lcase_end9_fn15615137417596984274
.Lcase_ctor10_fn15615137417596984274:
  // return
  mov x0, x20
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn15615137417596984274
.Lcase_ctor11_fn15615137417596984274:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg30
  // store to stack slot 8
  str x8, [sp, #64]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg31
  // store to stack slot 9
  str x8, [sp, #72]
  // inc 1
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg30 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg31 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn15615137417596984274
.Lcase_end9_fn15615137417596984274:
  b .Lcase_end0_fn15615137417596984274
.Lcase_end0_fn15615137417596984274:

  .globl __init_l_testAdd___closed__20
  .align 2
__init_l_testAdd___closed__20:
  // Function: testAdd._closed_20
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: 
  adrp x0, .Lstrptr_4983599710484107604_0@PAGE
  ldr x0, [x0, .Lstrptr_4983599710484107604_0@PAGEOFF]
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
.Lstrptr_4983599710484107604_0:
  .quad .Lstr_4983599710484107604_0
.Lstr_4983599710484107604_0:
  .asciz ""
  .text

  .globl __init_l_testAdd___closed__19
  .align 2
__init_l_testAdd___closed__19:
  // Function: testAdd._closed_19
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: === Test Add ===
  adrp x0, .Lstrptr_18092777064557752257_0@PAGE
  ldr x0, [x0, .Lstrptr_18092777064557752257_0@PAGEOFF]
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
.Lstrptr_18092777064557752257_0:
  .quad .Lstr_18092777064557752257_0
.Lstr_18092777064557752257_0:
  .asciz "=== Test Add ==="
  .text

  .globl __init_l_testAdd___closed__18
  .align 2
__init_l_testAdd___closed__18:
  // Function: testAdd._closed_18
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  // load global constant _l_testAdd___closed__11
  adrp x26, _l_testAdd___closed__11@PAGE
  ldr x26, [x26, _l_testAdd___closed__11@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  // load global constant _l_testAdd___closed__17
  adrp x24, _l_testAdd___closed__17@PAGE
  ldr x24, [x24, _l_testAdd___closed__17@PAGEOFF]
  // load global constant _l_testAdd___closed__13
  adrp x23, _l_testAdd___closed__13@PAGE
  ldr x23, [x23, _l_testAdd___closed__13@PAGEOFF]
  // ctor Lean.IR.Decl.fdecl (tag=0, objs=5, scalar=0)
  mov x0, #0
  mov x1, #5
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  mov x0, x22
  mov x1, #0
  mov x2, x23
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #1
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #2
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #3
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x22
  mov x1, #4
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x22
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testAdd___closed__17
  .align 2
__init_l_testAdd___closed__17:
  // Function: testAdd._closed_17
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__15
  adrp x27, _l_testAdd___closed__15@PAGE
  ldr x27, [x27, _l_testAdd___closed__15@PAGEOFF]
  // load global constant _l_testAdd___closed__16
  adrp x26, _l_testAdd___closed__16@PAGE
  ldr x26, [x26, _l_testAdd___closed__16@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_array_push
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

  .globl __init_l_testAdd___closed__16
  .align 2
__init_l_testAdd___closed__16:
  // Function: testAdd._closed_16
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__14
  adrp x27, _l_testAdd___closed__14@PAGE
  ldr x27, [x27, _l_testAdd___closed__14@PAGEOFF]
  // load global constant _l_testAdd___closed__5
  adrp x26, _l_testAdd___closed__5@PAGE
  ldr x26, [x26, _l_testAdd___closed__5@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_array_push
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

  .globl __init_l_testAdd___closed__15
  .align 2
__init_l_testAdd___closed__15:
  // Function: testAdd._closed_15
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  mov x26, #0
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // ctor Lean.IR.Param.mk (tag=0, objs=2, scalar=1)
  mov x0, #0
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // ctor sset (tag=0, objs=1, scalar=8)
  mov x0, #0
  mov x1, #1
  mov x2, #8
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x26
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testAdd___closed__14
  .align 2
__init_l_testAdd___closed__14:
  // Function: testAdd._closed_14
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  mov x26, #0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // ctor Lean.IR.Param.mk (tag=0, objs=2, scalar=1)
  mov x0, #0
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // ctor sset (tag=0, objs=1, scalar=8)
  mov x0, #0
  mov x1, #1
  mov x2, #8
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x26
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testAdd___closed__13
  .align 2
__init_l_testAdd___closed__13:
  // Function: testAdd._closed_13
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__12
  adrp x27, _l_testAdd___closed__12@PAGE
  ldr x27, [x27, _l_testAdd___closed__12@PAGEOFF]
  // call Lean.Name.mkStr1 with 1 runtime args
  mov x0, x27
  bl _l_Lean_Name_mkStr1
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

  .globl __init_l_testAdd___closed__12
  .align 2
__init_l_testAdd___closed__12:
  // Function: testAdd._closed_12
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: testAdd
  adrp x0, .Lstrptr_14014008979681876846_0@PAGE
  ldr x0, [x0, .Lstrptr_14014008979681876846_0@PAGEOFF]
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
.Lstrptr_14014008979681876846_0:
  .quad .Lstr_14014008979681876846_0
.Lstr_14014008979681876846_0:
  .asciz "testAdd"
  .text

  .globl __init_l_testAdd___closed__11
  .align 2
__init_l_testAdd___closed__11:
  // Function: testAdd._closed_11
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__10
  adrp x27, _l_testAdd___closed__10@PAGE
  ldr x27, [x27, _l_testAdd___closed__10@PAGEOFF]
  // load global constant _l_testAdd___closed__8
  adrp x26, _l_testAdd___closed__8@PAGE
  ldr x26, [x26, _l_testAdd___closed__8@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x0, #7
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x24, x0
  // ctor Lean.IR.FnBody.vdecl (tag=0, objs=4, scalar=0)
  mov x0, #0
  mov x1, #4
  mov x2, #0
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #2
  mov x2, x26
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #3
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x23
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_testAdd___closed__10
  .align 2
__init_l_testAdd___closed__10:
  // Function: testAdd._closed_10
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__9
  adrp x27, _l_testAdd___closed__9@PAGE
  ldr x27, [x27, _l_testAdd___closed__9@PAGEOFF]
  // ctor Lean.IR.FnBody.ret (tag=10, objs=1, scalar=0)
  mov x0, #10
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  mov x0, x26
  mov x1, #0
  mov x2, x27
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

  .globl __init_l_testAdd___closed__9
  .align 2
__init_l_testAdd___closed__9:
  // Function: testAdd._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // ctor Lean.IR.Arg.var (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  mov x0, x26
  mov x1, #0
  mov x2, x27
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

  .globl __init_l_testAdd___closed__8
  .align 2
__init_l_testAdd___closed__8:
  // Function: testAdd._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__7
  adrp x27, _l_testAdd___closed__7@PAGE
  ldr x27, [x27, _l_testAdd___closed__7@PAGEOFF]
  // load global constant _l_testAdd___closed__2
  adrp x26, _l_testAdd___closed__2@PAGE
  ldr x26, [x26, _l_testAdd___closed__2@PAGEOFF]
  // ctor Lean.IR.Expr.fap (tag=6, objs=2, scalar=0)
  mov x0, #6
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
  mov x2, x27
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

  .globl __init_l_testAdd___closed__7
  .align 2
__init_l_testAdd___closed__7:
  // Function: testAdd._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__4
  adrp x27, _l_testAdd___closed__4@PAGE
  ldr x27, [x27, _l_testAdd___closed__4@PAGEOFF]
  // load global constant _l_testAdd___closed__6
  adrp x26, _l_testAdd___closed__6@PAGE
  ldr x26, [x26, _l_testAdd___closed__6@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_array_push
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

  .globl __init_l_testAdd___closed__6
  .align 2
__init_l_testAdd___closed__6:
  // Function: testAdd._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__3
  adrp x27, _l_testAdd___closed__3@PAGE
  ldr x27, [x27, _l_testAdd___closed__3@PAGEOFF]
  // load global constant _l_testAdd___closed__5
  adrp x26, _l_testAdd___closed__5@PAGE
  ldr x26, [x26, _l_testAdd___closed__5@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_array_push
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

  .globl __init_l_testAdd___closed__5
  .align 2
__init_l_testAdd___closed__5:
  // Function: testAdd._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // inline lean_mk_empty_array_with_capacity
  mov x0, x27
  bl _lean_mk_empty_array_with_capacity
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

  .globl __init_l_testAdd___closed__4
  .align 2
__init_l_testAdd___closed__4:
  // Function: testAdd._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // ctor Lean.IR.Arg.var (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  mov x0, x26
  mov x1, #0
  mov x2, x27
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

  .globl __init_l_testAdd___closed__3
  .align 2
__init_l_testAdd___closed__3:
  // Function: testAdd._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // ctor Lean.IR.Arg.var (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  mov x0, x26
  mov x1, #0
  mov x2, x27
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

  .globl __init_l_testAdd___closed__2
  .align 2
__init_l_testAdd___closed__2:
  // Function: testAdd._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_testAdd___closed__1
  adrp x27, _l_testAdd___closed__1@PAGE
  ldr x27, [x27, _l_testAdd___closed__1@PAGEOFF]
  // load global constant _l_testAdd___closed__0
  adrp x26, _l_testAdd___closed__0@PAGE
  ldr x26, [x26, _l_testAdd___closed__0@PAGEOFF]
  // call Lean.Name.mkStr2 with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _l_Lean_Name_mkStr2
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

  .globl __init_l_testAdd___closed__1
  .align 2
__init_l_testAdd___closed__1:
  // Function: testAdd._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: add
  adrp x0, .Lstrptr_17552210373244084935_0@PAGE
  ldr x0, [x0, .Lstrptr_17552210373244084935_0@PAGEOFF]
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
.Lstrptr_17552210373244084935_0:
  .quad .Lstr_17552210373244084935_0
.Lstr_17552210373244084935_0:
  .asciz "add"
  .text

  .globl __init_l_testAdd___closed__0
  .align 2
__init_l_testAdd___closed__0:
  // Function: testAdd._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: Nat
  adrp x0, .Lstrptr_16290022710711059791_0@PAGE
  ldr x0, [x0, .Lstrptr_16290022710711059791_0@PAGEOFF]
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
.Lstrptr_16290022710711059791_0:
  .quad .Lstr_16290022710711059791_0
.Lstr_16290022710711059791_0:
  .asciz "Nat"
  .text

  .globl _l_emitAsm
  .align 2
_l_emitAsm:
  // Function: emitAsm
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #64
  // Stack frame: 64 bytes (7 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  mov x27, #0
  // call Lean.mkEmptyEnvironment with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _lean_mk_empty_environment
  mov x9, x0
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn3001846037551631654
  cmp x8, #1
  b.eq .Lcase_ctor2_fn3001846037551631654
  b .Lcase_end0_fn3001846037551631654
.Lcase_ctor1_fn3001846037551631654:
  // isShared
  ldr x23, [x9]
  cmp x23, #1
  csel x23, x1, xzr, gt
  // case
  mov x8, x23
  cmp x8, #0
  b.eq .Lcase_ctor4_fn3001846037551631654
  cmp x8, #1
  b.eq .Lcase_ctor5_fn3001846037551631654
  b .Lcase_end3_fn3001846037551631654
.Lcase_ctor4_fn3001846037551631654:
  // proj field 0
  ldr x22, [x9, #8]
  // call Lean.Compiler.Backend.EmitARM64.emitDecl with 2 runtime args
  mov x0, x22
  mov x1, x19
  bl _l_Lean_Compiler_Backend_EmitARM64_emitDecl
  mov x21, x0
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x14, x0
  mov x0, x14
  mov x1, #0
  mov x2, x9
  bl _lean_ctor_set
  mov x0, x14
  mov x1, #1
  mov x2, x21
  bl _lean_ctor_set
  // return
  mov x0, x14
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn3001846037551631654
.Lcase_ctor5_fn3001846037551631654:
  // proj field 0
  ldr x10, [x9, #8]
  // proj field 1
  ldr x11, [x9, #16]
  // inc 1
  mov x0, x11
  bl _lean_inc
  // inc 1
  mov x0, x10
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec
  // call Lean.Compiler.Backend.EmitARM64.emitDecl with 2 runtime args
  mov x0, x10
  mov x1, x19
  bl _l_Lean_Compiler_Backend_EmitARM64_emitDecl
  mov x8, x0
  // store result to spilled vreg26
  // store to stack slot 0
  str x8, [sp]
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x8, x0
  // load spilled vreg26 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  mov x0, x8
  mov x1, #1
  mov x2, x11
  bl _lean_ctor_set
  // store result to spilled vreg27
  // store to stack slot 1
  str x8, [sp, #8]
  // return
  // load spilled vreg27 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn3001846037551631654
.Lcase_end3_fn3001846037551631654:
  b .Lcase_end0_fn3001846037551631654
.Lcase_ctor2_fn3001846037551631654:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // isShared
  ldr x8, [x9]
  cmp x8, #1
  csel x8, x1, xzr, gt
  // store result to spilled vreg28
  // store to stack slot 2
  str x8, [sp, #16]
  // load spilled vreg28 from stack slot 2
  ldr x8, [sp, #16]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor7_fn3001846037551631654
  cmp x8, #1
  b.eq .Lcase_ctor8_fn3001846037551631654
  b .Lcase_end6_fn3001846037551631654
.Lcase_ctor7_fn3001846037551631654:
  // return
  mov x0, x9
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn3001846037551631654
.Lcase_ctor8_fn3001846037551631654:
  // proj field 0
  ldr x8, [x9, #8]
  // store result to spilled vreg29
  // store to stack slot 4
  str x8, [sp, #32]
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg30
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  // load spilled vreg30 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg29 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg29 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg30 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn3001846037551631654
.Lcase_end6_fn3001846037551631654:
  b .Lcase_end0_fn3001846037551631654
.Lcase_end0_fn3001846037551631654:

  // Module initialization function
  .extern _initialize_Init
  .extern _initialize_Lean_Compiler_Backend_EmitARM64
  .extern _initialize_Lean_Compiler_IR_Basic
  .extern _initialize_Lean_Compiler_IR_SSA
  .globl _initialize_arm64__basic
  .align 2
_initialize_arm64__basic:
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

  // Initialize Lean.Compiler.Backend.EmitARM64
  mov x0, #1  // builtin
  mov x1, #1  // lean_io_mk_world() inlined
  bl _initialize_Lean_Compiler_Backend_EmitARM64
  mov x19, x0
  // Check for error (inline lean_io_result_is_ok)
  ldrb w8, [x19, #7]  // Load m_tag
  cbnz w8, .Linit_error  // If tag != 0, error
  // Dec ref (simplified for init)
  ldr w8, [x19]  // Load m_rc
  cmp w8, #1
  ble .Linit_dec_done_1
  sub w8, w8, #1
  str w8, [x19]
.Linit_dec_done_1:

  // Initialize Lean.Compiler.IR.Basic
  mov x0, #1  // builtin
  mov x1, #1  // lean_io_mk_world() inlined
  bl _initialize_Lean_Compiler_IR_Basic
  mov x19, x0
  // Check for error (inline lean_io_result_is_ok)
  ldrb w8, [x19, #7]  // Load m_tag
  cbnz w8, .Linit_error  // If tag != 0, error
  // Dec ref (simplified for init)
  ldr w8, [x19]  // Load m_rc
  cmp w8, #1
  ble .Linit_dec_done_2
  sub w8, w8, #1
  str w8, [x19]
.Linit_dec_done_2:

  // Initialize Lean.Compiler.IR.SSA
  mov x0, #1  // builtin
  mov x1, #1  // lean_io_mk_world() inlined
  bl _initialize_Lean_Compiler_IR_SSA
  mov x19, x0
  // Check for error (inline lean_io_result_is_ok)
  ldrb w8, [x19, #7]  // Load m_tag
  cbnz w8, .Linit_error  // If tag != 0, error
  // Dec ref (simplified for init)
  ldr w8, [x19]  // Load m_rc
  cmp w8, #1
  ble .Linit_dec_done_3
  sub w8, w8, #1
  str w8, [x19]
.Linit_dec_done_3:

  // Initialize closed constants
  // Initialize _l_testAdd___closed__0
  bl __init_l_testAdd___closed__0
  adrp x8, _l_testAdd___closed__0@PAGE
  str x0, [x8, _l_testAdd___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__0@PAGE
  ldr x0, [x8, _l_testAdd___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__0:

  // Initialize _l_testAdd___closed__1
  bl __init_l_testAdd___closed__1
  adrp x8, _l_testAdd___closed__1@PAGE
  str x0, [x8, _l_testAdd___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__1@PAGE
  ldr x0, [x8, _l_testAdd___closed__1@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__1
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__1:

  // Initialize _l_testAdd___closed__2
  bl __init_l_testAdd___closed__2
  adrp x8, _l_testAdd___closed__2@PAGE
  str x0, [x8, _l_testAdd___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__2@PAGE
  ldr x0, [x8, _l_testAdd___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__2:

  // Initialize _l_testAdd___closed__3
  bl __init_l_testAdd___closed__3
  adrp x8, _l_testAdd___closed__3@PAGE
  str x0, [x8, _l_testAdd___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__3@PAGE
  ldr x0, [x8, _l_testAdd___closed__3@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__3
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__3:

  // Initialize _l_testAdd___closed__4
  bl __init_l_testAdd___closed__4
  adrp x8, _l_testAdd___closed__4@PAGE
  str x0, [x8, _l_testAdd___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__4@PAGE
  ldr x0, [x8, _l_testAdd___closed__4@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__4
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__4:

  // Initialize _l_testAdd___closed__5
  bl __init_l_testAdd___closed__5
  adrp x8, _l_testAdd___closed__5@PAGE
  str x0, [x8, _l_testAdd___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__5@PAGE
  ldr x0, [x8, _l_testAdd___closed__5@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__5
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__5:

  // Initialize _l_testAdd___closed__6
  bl __init_l_testAdd___closed__6
  adrp x8, _l_testAdd___closed__6@PAGE
  str x0, [x8, _l_testAdd___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__6@PAGE
  ldr x0, [x8, _l_testAdd___closed__6@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__6
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__6:

  // Initialize _l_testAdd___closed__7
  bl __init_l_testAdd___closed__7
  adrp x8, _l_testAdd___closed__7@PAGE
  str x0, [x8, _l_testAdd___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__7@PAGE
  ldr x0, [x8, _l_testAdd___closed__7@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__7
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__7:

  // Initialize _l_testAdd___closed__8
  bl __init_l_testAdd___closed__8
  adrp x8, _l_testAdd___closed__8@PAGE
  str x0, [x8, _l_testAdd___closed__8@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__8@PAGE
  ldr x0, [x8, _l_testAdd___closed__8@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__8
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__8:

  // Initialize _l_testAdd___closed__9
  bl __init_l_testAdd___closed__9
  adrp x8, _l_testAdd___closed__9@PAGE
  str x0, [x8, _l_testAdd___closed__9@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__9@PAGE
  ldr x0, [x8, _l_testAdd___closed__9@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__9
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__9:

  // Initialize _l_testAdd___closed__10
  bl __init_l_testAdd___closed__10
  adrp x8, _l_testAdd___closed__10@PAGE
  str x0, [x8, _l_testAdd___closed__10@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__10@PAGE
  ldr x0, [x8, _l_testAdd___closed__10@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__10
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__10:

  // Initialize _l_testAdd___closed__11
  bl __init_l_testAdd___closed__11
  adrp x8, _l_testAdd___closed__11@PAGE
  str x0, [x8, _l_testAdd___closed__11@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__11@PAGE
  ldr x0, [x8, _l_testAdd___closed__11@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__11
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__11:

  // Initialize _l_testAdd___closed__12
  bl __init_l_testAdd___closed__12
  adrp x8, _l_testAdd___closed__12@PAGE
  str x0, [x8, _l_testAdd___closed__12@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__12@PAGE
  ldr x0, [x8, _l_testAdd___closed__12@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__12
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__12:

  // Initialize _l_testAdd___closed__13
  bl __init_l_testAdd___closed__13
  adrp x8, _l_testAdd___closed__13@PAGE
  str x0, [x8, _l_testAdd___closed__13@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__13@PAGE
  ldr x0, [x8, _l_testAdd___closed__13@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__13
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__13:

  // Initialize _l_testAdd___closed__14
  bl __init_l_testAdd___closed__14
  adrp x8, _l_testAdd___closed__14@PAGE
  str x0, [x8, _l_testAdd___closed__14@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__14@PAGE
  ldr x0, [x8, _l_testAdd___closed__14@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__14
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__14:

  // Initialize _l_testAdd___closed__15
  bl __init_l_testAdd___closed__15
  adrp x8, _l_testAdd___closed__15@PAGE
  str x0, [x8, _l_testAdd___closed__15@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__15@PAGE
  ldr x0, [x8, _l_testAdd___closed__15@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__15
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__15:

  // Initialize _l_testAdd___closed__16
  bl __init_l_testAdd___closed__16
  adrp x8, _l_testAdd___closed__16@PAGE
  str x0, [x8, _l_testAdd___closed__16@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__16@PAGE
  ldr x0, [x8, _l_testAdd___closed__16@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__16
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__16:

  // Initialize _l_testAdd___closed__17
  bl __init_l_testAdd___closed__17
  adrp x8, _l_testAdd___closed__17@PAGE
  str x0, [x8, _l_testAdd___closed__17@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__17@PAGE
  ldr x0, [x8, _l_testAdd___closed__17@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__17
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__17:

  // Initialize _l_testAdd___closed__18
  bl __init_l_testAdd___closed__18
  adrp x8, _l_testAdd___closed__18@PAGE
  str x0, [x8, _l_testAdd___closed__18@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__18@PAGE
  ldr x0, [x8, _l_testAdd___closed__18@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__18
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__18:

  // Initialize _l_testAdd___closed__19
  bl __init_l_testAdd___closed__19
  adrp x8, _l_testAdd___closed__19@PAGE
  str x0, [x8, _l_testAdd___closed__19@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__19@PAGE
  ldr x0, [x8, _l_testAdd___closed__19@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__19
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__19:

  // Initialize _l_testAdd___closed__20
  bl __init_l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  str x0, [x8, _l_testAdd___closed__20@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x0, [x8, _l_testAdd___closed__20@PAGEOFF]
  cbz x0, .Lmark_skip_l_testAdd___closed__20
  bl _lean_mark_persistent
.Lmark_skip_l_testAdd___closed__20:

  // Initialize _l_testReturn___closed__0
  bl __init_l_testReturn___closed__0
  adrp x8, _l_testReturn___closed__0@PAGE
  str x0, [x8, _l_testReturn___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testReturn___closed__0@PAGE
  ldr x0, [x8, _l_testReturn___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_testReturn___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_testReturn___closed__0:

  // Initialize _l_testReturn___closed__1
  bl __init_l_testReturn___closed__1
  adrp x8, _l_testReturn___closed__1@PAGE
  str x0, [x8, _l_testReturn___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testReturn___closed__1@PAGE
  ldr x0, [x8, _l_testReturn___closed__1@PAGEOFF]
  cbz x0, .Lmark_skip_l_testReturn___closed__1
  bl _lean_mark_persistent
.Lmark_skip_l_testReturn___closed__1:

  // Initialize _l_testReturn___closed__2
  bl __init_l_testReturn___closed__2
  adrp x8, _l_testReturn___closed__2@PAGE
  str x0, [x8, _l_testReturn___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testReturn___closed__2@PAGE
  ldr x0, [x8, _l_testReturn___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_testReturn___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_testReturn___closed__2:

  // Initialize _l_testReturn___closed__3
  bl __init_l_testReturn___closed__3
  adrp x8, _l_testReturn___closed__3@PAGE
  str x0, [x8, _l_testReturn___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testReturn___closed__3@PAGE
  ldr x0, [x8, _l_testReturn___closed__3@PAGEOFF]
  cbz x0, .Lmark_skip_l_testReturn___closed__3
  bl _lean_mark_persistent
.Lmark_skip_l_testReturn___closed__3:

  // Initialize _l_testReturn___closed__4
  bl __init_l_testReturn___closed__4
  adrp x8, _l_testReturn___closed__4@PAGE
  str x0, [x8, _l_testReturn___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testReturn___closed__4@PAGE
  ldr x0, [x8, _l_testReturn___closed__4@PAGEOFF]
  cbz x0, .Lmark_skip_l_testReturn___closed__4
  bl _lean_mark_persistent
.Lmark_skip_l_testReturn___closed__4:

  // Initialize _l_testReturn___closed__5
  bl __init_l_testReturn___closed__5
  adrp x8, _l_testReturn___closed__5@PAGE
  str x0, [x8, _l_testReturn___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testReturn___closed__5@PAGE
  ldr x0, [x8, _l_testReturn___closed__5@PAGEOFF]
  cbz x0, .Lmark_skip_l_testReturn___closed__5
  bl _lean_mark_persistent
.Lmark_skip_l_testReturn___closed__5:

  // Initialize _l_testReturn___closed__6
  bl __init_l_testReturn___closed__6
  adrp x8, _l_testReturn___closed__6@PAGE
  str x0, [x8, _l_testReturn___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testReturn___closed__6@PAGE
  ldr x0, [x8, _l_testReturn___closed__6@PAGEOFF]
  cbz x0, .Lmark_skip_l_testReturn___closed__6
  bl _lean_mark_persistent
.Lmark_skip_l_testReturn___closed__6:

  // Initialize _l_testCtor___closed__0
  bl __init_l_testCtor___closed__0
  adrp x8, _l_testCtor___closed__0@PAGE
  str x0, [x8, _l_testCtor___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCtor___closed__0@PAGE
  ldr x0, [x8, _l_testCtor___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCtor___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_testCtor___closed__0:

  // Initialize _l_testCtor___closed__1
  bl __init_l_testCtor___closed__1
  adrp x8, _l_testCtor___closed__1@PAGE
  str x0, [x8, _l_testCtor___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCtor___closed__1@PAGE
  ldr x0, [x8, _l_testCtor___closed__1@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCtor___closed__1
  bl _lean_mark_persistent
.Lmark_skip_l_testCtor___closed__1:

  // Initialize _l_testCtor___closed__2
  bl __init_l_testCtor___closed__2
  adrp x8, _l_testCtor___closed__2@PAGE
  str x0, [x8, _l_testCtor___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCtor___closed__2@PAGE
  ldr x0, [x8, _l_testCtor___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCtor___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_testCtor___closed__2:

  // Initialize _l_testCtor___closed__3
  bl __init_l_testCtor___closed__3
  adrp x8, _l_testCtor___closed__3@PAGE
  str x0, [x8, _l_testCtor___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCtor___closed__3@PAGE
  ldr x0, [x8, _l_testCtor___closed__3@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCtor___closed__3
  bl _lean_mark_persistent
.Lmark_skip_l_testCtor___closed__3:

  // Initialize _l_testCtor___closed__4
  bl __init_l_testCtor___closed__4
  adrp x8, _l_testCtor___closed__4@PAGE
  str x0, [x8, _l_testCtor___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCtor___closed__4@PAGE
  ldr x0, [x8, _l_testCtor___closed__4@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCtor___closed__4
  bl _lean_mark_persistent
.Lmark_skip_l_testCtor___closed__4:

  // Initialize _l_testCtor___closed__5
  bl __init_l_testCtor___closed__5
  adrp x8, _l_testCtor___closed__5@PAGE
  str x0, [x8, _l_testCtor___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCtor___closed__5@PAGE
  ldr x0, [x8, _l_testCtor___closed__5@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCtor___closed__5
  bl _lean_mark_persistent
.Lmark_skip_l_testCtor___closed__5:

  // Initialize _l_testCtor___closed__6
  bl __init_l_testCtor___closed__6
  adrp x8, _l_testCtor___closed__6@PAGE
  str x0, [x8, _l_testCtor___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCtor___closed__6@PAGE
  ldr x0, [x8, _l_testCtor___closed__6@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCtor___closed__6
  bl _lean_mark_persistent
.Lmark_skip_l_testCtor___closed__6:

  // Initialize _l_testCtor___closed__7
  bl __init_l_testCtor___closed__7
  adrp x8, _l_testCtor___closed__7@PAGE
  str x0, [x8, _l_testCtor___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCtor___closed__7@PAGE
  ldr x0, [x8, _l_testCtor___closed__7@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCtor___closed__7
  bl _lean_mark_persistent
.Lmark_skip_l_testCtor___closed__7:

  // Initialize _l_testCtor___closed__8
  bl __init_l_testCtor___closed__8
  adrp x8, _l_testCtor___closed__8@PAGE
  str x0, [x8, _l_testCtor___closed__8@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCtor___closed__8@PAGE
  ldr x0, [x8, _l_testCtor___closed__8@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCtor___closed__8
  bl _lean_mark_persistent
.Lmark_skip_l_testCtor___closed__8:

  // Initialize _l_testProj___closed__0
  bl __init_l_testProj___closed__0
  adrp x8, _l_testProj___closed__0@PAGE
  str x0, [x8, _l_testProj___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testProj___closed__0@PAGE
  ldr x0, [x8, _l_testProj___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_testProj___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_testProj___closed__0:

  // Initialize _l_testProj___closed__1
  bl __init_l_testProj___closed__1
  adrp x8, _l_testProj___closed__1@PAGE
  str x0, [x8, _l_testProj___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testProj___closed__1@PAGE
  ldr x0, [x8, _l_testProj___closed__1@PAGEOFF]
  cbz x0, .Lmark_skip_l_testProj___closed__1
  bl _lean_mark_persistent
.Lmark_skip_l_testProj___closed__1:

  // Initialize _l_testProj___closed__2
  bl __init_l_testProj___closed__2
  adrp x8, _l_testProj___closed__2@PAGE
  str x0, [x8, _l_testProj___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testProj___closed__2@PAGE
  ldr x0, [x8, _l_testProj___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_testProj___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_testProj___closed__2:

  // Initialize _l_testProj___closed__3
  bl __init_l_testProj___closed__3
  adrp x8, _l_testProj___closed__3@PAGE
  str x0, [x8, _l_testProj___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testProj___closed__3@PAGE
  ldr x0, [x8, _l_testProj___closed__3@PAGEOFF]
  cbz x0, .Lmark_skip_l_testProj___closed__3
  bl _lean_mark_persistent
.Lmark_skip_l_testProj___closed__3:

  // Initialize _l_testProj___closed__4
  bl __init_l_testProj___closed__4
  adrp x8, _l_testProj___closed__4@PAGE
  str x0, [x8, _l_testProj___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testProj___closed__4@PAGE
  ldr x0, [x8, _l_testProj___closed__4@PAGEOFF]
  cbz x0, .Lmark_skip_l_testProj___closed__4
  bl _lean_mark_persistent
.Lmark_skip_l_testProj___closed__4:

  // Initialize _l_testProj___closed__5
  bl __init_l_testProj___closed__5
  adrp x8, _l_testProj___closed__5@PAGE
  str x0, [x8, _l_testProj___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testProj___closed__5@PAGE
  ldr x0, [x8, _l_testProj___closed__5@PAGEOFF]
  cbz x0, .Lmark_skip_l_testProj___closed__5
  bl _lean_mark_persistent
.Lmark_skip_l_testProj___closed__5:

  // Initialize _l_testProj___closed__6
  bl __init_l_testProj___closed__6
  adrp x8, _l_testProj___closed__6@PAGE
  str x0, [x8, _l_testProj___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testProj___closed__6@PAGE
  ldr x0, [x8, _l_testProj___closed__6@PAGEOFF]
  cbz x0, .Lmark_skip_l_testProj___closed__6
  bl _lean_mark_persistent
.Lmark_skip_l_testProj___closed__6:

  // Initialize _l_testCase___closed__0
  bl __init_l_testCase___closed__0
  adrp x8, _l_testCase___closed__0@PAGE
  str x0, [x8, _l_testCase___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__0@PAGE
  ldr x0, [x8, _l_testCase___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__0:

  // Initialize _l_testCase___closed__1
  bl __init_l_testCase___closed__1
  adrp x8, _l_testCase___closed__1@PAGE
  str x0, [x8, _l_testCase___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__1@PAGE
  ldr x0, [x8, _l_testCase___closed__1@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__1
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__1:

  // Initialize _l_testCase___closed__2
  bl __init_l_testCase___closed__2
  adrp x8, _l_testCase___closed__2@PAGE
  str x0, [x8, _l_testCase___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__2@PAGE
  ldr x0, [x8, _l_testCase___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__2:

  // Initialize _l_testCase___closed__3
  bl __init_l_testCase___closed__3
  adrp x8, _l_testCase___closed__3@PAGE
  str x0, [x8, _l_testCase___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__3@PAGE
  ldr x0, [x8, _l_testCase___closed__3@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__3
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__3:

  // Initialize _l_testCase___closed__4
  bl __init_l_testCase___closed__4
  adrp x8, _l_testCase___closed__4@PAGE
  str x0, [x8, _l_testCase___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__4@PAGE
  ldr x0, [x8, _l_testCase___closed__4@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__4
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__4:

  // Initialize _l_testCase___closed__5
  bl __init_l_testCase___closed__5
  adrp x8, _l_testCase___closed__5@PAGE
  str x0, [x8, _l_testCase___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__5@PAGE
  ldr x0, [x8, _l_testCase___closed__5@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__5
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__5:

  // Initialize _l_testCase___closed__6
  bl __init_l_testCase___closed__6
  adrp x8, _l_testCase___closed__6@PAGE
  str x0, [x8, _l_testCase___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__6@PAGE
  ldr x0, [x8, _l_testCase___closed__6@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__6
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__6:

  // Initialize _l_testCase___closed__7
  bl __init_l_testCase___closed__7
  adrp x8, _l_testCase___closed__7@PAGE
  str x0, [x8, _l_testCase___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__7@PAGE
  ldr x0, [x8, _l_testCase___closed__7@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__7
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__7:

  // Initialize _l_testCase___closed__8
  bl __init_l_testCase___closed__8
  adrp x8, _l_testCase___closed__8@PAGE
  str x0, [x8, _l_testCase___closed__8@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__8@PAGE
  ldr x0, [x8, _l_testCase___closed__8@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__8
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__8:

  // Initialize _l_testCase___closed__9
  bl __init_l_testCase___closed__9
  adrp x8, _l_testCase___closed__9@PAGE
  str x0, [x8, _l_testCase___closed__9@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__9@PAGE
  ldr x0, [x8, _l_testCase___closed__9@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__9
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__9:

  // Initialize _l_testCase___closed__10
  bl __init_l_testCase___closed__10
  adrp x8, _l_testCase___closed__10@PAGE
  str x0, [x8, _l_testCase___closed__10@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__10@PAGE
  ldr x0, [x8, _l_testCase___closed__10@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__10
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__10:

  // Initialize _l_testCase___closed__11
  bl __init_l_testCase___closed__11
  adrp x8, _l_testCase___closed__11@PAGE
  str x0, [x8, _l_testCase___closed__11@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__11@PAGE
  ldr x0, [x8, _l_testCase___closed__11@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__11
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__11:

  // Initialize _l_testCase___closed__12
  bl __init_l_testCase___closed__12
  adrp x8, _l_testCase___closed__12@PAGE
  str x0, [x8, _l_testCase___closed__12@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__12@PAGE
  ldr x0, [x8, _l_testCase___closed__12@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__12
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__12:

  // Initialize _l_testCase___closed__13
  bl __init_l_testCase___closed__13
  adrp x8, _l_testCase___closed__13@PAGE
  str x0, [x8, _l_testCase___closed__13@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__13@PAGE
  ldr x0, [x8, _l_testCase___closed__13@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__13
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__13:

  // Initialize _l_testCase___closed__14
  bl __init_l_testCase___closed__14
  adrp x8, _l_testCase___closed__14@PAGE
  str x0, [x8, _l_testCase___closed__14@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__14@PAGE
  ldr x0, [x8, _l_testCase___closed__14@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__14
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__14:

  // Initialize _l_testCase___closed__15
  bl __init_l_testCase___closed__15
  adrp x8, _l_testCase___closed__15@PAGE
  str x0, [x8, _l_testCase___closed__15@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__15@PAGE
  ldr x0, [x8, _l_testCase___closed__15@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__15
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__15:

  // Initialize _l_testCase___closed__16
  bl __init_l_testCase___closed__16
  adrp x8, _l_testCase___closed__16@PAGE
  str x0, [x8, _l_testCase___closed__16@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__16@PAGE
  ldr x0, [x8, _l_testCase___closed__16@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__16
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__16:

  // Initialize _l_testCase___closed__17
  bl __init_l_testCase___closed__17
  adrp x8, _l_testCase___closed__17@PAGE
  str x0, [x8, _l_testCase___closed__17@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__17@PAGE
  ldr x0, [x8, _l_testCase___closed__17@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__17
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__17:

  // Initialize _l_testCase___closed__18
  bl __init_l_testCase___closed__18
  adrp x8, _l_testCase___closed__18@PAGE
  str x0, [x8, _l_testCase___closed__18@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__18@PAGE
  ldr x0, [x8, _l_testCase___closed__18@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__18
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__18:

  // Initialize _l_testCase___closed__19
  bl __init_l_testCase___closed__19
  adrp x8, _l_testCase___closed__19@PAGE
  str x0, [x8, _l_testCase___closed__19@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testCase___closed__19@PAGE
  ldr x0, [x8, _l_testCase___closed__19@PAGEOFF]
  cbz x0, .Lmark_skip_l_testCase___closed__19
  bl _lean_mark_persistent
.Lmark_skip_l_testCase___closed__19:

  // Initialize _l_testLit___closed__0
  bl __init_l_testLit___closed__0
  adrp x8, _l_testLit___closed__0@PAGE
  str x0, [x8, _l_testLit___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testLit___closed__0@PAGE
  ldr x0, [x8, _l_testLit___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_testLit___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_testLit___closed__0:

  // Initialize _l_testLit___closed__1
  bl __init_l_testLit___closed__1
  adrp x8, _l_testLit___closed__1@PAGE
  str x0, [x8, _l_testLit___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testLit___closed__1@PAGE
  ldr x0, [x8, _l_testLit___closed__1@PAGEOFF]
  cbz x0, .Lmark_skip_l_testLit___closed__1
  bl _lean_mark_persistent
.Lmark_skip_l_testLit___closed__1:

  // Initialize _l_testLit___closed__2
  bl __init_l_testLit___closed__2
  adrp x8, _l_testLit___closed__2@PAGE
  str x0, [x8, _l_testLit___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testLit___closed__2@PAGE
  ldr x0, [x8, _l_testLit___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_testLit___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_testLit___closed__2:

  // Initialize _l_testLit___closed__3
  bl __init_l_testLit___closed__3
  adrp x8, _l_testLit___closed__3@PAGE
  str x0, [x8, _l_testLit___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testLit___closed__3@PAGE
  ldr x0, [x8, _l_testLit___closed__3@PAGEOFF]
  cbz x0, .Lmark_skip_l_testLit___closed__3
  bl _lean_mark_persistent
.Lmark_skip_l_testLit___closed__3:

  // Initialize _l_testLit___closed__4
  bl __init_l_testLit___closed__4
  adrp x8, _l_testLit___closed__4@PAGE
  str x0, [x8, _l_testLit___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testLit___closed__4@PAGE
  ldr x0, [x8, _l_testLit___closed__4@PAGEOFF]
  cbz x0, .Lmark_skip_l_testLit___closed__4
  bl _lean_mark_persistent
.Lmark_skip_l_testLit___closed__4:

  // Initialize _l_testLit___closed__5
  bl __init_l_testLit___closed__5
  adrp x8, _l_testLit___closed__5@PAGE
  str x0, [x8, _l_testLit___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testLit___closed__5@PAGE
  ldr x0, [x8, _l_testLit___closed__5@PAGEOFF]
  cbz x0, .Lmark_skip_l_testLit___closed__5
  bl _lean_mark_persistent
.Lmark_skip_l_testLit___closed__5:

  // Initialize _l_testLit___closed__6
  bl __init_l_testLit___closed__6
  adrp x8, _l_testLit___closed__6@PAGE
  str x0, [x8, _l_testLit___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testLit___closed__6@PAGE
  ldr x0, [x8, _l_testLit___closed__6@PAGEOFF]
  cbz x0, .Lmark_skip_l_testLit___closed__6
  bl _lean_mark_persistent
.Lmark_skip_l_testLit___closed__6:

  // Initialize _l_testLit___closed__7
  bl __init_l_testLit___closed__7
  adrp x8, _l_testLit___closed__7@PAGE
  str x0, [x8, _l_testLit___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testLit___closed__7@PAGE
  ldr x0, [x8, _l_testLit___closed__7@PAGEOFF]
  cbz x0, .Lmark_skip_l_testLit___closed__7
  bl _lean_mark_persistent
.Lmark_skip_l_testLit___closed__7:

  // Initialize _l_testBox___closed__0
  bl __init_l_testBox___closed__0
  adrp x8, _l_testBox___closed__0@PAGE
  str x0, [x8, _l_testBox___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testBox___closed__0@PAGE
  ldr x0, [x8, _l_testBox___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_testBox___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_testBox___closed__0:

  // Initialize _l_testBox___closed__1
  bl __init_l_testBox___closed__1
  adrp x8, _l_testBox___closed__1@PAGE
  str x0, [x8, _l_testBox___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testBox___closed__1@PAGE
  ldr x0, [x8, _l_testBox___closed__1@PAGEOFF]
  cbz x0, .Lmark_skip_l_testBox___closed__1
  bl _lean_mark_persistent
.Lmark_skip_l_testBox___closed__1:

  // Initialize _l_testBox___closed__2
  bl __init_l_testBox___closed__2
  adrp x8, _l_testBox___closed__2@PAGE
  str x0, [x8, _l_testBox___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testBox___closed__2@PAGE
  ldr x0, [x8, _l_testBox___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_testBox___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_testBox___closed__2:

  // Initialize _l_testBox___closed__3
  bl __init_l_testBox___closed__3
  adrp x8, _l_testBox___closed__3@PAGE
  str x0, [x8, _l_testBox___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testBox___closed__3@PAGE
  ldr x0, [x8, _l_testBox___closed__3@PAGEOFF]
  cbz x0, .Lmark_skip_l_testBox___closed__3
  bl _lean_mark_persistent
.Lmark_skip_l_testBox___closed__3:

  // Initialize _l_testBox___closed__4
  bl __init_l_testBox___closed__4
  adrp x8, _l_testBox___closed__4@PAGE
  str x0, [x8, _l_testBox___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testBox___closed__4@PAGE
  ldr x0, [x8, _l_testBox___closed__4@PAGEOFF]
  cbz x0, .Lmark_skip_l_testBox___closed__4
  bl _lean_mark_persistent
.Lmark_skip_l_testBox___closed__4:

  // Initialize _l_testBox___closed__5
  bl __init_l_testBox___closed__5
  adrp x8, _l_testBox___closed__5@PAGE
  str x0, [x8, _l_testBox___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testBox___closed__5@PAGE
  ldr x0, [x8, _l_testBox___closed__5@PAGEOFF]
  cbz x0, .Lmark_skip_l_testBox___closed__5
  bl _lean_mark_persistent
.Lmark_skip_l_testBox___closed__5:

  // Initialize _l_testBox___closed__6
  bl __init_l_testBox___closed__6
  adrp x8, _l_testBox___closed__6@PAGE
  str x0, [x8, _l_testBox___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testBox___closed__6@PAGE
  ldr x0, [x8, _l_testBox___closed__6@PAGEOFF]
  cbz x0, .Lmark_skip_l_testBox___closed__6
  bl _lean_mark_persistent
.Lmark_skip_l_testBox___closed__6:

  // Initialize _l_testBox___closed__7
  bl __init_l_testBox___closed__7
  adrp x8, _l_testBox___closed__7@PAGE
  str x0, [x8, _l_testBox___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_testBox___closed__7@PAGE
  ldr x0, [x8, _l_testBox___closed__7@PAGEOFF]
  cbz x0, .Lmark_skip_l_testBox___closed__7
  bl _lean_mark_persistent
.Lmark_skip_l_testBox___closed__7:

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
  // Mark persistent
  adrp x8, _l_main___closed__2@PAGE
  ldr x0, [x8, _l_main___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__2:

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
