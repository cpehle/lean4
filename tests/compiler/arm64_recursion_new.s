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

  .globl _l_main___closed__16
_l_main___closed__16:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__15
_l_main___closed__15:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__14
_l_main___closed__14:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__13
_l_main___closed__13:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__12
_l_main___closed__12:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__11
_l_main___closed__11:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__10
_l_main___closed__10:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__9
_l_main___closed__9:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__8
_l_main___closed__8:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__7
_l_main___closed__7:
  .quad 0  // Initialized at startup
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
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 bytes (1 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___closed__3
  adrp x27, _l_main___closed__3@PAGE
  ldr x27, [x27, _l_main___closed__3@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_IO_println___at___main_spec__0
  mov x22, x0
  // case
  ldr x8, [x22]
  lsr x8, x8, #32
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
  // load global constant _l_main___closed__7
  adrp x21, _l_main___closed__7@PAGE
  ldr x21, [x21, _l_main___closed__7@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x21
  mov x1, x23
  bl _l_IO_println___at___main_spec__0
  mov x12, x0
  // case
  ldr x8, [x12]
  lsr x8, x8, #32
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
  // load global constant _l_main___closed__16
  adrp x11, _l_main___closed__16@PAGE
  ldr x11, [x11, _l_main___closed__16@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x11
  mov x1, x13
  bl _l_IO_println___at___main_spec__0
  mov x9, x0
  // return
  mov x0, x9
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn771961157887135399
.Lcase_ctor5_fn771961157887135399:
  // return
  mov x0, x12
  add sp, sp, #16
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
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn771961157887135399
.Lcase_end0_fn771961157887135399:

  .globl __init_l_main___closed__16
  .align 2
__init_l_main___closed__16:
  // Function: main._closed_16
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__15
  adrp x24, _l_main___closed__15@PAGE
  ldr x24, [x24, _l_main___closed__15@PAGEOFF]
  // load global constant _l_main___closed__8
  adrp x26, _l_main___closed__8@PAGE
  ldr x26, [x26, _l_main___closed__8@PAGEOFF]
  // call String.append with 2 runtime args
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

  .globl __init_l_main___closed__15
  .align 2
__init_l_main___closed__15:
  // Function: main._closed_15
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__14
  adrp x27, _l_main___closed__14@PAGE
  ldr x27, [x27, _l_main___closed__14@PAGEOFF]
  // call Nat.reprFast with 1 runtime args
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

  .globl __init_l_main___closed__14
  .align 2
__init_l_main___closed__14:
  // Function: main._closed_14
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__13
  adrp x25, _l_main___closed__13@PAGE
  ldr x25, [x25, _l_main___closed__13@PAGEOFF]
  // call listSum with 1 runtime args
  mov x0, x25
  bl _l_listSum
  mov x26, x0
  // dec 1
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__13
  .align 2
__init_l_main___closed__13:
  // Function: main._closed_13
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__12
  adrp x27, _l_main___closed__12@PAGE
  ldr x27, [x27, _l_main___closed__12@PAGEOFF]
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__12
  .align 2
__init_l_main___closed__12:
  // Function: main._closed_12
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__11
  adrp x27, _l_main___closed__11@PAGE
  ldr x27, [x27, _l_main___closed__11@PAGEOFF]
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__11
  .align 2
__init_l_main___closed__11:
  // Function: main._closed_11
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__10
  adrp x27, _l_main___closed__10@PAGE
  ldr x27, [x27, _l_main___closed__10@PAGEOFF]
  movz x0, #3, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__10
  .align 2
__init_l_main___closed__10:
  // Function: main._closed_10
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__9
  adrp x27, _l_main___closed__9@PAGE
  ldr x27, [x27, _l_main___closed__9@PAGEOFF]
  movz x0, #4, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__9
  .align 2
__init_l_main___closed__9:
  // Function: main._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // ctor List.nil (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  movz x0, #5, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__8
  .align 2
__init_l_main___closed__8:
  // Function: main._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: listSum [1,2,3,4,5] = 
  adrp x0, .Lstrptr_13436355617269861857_0@PAGE
  ldr x0, [x0, .Lstrptr_13436355617269861857_0@PAGEOFF]
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
.Lstrptr_13436355617269861857_0:
  .quad .Lstr_13436355617269861857_0
.Lstr_13436355617269861857_0:
  .asciz "listSum [1,2,3,4,5] = "
  .text

  .globl __init_l_main___closed__7
  .align 2
__init_l_main___closed__7:
  // Function: main._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__6
  adrp x24, _l_main___closed__6@PAGE
  ldr x24, [x24, _l_main___closed__6@PAGEOFF]
  // load global constant _l_main___closed__4
  adrp x26, _l_main___closed__4@PAGE
  ldr x26, [x26, _l_main___closed__4@PAGEOFF]
  // call String.append with 2 runtime args
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

  .globl __init_l_main___closed__6
  .align 2
__init_l_main___closed__6:
  // Function: main._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__5
  adrp x27, _l_main___closed__5@PAGE
  ldr x27, [x27, _l_main___closed__5@PAGEOFF]
  // call Nat.reprFast with 1 runtime args
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
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  movz x0, #10, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
  // call sumTo with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _l_sumTo
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
  // string literal: sumTo 10 = 
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
  .asciz "sumTo 10 = "
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
  // load global constant _l_main___closed__2
  adrp x24, _l_main___closed__2@PAGE
  ldr x24, [x24, _l_main___closed__2@PAGEOFF]
  // load global constant _l_main___closed__0
  adrp x26, _l_main___closed__0@PAGE
  ldr x26, [x26, _l_main___closed__0@PAGEOFF]
  // call String.append with 2 runtime args
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
  // call Nat.reprFast with 1 runtime args
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
  movz x0, #5, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call factorial with 1 runtime args
  mov x0, x27
  bl _l_factorial
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
  // string literal: factorial 5 = 
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
  .asciz "factorial 5 = "
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
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // call IO.getStdout with 1 runtime args
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

  .globl _l_listSum___boxed
  .align 2
_l_listSum___boxed:
  // Function: listSum._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // save param 0: xx0 → xx19
  mov x19, x0
  // call listSum with 1 runtime args
  mov x0, x19
  bl _l_listSum
  mov x27, x0
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

  .globl _l_listSum
  .align 2
_l_listSum:
  // Function: listSum
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // save param 0: xx0 → xx19
  mov x19, x0
  // case
  ldr x8, [x19]
  lsr x8, x8, #32
  cmp x8, #0
  b.eq .Lcase_ctor1_fn13014468420489025785
  cmp x8, #1
  b.eq .Lcase_ctor2_fn13014468420489025785
  b .Lcase_end0_fn13014468420489025785
.Lcase_ctor1_fn13014468420489025785:
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
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
  b .Lcase_end0_fn13014468420489025785
.Lcase_ctor2_fn13014468420489025785:
  // proj field 0
  ldr x25, [x19, #8]
  // proj field 1
  ldr x24, [x19, #16]
  // call listSum with 1 runtime args
  mov x0, x24
  bl _l_listSum
  mov x21, x0
  // call Nat.add with 2 runtime args
  mov x0, x25
  mov x1, x21
  bl _lean_nat_add
  mov x22, x0
  // dec 1
  mov x0, x21
  bl _lean_dec
  // return
  mov x0, x22
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn13014468420489025785
.Lcase_end0_fn13014468420489025785:

  .globl _l_sumTo
  .align 2
_l_sumTo:
  // Function: sumTo
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
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Nat.decEq with 2 runtime args
  mov x0, x19
  mov x1, x27
  bl _lean_nat_dec_eq
  mov x25, x0
  // case
  mov x8, x25
  cmp x8, #1
  b.eq .Lcase_ctor1_fn1149203764800136808
  cmp x8, #0
  b.eq .Lcase_ctor2_fn1149203764800136808
  b .Lcase_end0_fn1149203764800136808
.Lcase_ctor1_fn1149203764800136808:
  // dec 1
  mov x0, x19
  bl _lean_dec
  // return
  mov x0, x20
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn1149203764800136808
.Lcase_ctor2_fn1149203764800136808:
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x24, x0
  // call Nat.sub with 2 runtime args
  mov x0, x19
  mov x1, x24
  bl _lean_nat_sub
  mov x23, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // call Nat.add with 2 runtime args
  mov x0, x20
  mov x1, x23
  bl _lean_nat_add
  mov x15, x0
  // dec 1
  mov x0, x20
  bl _lean_dec
  // call Nat.add with 2 runtime args
  mov x0, x15
  mov x1, x24
  bl _lean_nat_add
  mov x21, x0
  // dec 1
  mov x0, x15
  bl _lean_dec
  // call sumTo with 2 runtime args
  mov x0, x23
  mov x1, x21
  bl _l_sumTo
  mov x14, x0
  // return
  mov x0, x14
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn1149203764800136808
.Lcase_end0_fn1149203764800136808:

  .globl _l_factorial___boxed
  .align 2
_l_factorial___boxed:
  // Function: factorial._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // save param 0: xx0 → xx19
  mov x19, x0
  // call factorial with 1 runtime args
  mov x0, x19
  bl _l_factorial
  mov x27, x0
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

  .globl _l_factorial
  .align 2
_l_factorial:
  // Function: factorial
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // save param 0: xx0 → xx19
  mov x19, x0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Nat.decEq with 2 runtime args
  mov x0, x19
  mov x1, x27
  bl _lean_nat_dec_eq
  mov x25, x0
  // case
  mov x8, x25
  cmp x8, #1
  b.eq .Lcase_ctor1_fn8414366013822448176
  cmp x8, #0
  b.eq .Lcase_ctor2_fn8414366013822448176
  b .Lcase_end0_fn8414366013822448176
.Lcase_ctor1_fn8414366013822448176:
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
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
  b .Lcase_end0_fn8414366013822448176
.Lcase_ctor2_fn8414366013822448176:
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x22, x0
  // call Nat.sub with 2 runtime args
  mov x0, x19
  mov x1, x22
  bl _lean_nat_sub
  mov x14, x0
  // call Nat.add with 2 runtime args
  mov x0, x14
  mov x1, x22
  bl _lean_nat_add
  mov x11, x0
  // call factorial with 1 runtime args
  mov x0, x14
  bl _l_factorial
  mov x12, x0
  // dec 1
  mov x0, x14
  bl _lean_dec
  // call Nat.mul with 2 runtime args
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn8414366013822448176
.Lcase_end0_fn8414366013822448176:

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_arm64__recursion
  .align 2
_initialize_arm64__recursion:
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
  // Mark persistent
  adrp x8, _l_main___closed__2@PAGE
  ldr x0, [x8, _l_main___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__2:

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
  // Mark persistent
  adrp x8, _l_main___closed__5@PAGE
  ldr x0, [x8, _l_main___closed__5@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__5
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__5:

  // Initialize _l_main___closed__6
  bl __init_l_main___closed__6
  adrp x8, _l_main___closed__6@PAGE
  str x0, [x8, _l_main___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__6@PAGE
  ldr x0, [x8, _l_main___closed__6@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__6
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__6:

  // Initialize _l_main___closed__7
  bl __init_l_main___closed__7
  adrp x8, _l_main___closed__7@PAGE
  str x0, [x8, _l_main___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__7@PAGE
  ldr x0, [x8, _l_main___closed__7@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__7
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__7:

  // Initialize _l_main___closed__8
  bl __init_l_main___closed__8
  adrp x8, _l_main___closed__8@PAGE
  str x0, [x8, _l_main___closed__8@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__8@PAGE
  ldr x0, [x8, _l_main___closed__8@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__8
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__8:

  // Initialize _l_main___closed__9
  bl __init_l_main___closed__9
  adrp x8, _l_main___closed__9@PAGE
  str x0, [x8, _l_main___closed__9@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__9@PAGE
  ldr x0, [x8, _l_main___closed__9@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__9
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__9:

  // Initialize _l_main___closed__10
  bl __init_l_main___closed__10
  adrp x8, _l_main___closed__10@PAGE
  str x0, [x8, _l_main___closed__10@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__10@PAGE
  ldr x0, [x8, _l_main___closed__10@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__10
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__10:

  // Initialize _l_main___closed__11
  bl __init_l_main___closed__11
  adrp x8, _l_main___closed__11@PAGE
  str x0, [x8, _l_main___closed__11@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__11@PAGE
  ldr x0, [x8, _l_main___closed__11@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__11
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__11:

  // Initialize _l_main___closed__12
  bl __init_l_main___closed__12
  adrp x8, _l_main___closed__12@PAGE
  str x0, [x8, _l_main___closed__12@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__12@PAGE
  ldr x0, [x8, _l_main___closed__12@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__12
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__12:

  // Initialize _l_main___closed__13
  bl __init_l_main___closed__13
  adrp x8, _l_main___closed__13@PAGE
  str x0, [x8, _l_main___closed__13@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__13@PAGE
  ldr x0, [x8, _l_main___closed__13@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__13
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__13:

  // Initialize _l_main___closed__14
  bl __init_l_main___closed__14
  adrp x8, _l_main___closed__14@PAGE
  str x0, [x8, _l_main___closed__14@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__14@PAGE
  ldr x0, [x8, _l_main___closed__14@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__14
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__14:

  // Initialize _l_main___closed__15
  bl __init_l_main___closed__15
  adrp x8, _l_main___closed__15@PAGE
  str x0, [x8, _l_main___closed__15@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__15@PAGE
  ldr x0, [x8, _l_main___closed__15@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__15
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__15:

  // Initialize _l_main___closed__16
  bl __init_l_main___closed__16
  adrp x8, _l_main___closed__16@PAGE
  str x0, [x8, _l_main___closed__16@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__16@PAGE
  ldr x0, [x8, _l_main___closed__16@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__16
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__16:

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
