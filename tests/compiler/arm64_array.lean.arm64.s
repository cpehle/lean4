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

  .globl _l_main___closed__26
_l_main___closed__26:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__25
_l_main___closed__25:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__24
_l_main___closed__24:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__23
_l_main___closed__23:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__22
_l_main___closed__22:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__21
_l_main___closed__21:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__20
_l_main___closed__20:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__19
_l_main___closed__19:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__18
_l_main___closed__18:
  .quad 0  // Initialized at startup
  .globl _l_main___closed__17
_l_main___closed__17:
  .quad 0  // Initialized at startup
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
  .globl _l_List_toString___at___main_spec__2___closed__2
_l_List_toString___at___main_spec__2___closed__2:
  .quad 0  // Initialized at startup
  .globl _l_List_toString___at___main_spec__2___closed__1
_l_List_toString___at___main_spec__2___closed__1:
  .quad 0  // Initialized at startup
  .globl _l_List_toString___at___main_spec__2___closed__0
_l_List_toString___at___main_spec__2___closed__0:
  .quad 0  // Initialized at startup
  .globl _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0:
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
  sub sp, sp, #112
  // Stack frame: 112 bytes (13 spilled vars)
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___closed__9
  adrp x27, _l_main___closed__9@PAGE
  ldr x27, [x27, _l_main___closed__9@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_IO_println___at___main_spec__0
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
  // load global constant _l_main___closed__13
  adrp x21, _l_main___closed__13@PAGE
  ldr x21, [x21, _l_main___closed__13@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x21
  mov x1, x23
  bl _l_IO_println___at___main_spec__0
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
  // load global constant _l_main___closed__18
  adrp x11, _l_main___closed__18@PAGE
  ldr x11, [x11, _l_main___closed__18@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x11
  mov x1, x13
  bl _l_IO_println___at___main_spec__0
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
  // store result to spilled vreg30
  // store to stack slot 0
  str x8, [sp]
  // inc 1
  // load spilled vreg30 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x9
  bl _lean_dec_ref
  // load global constant _l_main___closed__22
  adrp x8, _l_main___closed__22@PAGE
  ldr x8, [x8, _l_main___closed__22@PAGEOFF]
  // store result to spilled vreg31
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_.main.spec_0 with 2 runtime args
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
  ldrb w8, [x8, #7]
  cmp x8, #0
  b.eq .Lcase_ctor10_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor11_fn771961157887135399
  b .Lcase_end9_fn771961157887135399
.Lcase_ctor10_fn771961157887135399:
  // load spilled vreg32 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg33
  // store to stack slot 4
  str x8, [sp, #32]
  // inc 1
  // load spilled vreg33 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg32 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_main___closed__24
  adrp x8, _l_main___closed__24@PAGE
  ldr x8, [x8, _l_main___closed__24@PAGEOFF]
  // store result to spilled vreg34
  // store to stack slot 5
  str x8, [sp, #40]
  // load global constant _l_main___closed__25
  adrp x8, _l_main___closed__25@PAGE
  ldr x8, [x8, _l_main___closed__25@PAGEOFF]
  // store result to spilled vreg35
  // store to stack slot 6
  str x8, [sp, #48]
  // load global constant _l_main___closed__26
  adrp x8, _l_main___closed__26@PAGE
  ldr x8, [x8, _l_main___closed__26@PAGEOFF]
  // store result to spilled vreg36
  // store to stack slot 7
  str x8, [sp, #56]
  // call List.toString._at_.main.spec_2 with 1 runtime args
  // load spilled vreg36 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _l_List_toString___at___main_spec__2
  mov x8, x0
  // store result to spilled vreg37
  // store to stack slot 8
  str x8, [sp, #64]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg35 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  // load spilled vreg37 from stack slot 8
  ldr x8, [sp, #64]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg38
  // store to stack slot 9
  str x8, [sp, #72]
  // dec 1
  // load spilled vreg37 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_dec_ref
  // call String.append with 2 runtime args
  // load spilled vreg34 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg38 from stack slot 9
  ldr x8, [sp, #72]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg39
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg38 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.main.spec_0 with 2 runtime args
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn771961157887135399
.Lcase_ctor11_fn771961157887135399:
  // return
  // load spilled vreg32 from stack slot 3
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
  b .Lcase_end9_fn771961157887135399
.Lcase_end9_fn771961157887135399:
  b .Lcase_end6_fn771961157887135399
.Lcase_ctor8_fn771961157887135399:
  // return
  mov x0, x9
  add sp, sp, #112
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
  add sp, sp, #112
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
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn771961157887135399
.Lcase_end0_fn771961157887135399:

  .globl __init_l_main___closed__26
  .align 2
__init_l_main___closed__26:
  // Function: main._closed_26
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__23
  adrp x27, _l_main___closed__23@PAGE
  ldr x27, [x27, _l_main___closed__23@PAGEOFF]
  // call Array.toList with 1 runtime args
  mov x0, x27
  bl _lean_array_to_list
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

  .globl __init_l_main___closed__25
  .align 2
__init_l_main___closed__25:
  // Function: main._closed_25
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: #
  adrp x0, .Lstrptr_7641929577995267042_0@PAGE
  ldr x0, [x0, .Lstrptr_7641929577995267042_0@PAGEOFF]
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
.Lstrptr_7641929577995267042_0:
  .quad .Lstr_7641929577995267042_0
.Lstr_7641929577995267042_0:
  .asciz "#"
  .text

  .globl __init_l_main___closed__24
  .align 2
__init_l_main___closed__24:
  // Function: main._closed_24
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: after map (+10): 
  adrp x0, .Lstrptr_14472837801109837811_0@PAGE
  ldr x0, [x0, .Lstrptr_14472837801109837811_0@PAGEOFF]
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
.Lstrptr_14472837801109837811_0:
  .quad .Lstr_14472837801109837811_0
.Lstr_14472837801109837811_0:
  .asciz "after map (+10): "
  .text

  .globl __init_l_main___closed__23
  .align 2
__init_l_main___closed__23:
  // Function: main._closed_23
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
  // call arrayMap with 1 runtime args
  mov x0, x27
  bl _l_arrayMap
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

  .globl __init_l_main___closed__22
  .align 2
__init_l_main___closed__22:
  // Function: main._closed_22
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__21
  adrp x24, _l_main___closed__21@PAGE
  ldr x24, [x24, _l_main___closed__21@PAGEOFF]
  // load global constant _l_main___closed__19
  adrp x26, _l_main___closed__19@PAGE
  ldr x26, [x26, _l_main___closed__19@PAGEOFF]
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

  .globl __init_l_main___closed__21
  .align 2
__init_l_main___closed__21:
  // Function: main._closed_21
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__20
  adrp x27, _l_main___closed__20@PAGE
  ldr x27, [x27, _l_main___closed__20@PAGEOFF]
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

  .globl __init_l_main___closed__20
  .align 2
__init_l_main___closed__20:
  // Function: main._closed_20
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
  // load global constant _l_main___closed__14
  adrp x24, _l_main___closed__14@PAGE
  ldr x24, [x24, _l_main___closed__14@PAGEOFF]
  // call arrayGet with 2 runtime args
  mov x0, x24
  mov x1, x27
  bl _l_arrayGet
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

  .globl __init_l_main___closed__19
  .align 2
__init_l_main___closed__19:
  // Function: main._closed_19
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: after push: arr[5] = 
  adrp x0, .Lstrptr_1810005318882346920_0@PAGE
  ldr x0, [x0, .Lstrptr_1810005318882346920_0@PAGEOFF]
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
.Lstrptr_1810005318882346920_0:
  .quad .Lstr_1810005318882346920_0
.Lstr_1810005318882346920_0:
  .asciz "after push: arr[5] = "
  .text

  .globl __init_l_main___closed__18
  .align 2
__init_l_main___closed__18:
  // Function: main._closed_18
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__17
  adrp x24, _l_main___closed__17@PAGE
  ldr x24, [x24, _l_main___closed__17@PAGEOFF]
  // load global constant _l_main___closed__15
  adrp x26, _l_main___closed__15@PAGE
  ldr x26, [x26, _l_main___closed__15@PAGEOFF]
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

  .globl __init_l_main___closed__17
  .align 2
__init_l_main___closed__17:
  // Function: main._closed_17
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // load global constant _l_main___closed__16
  adrp x27, _l_main___closed__16@PAGE
  ldr x27, [x27, _l_main___closed__16@PAGEOFF]
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
  // load global constant _l_main___closed__14
  adrp x25, _l_main___closed__14@PAGE
  ldr x25, [x25, _l_main___closed__14@PAGEOFF]
  // call arraySize with 1 runtime args
  mov x0, x25
  bl _l_arraySize
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
  // string literal: after push: size = 
  adrp x0, .Lstrptr_8626307394147814703_0@PAGE
  ldr x0, [x0, .Lstrptr_8626307394147814703_0@PAGEOFF]
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
.Lstrptr_8626307394147814703_0:
  .quad .Lstr_8626307394147814703_0
.Lstr_8626307394147814703_0:
  .asciz "after push: size = "
  .text

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
  movz x0, #6, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // load global constant _l_main___closed__5
  adrp x26, _l_main___closed__5@PAGE
  ldr x26, [x26, _l_main___closed__5@PAGEOFF]
  // call arrayPush with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _l_arrayPush
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
  adrp x24, _l_main___closed__12@PAGE
  ldr x24, [x24, _l_main___closed__12@PAGEOFF]
  // load global constant _l_main___closed__10
  adrp x26, _l_main___closed__10@PAGE
  ldr x26, [x26, _l_main___closed__10@PAGEOFF]
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
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // load global constant _l_main___closed__5
  adrp x24, _l_main___closed__5@PAGE
  ldr x24, [x24, _l_main___closed__5@PAGEOFF]
  // call arrayGet with 2 runtime args
  mov x0, x24
  mov x1, x27
  bl _l_arrayGet
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
  // string literal: arr[2] = 
  adrp x0, .Lstrptr_1205422437409326157_0@PAGE
  ldr x0, [x0, .Lstrptr_1205422437409326157_0@PAGEOFF]
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
.Lstrptr_1205422437409326157_0:
  .quad .Lstr_1205422437409326157_0
.Lstr_1205422437409326157_0:
  .asciz "arr[2] = "
  .text

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
  // load global constant _l_main___closed__8
  adrp x24, _l_main___closed__8@PAGE
  ldr x24, [x24, _l_main___closed__8@PAGEOFF]
  // load global constant _l_main___closed__6
  adrp x26, _l_main___closed__6@PAGE
  ldr x26, [x26, _l_main___closed__6@PAGEOFF]
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
  // load global constant _l_main___closed__7
  adrp x27, _l_main___closed__7@PAGE
  ldr x27, [x27, _l_main___closed__7@PAGEOFF]
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
  // load global constant _l_main___closed__5
  adrp x25, _l_main___closed__5@PAGE
  ldr x25, [x25, _l_main___closed__5@PAGEOFF]
  // call arraySize with 1 runtime args
  mov x0, x25
  bl _l_arraySize
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
  // string literal: size = 
  adrp x0, .Lstrptr_10168799801402377358_0@PAGE
  ldr x0, [x0, .Lstrptr_10168799801402377358_0@PAGEOFF]
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
.Lstrptr_10168799801402377358_0:
  .quad .Lstr_10168799801402377358_0
.Lstr_10168799801402377358_0:
  .asciz "size = "
  .text

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
  movz x0, #5, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // load global constant _l_main___closed__4
  adrp x26, _l_main___closed__4@PAGE
  ldr x26, [x26, _l_main___closed__4@PAGEOFF]
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
  movz x0, #4, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // load global constant _l_main___closed__3
  adrp x26, _l_main___closed__3@PAGE
  ldr x26, [x26, _l_main___closed__3@PAGEOFF]
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
  movz x0, #3, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // load global constant _l_main___closed__2
  adrp x26, _l_main___closed__2@PAGE
  ldr x26, [x26, _l_main___closed__2@PAGEOFF]
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
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // load global constant _l_main___closed__1
  adrp x26, _l_main___closed__1@PAGE
  ldr x26, [x26, _l_main___closed__1@PAGEOFF]
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
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // load global constant _l_main___closed__0
  adrp x26, _l_main___closed__0@PAGE
  ldr x26, [x26, _l_main___closed__0@PAGEOFF]
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
  movz x0, #5, lsl #0
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

  .globl _l_List_toString___at___main_spec__2
  .align 2
_l_List_toString___at___main_spec__2:
  // Function: List.toString._at_.main.spec_2
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
  // case
  ldrb w8, [x19, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn5015280254750742650
  cmp x8, #1
  b.eq .Lcase_ctor2_fn5015280254750742650
  b .Lcase_end0_fn5015280254750742650
.Lcase_ctor1_fn5015280254750742650:
  // load global constant _l_List_toString___at___main_spec__2___closed__0
  adrp x26, _l_List_toString___at___main_spec__2___closed__0@PAGE
  ldr x26, [x26, _l_List_toString___at___main_spec__2___closed__0@PAGEOFF]
  // return
  mov x0, x26
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn5015280254750742650
.Lcase_ctor2_fn5015280254750742650:
  // proj field 1
  ldr x9, [x19, #16]
  // case
  ldrb w8, [x9, #7]
  cmp x8, #0
  b.eq .Lcase_ctor4_fn5015280254750742650
  cmp x8, #1
  b.eq .Lcase_ctor5_fn5015280254750742650
  b .Lcase_end3_fn5015280254750742650
.Lcase_ctor4_fn5015280254750742650:
  // proj field 0
  ldr x22, [x19, #8]
  // inc 1
  mov x0, x22
  bl _lean_inc
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load global constant _l_List_toString___at___main_spec__2___closed__1
  adrp x21, _l_List_toString___at___main_spec__2___closed__1@PAGE
  ldr x21, [x21, _l_List_toString___at___main_spec__2___closed__1@PAGEOFF]
  // call Nat.reprFast with 1 runtime args
  mov x0, x22
  bl _l_Nat_reprFast
  mov x14, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x21
  mov x1, x14
  bl _lean_string_append
  mov x15, x0
  // dec 1
  mov x0, x14
  bl _lean_dec_ref
  // load global constant _l_List_toString___at___main_spec__2___closed__2
  adrp x11, _l_List_toString___at___main_spec__2___closed__2@PAGE
  ldr x11, [x11, _l_List_toString___at___main_spec__2___closed__2@PAGEOFF]
  // call String.Internal.append with 2 runtime args
  mov x0, x15
  mov x1, x11
  bl _lean_string_append
  mov x10, x0
  // dec 1
  // return
  mov x0, x10
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn5015280254750742650
.Lcase_ctor5_fn5015280254750742650:
  // inc 1
  mov x0, x9
  bl _lean_inc_ref
  // proj field 0
  ldr x8, [x19, #8]
  // store result to spilled vreg26
  // store to stack slot 0
  str x8, [sp]
  // inc 1
  // load spilled vreg26 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load global constant _l_List_toString___at___main_spec__2___closed__1
  adrp x8, _l_List_toString___at___main_spec__2___closed__1@PAGE
  ldr x8, [x8, _l_List_toString___at___main_spec__2___closed__1@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 1
  str x8, [sp, #8]
  // call Nat.reprFast with 1 runtime args
  // load spilled vreg26 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 2
  str x8, [sp, #16]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg27 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  // load spilled vreg28 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg29
  // store to stack slot 3
  str x8, [sp, #24]
  // dec 1
  // load spilled vreg28 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec_ref
  // call List.foldl._at_.List.toString._at_.main.spec_2.spec_2 with 2 runtime args
  // load spilled vreg29 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  mov x1, x9
  bl _l_List_foldl___at___List_toString___at___main_spec__2_spec__2
  mov x8, x0
  // store result to spilled vreg30
  // store to stack slot 4
  str x8, [sp, #32]
  mov x8, #93
  // store result to spilled vreg31
  // store to stack slot 5
  str x8, [sp, #40]
  // call String.push with 2 runtime args
  // load spilled vreg30 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  // load spilled vreg31 from stack slot 5
  ldr x8, [sp, #40]
  mov x1, x8
  bl _lean_string_push
  mov x28, x0
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
  b .Lcase_end3_fn5015280254750742650
.Lcase_end3_fn5015280254750742650:
  b .Lcase_end0_fn5015280254750742650
.Lcase_end0_fn5015280254750742650:

  .globl __init_l_List_toString___at___main_spec__2___closed__2
  .align 2
__init_l_List_toString___at___main_spec__2___closed__2:
  // Function: List.toString._at_.main.spec_2._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: ]
  adrp x0, .Lstrptr_9915939419726413420_0@PAGE
  ldr x0, [x0, .Lstrptr_9915939419726413420_0@PAGEOFF]
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
.Lstrptr_9915939419726413420_0:
  .quad .Lstr_9915939419726413420_0
.Lstr_9915939419726413420_0:
  .asciz "]"
  .text

  .globl __init_l_List_toString___at___main_spec__2___closed__1
  .align 2
__init_l_List_toString___at___main_spec__2___closed__1:
  // Function: List.toString._at_.main.spec_2._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: [
  adrp x0, .Lstrptr_10641868628128193023_0@PAGE
  ldr x0, [x0, .Lstrptr_10641868628128193023_0@PAGEOFF]
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
.Lstrptr_10641868628128193023_0:
  .quad .Lstr_10641868628128193023_0
.Lstr_10641868628128193023_0:
  .asciz "["
  .text

  .globl __init_l_List_toString___at___main_spec__2___closed__0
  .align 2
__init_l_List_toString___at___main_spec__2___closed__0:
  // Function: List.toString._at_.main.spec_2._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: []
  adrp x0, .Lstrptr_15884944816049338903_0@PAGE
  ldr x0, [x0, .Lstrptr_15884944816049338903_0@PAGEOFF]
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
.Lstrptr_15884944816049338903_0:
  .quad .Lstr_15884944816049338903_0
.Lstr_15884944816049338903_0:
  .asciz "[]"
  .text

  .globl _l_List_foldl___at___List_toString___at___main_spec__2_spec__2
  .align 2
_l_List_foldl___at___List_toString___at___main_spec__2_spec__2:
  // Function: List.foldl._at_.List.toString._at_.main.spec_2.spec_2
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
  // case
  ldrb w8, [x20, #7]
  cmp x8, #0
  b.eq .Lcase_ctor1_fn4847583665961806319
  cmp x8, #1
  b.eq .Lcase_ctor2_fn4847583665961806319
  b .Lcase_end0_fn4847583665961806319
.Lcase_ctor1_fn4847583665961806319:
  // return
  mov x0, x19
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn4847583665961806319
.Lcase_ctor2_fn4847583665961806319:
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
  // load global constant _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
  adrp x21, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGE
  ldr x21, [x21, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGEOFF]
  // call String.Internal.append with 2 runtime args
  mov x0, x19
  mov x1, x21
  bl _lean_string_append
  mov x22, x0
  // dec 1
  // call Nat.reprFast with 1 runtime args
  mov x0, x26
  bl _l_Nat_reprFast
  mov x13, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x22
  mov x1, x13
  bl _lean_string_append
  mov x14, x0
  // dec 1
  mov x0, x13
  bl _lean_dec_ref
  // call List.foldl._at_.List.toString._at_.main.spec_2.spec_2 with 2 runtime args
  mov x0, x14
  mov x1, x24
  bl _l_List_foldl___at___List_toString___at___main_spec__2_spec__2
  mov x12, x0
  // return
  mov x0, x12
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn4847583665961806319
.Lcase_end0_fn4847583665961806319:

  .globl __init_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
  .align 2
__init_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0:
  // Function: List.foldl._at_.List.toString._at_.main.spec_2.spec_2._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // string literal: , 
  adrp x0, .Lstrptr_4404371781514522118_0@PAGE
  ldr x0, [x0, .Lstrptr_4404371781514522118_0@PAGEOFF]
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
.Lstrptr_4404371781514522118_0:
  .quad .Lstr_4404371781514522118_0
.Lstr_4404371781514522118_0:
  .asciz ", "
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.mapMUnsafe.map._at_.arrayMap.spec_0._boxed
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
  // unbox
  mov x0, x19
  bl _lean_unbox_export
  mov x27, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // unbox
  mov x0, x20
  bl _lean_unbox_export
  mov x26, x0
  // dec 1
  mov x0, x20
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.mapMUnsafe.map._at_.arrayMap.spec_0 with 3 runtime args
  mov x0, x27
  mov x1, x26
  mov x2, x21
  bl _l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0
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

  .globl _l_arrayMap
  .align 2
_l_arrayMap:
  // Function: arrayMap
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // save param 0: xx0 → xx19
  mov x19, x0
  // call Array.usize with 1 runtime args
  mov x0, x19
  bl _lean_array_size
  mov x27, x0
  mov x26, #0
  // call _private.Init.Data.Array.Basic.0.Array.mapMUnsafe.map._at_.arrayMap.spec_0 with 3 runtime args
  mov x0, x27
  mov x1, x26
  mov x2, x19
  bl _l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.mapMUnsafe.map._at_.arrayMap.spec_0
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
  // call USize.decLt with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_usize_dec_lt
  mov x26, x0
  // case
  mov x8, x26
  cmp x8, #0
  b.eq .Lcase_ctor1_fn12618099371570011128
  cmp x8, #1
  b.eq .Lcase_ctor2_fn12618099371570011128
  b .Lcase_end0_fn12618099371570011128
.Lcase_ctor1_fn12618099371570011128:
  // return
  mov x0, x21
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn12618099371570011128
.Lcase_ctor2_fn12618099371570011128:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x20
  bl _lean_array_uget
  mov x14, x0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x24, x0
  // call Array.uset with 3 runtime args
  mov x0, x21
  mov x1, x20
  mov x2, x24
  bl _lean_array_uset
  mov x23, x0
  movz x0, #10, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x22, x0
  // call Nat.add with 2 runtime args
  mov x0, x14
  mov x1, x22
  bl _lean_nat_add
  mov x15, x0
  // dec 1
  mov x0, x14
  bl _lean_dec
  mov x13, #1
  // inline lean_usize_add
  add x12, x20, x13
  // call Array.uset with 3 runtime args
  mov x0, x23
  mov x1, x20
  mov x2, x15
  bl _lean_array_uset
  mov x11, x0
  // call _private.Init.Data.Array.Basic.0.Array.mapMUnsafe.map._at_.arrayMap.spec_0 with 3 runtime args
  mov x0, x19
  mov x1, x12
  mov x2, x11
  bl _l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0
  mov x10, x0
  // return
  mov x0, x10
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn12618099371570011128
.Lcase_end0_fn12618099371570011128:

  .globl _l_arrayPush
  .align 2
_l_arrayPush:
  // Function: arrayPush
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
  // call Array.push with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _lean_array_push
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

  .globl _l_arrayGet___boxed
  .align 2
_l_arrayGet___boxed:
  // Function: arrayGet._boxed
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
  // call arrayGet with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_arrayGet
  mov x27, x0
  // dec 1
  mov x0, x20
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_arrayGet
  .align 2
_l_arrayGet:
  // Function: arrayGet
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
  // call Array.get!InternalBorrowed with 3 runtime args
  mov x0, x27
  mov x1, x19
  mov x2, x20
  bl _lean_array_get_borrowed
  mov x25, x0
  // inc 1
  mov x0, x25
  bl _lean_inc
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_arraySize___boxed
  .align 2
_l_arraySize___boxed:
  // Function: arraySize._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // save param 0: xx0 → xx19
  mov x19, x0
  // call arraySize with 1 runtime args
  mov x0, x19
  bl _l_arraySize
  mov x27, x0
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_arraySize
  .align 2
_l_arraySize:
  // Function: arraySize
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  // save param 0: xx0 → xx19
  mov x19, x0
  // call Array.size with 1 runtime args
  mov x0, x19
  bl _lean_array_get_size
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

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_arm64__array
  .align 2
_initialize_arm64__array:
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
  // Initialize _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
  bl __init_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
  adrp x8, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGE
  str x0, [x8, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGE
  ldr x0, [x8, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0:

  // Initialize _l_List_toString___at___main_spec__2___closed__0
  bl __init_l_List_toString___at___main_spec__2___closed__0
  adrp x8, _l_List_toString___at___main_spec__2___closed__0@PAGE
  str x0, [x8, _l_List_toString___at___main_spec__2___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_toString___at___main_spec__2___closed__0@PAGE
  ldr x0, [x8, _l_List_toString___at___main_spec__2___closed__0@PAGEOFF]
  cbz x0, .Lmark_skip_l_List_toString___at___main_spec__2___closed__0
  bl _lean_mark_persistent
.Lmark_skip_l_List_toString___at___main_spec__2___closed__0:

  // Initialize _l_List_toString___at___main_spec__2___closed__1
  bl __init_l_List_toString___at___main_spec__2___closed__1
  adrp x8, _l_List_toString___at___main_spec__2___closed__1@PAGE
  str x0, [x8, _l_List_toString___at___main_spec__2___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_toString___at___main_spec__2___closed__1@PAGE
  ldr x0, [x8, _l_List_toString___at___main_spec__2___closed__1@PAGEOFF]
  cbz x0, .Lmark_skip_l_List_toString___at___main_spec__2___closed__1
  bl _lean_mark_persistent
.Lmark_skip_l_List_toString___at___main_spec__2___closed__1:

  // Initialize _l_List_toString___at___main_spec__2___closed__2
  bl __init_l_List_toString___at___main_spec__2___closed__2
  adrp x8, _l_List_toString___at___main_spec__2___closed__2@PAGE
  str x0, [x8, _l_List_toString___at___main_spec__2___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_toString___at___main_spec__2___closed__2@PAGE
  ldr x0, [x8, _l_List_toString___at___main_spec__2___closed__2@PAGEOFF]
  cbz x0, .Lmark_skip_l_List_toString___at___main_spec__2___closed__2
  bl _lean_mark_persistent
.Lmark_skip_l_List_toString___at___main_spec__2___closed__2:

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

  // Initialize _l_main___closed__17
  bl __init_l_main___closed__17
  adrp x8, _l_main___closed__17@PAGE
  str x0, [x8, _l_main___closed__17@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__17@PAGE
  ldr x0, [x8, _l_main___closed__17@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__17
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__17:

  // Initialize _l_main___closed__18
  bl __init_l_main___closed__18
  adrp x8, _l_main___closed__18@PAGE
  str x0, [x8, _l_main___closed__18@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__18@PAGE
  ldr x0, [x8, _l_main___closed__18@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__18
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__18:

  // Initialize _l_main___closed__19
  bl __init_l_main___closed__19
  adrp x8, _l_main___closed__19@PAGE
  str x0, [x8, _l_main___closed__19@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__19@PAGE
  ldr x0, [x8, _l_main___closed__19@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__19
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__19:

  // Initialize _l_main___closed__20
  bl __init_l_main___closed__20
  adrp x8, _l_main___closed__20@PAGE
  str x0, [x8, _l_main___closed__20@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__20@PAGE
  ldr x0, [x8, _l_main___closed__20@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__20
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__20:

  // Initialize _l_main___closed__21
  bl __init_l_main___closed__21
  adrp x8, _l_main___closed__21@PAGE
  str x0, [x8, _l_main___closed__21@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__21@PAGE
  ldr x0, [x8, _l_main___closed__21@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__21
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__21:

  // Initialize _l_main___closed__22
  bl __init_l_main___closed__22
  adrp x8, _l_main___closed__22@PAGE
  str x0, [x8, _l_main___closed__22@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__22@PAGE
  ldr x0, [x8, _l_main___closed__22@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__22
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__22:

  // Initialize _l_main___closed__23
  bl __init_l_main___closed__23
  adrp x8, _l_main___closed__23@PAGE
  str x0, [x8, _l_main___closed__23@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__23@PAGE
  ldr x0, [x8, _l_main___closed__23@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__23
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__23:

  // Initialize _l_main___closed__24
  bl __init_l_main___closed__24
  adrp x8, _l_main___closed__24@PAGE
  str x0, [x8, _l_main___closed__24@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__24@PAGE
  ldr x0, [x8, _l_main___closed__24@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__24
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__24:

  // Initialize _l_main___closed__25
  bl __init_l_main___closed__25
  adrp x8, _l_main___closed__25@PAGE
  str x0, [x8, _l_main___closed__25@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__25@PAGE
  ldr x0, [x8, _l_main___closed__25@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__25
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__25:

  // Initialize _l_main___closed__26
  bl __init_l_main___closed__26
  adrp x8, _l_main___closed__26@PAGE
  str x0, [x8, _l_main___closed__26@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__26@PAGE
  ldr x0, [x8, _l_main___closed__26@PAGEOFF]
  cbz x0, .Lmark_skip_l_main___closed__26
  bl _lean_mark_persistent
.Lmark_skip_l_main___closed__26:

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
