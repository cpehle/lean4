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

  .globl _l_main___redArg___closed__18
_l_main___redArg___closed__18:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__17
_l_main___redArg___closed__17:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__16
_l_main___redArg___closed__16:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__15
_l_main___redArg___closed__15:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__14
_l_main___redArg___closed__14:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__13
_l_main___redArg___closed__13:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__12
_l_main___redArg___closed__12:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__11
_l_main___redArg___closed__11:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__10
_l_main___redArg___closed__10:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__9
_l_main___redArg___closed__9:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__8
_l_main___redArg___closed__8:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__7
_l_main___redArg___closed__7:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__6
_l_main___redArg___closed__6:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__5
_l_main___redArg___closed__5:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__4
_l_main___redArg___closed__4:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__3
_l_main___redArg___closed__3:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__2
_l_main___redArg___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__1
_l_main___redArg___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_main___redArg___closed__0
_l_main___redArg___closed__0:
  .quad 0  // Initialized at startup

  .text

  .globl _l_List_foldl___at___main_spec__2___boxed
  .align 2
_l_List_foldl___at___main_spec__2___boxed:
  // Function: List.foldl._at_.main.spec_2._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // call List.foldl._at_.main.spec_2 with 2 args
  mov x0, x19
  mov x1, x20
  bl _l_List_foldl___at___main_spec__2
  mov x27, x0
  // dec 1
  mov x0, x20
  bl _lean_dec
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

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
  sub sp, sp, #112
  // Stack frame: 112 bytes (13 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___redArg___closed__3
  adrp x27, _l_main___redArg___closed__3@PAGE
  ldr x27, [x27, _l_main___redArg___closed__3@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 args
  mov x0, x27
  mov x1, x19
  bl _l_IO_println___at___main_spec__0
  mov x22, x0
  // case
  ldr x8, [x22]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn5671910544442644658
  cmp x8, #1
  b.eq .Lcase_ctor2_fn5671910544442644658
  b .Lcase_end0_fn5671910544442644658
.Lcase_ctor1_fn5671910544442644658:
  // proj field 1
  ldr x23, [x22, #16]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // dec 1
  mov x0, x22
  bl _lean_dec
  // load global constant _l_main___redArg___closed__7
  adrp x21, _l_main___redArg___closed__7@PAGE
  ldr x21, [x21, _l_main___redArg___closed__7@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 args
  mov x0, x21
  mov x1, x23
  bl _l_IO_println___at___main_spec__0
  mov x12, x0
  // case
  ldr x8, [x12]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn5671910544442644658
  cmp x8, #1
  b.eq .Lcase_ctor5_fn5671910544442644658
  b .Lcase_end3_fn5671910544442644658
.Lcase_ctor4_fn5671910544442644658:
  // proj field 1
  ldr x13, [x12, #16]
  // inc 1
  mov x0, x13
  bl _lean_inc
  // dec 1
  mov x0, x12
  bl _lean_dec
  // load global constant _l_main___redArg___closed__11
  adrp x11, _l_main___redArg___closed__11@PAGE
  ldr x11, [x11, _l_main___redArg___closed__11@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 args
  mov x0, x11
  mov x1, x13
  bl _l_IO_println___at___main_spec__0
  mov x9, x0
  // case
  ldr x8, [x9]
  cmp x8, #0
  b.eq .Lcase_ctor7_fn5671910544442644658
  cmp x8, #1
  b.eq .Lcase_ctor8_fn5671910544442644658
  b .Lcase_end6_fn5671910544442644658
.Lcase_ctor7_fn5671910544442644658:
  // proj field 1
  ldr x8, [x9, #16]
  // store result to spilled vreg30
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg30 from stack slot 0
  ldr x8, [sp]
  // inc 1
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec
  // load global constant _l_main___redArg___closed__12
  adrp x8, _l_main___redArg___closed__12@PAGE
  ldr x8, [x8, _l_main___redArg___closed__12@PAGEOFF]
  // store result to spilled vreg31
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_.main.spec_0 with 2 args
  // load spilled vreg31 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg30 from stack slot 0
  ldr x8, [sp]
  mov x1, x8
  bl _l_IO_println___at___main_spec__0
  mov x8, x0
  // store result to spilled vreg32
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg32 from stack slot 3
  ldr x8, [sp, #24]
  // case
  ldr x8, [x8]
  cmp x8, #0
  b.eq .Lcase_ctor10_fn5671910544442644658
  cmp x8, #1
  b.eq .Lcase_ctor11_fn5671910544442644658
  b .Lcase_end9_fn5671910544442644658
.Lcase_ctor10_fn5671910544442644658:
  // load spilled vreg32 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg33
  // store to stack slot 4
  str x8, [sp, #32]
  // load spilled vreg33 from stack slot 4
  ldr x8, [sp, #32]
  // inc 1
  mov x0, x8
  bl _lean_inc
  // load spilled vreg32 from stack slot 3
  ldr x8, [sp, #24]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // load global constant _l_main___redArg___closed__17
  adrp x8, _l_main___redArg___closed__17@PAGE
  ldr x8, [x8, _l_main___redArg___closed__17@PAGEOFF]
  // store result to spilled vreg34
  // store to stack slot 5
  str x8, [sp, #40]
  mov x8, #0
  // store result to spilled vreg35
  // store to stack slot 6
  str x8, [sp, #48]
  // call List.foldl._at_.main.spec_2 with 2 args
  // load spilled vreg35 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  // load spilled vreg34 from stack slot 5
  ldr x8, [sp, #40]
  mov x1, x8
  bl _l_List_foldl___at___main_spec__2
  mov x8, x0
  // store result to spilled vreg36
  // store to stack slot 7
  str x8, [sp, #56]
  // load spilled vreg34 from stack slot 5
  ldr x8, [sp, #40]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // load global constant _l_main___redArg___closed__18
  adrp x8, _l_main___redArg___closed__18@PAGE
  ldr x8, [x8, _l_main___redArg___closed__18@PAGEOFF]
  // store result to spilled vreg37
  // store to stack slot 8
  str x8, [sp, #64]
  // call Nat.reprFast with 1 args
  // load spilled vreg36 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg38
  // store to stack slot 9
  str x8, [sp, #72]
  // call String.append with 2 args
  // load spilled vreg37 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  // load spilled vreg38 from stack slot 9
  ldr x8, [sp, #72]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg39
  // store to stack slot 10
  str x8, [sp, #80]
  // load spilled vreg38 from stack slot 9
  ldr x8, [sp, #72]
  // dec 1
  mov x0, x8
  bl _lean_dec
  // call IO.println._at_.main.spec_0 with 2 args
  // load spilled vreg39 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  // load spilled vreg33 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at___main_spec__0
  mov x8, x0
  // store result to spilled vreg40
  // store to stack slot 11
  str x8, [sp, #88]
  // return
  // load spilled vreg40 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  add sp, sp, #112
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn5671910544442644658
.Lcase_ctor11_fn5671910544442644658:
  // return
  // load spilled vreg32 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #112
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn5671910544442644658
.Lcase_end9_fn5671910544442644658:
  b .Lcase_end6_fn5671910544442644658
.Lcase_ctor8_fn5671910544442644658:
  // return
  mov x0, x9
  add sp, sp, #112
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn5671910544442644658
.Lcase_end6_fn5671910544442644658:
  b .Lcase_end3_fn5671910544442644658
.Lcase_ctor5_fn5671910544442644658:
  // return
  mov x0, x12
  add sp, sp, #112
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn5671910544442644658
.Lcase_end3_fn5671910544442644658:
  b .Lcase_end0_fn5671910544442644658
.Lcase_ctor2_fn5671910544442644658:
  // return
  mov x0, x22
  add sp, sp, #112
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn5671910544442644658
.Lcase_end0_fn5671910544442644658:

  .globl __init_l_main___redArg___closed__18
  .align 2
__init_l_main___redArg___closed__18:
  // Function: main._redArg._closed_18
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // string literal: Sum of [1,2,3,4,5] = 
  adrp x0, .Lstrptr_14115566749573386577_0@PAGE
  ldr x0, [x0, .Lstrptr_14115566749573386577_0@PAGEOFF]
  bl _lean_mk_string
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__17
  .align 2
__init_l_main___redArg___closed__17:
  // Function: main._redArg._closed_17
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__16
  adrp x27, _l_main___redArg___closed__16@PAGE
  ldr x27, [x27, _l_main___redArg___closed__16@PAGEOFF]
  mov x26, #1
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
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
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__16
  .align 2
__init_l_main___redArg___closed__16:
  // Function: main._redArg._closed_16
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__15
  adrp x27, _l_main___redArg___closed__15@PAGE
  ldr x27, [x27, _l_main___redArg___closed__15@PAGEOFF]
  mov x26, #2
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
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
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__15
  .align 2
__init_l_main___redArg___closed__15:
  // Function: main._redArg._closed_15
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__14
  adrp x27, _l_main___redArg___closed__14@PAGE
  ldr x27, [x27, _l_main___redArg___closed__14@PAGEOFF]
  mov x26, #3
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
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
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__14
  .align 2
__init_l_main___redArg___closed__14:
  // Function: main._redArg._closed_14
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__13
  adrp x27, _l_main___redArg___closed__13@PAGE
  ldr x27, [x27, _l_main___redArg___closed__13@PAGEOFF]
  mov x26, #4
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
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
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__13
  .align 2
__init_l_main___redArg___closed__13:
  // Function: main._redArg._closed_13
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // ctor List.nil (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  mov x26, #5
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
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
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__12
  .align 2
__init_l_main___redArg___closed__12:
  // Function: main._redArg._closed_12
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // string literal: x is greater than 40
  adrp x0, .Lstrptr_8027285431999838478_0@PAGE
  ldr x0, [x0, .Lstrptr_8027285431999838478_0@PAGEOFF]
  bl _lean_mk_string
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__11
  .align 2
__init_l_main___redArg___closed__11:
  // Function: main._redArg._closed_11
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__10
  adrp x24, _l_main___redArg___closed__10@PAGE
  ldr x24, [x24, _l_main___redArg___closed__10@PAGEOFF]
  // load global constant _l_main___redArg___closed__8
  adrp x26, _l_main___redArg___closed__8@PAGE
  ldr x26, [x26, _l_main___redArg___closed__8@PAGEOFF]
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

  .globl __init_l_main___redArg___closed__10
  .align 2
__init_l_main___redArg___closed__10:
  // Function: main._redArg._closed_10
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__9
  adrp x27, _l_main___redArg___closed__9@PAGE
  ldr x27, [x27, _l_main___redArg___closed__9@PAGEOFF]
  // call Nat.reprFast with 1 args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__9
  .align 2
__init_l_main___redArg___closed__9:
  // Function: main._redArg._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  mov x27, #3
  mov x26, #10
  // call testArithmetic with 2 args
  mov x0, x26
  mov x1, x27
  bl _l_testArithmetic
  mov x25, x0
  // return
  mov x0, x25
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__8
  .align 2
__init_l_main___redArg___closed__8:
  // Function: main._redArg._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // string literal: Arithmetic test (10, 3) = 
  adrp x0, .Lstrptr_17783367711884186280_0@PAGE
  ldr x0, [x0, .Lstrptr_17783367711884186280_0@PAGEOFF]
  bl _lean_mk_string
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__7
  .align 2
__init_l_main___redArg___closed__7:
  // Function: main._redArg._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__6
  adrp x24, _l_main___redArg___closed__6@PAGE
  ldr x24, [x24, _l_main___redArg___closed__6@PAGEOFF]
  // load global constant _l_main___redArg___closed__4
  adrp x26, _l_main___redArg___closed__4@PAGE
  ldr x26, [x26, _l_main___redArg___closed__4@PAGEOFF]
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

  .globl __init_l_main___redArg___closed__6
  .align 2
__init_l_main___redArg___closed__6:
  // Function: main._redArg._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__5
  adrp x27, _l_main___redArg___closed__5@PAGE
  ldr x27, [x27, _l_main___redArg___closed__5@PAGEOFF]
  // call Nat.reprFast with 1 args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__5
  .align 2
__init_l_main___redArg___closed__5:
  // Function: main._redArg._closed_5
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

  .globl __init_l_main___redArg___closed__4
  .align 2
__init_l_main___redArg___closed__4:
  // Function: main._redArg._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // string literal: Fibonacci 10 = 
  adrp x0, .Lstrptr_16570923765937419718_0@PAGE
  ldr x0, [x0, .Lstrptr_16570923765937419718_0@PAGEOFF]
  bl _lean_mk_string
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___redArg___closed__3
  .align 2
__init_l_main___redArg___closed__3:
  // Function: main._redArg._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__2
  adrp x24, _l_main___redArg___closed__2@PAGE
  ldr x24, [x24, _l_main___redArg___closed__2@PAGEOFF]
  // load global constant _l_main___redArg___closed__0
  adrp x26, _l_main___redArg___closed__0@PAGE
  ldr x26, [x26, _l_main___redArg___closed__0@PAGEOFF]
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

  .globl __init_l_main___redArg___closed__2
  .align 2
__init_l_main___redArg___closed__2:
  // Function: main._redArg._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // load global constant _l_main___redArg___closed__1
  adrp x27, _l_main___redArg___closed__1@PAGE
  ldr x27, [x27, _l_main___redArg___closed__1@PAGEOFF]
  // call Nat.reprFast with 1 args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
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
  mov x27, #5
  // call factorial with 1 args
  mov x0, x27
  bl _l_factorial
  mov x26, x0
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
  // string literal: Factorial 5 = 
  adrp x0, .Lstrptr_7084602818797125039_0@PAGE
  ldr x0, [x0, .Lstrptr_7084602818797125039_0@PAGEOFF]
  bl _lean_mk_string
  mov x27, x0
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl _l_List_foldl___at___main_spec__2
  .align 2
_l_List_foldl___at___main_spec__2:
  // Function: List.foldl._at_.main.spec_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // case
  ldr x8, [x20]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn7523885109454192454
  cmp x8, #1
  b.eq .Lcase_ctor2_fn7523885109454192454
  b .Lcase_end0_fn7523885109454192454
.Lcase_ctor1_fn7523885109454192454:
  // return
  mov x0, x19
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn7523885109454192454
.Lcase_ctor2_fn7523885109454192454:
  // proj field 0
  ldr x27, [x20, #8]
  // proj field 1
  ldr x26, [x20, #16]
  // call Nat.add with 2 args
  mov x0, x19
  mov x1, x27
  bl _lean_nat_add
  mov x25, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // call List.foldl._at_.main.spec_2 with 2 args
  mov x0, x25
  mov x1, x26
  bl _l_List_foldl___at___main_spec__2
  mov x24, x0
  // return
  mov x0, x24
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn7523885109454192454
.Lcase_end0_fn7523885109454192454:

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

  .globl _l_testArithmetic___boxed
  .align 2
_l_testArithmetic___boxed:
  // Function: testArithmetic._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // call testArithmetic with 2 args
  mov x0, x19
  mov x1, x20
  bl _l_testArithmetic
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

  .globl _l_testArithmetic
  .align 2
_l_testArithmetic:
  // Function: testArithmetic
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
  mov x22, x0
  // call Nat.sub with 2 args
  mov x0, x19
  mov x1, x20
  bl _lean_nat_sub
  mov x23, x0
  // call Nat.mul with 2 args
  mov x0, x19
  mov x1, x20
  bl _lean_nat_mul
  mov x15, x0
  // call Nat.add with 2 args
  mov x0, x22
  mov x1, x23
  bl _lean_nat_add
  mov x14, x0
  // dec 1
  mov x0, x23
  bl _lean_dec
  // dec 1
  mov x0, x22
  bl _lean_dec
  // call Nat.add with 2 args
  mov x0, x14
  mov x1, x15
  bl _lean_nat_add
  mov x21, x0
  // dec 1
  mov x0, x15
  bl _lean_dec
  // dec 1
  mov x0, x14
  bl _lean_dec
  // return
  mov x0, x21
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
  b.eq .Lcase_ctor1_fn8501191356058874083
  cmp x8, #0
  b.eq .Lcase_ctor2_fn8501191356058874083
  b .Lcase_end0_fn8501191356058874083
.Lcase_ctor1_fn8501191356058874083:
  // return
  mov x0, x24
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn8501191356058874083
.Lcase_ctor2_fn8501191356058874083:
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
  b.eq .Lcase_ctor4_fn8501191356058874083
  cmp x8, #0
  b.eq .Lcase_ctor5_fn8501191356058874083
  b .Lcase_end3_fn8501191356058874083
.Lcase_ctor4_fn8501191356058874083:
  // dec 1
  mov x0, x12
  bl _lean_dec
  // return
  mov x0, x14
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn8501191356058874083
.Lcase_ctor5_fn8501191356058874083:
  // call Nat.sub with 2 args
  mov x0, x12
  mov x1, x14
  bl _lean_nat_sub
  mov x13, x0
  // dec 1
  mov x0, x12
  bl _lean_dec
  // call Nat.add with 2 args
  mov x0, x13
  mov x1, x14
  bl _lean_nat_add
  mov x9, x0
  // call fibonacci with 1 args
  mov x0, x9
  bl _l_fibonacci
  mov x10, x0
  // dec 1
  mov x0, x9
  bl _lean_dec
  // call fibonacci with 1 args
  mov x0, x13
  bl _l_fibonacci
  mov x8, x0
  // store result to spilled vreg21
  // store to stack slot 0
  str x8, [sp]
  // dec 1
  mov x0, x13
  bl _lean_dec
  // call Nat.add with 2 args
  mov x0, x10
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
  mov x0, x10
  bl _lean_dec
  // return
  mov x0, x28
  add sp, sp, #32
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn8501191356058874083
.Lcase_end3_fn8501191356058874083:
  b .Lcase_end0_fn8501191356058874083
.Lcase_end0_fn8501191356058874083:

  .globl _l_factorial___boxed
  .align 2
_l_factorial___boxed:
  // Function: factorial._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // call factorial with 1 args
  mov x0, x19
  bl _l_factorial
  mov x27, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // return
  mov x0, x27
  ldp x29, x30, [sp], #16
  ret

  .globl _l_factorial
  .align 2
_l_factorial:
  // Function: factorial
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  mov x27, #0
  // call Nat.decEq with 2 args
  mov x0, x19
  mov x1, x27
  bl _lean_nat_dec_eq
  mov x25, x0
  // case
  ldr x8, [x25]
  cmp x8, #1
  b.eq .Lcase_ctor1_fn8414366013822448176
  cmp x8, #0
  b.eq .Lcase_ctor2_fn8414366013822448176
  b .Lcase_end0_fn8414366013822448176
.Lcase_ctor1_fn8414366013822448176:
  mov x23, #1
  // return
  mov x0, x23
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn8414366013822448176
.Lcase_ctor2_fn8414366013822448176:
  mov x22, #1
  // call Nat.sub with 2 args
  mov x0, x19
  mov x1, x22
  bl _lean_nat_sub
  mov x14, x0
  // call Nat.add with 2 args
  mov x0, x14
  mov x1, x22
  bl _lean_nat_add
  mov x11, x0
  // call factorial with 1 args
  mov x0, x14
  bl _l_factorial
  mov x12, x0
  // dec 1
  mov x0, x14
  bl _lean_dec
  // call Nat.mul with 2 args
  mov x0, x11
  mov x1, x12
  bl _lean_nat_mul
  mov x13, x0
  // dec 1
  mov x0, x12
  bl _lean_dec
  // dec 1
  mov x0, x11
  bl _lean_dec
  // return
  mov x0, x13
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn8414366013822448176
.Lcase_end0_fn8414366013822448176:

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_complex__test
  .align 2
_initialize_complex__test:
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
  // Initialize _l_main___redArg___closed__2
  bl __init_l_main___redArg___closed__2
  adrp x8, _l_main___redArg___closed__2@PAGE
  str x0, [x8, _l_main___redArg___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__2@PAGE
  ldr x0, [x8, _l_main___redArg___closed__2@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__5
  bl __init_l_main___redArg___closed__5
  adrp x8, _l_main___redArg___closed__5@PAGE
  str x0, [x8, _l_main___redArg___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__5@PAGE
  ldr x0, [x8, _l_main___redArg___closed__5@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__16
  bl __init_l_main___redArg___closed__16
  adrp x8, _l_main___redArg___closed__16@PAGE
  str x0, [x8, _l_main___redArg___closed__16@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__16@PAGE
  ldr x0, [x8, _l_main___redArg___closed__16@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__9
  bl __init_l_main___redArg___closed__9
  adrp x8, _l_main___redArg___closed__9@PAGE
  str x0, [x8, _l_main___redArg___closed__9@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__9@PAGE
  ldr x0, [x8, _l_main___redArg___closed__9@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__6
  bl __init_l_main___redArg___closed__6
  adrp x8, _l_main___redArg___closed__6@PAGE
  str x0, [x8, _l_main___redArg___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__6@PAGE
  ldr x0, [x8, _l_main___redArg___closed__6@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__3
  bl __init_l_main___redArg___closed__3
  adrp x8, _l_main___redArg___closed__3@PAGE
  str x0, [x8, _l_main___redArg___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__3@PAGE
  ldr x0, [x8, _l_main___redArg___closed__3@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__17
  bl __init_l_main___redArg___closed__17
  adrp x8, _l_main___redArg___closed__17@PAGE
  str x0, [x8, _l_main___redArg___closed__17@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__17@PAGE
  ldr x0, [x8, _l_main___redArg___closed__17@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__0
  bl __init_l_main___redArg___closed__0
  adrp x8, _l_main___redArg___closed__0@PAGE
  str x0, [x8, _l_main___redArg___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__0@PAGE
  ldr x0, [x8, _l_main___redArg___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__12
  bl __init_l_main___redArg___closed__12
  adrp x8, _l_main___redArg___closed__12@PAGE
  str x0, [x8, _l_main___redArg___closed__12@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__12@PAGE
  ldr x0, [x8, _l_main___redArg___closed__12@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__15
  bl __init_l_main___redArg___closed__15
  adrp x8, _l_main___redArg___closed__15@PAGE
  str x0, [x8, _l_main___redArg___closed__15@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__15@PAGE
  ldr x0, [x8, _l_main___redArg___closed__15@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__11
  bl __init_l_main___redArg___closed__11
  adrp x8, _l_main___redArg___closed__11@PAGE
  str x0, [x8, _l_main___redArg___closed__11@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__11@PAGE
  ldr x0, [x8, _l_main___redArg___closed__11@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__13
  bl __init_l_main___redArg___closed__13
  adrp x8, _l_main___redArg___closed__13@PAGE
  str x0, [x8, _l_main___redArg___closed__13@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__13@PAGE
  ldr x0, [x8, _l_main___redArg___closed__13@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__18
  bl __init_l_main___redArg___closed__18
  adrp x8, _l_main___redArg___closed__18@PAGE
  str x0, [x8, _l_main___redArg___closed__18@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__18@PAGE
  ldr x0, [x8, _l_main___redArg___closed__18@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__7
  bl __init_l_main___redArg___closed__7
  adrp x8, _l_main___redArg___closed__7@PAGE
  str x0, [x8, _l_main___redArg___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__7@PAGE
  ldr x0, [x8, _l_main___redArg___closed__7@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__4
  bl __init_l_main___redArg___closed__4
  adrp x8, _l_main___redArg___closed__4@PAGE
  str x0, [x8, _l_main___redArg___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__4@PAGE
  ldr x0, [x8, _l_main___redArg___closed__4@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__10
  bl __init_l_main___redArg___closed__10
  adrp x8, _l_main___redArg___closed__10@PAGE
  str x0, [x8, _l_main___redArg___closed__10@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__10@PAGE
  ldr x0, [x8, _l_main___redArg___closed__10@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__8
  bl __init_l_main___redArg___closed__8
  adrp x8, _l_main___redArg___closed__8@PAGE
  str x0, [x8, _l_main___redArg___closed__8@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__8@PAGE
  ldr x0, [x8, _l_main___redArg___closed__8@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__1
  bl __init_l_main___redArg___closed__1
  adrp x8, _l_main___redArg___closed__1@PAGE
  str x0, [x8, _l_main___redArg___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__1@PAGE
  ldr x0, [x8, _l_main___redArg___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___redArg___closed__14
  bl __init_l_main___redArg___closed__14
  adrp x8, _l_main___redArg___closed__14@PAGE
  str x0, [x8, _l_main___redArg___closed__14@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___redArg___closed__14@PAGE
  ldr x0, [x8, _l_main___redArg___closed__14@PAGEOFF]
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
