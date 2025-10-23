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
  .align 3  // doubleword alignment
  .globl _l_testBox___closed__7
_l_testBox___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testBox___closed__6
_l_testBox___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testBox___closed__5
_l_testBox___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testBox___closed__4
_l_testBox___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testBox___closed__3
_l_testBox___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testBox___closed__2
_l_testBox___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testBox___closed__1
_l_testBox___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testBox___closed__0
_l_testBox___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testLit___closed__7
_l_testLit___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testLit___closed__6
_l_testLit___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testLit___closed__5
_l_testLit___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testLit___closed__4
_l_testLit___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testLit___closed__3
_l_testLit___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testLit___closed__2
_l_testLit___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testLit___closed__1
_l_testLit___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testLit___closed__0
_l_testLit___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__19
_l_testCase___closed__19:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__18
_l_testCase___closed__18:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__17
_l_testCase___closed__17:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__16
_l_testCase___closed__16:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__15
_l_testCase___closed__15:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__14
_l_testCase___closed__14:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__13
_l_testCase___closed__13:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__12
_l_testCase___closed__12:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__11
_l_testCase___closed__11:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__10
_l_testCase___closed__10:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__9
_l_testCase___closed__9:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__8
_l_testCase___closed__8:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__7
_l_testCase___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__6
_l_testCase___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__5
_l_testCase___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__4
_l_testCase___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__3
_l_testCase___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__2
_l_testCase___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__1
_l_testCase___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCase___closed__0
_l_testCase___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testProj___closed__6
_l_testProj___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testProj___closed__5
_l_testProj___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testProj___closed__4
_l_testProj___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testProj___closed__3
_l_testProj___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testProj___closed__2
_l_testProj___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testProj___closed__1
_l_testProj___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testProj___closed__0
_l_testProj___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCtor___closed__8
_l_testCtor___closed__8:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCtor___closed__7
_l_testCtor___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCtor___closed__6
_l_testCtor___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCtor___closed__5
_l_testCtor___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCtor___closed__4
_l_testCtor___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCtor___closed__3
_l_testCtor___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCtor___closed__2
_l_testCtor___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCtor___closed__1
_l_testCtor___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testCtor___closed__0
_l_testCtor___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testReturn___closed__6
_l_testReturn___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testReturn___closed__5
_l_testReturn___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testReturn___closed__4
_l_testReturn___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testReturn___closed__3
_l_testReturn___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testReturn___closed__2
_l_testReturn___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testReturn___closed__1
_l_testReturn___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testReturn___closed__0
_l_testReturn___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__20
_l_testAdd___closed__20:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__19
_l_testAdd___closed__19:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__18
_l_testAdd___closed__18:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__17
_l_testAdd___closed__17:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__16
_l_testAdd___closed__16:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__15
_l_testAdd___closed__15:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__14
_l_testAdd___closed__14:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__13
_l_testAdd___closed__13:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__12
_l_testAdd___closed__12:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__11
_l_testAdd___closed__11:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__10
_l_testAdd___closed__10:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__9
_l_testAdd___closed__9:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__8
_l_testAdd___closed__8:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__7
_l_testAdd___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__6
_l_testAdd___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__5
_l_testAdd___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__4
_l_testAdd___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__3
_l_testAdd___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__2
_l_testAdd___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__1
_l_testAdd___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_testAdd___closed__0
_l_testAdd___closed__0:
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
  sub sp, sp, #176
  // Stack frame: 176 bytes (21 spilled vars)
.Lfn_start_main:
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
  ldr x21, [x21, _l_main___closed__1@PAGEOFF]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x21
  mov x1, x23
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
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
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
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
  // call testAdd with 1 runtime args
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _l_testAdd
  mov x8, x0
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // load spilled vreg11 from stack slot 5
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
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
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
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // call testReturn with 1 runtime args
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _l_testReturn
  mov x8, x0
  // store result to spilled vreg13
  // store to stack slot 7
  str x8, [sp, #56]
  // load spilled vreg13 from stack slot 7
  ldr x8, [sp, #56]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag20_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag21_fn771961157887135399
.Lscalar_tag20_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag21_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor23_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor24_fn771961157887135399
  b .Lcase_end22_fn771961157887135399
.Lcase_ctor23_fn771961157887135399:
  // load spilled vreg13 from stack slot 7
  ldr x8, [sp, #56]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg14
  // store to stack slot 8
  str x8, [sp, #64]
  // inc 1
  // load spilled vreg14 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg13 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // call testCtor with 1 runtime args
  // load spilled vreg14 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _l_testCtor
  mov x8, x0
  // store result to spilled vreg15
  // store to stack slot 9
  str x8, [sp, #72]
  // load spilled vreg15 from stack slot 9
  ldr x8, [sp, #72]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag25_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag26_fn771961157887135399
.Lscalar_tag25_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag26_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor28_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor29_fn771961157887135399
  b .Lcase_end27_fn771961157887135399
.Lcase_ctor28_fn771961157887135399:
  // load spilled vreg15 from stack slot 9
  ldr x8, [sp, #72]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg16
  // store to stack slot 10
  str x8, [sp, #80]
  // inc 1
  // load spilled vreg16 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg15 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_dec_ref
  // call testProj with 1 runtime args
  // load spilled vreg16 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _l_testProj
  mov x8, x0
  // store result to spilled vreg17
  // store to stack slot 11
  str x8, [sp, #88]
  // load spilled vreg17 from stack slot 11
  ldr x8, [sp, #88]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag30_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag31_fn771961157887135399
.Lscalar_tag30_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag31_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor33_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor34_fn771961157887135399
  b .Lcase_end32_fn771961157887135399
.Lcase_ctor33_fn771961157887135399:
  // load spilled vreg17 from stack slot 11
  ldr x8, [sp, #88]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg18
  // store to stack slot 12
  str x8, [sp, #96]
  // inc 1
  // load spilled vreg18 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg17 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_dec_ref
  // call testCase with 1 runtime args
  // load spilled vreg18 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _l_testCase
  mov x8, x0
  // store result to spilled vreg19
  // store to stack slot 13
  str x8, [sp, #104]
  // load spilled vreg19 from stack slot 13
  ldr x8, [sp, #104]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag35_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag36_fn771961157887135399
.Lscalar_tag35_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag36_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor38_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor39_fn771961157887135399
  b .Lcase_end37_fn771961157887135399
.Lcase_ctor38_fn771961157887135399:
  // load spilled vreg19 from stack slot 13
  ldr x8, [sp, #104]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg20
  // store to stack slot 14
  str x8, [sp, #112]
  // inc 1
  // load spilled vreg20 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg19 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_dec_ref
  // call testLit with 1 runtime args
  // load spilled vreg20 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  bl _l_testLit
  mov x8, x0
  // store result to spilled vreg21
  // store to stack slot 15
  str x8, [sp, #120]
  // load spilled vreg21 from stack slot 15
  ldr x8, [sp, #120]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag40_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag41_fn771961157887135399
.Lscalar_tag40_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag41_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor43_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor44_fn771961157887135399
  b .Lcase_end42_fn771961157887135399
.Lcase_ctor43_fn771961157887135399:
  // load spilled vreg21 from stack slot 15
  ldr x8, [sp, #120]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg22
  // store to stack slot 16
  str x8, [sp, #128]
  // inc 1
  // load spilled vreg22 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg21 from stack slot 15
  ldr x8, [sp, #120]
  mov x0, x8
  bl _lean_dec_ref
  // call testBox with 1 runtime args
  // load spilled vreg22 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  bl _l_testBox
  mov x8, x0
  // store result to spilled vreg23
  // store to stack slot 17
  str x8, [sp, #136]
  // load spilled vreg23 from stack slot 17
  ldr x8, [sp, #136]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag45_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag46_fn771961157887135399
.Lscalar_tag45_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag46_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor48_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor49_fn771961157887135399
  b .Lcase_end47_fn771961157887135399
.Lcase_ctor48_fn771961157887135399:
  // load spilled vreg23 from stack slot 17
  ldr x8, [sp, #136]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg24
  // store to stack slot 18
  str x8, [sp, #144]
  // inc 1
  // load spilled vreg24 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg23 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  ldr x8, [x8, _l_main___closed__2@PAGEOFF]
  // store result to spilled vreg25
  // store to stack slot 19
  str x8, [sp, #152]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg25 from stack slot 19
  ldr x8, [sp, #152]
  mov x0, x8
  // load spilled vreg24 from stack slot 18
  ldr x8, [sp, #144]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg26
  // store to stack slot 20
  str x8, [sp, #160]
  // return
  // load spilled vreg26 from stack slot 20
  ldr x8, [sp, #160]
  mov x0, x8
  add sp, sp, #176
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end47_fn771961157887135399
.Lcase_ctor49_fn771961157887135399:
  // return
  // load spilled vreg23 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  add sp, sp, #176
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end47_fn771961157887135399
.Lcase_end47_fn771961157887135399:
  b .Lcase_end42_fn771961157887135399
.Lcase_ctor44_fn771961157887135399:
  // return
  // load spilled vreg21 from stack slot 15
  ldr x8, [sp, #120]
  mov x0, x8
  add sp, sp, #176
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end42_fn771961157887135399
.Lcase_end42_fn771961157887135399:
  b .Lcase_end37_fn771961157887135399
.Lcase_ctor39_fn771961157887135399:
  // return
  // load spilled vreg19 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  add sp, sp, #176
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end37_fn771961157887135399
.Lcase_end37_fn771961157887135399:
  b .Lcase_end32_fn771961157887135399
.Lcase_ctor34_fn771961157887135399:
  // return
  // load spilled vreg17 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  add sp, sp, #176
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end32_fn771961157887135399
.Lcase_end32_fn771961157887135399:
  b .Lcase_end27_fn771961157887135399
.Lcase_ctor29_fn771961157887135399:
  // return
  // load spilled vreg15 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  add sp, sp, #176
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end27_fn771961157887135399
.Lcase_end27_fn771961157887135399:
  b .Lcase_end22_fn771961157887135399
.Lcase_ctor24_fn771961157887135399:
  // return
  // load spilled vreg13 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  add sp, sp, #176
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end22_fn771961157887135399
.Lcase_end22_fn771961157887135399:
  b .Lcase_end17_fn771961157887135399
.Lcase_ctor19_fn771961157887135399:
  // return
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  add sp, sp, #176
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
  add sp, sp, #176
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
  add sp, sp, #176
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
  add sp, sp, #176
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn771961157887135399
.Lcase_end2_fn771961157887135399:

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
  // string literal: All tests completed!
  adrp x0, .Lstrptr_16294557373898097781_0@PAGE
  ldr x0, [x0, .Lstrptr_16294557373898097781_0@PAGEOFF]
  // DEBUG: str='All tests completed!' byteSize=20 charCount=20
  mov x1, #20
  mov x2, #20
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
.Lfn_start_main._closed_1:
  // string literal: ====================
  adrp x0, .Lstrptr_7388215039365402614_0@PAGE
  ldr x0, [x0, .Lstrptr_7388215039365402614_0@PAGEOFF]
  // DEBUG: str='====================' byteSize=20 charCount=20
  mov x1, #20
  mov x2, #20
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
.Lfn_start_main._closed_0:
  // string literal: ARM64 Backend Tests
  adrp x0, .Lstrptr_6081877290215468830_0@PAGE
  ldr x0, [x0, .Lstrptr_6081877290215468830_0@PAGEOFF]
  // DEBUG: str='ARM64 Backend Tests' byteSize=19 charCount=19
  mov x1, #19
  mov x2, #19
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
  sub sp, sp, #112
  // Stack frame: 112 bytes (13 spilled vars)
.Lfn_start_testBox:
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
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn7713160247578158366
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn7713160247578158366
.Lscalar_tag0_fn7713160247578158366:
  lsr x8, x20, #1
.Lcompare_tag1_fn7713160247578158366:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn7713160247578158366
  cmp x8, #1
  b.eq .Lcase_ctor4_fn7713160247578158366
  b .Lcase_end2_fn7713160247578158366
.Lcase_ctor3_fn7713160247578158366:
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
  adrp x8, _l_testBox___closed__7@PAGE
  ldr x8, [x8, _l_testBox___closed__7@PAGEOFF]
  // store result to spilled vreg6
  // store to stack slot 0
  str x8, [sp]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg6 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg7
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn7713160247578158366
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn7713160247578158366
.Lscalar_tag5_fn7713160247578158366:
  lsr x8, x8, #1
.Lcompare_tag6_fn7713160247578158366:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn7713160247578158366
  cmp x8, #1
  b.eq .Lcase_ctor9_fn7713160247578158366
  b .Lcase_end7_fn7713160247578158366
.Lcase_ctor8_fn7713160247578158366:
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg9
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag10_fn7713160247578158366
  ldrb w8, [x8, #7]
  b .Lcompare_tag11_fn7713160247578158366
.Lscalar_tag10_fn7713160247578158366:
  lsr x8, x8, #1
.Lcompare_tag11_fn7713160247578158366:
  cmp x8, #0
  b.eq .Lcase_ctor13_fn7713160247578158366
  cmp x8, #1
  b.eq .Lcase_ctor14_fn7713160247578158366
  b .Lcase_end12_fn7713160247578158366
.Lcase_ctor13_fn7713160247578158366:
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
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg12
  // store to stack slot 6
  str x8, [sp, #48]
  // return
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn7713160247578158366
.Lcase_ctor14_fn7713160247578158366:
  // return
  // load spilled vreg9 from stack slot 3
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
  b .Lcase_end12_fn7713160247578158366
.Lcase_end12_fn7713160247578158366:
  b .Lcase_end7_fn7713160247578158366
.Lcase_ctor9_fn7713160247578158366:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn7713160247578158366
.Lcase_end7_fn7713160247578158366:
  b .Lcase_end2_fn7713160247578158366
.Lcase_ctor4_fn7713160247578158366:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg13
  // store to stack slot 8
  strb w8, [sp, #64]
  // load spilled vreg13 from stack slot 8
  ldrb w8, [sp, #64]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor16_fn7713160247578158366
  cmp x8, #1
  b.eq .Lcase_ctor17_fn7713160247578158366
  b .Lcase_end15_fn7713160247578158366
.Lcase_ctor16_fn7713160247578158366:
  // return
  mov x0, x20
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn7713160247578158366
.Lcase_ctor17_fn7713160247578158366:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg14
  // store to stack slot 10
  str x8, [sp, #80]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg15
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
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
  b .Lcase_end15_fn7713160247578158366
.Lcase_end15_fn7713160247578158366:
  b .Lcase_end2_fn7713160247578158366
.Lcase_end2_fn7713160247578158366:

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
.Lfn_start_testBox._closed_7:
  // string literal: === Test Boxing ===
  adrp x0, .Lstrptr_17264342934264736606_0@PAGE
  ldr x0, [x0, .Lstrptr_17264342934264736606_0@PAGEOFF]
  // DEBUG: str='=== Test Boxing ===' byteSize=19 charCount=19
  mov x1, #19
  mov x2, #19
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
.Lfn_start_testBox._closed_6:
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x27, #1
  // load global constant _l_testBox___closed__1
  adrp x26, _l_testBox___closed__1@PAGE
  ldr x26, [x26, _l_testBox___closed__1@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x25, #15
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
.Lfn_start_testBox._closed_5:
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
.Lfn_start_testBox._closed_4:
  // ctor Lean.IR.IRType.usize (tag=5, objs=0, scalar=0)
  mov x27, #11
  mov x22, #0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // ctor Lean.IR.Param.mk (tag=0, objs=2, scalar=1)
  mov x0, #0
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  str x22, [x23, #16]
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
.Lfn_start_testBox._closed_3:
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
.Lfn_start_testBox._closed_2:
  // string literal: boxNat
  adrp x0, .Lstrptr_6556839623093199288_0@PAGE
  ldr x0, [x0, .Lstrptr_6556839623093199288_0@PAGEOFF]
  // DEBUG: str='boxNat' byteSize=6 charCount=6
  mov x1, #6
  mov x2, #6
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
.Lfn_start_testBox._closed_1:
  // load global constant _l_testProj___closed__1
  adrp x27, _l_testProj___closed__1@PAGE
  ldr x27, [x27, _l_testProj___closed__1@PAGEOFF]
  // load global constant _l_testBox___closed__0
  adrp x26, _l_testBox___closed__0@PAGE
  ldr x26, [x26, _l_testBox___closed__0@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x25, #15
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
.Lfn_start_testBox._closed_0:
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // ctor Lean.IR.IRType.usize (tag=5, objs=0, scalar=0)
  mov x26, #11
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
  sub sp, sp, #112
  // Stack frame: 112 bytes (13 spilled vars)
.Lfn_start_testLit:
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
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn3001445248310534890
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn3001445248310534890
.Lscalar_tag0_fn3001445248310534890:
  lsr x8, x20, #1
.Lcompare_tag1_fn3001445248310534890:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn3001445248310534890
  cmp x8, #1
  b.eq .Lcase_ctor4_fn3001445248310534890
  b .Lcase_end2_fn3001445248310534890
.Lcase_ctor3_fn3001445248310534890:
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
  adrp x8, _l_testLit___closed__7@PAGE
  ldr x8, [x8, _l_testLit___closed__7@PAGEOFF]
  // store result to spilled vreg6
  // store to stack slot 0
  str x8, [sp]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg6 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg7
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn3001445248310534890
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn3001445248310534890
.Lscalar_tag5_fn3001445248310534890:
  lsr x8, x8, #1
.Lcompare_tag6_fn3001445248310534890:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn3001445248310534890
  cmp x8, #1
  b.eq .Lcase_ctor9_fn3001445248310534890
  b .Lcase_end7_fn3001445248310534890
.Lcase_ctor8_fn3001445248310534890:
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg9
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag10_fn3001445248310534890
  ldrb w8, [x8, #7]
  b .Lcompare_tag11_fn3001445248310534890
.Lscalar_tag10_fn3001445248310534890:
  lsr x8, x8, #1
.Lcompare_tag11_fn3001445248310534890:
  cmp x8, #0
  b.eq .Lcase_ctor13_fn3001445248310534890
  cmp x8, #1
  b.eq .Lcase_ctor14_fn3001445248310534890
  b .Lcase_end12_fn3001445248310534890
.Lcase_ctor13_fn3001445248310534890:
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
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg12
  // store to stack slot 6
  str x8, [sp, #48]
  // return
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn3001445248310534890
.Lcase_ctor14_fn3001445248310534890:
  // return
  // load spilled vreg9 from stack slot 3
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
  b .Lcase_end12_fn3001445248310534890
.Lcase_end12_fn3001445248310534890:
  b .Lcase_end7_fn3001445248310534890
.Lcase_ctor9_fn3001445248310534890:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn3001445248310534890
.Lcase_end7_fn3001445248310534890:
  b .Lcase_end2_fn3001445248310534890
.Lcase_ctor4_fn3001445248310534890:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg13
  // store to stack slot 8
  strb w8, [sp, #64]
  // load spilled vreg13 from stack slot 8
  ldrb w8, [sp, #64]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor16_fn3001445248310534890
  cmp x8, #1
  b.eq .Lcase_ctor17_fn3001445248310534890
  b .Lcase_end15_fn3001445248310534890
.Lcase_ctor16_fn3001445248310534890:
  // return
  mov x0, x20
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn3001445248310534890
.Lcase_ctor17_fn3001445248310534890:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg14
  // store to stack slot 10
  str x8, [sp, #80]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg15
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
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
  b .Lcase_end15_fn3001445248310534890
.Lcase_end15_fn3001445248310534890:
  b .Lcase_end2_fn3001445248310534890
.Lcase_end2_fn3001445248310534890:

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
.Lfn_start_testLit._closed_7:
  // string literal: === Test Literal ===
  adrp x0, .Lstrptr_14652603252703416314_0@PAGE
  ldr x0, [x0, .Lstrptr_14652603252703416314_0@PAGEOFF]
  // DEBUG: str='=== Test Literal ===' byteSize=20 charCount=20
  mov x1, #20
  mov x2, #20
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
.Lfn_start_testLit._closed_6:
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x27, #1
  // load global constant _l_testLit___closed__2
  adrp x26, _l_testLit___closed__2@PAGE
  ldr x26, [x26, _l_testLit___closed__2@PAGEOFF]
  // ctor Lean.IR.IRType.usize (tag=5, objs=0, scalar=0)
  mov x25, #11
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
.Lfn_start_testLit._closed_5:
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
.Lfn_start_testLit._closed_4:
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
.Lfn_start_testLit._closed_3:
  // string literal: const42
  adrp x0, .Lstrptr_2530273624046867909_0@PAGE
  ldr x0, [x0, .Lstrptr_2530273624046867909_0@PAGEOFF]
  // DEBUG: str='const42' byteSize=7 charCount=7
  mov x1, #7
  mov x2, #7
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
.Lfn_start_testLit._closed_2:
  // load global constant _l_testReturn___closed__0
  adrp x27, _l_testReturn___closed__0@PAGE
  ldr x27, [x27, _l_testReturn___closed__0@PAGEOFF]
  // load global constant _l_testLit___closed__1
  adrp x26, _l_testLit___closed__1@PAGE
  ldr x26, [x26, _l_testLit___closed__1@PAGEOFF]
  // ctor Lean.IR.IRType.usize (tag=5, objs=0, scalar=0)
  mov x25, #11
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
.Lfn_start_testLit._closed_1:
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
.Lfn_start_testLit._closed_0:
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
  sub sp, sp, #112
  // Stack frame: 112 bytes (13 spilled vars)
.Lfn_start_testCase:
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
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn17613161905928067802
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn17613161905928067802
.Lscalar_tag0_fn17613161905928067802:
  lsr x8, x20, #1
.Lcompare_tag1_fn17613161905928067802:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn17613161905928067802
  cmp x8, #1
  b.eq .Lcase_ctor4_fn17613161905928067802
  b .Lcase_end2_fn17613161905928067802
.Lcase_ctor3_fn17613161905928067802:
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
  adrp x8, _l_testCase___closed__19@PAGE
  ldr x8, [x8, _l_testCase___closed__19@PAGEOFF]
  // store result to spilled vreg6
  // store to stack slot 0
  str x8, [sp]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg6 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg7
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn17613161905928067802
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn17613161905928067802
.Lscalar_tag5_fn17613161905928067802:
  lsr x8, x8, #1
.Lcompare_tag6_fn17613161905928067802:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn17613161905928067802
  cmp x8, #1
  b.eq .Lcase_ctor9_fn17613161905928067802
  b .Lcase_end7_fn17613161905928067802
.Lcase_ctor8_fn17613161905928067802:
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg9
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag10_fn17613161905928067802
  ldrb w8, [x8, #7]
  b .Lcompare_tag11_fn17613161905928067802
.Lscalar_tag10_fn17613161905928067802:
  lsr x8, x8, #1
.Lcompare_tag11_fn17613161905928067802:
  cmp x8, #0
  b.eq .Lcase_ctor13_fn17613161905928067802
  cmp x8, #1
  b.eq .Lcase_ctor14_fn17613161905928067802
  b .Lcase_end12_fn17613161905928067802
.Lcase_ctor13_fn17613161905928067802:
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
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg12
  // store to stack slot 6
  str x8, [sp, #48]
  // return
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn17613161905928067802
.Lcase_ctor14_fn17613161905928067802:
  // return
  // load spilled vreg9 from stack slot 3
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
  b .Lcase_end12_fn17613161905928067802
.Lcase_end12_fn17613161905928067802:
  b .Lcase_end7_fn17613161905928067802
.Lcase_ctor9_fn17613161905928067802:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn17613161905928067802
.Lcase_end7_fn17613161905928067802:
  b .Lcase_end2_fn17613161905928067802
.Lcase_ctor4_fn17613161905928067802:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg13
  // store to stack slot 8
  strb w8, [sp, #64]
  // load spilled vreg13 from stack slot 8
  ldrb w8, [sp, #64]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor16_fn17613161905928067802
  cmp x8, #1
  b.eq .Lcase_ctor17_fn17613161905928067802
  b .Lcase_end15_fn17613161905928067802
.Lcase_ctor16_fn17613161905928067802:
  // return
  mov x0, x20
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn17613161905928067802
.Lcase_ctor17_fn17613161905928067802:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg14
  // store to stack slot 10
  str x8, [sp, #80]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg15
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
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
  b .Lcase_end15_fn17613161905928067802
.Lcase_end15_fn17613161905928067802:
  b .Lcase_end2_fn17613161905928067802
.Lcase_end2_fn17613161905928067802:

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
.Lfn_start_testCase._closed_19:
  // string literal: === Test Case ===
  adrp x0, .Lstrptr_12046409857428060185_0@PAGE
  ldr x0, [x0, .Lstrptr_12046409857428060185_0@PAGEOFF]
  // DEBUG: str='=== Test Case ===' byteSize=17 charCount=17
  mov x1, #17
  mov x2, #17
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
.Lfn_start_testCase._closed_18:
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x27, #1
  // load global constant _l_testCase___closed__13
  adrp x26, _l_testCase___closed__13@PAGE
  ldr x26, [x26, _l_testCase___closed__13@PAGEOFF]
  // ctor Lean.IR.IRType.tagged (tag=12, objs=0, scalar=0)
  mov x25, #25
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
.Lfn_start_testCase._closed_17:
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
.Lfn_start_testCase._closed_16:
  // ctor Lean.IR.IRType.tagged (tag=12, objs=0, scalar=0)
  mov x27, #25
  mov x22, #0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // ctor Lean.IR.Param.mk (tag=0, objs=2, scalar=1)
  mov x0, #0
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  str x22, [x23, #16]
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
.Lfn_start_testCase._closed_15:
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
.Lfn_start_testCase._closed_14:
  // string literal: notBool
  adrp x0, .Lstrptr_18144924362114520358_0@PAGE
  ldr x0, [x0, .Lstrptr_18144924362114520358_0@PAGEOFF]
  // DEBUG: str='notBool' byteSize=7 charCount=7
  mov x1, #7
  mov x2, #7
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
.Lfn_start_testCase._closed_13:
  // load global constant _l_testCase___closed__12
  adrp x27, _l_testCase___closed__12@PAGE
  ldr x27, [x27, _l_testCase___closed__12@PAGEOFF]
  // ctor Lean.IR.IRType.tagged (tag=12, objs=0, scalar=0)
  mov x26, #25
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
.Lfn_start_testCase._closed_12:
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
.Lfn_start_testCase._closed_11:
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
.Lfn_start_testCase._closed_10:
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
.Lfn_start_testCase._closed_9:
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
.Lfn_start_testCase._closed_8:
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
.Lfn_start_testCase._closed_7:
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
.Lfn_start_testCase._closed_6:
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
.Lfn_start_testCase._closed_5:
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
.Lfn_start_testCase._closed_4:
  // string literal: false
  adrp x0, .Lstrptr_16247073826748057022_0@PAGE
  ldr x0, [x0, .Lstrptr_16247073826748057022_0@PAGEOFF]
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
.Lfn_start_testCase._closed_3:
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
.Lfn_start_testCase._closed_2:
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
.Lfn_start_testCase._closed_1:
  // string literal: true
  adrp x0, .Lstrptr_13793947166757847327_0@PAGE
  ldr x0, [x0, .Lstrptr_13793947166757847327_0@PAGEOFF]
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
.Lfn_start_testCase._closed_0:
  // string literal: Bool
  adrp x0, .Lstrptr_14744183132251809527_0@PAGE
  ldr x0, [x0, .Lstrptr_14744183132251809527_0@PAGEOFF]
  // DEBUG: str='Bool' byteSize=4 charCount=4
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
  sub sp, sp, #112
  // Stack frame: 112 bytes (13 spilled vars)
.Lfn_start_testProj:
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
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn6483817805893696951
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn6483817805893696951
.Lscalar_tag0_fn6483817805893696951:
  lsr x8, x20, #1
.Lcompare_tag1_fn6483817805893696951:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn6483817805893696951
  cmp x8, #1
  b.eq .Lcase_ctor4_fn6483817805893696951
  b .Lcase_end2_fn6483817805893696951
.Lcase_ctor3_fn6483817805893696951:
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
  adrp x8, _l_testProj___closed__6@PAGE
  ldr x8, [x8, _l_testProj___closed__6@PAGEOFF]
  // store result to spilled vreg6
  // store to stack slot 0
  str x8, [sp]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg6 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg7
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn6483817805893696951
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn6483817805893696951
.Lscalar_tag5_fn6483817805893696951:
  lsr x8, x8, #1
.Lcompare_tag6_fn6483817805893696951:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn6483817805893696951
  cmp x8, #1
  b.eq .Lcase_ctor9_fn6483817805893696951
  b .Lcase_end7_fn6483817805893696951
.Lcase_ctor8_fn6483817805893696951:
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg9
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag10_fn6483817805893696951
  ldrb w8, [x8, #7]
  b .Lcompare_tag11_fn6483817805893696951
.Lscalar_tag10_fn6483817805893696951:
  lsr x8, x8, #1
.Lcompare_tag11_fn6483817805893696951:
  cmp x8, #0
  b.eq .Lcase_ctor13_fn6483817805893696951
  cmp x8, #1
  b.eq .Lcase_ctor14_fn6483817805893696951
  b .Lcase_end12_fn6483817805893696951
.Lcase_ctor13_fn6483817805893696951:
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
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg12
  // store to stack slot 6
  str x8, [sp, #48]
  // return
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn6483817805893696951
.Lcase_ctor14_fn6483817805893696951:
  // return
  // load spilled vreg9 from stack slot 3
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
  b .Lcase_end12_fn6483817805893696951
.Lcase_end12_fn6483817805893696951:
  b .Lcase_end7_fn6483817805893696951
.Lcase_ctor9_fn6483817805893696951:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn6483817805893696951
.Lcase_end7_fn6483817805893696951:
  b .Lcase_end2_fn6483817805893696951
.Lcase_ctor4_fn6483817805893696951:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg13
  // store to stack slot 8
  strb w8, [sp, #64]
  // load spilled vreg13 from stack slot 8
  ldrb w8, [sp, #64]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor16_fn6483817805893696951
  cmp x8, #1
  b.eq .Lcase_ctor17_fn6483817805893696951
  b .Lcase_end15_fn6483817805893696951
.Lcase_ctor16_fn6483817805893696951:
  // return
  mov x0, x20
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn6483817805893696951
.Lcase_ctor17_fn6483817805893696951:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg14
  // store to stack slot 10
  str x8, [sp, #80]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg15
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
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
  b .Lcase_end15_fn6483817805893696951
.Lcase_end15_fn6483817805893696951:
  b .Lcase_end2_fn6483817805893696951
.Lcase_end2_fn6483817805893696951:

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
.Lfn_start_testProj._closed_6:
  // string literal: === Test Projection ===
  adrp x0, .Lstrptr_1042949959667115582_0@PAGE
  ldr x0, [x0, .Lstrptr_1042949959667115582_0@PAGEOFF]
  // DEBUG: str='=== Test Projection ===' byteSize=23 charCount=23
  mov x1, #23
  mov x2, #23
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
.Lfn_start_testProj._closed_5:
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x27, #1
  // load global constant _l_testProj___closed__2
  adrp x26, _l_testProj___closed__2@PAGE
  ldr x26, [x26, _l_testProj___closed__2@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x25, #15
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
.Lfn_start_testProj._closed_4:
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
.Lfn_start_testProj._closed_3:
  // string literal: fst
  adrp x0, .Lstrptr_4476971352567330204_0@PAGE
  ldr x0, [x0, .Lstrptr_4476971352567330204_0@PAGEOFF]
  // DEBUG: str='fst' byteSize=3 charCount=3
  mov x1, #3
  mov x2, #3
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
.Lfn_start_testProj._closed_2:
  // load global constant _l_testProj___closed__1
  adrp x27, _l_testProj___closed__1@PAGE
  ldr x27, [x27, _l_testProj___closed__1@PAGEOFF]
  // load global constant _l_testProj___closed__0
  adrp x26, _l_testProj___closed__0@PAGE
  ldr x26, [x26, _l_testProj___closed__0@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x25, #15
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
.Lfn_start_testProj._closed_1:
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
.Lfn_start_testProj._closed_0:
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
  sub sp, sp, #112
  // Stack frame: 112 bytes (13 spilled vars)
.Lfn_start_testCtor:
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
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn11028337522619079292
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn11028337522619079292
.Lscalar_tag0_fn11028337522619079292:
  lsr x8, x20, #1
.Lcompare_tag1_fn11028337522619079292:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn11028337522619079292
  cmp x8, #1
  b.eq .Lcase_ctor4_fn11028337522619079292
  b .Lcase_end2_fn11028337522619079292
.Lcase_ctor3_fn11028337522619079292:
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
  adrp x8, _l_testCtor___closed__8@PAGE
  ldr x8, [x8, _l_testCtor___closed__8@PAGEOFF]
  // store result to spilled vreg6
  // store to stack slot 0
  str x8, [sp]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg6 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg7
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn11028337522619079292
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn11028337522619079292
.Lscalar_tag5_fn11028337522619079292:
  lsr x8, x8, #1
.Lcompare_tag6_fn11028337522619079292:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn11028337522619079292
  cmp x8, #1
  b.eq .Lcase_ctor9_fn11028337522619079292
  b .Lcase_end7_fn11028337522619079292
.Lcase_ctor8_fn11028337522619079292:
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg9
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag10_fn11028337522619079292
  ldrb w8, [x8, #7]
  b .Lcompare_tag11_fn11028337522619079292
.Lscalar_tag10_fn11028337522619079292:
  lsr x8, x8, #1
.Lcompare_tag11_fn11028337522619079292:
  cmp x8, #0
  b.eq .Lcase_ctor13_fn11028337522619079292
  cmp x8, #1
  b.eq .Lcase_ctor14_fn11028337522619079292
  b .Lcase_end12_fn11028337522619079292
.Lcase_ctor13_fn11028337522619079292:
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
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg12
  // store to stack slot 6
  str x8, [sp, #48]
  // return
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn11028337522619079292
.Lcase_ctor14_fn11028337522619079292:
  // return
  // load spilled vreg9 from stack slot 3
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
  b .Lcase_end12_fn11028337522619079292
.Lcase_end12_fn11028337522619079292:
  b .Lcase_end7_fn11028337522619079292
.Lcase_ctor9_fn11028337522619079292:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn11028337522619079292
.Lcase_end7_fn11028337522619079292:
  b .Lcase_end2_fn11028337522619079292
.Lcase_ctor4_fn11028337522619079292:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg13
  // store to stack slot 8
  strb w8, [sp, #64]
  // load spilled vreg13 from stack slot 8
  ldrb w8, [sp, #64]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor16_fn11028337522619079292
  cmp x8, #1
  b.eq .Lcase_ctor17_fn11028337522619079292
  b .Lcase_end15_fn11028337522619079292
.Lcase_ctor16_fn11028337522619079292:
  // return
  mov x0, x20
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn11028337522619079292
.Lcase_ctor17_fn11028337522619079292:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg14
  // store to stack slot 10
  str x8, [sp, #80]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg15
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
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
  b .Lcase_end15_fn11028337522619079292
.Lcase_end15_fn11028337522619079292:
  b .Lcase_end2_fn11028337522619079292
.Lcase_end2_fn11028337522619079292:

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
.Lfn_start_testCtor._closed_8:
  // string literal: === Test Constructor ===
  adrp x0, .Lstrptr_6347186555709408574_0@PAGE
  ldr x0, [x0, .Lstrptr_6347186555709408574_0@PAGEOFF]
  // DEBUG: str='=== Test Constructor ===' byteSize=24 charCount=24
  mov x1, #24
  mov x2, #24
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
.Lfn_start_testCtor._closed_7:
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x27, #1
  // load global constant _l_testCtor___closed__4
  adrp x26, _l_testCtor___closed__4@PAGE
  ldr x26, [x26, _l_testCtor___closed__4@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x25, #15
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
.Lfn_start_testCtor._closed_6:
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
.Lfn_start_testCtor._closed_5:
  // string literal: mkPair
  adrp x0, .Lstrptr_8270244870511563114_0@PAGE
  ldr x0, [x0, .Lstrptr_8270244870511563114_0@PAGEOFF]
  // DEBUG: str='mkPair' byteSize=6 charCount=6
  mov x1, #6
  mov x2, #6
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
.Lfn_start_testCtor._closed_4:
  // load global constant _l_testAdd___closed__10
  adrp x27, _l_testAdd___closed__10@PAGE
  ldr x27, [x27, _l_testAdd___closed__10@PAGEOFF]
  // load global constant _l_testCtor___closed__3
  adrp x26, _l_testCtor___closed__3@PAGE
  ldr x26, [x26, _l_testCtor___closed__3@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x25, #15
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
.Lfn_start_testCtor._closed_3:
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
.Lfn_start_testCtor._closed_2:
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
.Lfn_start_testCtor._closed_1:
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
.Lfn_start_testCtor._closed_0:
  // string literal: Pair
  adrp x0, .Lstrptr_6616822843807774529_0@PAGE
  ldr x0, [x0, .Lstrptr_6616822843807774529_0@PAGEOFF]
  // DEBUG: str='Pair' byteSize=4 charCount=4
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
  sub sp, sp, #112
  // Stack frame: 112 bytes (13 spilled vars)
.Lfn_start_testReturn:
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
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn10389973045596875388
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn10389973045596875388
.Lscalar_tag0_fn10389973045596875388:
  lsr x8, x20, #1
.Lcompare_tag1_fn10389973045596875388:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn10389973045596875388
  cmp x8, #1
  b.eq .Lcase_ctor4_fn10389973045596875388
  b .Lcase_end2_fn10389973045596875388
.Lcase_ctor3_fn10389973045596875388:
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
  adrp x8, _l_testReturn___closed__6@PAGE
  ldr x8, [x8, _l_testReturn___closed__6@PAGEOFF]
  // store result to spilled vreg6
  // store to stack slot 0
  str x8, [sp]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg6 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg7
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn10389973045596875388
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn10389973045596875388
.Lscalar_tag5_fn10389973045596875388:
  lsr x8, x8, #1
.Lcompare_tag6_fn10389973045596875388:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn10389973045596875388
  cmp x8, #1
  b.eq .Lcase_ctor9_fn10389973045596875388
  b .Lcase_end7_fn10389973045596875388
.Lcase_ctor8_fn10389973045596875388:
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg9
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag10_fn10389973045596875388
  ldrb w8, [x8, #7]
  b .Lcompare_tag11_fn10389973045596875388
.Lscalar_tag10_fn10389973045596875388:
  lsr x8, x8, #1
.Lcompare_tag11_fn10389973045596875388:
  cmp x8, #0
  b.eq .Lcase_ctor13_fn10389973045596875388
  cmp x8, #1
  b.eq .Lcase_ctor14_fn10389973045596875388
  b .Lcase_end12_fn10389973045596875388
.Lcase_ctor13_fn10389973045596875388:
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
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg12
  // store to stack slot 6
  str x8, [sp, #48]
  // return
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn10389973045596875388
.Lcase_ctor14_fn10389973045596875388:
  // return
  // load spilled vreg9 from stack slot 3
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
  b .Lcase_end12_fn10389973045596875388
.Lcase_end12_fn10389973045596875388:
  b .Lcase_end7_fn10389973045596875388
.Lcase_ctor9_fn10389973045596875388:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn10389973045596875388
.Lcase_end7_fn10389973045596875388:
  b .Lcase_end2_fn10389973045596875388
.Lcase_ctor4_fn10389973045596875388:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg13
  // store to stack slot 8
  strb w8, [sp, #64]
  // load spilled vreg13 from stack slot 8
  ldrb w8, [sp, #64]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor16_fn10389973045596875388
  cmp x8, #1
  b.eq .Lcase_ctor17_fn10389973045596875388
  b .Lcase_end15_fn10389973045596875388
.Lcase_ctor16_fn10389973045596875388:
  // return
  mov x0, x20
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn10389973045596875388
.Lcase_ctor17_fn10389973045596875388:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg14
  // store to stack slot 10
  str x8, [sp, #80]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg15
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
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
  b .Lcase_end15_fn10389973045596875388
.Lcase_end15_fn10389973045596875388:
  b .Lcase_end2_fn10389973045596875388
.Lcase_end2_fn10389973045596875388:

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
.Lfn_start_testReturn._closed_6:
  // string literal: === Test Return ===
  adrp x0, .Lstrptr_7766827055725990545_0@PAGE
  ldr x0, [x0, .Lstrptr_7766827055725990545_0@PAGEOFF]
  // DEBUG: str='=== Test Return ===' byteSize=19 charCount=19
  mov x1, #19
  mov x2, #19
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
.Lfn_start_testReturn._closed_5:
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x27, #1
  // load global constant _l_testReturn___closed__0
  adrp x26, _l_testReturn___closed__0@PAGE
  ldr x26, [x26, _l_testReturn___closed__0@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x25, #15
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
.Lfn_start_testReturn._closed_4:
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
.Lfn_start_testReturn._closed_3:
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
.Lfn_start_testReturn._closed_2:
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
.Lfn_start_testReturn._closed_1:
  // string literal: testId
  adrp x0, .Lstrptr_3614892389610432297_0@PAGE
  ldr x0, [x0, .Lstrptr_3614892389610432297_0@PAGEOFF]
  // DEBUG: str='testId' byteSize=6 charCount=6
  mov x1, #6
  mov x2, #6
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
.Lfn_start_testReturn._closed_0:
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
  sub sp, sp, #112
  // Stack frame: 112 bytes (13 spilled vars)
.Lfn_start_testAdd:
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
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn15615137417596984274
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn15615137417596984274
.Lscalar_tag0_fn15615137417596984274:
  lsr x8, x20, #1
.Lcompare_tag1_fn15615137417596984274:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn15615137417596984274
  cmp x8, #1
  b.eq .Lcase_ctor4_fn15615137417596984274
  b .Lcase_end2_fn15615137417596984274
.Lcase_ctor3_fn15615137417596984274:
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
  adrp x8, _l_testAdd___closed__19@PAGE
  ldr x8, [x8, _l_testAdd___closed__19@PAGEOFF]
  // store result to spilled vreg6
  // store to stack slot 0
  str x8, [sp]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg6 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, x21
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg7
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn15615137417596984274
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn15615137417596984274
.Lscalar_tag5_fn15615137417596984274:
  lsr x8, x8, #1
.Lcompare_tag6_fn15615137417596984274:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn15615137417596984274
  cmp x8, #1
  b.eq .Lcase_ctor9_fn15615137417596984274
  b .Lcase_end7_fn15615137417596984274
.Lcase_ctor8_fn15615137417596984274:
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  mov x0, x23
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg9
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag10_fn15615137417596984274
  ldrb w8, [x8, #7]
  b .Lcompare_tag11_fn15615137417596984274
.Lscalar_tag10_fn15615137417596984274:
  lsr x8, x8, #1
.Lcompare_tag11_fn15615137417596984274:
  cmp x8, #0
  b.eq .Lcase_ctor13_fn15615137417596984274
  cmp x8, #1
  b.eq .Lcase_ctor14_fn15615137417596984274
  b .Lcase_end12_fn15615137417596984274
.Lcase_ctor13_fn15615137417596984274:
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
  // load global constant _l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  ldr x8, [x8, _l_testAdd___closed__20@PAGEOFF]
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // call IO.println._at_._private.Lean.Language.Basic.0.Lean.Language.reportMessages.spec_3 with 2 runtime args
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
  mov x8, x0
  // store result to spilled vreg12
  // store to stack slot 6
  str x8, [sp, #48]
  // return
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn15615137417596984274
.Lcase_ctor14_fn15615137417596984274:
  // return
  // load spilled vreg9 from stack slot 3
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
  b .Lcase_end12_fn15615137417596984274
.Lcase_end12_fn15615137417596984274:
  b .Lcase_end7_fn15615137417596984274
.Lcase_ctor9_fn15615137417596984274:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn15615137417596984274
.Lcase_end7_fn15615137417596984274:
  b .Lcase_end2_fn15615137417596984274
.Lcase_ctor4_fn15615137417596984274:
  // isShared
  ldr x8, [x20]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg13
  // store to stack slot 8
  strb w8, [sp, #64]
  // load spilled vreg13 from stack slot 8
  ldrb w8, [sp, #64]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor16_fn15615137417596984274
  cmp x8, #1
  b.eq .Lcase_ctor17_fn15615137417596984274
  b .Lcase_end15_fn15615137417596984274
.Lcase_ctor16_fn15615137417596984274:
  // return
  mov x0, x20
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn15615137417596984274
.Lcase_ctor17_fn15615137417596984274:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg14
  // store to stack slot 10
  str x8, [sp, #80]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg15
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg14 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg15 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
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
  b .Lcase_end15_fn15615137417596984274
.Lcase_end15_fn15615137417596984274:
  b .Lcase_end2_fn15615137417596984274
.Lcase_end2_fn15615137417596984274:

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
.Lfn_start_testAdd._closed_20:
  // string literal: 
  adrp x0, .Lstrptr_4983599710484107604_0@PAGE
  ldr x0, [x0, .Lstrptr_4983599710484107604_0@PAGEOFF]
  // DEBUG: str='' byteSize=0 charCount=0
  mov x1, #0
  mov x2, #0
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
.Lfn_start_testAdd._closed_19:
  // string literal: === Test Add ===
  adrp x0, .Lstrptr_18092777064557752257_0@PAGE
  ldr x0, [x0, .Lstrptr_18092777064557752257_0@PAGEOFF]
  // DEBUG: str='=== Test Add ===' byteSize=16 charCount=16
  mov x1, #16
  mov x2, #16
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
.Lfn_start_testAdd._closed_18:
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x27, #1
  // load global constant _l_testAdd___closed__11
  adrp x26, _l_testAdd___closed__11@PAGE
  ldr x26, [x26, _l_testAdd___closed__11@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x25, #15
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
.Lfn_start_testAdd._closed_17:
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
.Lfn_start_testAdd._closed_16:
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
.Lfn_start_testAdd._closed_15:
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x27, #15
  mov x22, #0
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // ctor Lean.IR.Param.mk (tag=0, objs=2, scalar=1)
  mov x0, #0
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  str x22, [x23, #16]
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
.Lfn_start_testAdd._closed_14:
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x27, #15
  mov x22, #0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // ctor Lean.IR.Param.mk (tag=0, objs=2, scalar=1)
  mov x0, #0
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_ctor
  mov x23, x0
  mov x0, x23
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x23
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  str x22, [x23, #16]
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
.Lfn_start_testAdd._closed_13:
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
.Lfn_start_testAdd._closed_12:
  // string literal: testAdd
  adrp x0, .Lstrptr_14014008979681876846_0@PAGE
  ldr x0, [x0, .Lstrptr_14014008979681876846_0@PAGEOFF]
  // DEBUG: str='testAdd' byteSize=7 charCount=7
  mov x1, #7
  mov x2, #7
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
.Lfn_start_testAdd._closed_11:
  // load global constant _l_testAdd___closed__10
  adrp x27, _l_testAdd___closed__10@PAGE
  ldr x27, [x27, _l_testAdd___closed__10@PAGEOFF]
  // load global constant _l_testAdd___closed__8
  adrp x26, _l_testAdd___closed__8@PAGE
  ldr x26, [x26, _l_testAdd___closed__8@PAGEOFF]
  // ctor Lean.IR.IRType.object (tag=7, objs=0, scalar=0)
  mov x25, #15
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
.Lfn_start_testAdd._closed_10:
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
.Lfn_start_testAdd._closed_9:
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
.Lfn_start_testAdd._closed_8:
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
.Lfn_start_testAdd._closed_7:
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
.Lfn_start_testAdd._closed_6:
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
.Lfn_start_testAdd._closed_5:
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
.Lfn_start_testAdd._closed_4:
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
.Lfn_start_testAdd._closed_3:
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
.Lfn_start_testAdd._closed_2:
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
.Lfn_start_testAdd._closed_1:
  // string literal: add
  adrp x0, .Lstrptr_17552210373244084935_0@PAGE
  ldr x0, [x0, .Lstrptr_17552210373244084935_0@PAGEOFF]
  // DEBUG: str='add' byteSize=3 charCount=3
  mov x1, #3
  mov x2, #3
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
.Lfn_start_testAdd._closed_0:
  // string literal: Nat
  adrp x0, .Lstrptr_16290022710711059791_0@PAGE
  ldr x0, [x0, .Lstrptr_16290022710711059791_0@PAGEOFF]
  // DEBUG: str='Nat' byteSize=3 charCount=3
  mov x1, #3
  mov x2, #3
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
  sub sp, sp, #80
  // Stack frame: 80 bytes (9 spilled vars)
.Lfn_start_emitAsm:
  mov x19, x0
  mov x20, x1
  mov x27, #0
  // call Lean.mkEmptyEnvironment with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _lean_mk_empty_environment
  mov x25, x0
  // case
  // runtime scalar check
  tst x25, #1
  b.ne .Lscalar_tag0_fn3001846037551631654
  ldrb w8, [x25, #7]
  b .Lcompare_tag1_fn3001846037551631654
.Lscalar_tag0_fn3001846037551631654:
  lsr x8, x25, #1
.Lcompare_tag1_fn3001846037551631654:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn3001846037551631654
  cmp x8, #1
  b.eq .Lcase_ctor4_fn3001846037551631654
  b .Lcase_end2_fn3001846037551631654
.Lcase_ctor3_fn3001846037551631654:
  // isShared
  ldr x23, [x25]
  cmp x23, #1
  mov x8, #1
  csel x23, x8, xzr, gt
  // case
  mov x8, x23
  cmp x8, #0
  b.eq .Lcase_ctor6_fn3001846037551631654
  cmp x8, #1
  b.eq .Lcase_ctor7_fn3001846037551631654
  b .Lcase_end5_fn3001846037551631654
.Lcase_ctor6_fn3001846037551631654:
  // proj field 0
  ldr x22, [x25, #8]
  // call Lean.Compiler.Backend.EmitARM64.emitDecl with 2 runtime args
  mov x0, x22
  mov x1, x19
  bl _l_Lean_Compiler_Backend_EmitARM64_emitDecl
  mov x21, x0
  str x21, [x25]
  b .Lcase_end5_fn3001846037551631654
.Lcase_ctor7_fn3001846037551631654:
  // proj field 0
  ldr x8, [x25, #8]
  // store result to spilled vreg8
  // store to stack slot 1
  str x8, [sp, #8]
  // proj field 1
  ldr x8, [x25, #16]
  // store result to spilled vreg9
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  // load spilled vreg9 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg8 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x25
  bl _lean_dec
  // call Lean.Compiler.Backend.EmitARM64.emitDecl with 2 runtime args
  // load spilled vreg8 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  mov x1, x19
  bl _l_Lean_Compiler_Backend_EmitARM64_emitDecl
  mov x8, x0
  // store result to spilled vreg10
  // store to stack slot 3
  str x8, [sp, #24]
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg11 into stack slot 4
  str x0, [sp, #32]
  // load spilled vreg10 from stack slot 3
  ldr x8, [sp, #24]
  ldr x0, [sp, #32]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg9 from stack slot 2
  ldr x8, [sp, #16]
  ldr x0, [sp, #32]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  // load spilled vreg11 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end5_fn3001846037551631654
.Lcase_end5_fn3001846037551631654:
  b .Lcase_end2_fn3001846037551631654
.Lcase_ctor4_fn3001846037551631654:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // isShared
  ldr x8, [x25]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg12
  // store to stack slot 5
  strb w8, [sp, #40]
  // load spilled vreg12 from stack slot 5
  ldrb w8, [sp, #40]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor9_fn3001846037551631654
  cmp x8, #1
  b.eq .Lcase_ctor10_fn3001846037551631654
  b .Lcase_end8_fn3001846037551631654
.Lcase_ctor9_fn3001846037551631654:
  // return
  mov x0, x25
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end8_fn3001846037551631654
.Lcase_ctor10_fn3001846037551631654:
  // proj field 0
  ldr x8, [x25, #8]
  // store result to spilled vreg13
  // store to stack slot 6
  str x8, [sp, #48]
  // proj field 1
  ldr x8, [x25, #16]
  // store result to spilled vreg14
  // store to stack slot 7
  str x8, [sp, #56]
  // inc 1
  // load spilled vreg14 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg13 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x25
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  // load spilled vreg13 from stack slot 6
  ldr x8, [sp, #48]
  // load spilled vreg14 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg13 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg14 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end8_fn3001846037551631654
.Lcase_end8_fn3001846037551631654:
  b .Lcase_end2_fn3001846037551631654
.Lcase_end2_fn3001846037551631654:

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

  // Initialize closed constants and 0-param defs
  // Initialize _l_testAdd___closed__0
  bl __init_l_testAdd___closed__0
  adrp x8, _l_testAdd___closed__0@PAGE
  add x8, x8, _l_testAdd___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__0@PAGE
  add x8, x8, _l_testAdd___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__1
  bl __init_l_testAdd___closed__1
  adrp x8, _l_testAdd___closed__1@PAGE
  add x8, x8, _l_testAdd___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__1@PAGE
  add x8, x8, _l_testAdd___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__2
  bl __init_l_testAdd___closed__2
  adrp x8, _l_testAdd___closed__2@PAGE
  add x8, x8, _l_testAdd___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__2@PAGE
  add x8, x8, _l_testAdd___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__3
  bl __init_l_testAdd___closed__3
  adrp x8, _l_testAdd___closed__3@PAGE
  add x8, x8, _l_testAdd___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__3@PAGE
  add x8, x8, _l_testAdd___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__4
  bl __init_l_testAdd___closed__4
  adrp x8, _l_testAdd___closed__4@PAGE
  add x8, x8, _l_testAdd___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__4@PAGE
  add x8, x8, _l_testAdd___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__5
  bl __init_l_testAdd___closed__5
  adrp x8, _l_testAdd___closed__5@PAGE
  add x8, x8, _l_testAdd___closed__5@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__5@PAGE
  add x8, x8, _l_testAdd___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__6
  bl __init_l_testAdd___closed__6
  adrp x8, _l_testAdd___closed__6@PAGE
  add x8, x8, _l_testAdd___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__6@PAGE
  add x8, x8, _l_testAdd___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__7
  bl __init_l_testAdd___closed__7
  adrp x8, _l_testAdd___closed__7@PAGE
  add x8, x8, _l_testAdd___closed__7@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__7@PAGE
  add x8, x8, _l_testAdd___closed__7@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__8
  bl __init_l_testAdd___closed__8
  adrp x8, _l_testAdd___closed__8@PAGE
  add x8, x8, _l_testAdd___closed__8@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__8@PAGE
  add x8, x8, _l_testAdd___closed__8@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__9
  bl __init_l_testAdd___closed__9
  adrp x8, _l_testAdd___closed__9@PAGE
  add x8, x8, _l_testAdd___closed__9@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__9@PAGE
  add x8, x8, _l_testAdd___closed__9@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__10
  bl __init_l_testAdd___closed__10
  adrp x8, _l_testAdd___closed__10@PAGE
  add x8, x8, _l_testAdd___closed__10@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__10@PAGE
  add x8, x8, _l_testAdd___closed__10@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__11
  bl __init_l_testAdd___closed__11
  adrp x8, _l_testAdd___closed__11@PAGE
  add x8, x8, _l_testAdd___closed__11@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__11@PAGE
  add x8, x8, _l_testAdd___closed__11@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__12
  bl __init_l_testAdd___closed__12
  adrp x8, _l_testAdd___closed__12@PAGE
  add x8, x8, _l_testAdd___closed__12@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__12@PAGE
  add x8, x8, _l_testAdd___closed__12@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__13
  bl __init_l_testAdd___closed__13
  adrp x8, _l_testAdd___closed__13@PAGE
  add x8, x8, _l_testAdd___closed__13@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__13@PAGE
  add x8, x8, _l_testAdd___closed__13@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__14
  bl __init_l_testAdd___closed__14
  adrp x8, _l_testAdd___closed__14@PAGE
  add x8, x8, _l_testAdd___closed__14@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__14@PAGE
  add x8, x8, _l_testAdd___closed__14@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__15
  bl __init_l_testAdd___closed__15
  adrp x8, _l_testAdd___closed__15@PAGE
  add x8, x8, _l_testAdd___closed__15@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__15@PAGE
  add x8, x8, _l_testAdd___closed__15@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__16
  bl __init_l_testAdd___closed__16
  adrp x8, _l_testAdd___closed__16@PAGE
  add x8, x8, _l_testAdd___closed__16@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__16@PAGE
  add x8, x8, _l_testAdd___closed__16@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__17
  bl __init_l_testAdd___closed__17
  adrp x8, _l_testAdd___closed__17@PAGE
  add x8, x8, _l_testAdd___closed__17@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__17@PAGE
  add x8, x8, _l_testAdd___closed__17@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__18
  bl __init_l_testAdd___closed__18
  adrp x8, _l_testAdd___closed__18@PAGE
  add x8, x8, _l_testAdd___closed__18@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__18@PAGE
  add x8, x8, _l_testAdd___closed__18@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__19
  bl __init_l_testAdd___closed__19
  adrp x8, _l_testAdd___closed__19@PAGE
  add x8, x8, _l_testAdd___closed__19@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__19@PAGE
  add x8, x8, _l_testAdd___closed__19@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testAdd___closed__20
  bl __init_l_testAdd___closed__20
  adrp x8, _l_testAdd___closed__20@PAGE
  add x8, x8, _l_testAdd___closed__20@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testAdd___closed__20@PAGE
  add x8, x8, _l_testAdd___closed__20@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testReturn___closed__0
  bl __init_l_testReturn___closed__0
  adrp x8, _l_testReturn___closed__0@PAGE
  add x8, x8, _l_testReturn___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testReturn___closed__0@PAGE
  add x8, x8, _l_testReturn___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testReturn___closed__1
  bl __init_l_testReturn___closed__1
  adrp x8, _l_testReturn___closed__1@PAGE
  add x8, x8, _l_testReturn___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testReturn___closed__1@PAGE
  add x8, x8, _l_testReturn___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testReturn___closed__2
  bl __init_l_testReturn___closed__2
  adrp x8, _l_testReturn___closed__2@PAGE
  add x8, x8, _l_testReturn___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testReturn___closed__2@PAGE
  add x8, x8, _l_testReturn___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testReturn___closed__3
  bl __init_l_testReturn___closed__3
  adrp x8, _l_testReturn___closed__3@PAGE
  add x8, x8, _l_testReturn___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testReturn___closed__3@PAGE
  add x8, x8, _l_testReturn___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testReturn___closed__4
  bl __init_l_testReturn___closed__4
  adrp x8, _l_testReturn___closed__4@PAGE
  add x8, x8, _l_testReturn___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testReturn___closed__4@PAGE
  add x8, x8, _l_testReturn___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testReturn___closed__5
  bl __init_l_testReturn___closed__5
  adrp x8, _l_testReturn___closed__5@PAGE
  add x8, x8, _l_testReturn___closed__5@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testReturn___closed__5@PAGE
  add x8, x8, _l_testReturn___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testReturn___closed__6
  bl __init_l_testReturn___closed__6
  adrp x8, _l_testReturn___closed__6@PAGE
  add x8, x8, _l_testReturn___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testReturn___closed__6@PAGE
  add x8, x8, _l_testReturn___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCtor___closed__0
  bl __init_l_testCtor___closed__0
  adrp x8, _l_testCtor___closed__0@PAGE
  add x8, x8, _l_testCtor___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCtor___closed__0@PAGE
  add x8, x8, _l_testCtor___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCtor___closed__1
  bl __init_l_testCtor___closed__1
  adrp x8, _l_testCtor___closed__1@PAGE
  add x8, x8, _l_testCtor___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCtor___closed__1@PAGE
  add x8, x8, _l_testCtor___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCtor___closed__2
  bl __init_l_testCtor___closed__2
  adrp x8, _l_testCtor___closed__2@PAGE
  add x8, x8, _l_testCtor___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCtor___closed__2@PAGE
  add x8, x8, _l_testCtor___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCtor___closed__3
  bl __init_l_testCtor___closed__3
  adrp x8, _l_testCtor___closed__3@PAGE
  add x8, x8, _l_testCtor___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCtor___closed__3@PAGE
  add x8, x8, _l_testCtor___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCtor___closed__4
  bl __init_l_testCtor___closed__4
  adrp x8, _l_testCtor___closed__4@PAGE
  add x8, x8, _l_testCtor___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCtor___closed__4@PAGE
  add x8, x8, _l_testCtor___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCtor___closed__5
  bl __init_l_testCtor___closed__5
  adrp x8, _l_testCtor___closed__5@PAGE
  add x8, x8, _l_testCtor___closed__5@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCtor___closed__5@PAGE
  add x8, x8, _l_testCtor___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCtor___closed__6
  bl __init_l_testCtor___closed__6
  adrp x8, _l_testCtor___closed__6@PAGE
  add x8, x8, _l_testCtor___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCtor___closed__6@PAGE
  add x8, x8, _l_testCtor___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCtor___closed__7
  bl __init_l_testCtor___closed__7
  adrp x8, _l_testCtor___closed__7@PAGE
  add x8, x8, _l_testCtor___closed__7@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCtor___closed__7@PAGE
  add x8, x8, _l_testCtor___closed__7@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCtor___closed__8
  bl __init_l_testCtor___closed__8
  adrp x8, _l_testCtor___closed__8@PAGE
  add x8, x8, _l_testCtor___closed__8@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCtor___closed__8@PAGE
  add x8, x8, _l_testCtor___closed__8@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testProj___closed__0
  bl __init_l_testProj___closed__0
  adrp x8, _l_testProj___closed__0@PAGE
  add x8, x8, _l_testProj___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testProj___closed__0@PAGE
  add x8, x8, _l_testProj___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testProj___closed__1
  bl __init_l_testProj___closed__1
  adrp x8, _l_testProj___closed__1@PAGE
  add x8, x8, _l_testProj___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testProj___closed__1@PAGE
  add x8, x8, _l_testProj___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testProj___closed__2
  bl __init_l_testProj___closed__2
  adrp x8, _l_testProj___closed__2@PAGE
  add x8, x8, _l_testProj___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testProj___closed__2@PAGE
  add x8, x8, _l_testProj___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testProj___closed__3
  bl __init_l_testProj___closed__3
  adrp x8, _l_testProj___closed__3@PAGE
  add x8, x8, _l_testProj___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testProj___closed__3@PAGE
  add x8, x8, _l_testProj___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testProj___closed__4
  bl __init_l_testProj___closed__4
  adrp x8, _l_testProj___closed__4@PAGE
  add x8, x8, _l_testProj___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testProj___closed__4@PAGE
  add x8, x8, _l_testProj___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testProj___closed__5
  bl __init_l_testProj___closed__5
  adrp x8, _l_testProj___closed__5@PAGE
  add x8, x8, _l_testProj___closed__5@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testProj___closed__5@PAGE
  add x8, x8, _l_testProj___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testProj___closed__6
  bl __init_l_testProj___closed__6
  adrp x8, _l_testProj___closed__6@PAGE
  add x8, x8, _l_testProj___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testProj___closed__6@PAGE
  add x8, x8, _l_testProj___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__0
  bl __init_l_testCase___closed__0
  adrp x8, _l_testCase___closed__0@PAGE
  add x8, x8, _l_testCase___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__0@PAGE
  add x8, x8, _l_testCase___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__1
  bl __init_l_testCase___closed__1
  adrp x8, _l_testCase___closed__1@PAGE
  add x8, x8, _l_testCase___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__1@PAGE
  add x8, x8, _l_testCase___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__2
  bl __init_l_testCase___closed__2
  adrp x8, _l_testCase___closed__2@PAGE
  add x8, x8, _l_testCase___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__2@PAGE
  add x8, x8, _l_testCase___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__3
  bl __init_l_testCase___closed__3
  adrp x8, _l_testCase___closed__3@PAGE
  add x8, x8, _l_testCase___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__3@PAGE
  add x8, x8, _l_testCase___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__4
  bl __init_l_testCase___closed__4
  adrp x8, _l_testCase___closed__4@PAGE
  add x8, x8, _l_testCase___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__4@PAGE
  add x8, x8, _l_testCase___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__5
  bl __init_l_testCase___closed__5
  adrp x8, _l_testCase___closed__5@PAGE
  add x8, x8, _l_testCase___closed__5@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__5@PAGE
  add x8, x8, _l_testCase___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__6
  bl __init_l_testCase___closed__6
  adrp x8, _l_testCase___closed__6@PAGE
  add x8, x8, _l_testCase___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__6@PAGE
  add x8, x8, _l_testCase___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__7
  bl __init_l_testCase___closed__7
  adrp x8, _l_testCase___closed__7@PAGE
  add x8, x8, _l_testCase___closed__7@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__7@PAGE
  add x8, x8, _l_testCase___closed__7@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__8
  bl __init_l_testCase___closed__8
  adrp x8, _l_testCase___closed__8@PAGE
  add x8, x8, _l_testCase___closed__8@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__8@PAGE
  add x8, x8, _l_testCase___closed__8@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__9
  bl __init_l_testCase___closed__9
  adrp x8, _l_testCase___closed__9@PAGE
  add x8, x8, _l_testCase___closed__9@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__9@PAGE
  add x8, x8, _l_testCase___closed__9@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__10
  bl __init_l_testCase___closed__10
  adrp x8, _l_testCase___closed__10@PAGE
  add x8, x8, _l_testCase___closed__10@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__10@PAGE
  add x8, x8, _l_testCase___closed__10@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__11
  bl __init_l_testCase___closed__11
  adrp x8, _l_testCase___closed__11@PAGE
  add x8, x8, _l_testCase___closed__11@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__11@PAGE
  add x8, x8, _l_testCase___closed__11@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__12
  bl __init_l_testCase___closed__12
  adrp x8, _l_testCase___closed__12@PAGE
  add x8, x8, _l_testCase___closed__12@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__12@PAGE
  add x8, x8, _l_testCase___closed__12@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__13
  bl __init_l_testCase___closed__13
  adrp x8, _l_testCase___closed__13@PAGE
  add x8, x8, _l_testCase___closed__13@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__13@PAGE
  add x8, x8, _l_testCase___closed__13@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__14
  bl __init_l_testCase___closed__14
  adrp x8, _l_testCase___closed__14@PAGE
  add x8, x8, _l_testCase___closed__14@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__14@PAGE
  add x8, x8, _l_testCase___closed__14@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__15
  bl __init_l_testCase___closed__15
  adrp x8, _l_testCase___closed__15@PAGE
  add x8, x8, _l_testCase___closed__15@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__15@PAGE
  add x8, x8, _l_testCase___closed__15@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__16
  bl __init_l_testCase___closed__16
  adrp x8, _l_testCase___closed__16@PAGE
  add x8, x8, _l_testCase___closed__16@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__16@PAGE
  add x8, x8, _l_testCase___closed__16@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__17
  bl __init_l_testCase___closed__17
  adrp x8, _l_testCase___closed__17@PAGE
  add x8, x8, _l_testCase___closed__17@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__17@PAGE
  add x8, x8, _l_testCase___closed__17@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__18
  bl __init_l_testCase___closed__18
  adrp x8, _l_testCase___closed__18@PAGE
  add x8, x8, _l_testCase___closed__18@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__18@PAGE
  add x8, x8, _l_testCase___closed__18@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testCase___closed__19
  bl __init_l_testCase___closed__19
  adrp x8, _l_testCase___closed__19@PAGE
  add x8, x8, _l_testCase___closed__19@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testCase___closed__19@PAGE
  add x8, x8, _l_testCase___closed__19@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testLit___closed__0
  bl __init_l_testLit___closed__0
  adrp x8, _l_testLit___closed__0@PAGE
  add x8, x8, _l_testLit___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testLit___closed__0@PAGE
  add x8, x8, _l_testLit___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testLit___closed__1
  bl __init_l_testLit___closed__1
  adrp x8, _l_testLit___closed__1@PAGE
  add x8, x8, _l_testLit___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testLit___closed__1@PAGE
  add x8, x8, _l_testLit___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testLit___closed__2
  bl __init_l_testLit___closed__2
  adrp x8, _l_testLit___closed__2@PAGE
  add x8, x8, _l_testLit___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testLit___closed__2@PAGE
  add x8, x8, _l_testLit___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testLit___closed__3
  bl __init_l_testLit___closed__3
  adrp x8, _l_testLit___closed__3@PAGE
  add x8, x8, _l_testLit___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testLit___closed__3@PAGE
  add x8, x8, _l_testLit___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testLit___closed__4
  bl __init_l_testLit___closed__4
  adrp x8, _l_testLit___closed__4@PAGE
  add x8, x8, _l_testLit___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testLit___closed__4@PAGE
  add x8, x8, _l_testLit___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testLit___closed__5
  bl __init_l_testLit___closed__5
  adrp x8, _l_testLit___closed__5@PAGE
  add x8, x8, _l_testLit___closed__5@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testLit___closed__5@PAGE
  add x8, x8, _l_testLit___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testLit___closed__6
  bl __init_l_testLit___closed__6
  adrp x8, _l_testLit___closed__6@PAGE
  add x8, x8, _l_testLit___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testLit___closed__6@PAGE
  add x8, x8, _l_testLit___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testLit___closed__7
  bl __init_l_testLit___closed__7
  adrp x8, _l_testLit___closed__7@PAGE
  add x8, x8, _l_testLit___closed__7@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testLit___closed__7@PAGE
  add x8, x8, _l_testLit___closed__7@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testBox___closed__0
  bl __init_l_testBox___closed__0
  adrp x8, _l_testBox___closed__0@PAGE
  add x8, x8, _l_testBox___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testBox___closed__0@PAGE
  add x8, x8, _l_testBox___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testBox___closed__1
  bl __init_l_testBox___closed__1
  adrp x8, _l_testBox___closed__1@PAGE
  add x8, x8, _l_testBox___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testBox___closed__1@PAGE
  add x8, x8, _l_testBox___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testBox___closed__2
  bl __init_l_testBox___closed__2
  adrp x8, _l_testBox___closed__2@PAGE
  add x8, x8, _l_testBox___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testBox___closed__2@PAGE
  add x8, x8, _l_testBox___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testBox___closed__3
  bl __init_l_testBox___closed__3
  adrp x8, _l_testBox___closed__3@PAGE
  add x8, x8, _l_testBox___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testBox___closed__3@PAGE
  add x8, x8, _l_testBox___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testBox___closed__4
  bl __init_l_testBox___closed__4
  adrp x8, _l_testBox___closed__4@PAGE
  add x8, x8, _l_testBox___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testBox___closed__4@PAGE
  add x8, x8, _l_testBox___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testBox___closed__5
  bl __init_l_testBox___closed__5
  adrp x8, _l_testBox___closed__5@PAGE
  add x8, x8, _l_testBox___closed__5@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testBox___closed__5@PAGE
  add x8, x8, _l_testBox___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testBox___closed__6
  bl __init_l_testBox___closed__6
  adrp x8, _l_testBox___closed__6@PAGE
  add x8, x8, _l_testBox___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testBox___closed__6@PAGE
  add x8, x8, _l_testBox___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_testBox___closed__7
  bl __init_l_testBox___closed__7
  adrp x8, _l_testBox___closed__7@PAGE
  add x8, x8, _l_testBox___closed__7@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_testBox___closed__7@PAGE
  add x8, x8, _l_testBox___closed__7@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

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
