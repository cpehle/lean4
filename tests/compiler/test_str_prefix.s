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
  .globl _l_main___closed__9
_l_main___closed__9:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__8
_l_main___closed__8:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__7
_l_main___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__6
_l_main___closed__6:
  .quad 0  // Object initialized at startup
  .align 0  // byte alignment
  .globl _l_main___closed__5
_l_main___closed__5:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__4
_l_main___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__3
_l_main___closed__3:
  .quad 0  // Object initialized at startup
  .align 0  // byte alignment
  .globl _l_main___closed__2
_l_main___closed__2:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__1
_l_main___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__0
_l_main___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___main_spec__0___closed__1
_l_IO_println___at___main_spec__0___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___main_spec__0___closed__0
_l_IO_println___at___main_spec__0___closed__0:
  .quad 0  // Object initialized at startup

  .text

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
  sub sp, sp, #64
  // Stack frame: 64 bytes (7 spilled vars)
.Lfn_start_main:
  mov x19, x0
  // load global constant _l_main___closed__2
  adrp x27, _l_main___closed__2@PAGE
  add x27, x27, _l_main___closed__2@PAGEOFF
  ldrb w27, [x27]
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
  // load global constant _l_main___closed__5
  adrp x21, _l_main___closed__5@PAGE
  add x21, x21, _l_main___closed__5@PAGEOFF
  ldrb w21, [x21]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x21
  mov x1, x23
  bl _l_IO_println___at___main_spec__0
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
  // load global constant _l_main___closed__7
  adrp x8, _l_main___closed__7@PAGE
  ldr x8, [x8, _l_main___closed__7@PAGEOFF]
  // store result to spilled vreg8
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_.main.spec_2 with 2 runtime args
  // load spilled vreg8 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg7 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at___main_spec__2
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
  // load global constant _l_main___closed__9
  adrp x8, _l_main___closed__9@PAGE
  ldr x8, [x8, _l_main___closed__9@PAGEOFF]
  // store result to spilled vreg11
  // store to stack slot 5
  str x8, [sp, #40]
  // call IO.println._at_.main.spec_2 with 2 runtime args
  // load spilled vreg11 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg10 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at___main_spec__2
  mov x8, x0
  // store result to spilled vreg12
  // store to stack slot 6
  str x8, [sp, #48]
  // return
  // load spilled vreg12 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn771961157887135399
.Lcase_ctor14_fn771961157887135399:
  // return
  // load spilled vreg9 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #64
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
  add sp, sp, #64
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
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn771961157887135399
.Lcase_end2_fn771961157887135399:

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
.Lfn_start_main._closed_9:
  // load global constant _l_main___closed__8
  adrp x27, _l_main___closed__8@PAGE
  ldr x27, [x27, _l_main___closed__8@PAGEOFF]
  // ctor Std.Format.text (tag=3, objs=1, scalar=0)
  mov x0, #3
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
.Lfn_start_main._closed_8:
  // load global constant _l_main___closed__1
  adrp x27, _l_main___closed__1@PAGE
  ldr x27, [x27, _l_main___closed__1@PAGEOFF]
  // call String.quote with 1 runtime args
  mov x0, x27
  bl _l_String_quote
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
.Lfn_start_main._closed_7:
  // load global constant _l_main___closed__6
  adrp x27, _l_main___closed__6@PAGE
  ldr x27, [x27, _l_main___closed__6@PAGEOFF]
  // ctor Std.Format.text (tag=3, objs=1, scalar=0)
  mov x0, #3
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
.Lfn_start_main._closed_6:
  // load global constant _l_main___closed__0
  adrp x27, _l_main___closed__0@PAGE
  ldr x27, [x27, _l_main___closed__0@PAGEOFF]
  // call String.quote with 1 runtime args
  mov x0, x27
  bl _l_String_quote
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
.Lfn_start_main._closed_5:
  // load global constant _l_main___closed__4
  adrp x24, _l_main___closed__4@PAGE
  ldr x24, [x24, _l_main___closed__4@PAGEOFF]
  // load global constant _l_main___closed__3
  adrp x23, _l_main___closed__3@PAGE
  ldr x23, [x23, _l_main___closed__3@PAGEOFF]
  // call String.isPrefixOf with 2 runtime args
  mov x0, x23
  mov x1, x24
  bl _l_String_isPrefixOf
  and x25, x0, #255
  // dec 1
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
  // string literal: abc
  adrp x0, .Lstrptr_8500289943117668439_0@PAGE
  ldr x0, [x0, .Lstrptr_8500289943117668439_0@PAGEOFF]
  // DEBUG: str='abc' byteSize=3 charCount=3
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
.Lstrptr_8500289943117668439_0:
  .quad .Lstr_8500289943117668439_0
.Lstr_8500289943117668439_0:
  .asciz "abc"
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
  // string literal: ab
  adrp x0, .Lstrptr_3548551298948373996_0@PAGE
  ldr x0, [x0, .Lstrptr_3548551298948373996_0@PAGEOFF]
  // DEBUG: str='ab' byteSize=2 charCount=2
  mov x1, #2
  mov x2, #2
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
.Lstrptr_3548551298948373996_0:
  .quad .Lstr_3548551298948373996_0
.Lstr_3548551298948373996_0:
  .asciz "ab"
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
  // load global constant _l_main___closed__1
  adrp x24, _l_main___closed__1@PAGE
  ldr x24, [x24, _l_main___closed__1@PAGEOFF]
  // load global constant _l_main___closed__0
  adrp x23, _l_main___closed__0@PAGE
  ldr x23, [x23, _l_main___closed__0@PAGEOFF]
  // call String.isPrefixOf with 2 runtime args
  mov x0, x23
  mov x1, x24
  bl _l_String_isPrefixOf
  and x25, x0, #255
  // dec 1
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
  // string literal: αbc
  adrp x0, .Lstrptr_7388215039365402614_0@PAGE
  ldr x0, [x0, .Lstrptr_7388215039365402614_0@PAGEOFF]
  // DEBUG: str='αbc' byteSize=4 charCount=3
  mov x1, #4
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
.Lstrptr_7388215039365402614_0:
  .quad .Lstr_7388215039365402614_0
.Lstr_7388215039365402614_0:
  .asciz "\xCE\xB1bc"
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
  // string literal: αb
  adrp x0, .Lstrptr_6081877290215468830_0@PAGE
  ldr x0, [x0, .Lstrptr_6081877290215468830_0@PAGEOFF]
  // DEBUG: str='αb' byteSize=3 charCount=2
  mov x1, #3
  mov x2, #2
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
  .asciz "\xCE\xB1b"
  .text

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
  movz x0, #120, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
  // call Std.Format.pretty with 4 runtime args
  mov x0, x19
  mov x1, x27
  mov x2, x26
  mov x3, x26
  bl _lean_format_pretty
  mov x25, x0
  mov x24, #10
  // call String.push with 2 runtime args
  mov x0, x25
  mov x1, x24
  bl _lean_string_push
  mov x23, x0
  // call IO.print._at_.IO.println._at_.main.spec_0.spec_0 with 2 runtime args
  mov x0, x23
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  mov x22, x0
  // return
  mov x0, x22
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

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
  // case
  mov x8, x19
  cmp x8, #0
  b.eq .Lcase_ctor2_fn5896300885077173871
  cmp x8, #1
  b.eq .Lcase_ctor3_fn5896300885077173871
  b .Lcase_end1_fn5896300885077173871
.Lcase_ctor2_fn5896300885077173871:
  // load global constant _l_IO_println___at___main_spec__0___closed__0
  adrp x22, _l_IO_println___at___main_spec__0___closed__0@PAGE
  ldr x22, [x22, _l_IO_println___at___main_spec__0___closed__0@PAGEOFF]
  // jump to JP7
  mov x27, x22
  b .LJP0_fn5896300885077173871
  b .Lcase_end1_fn5896300885077173871
.Lcase_ctor3_fn5896300885077173871:
  // load global constant _l_IO_println___at___main_spec__0___closed__1
  adrp x28, _l_IO_println___at___main_spec__0___closed__1@PAGE
  ldr x28, [x28, _l_IO_println___at___main_spec__0___closed__1@PAGEOFF]
  // jump to JP7
  mov x27, x28
  b .LJP0_fn5896300885077173871
  b .Lcase_end1_fn5896300885077173871
.Lcase_end1_fn5896300885077173871:
.LJP0_fn5896300885077173871:
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

  .globl __init_l_IO_println___at___main_spec__0___closed__1
  .align 2
__init_l_IO_println___at___main_spec__0___closed__1:
  // Function: IO.println._at_.main.spec_0._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_0._closed_1:
  // string literal: true
  adrp x0, .Lstrptr_9912840218063115790_0@PAGE
  ldr x0, [x0, .Lstrptr_9912840218063115790_0@PAGEOFF]
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
.Lstrptr_9912840218063115790_0:
  .quad .Lstr_9912840218063115790_0
.Lstr_9912840218063115790_0:
  .asciz "true"
  .text

  .globl __init_l_IO_println___at___main_spec__0___closed__0
  .align 2
__init_l_IO_println___at___main_spec__0___closed__0:
  // Function: IO.println._at_.main.spec_0._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.main.spec_0._closed_0:
  // string literal: false
  adrp x0, .Lstrptr_10644678771179058054_0@PAGE
  ldr x0, [x0, .Lstrptr_10644678771179058054_0@PAGEOFF]
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
.Lstrptr_10644678771179058054_0:
  .quad .Lstr_10644678771179058054_0
.Lstr_10644678771179058054_0:
  .asciz "false"
  .text

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
  .globl _initialize_test__str__prefix
  .align 2
_initialize_test__str__prefix:
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
  // Initialize _l_IO_println___at___main_spec__0___closed__0
  bl __init_l_IO_println___at___main_spec__0___closed__0
  adrp x8, _l_IO_println___at___main_spec__0___closed__0@PAGE
  add x8, x8, _l_IO_println___at___main_spec__0___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___main_spec__0___closed__0@PAGE
  add x8, x8, _l_IO_println___at___main_spec__0___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___main_spec__0___closed__1
  bl __init_l_IO_println___at___main_spec__0___closed__1
  adrp x8, _l_IO_println___at___main_spec__0___closed__1@PAGE
  add x8, x8, _l_IO_println___at___main_spec__0___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___main_spec__0___closed__1@PAGE
  add x8, x8, _l_IO_println___at___main_spec__0___closed__1@PAGEOFF
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
  strb w0, [x8]

  // Initialize _l_main___closed__3
  bl __init_l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  add x8, x8, _l_main___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__3@PAGE
  add x8, x8, _l_main___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__4
  bl __init_l_main___closed__4
  adrp x8, _l_main___closed__4@PAGE
  add x8, x8, _l_main___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__4@PAGE
  add x8, x8, _l_main___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__5
  bl __init_l_main___closed__5
  adrp x8, _l_main___closed__5@PAGE
  add x8, x8, _l_main___closed__5@PAGEOFF
  strb w0, [x8]

  // Initialize _l_main___closed__6
  bl __init_l_main___closed__6
  adrp x8, _l_main___closed__6@PAGE
  add x8, x8, _l_main___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__6@PAGE
  add x8, x8, _l_main___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__7
  bl __init_l_main___closed__7
  adrp x8, _l_main___closed__7@PAGE
  add x8, x8, _l_main___closed__7@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__7@PAGE
  add x8, x8, _l_main___closed__7@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__8
  bl __init_l_main___closed__8
  adrp x8, _l_main___closed__8@PAGE
  add x8, x8, _l_main___closed__8@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__8@PAGE
  add x8, x8, _l_main___closed__8@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__9
  bl __init_l_main___closed__9
  adrp x8, _l_main___closed__9@PAGE
  add x8, x8, _l_main___closed__9@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__9@PAGE
  add x8, x8, _l_main___closed__9@PAGEOFF
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
