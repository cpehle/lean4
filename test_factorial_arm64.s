  .arch armv8-a
  .file "lean_output.s"
  // External runtime functions (macOS requires _ prefix)
  .extern _lean_alloc_ctor
  .extern _lean_ctor_set
  .extern _lean_ctor_get
  .extern _lean_ctor_get_usize
  .extern _lean_alloc_closure
  .extern _lean_inc
  .extern _lean_inc_ref
  .extern _lean_inc_n
  .extern _lean_inc_ref_n
  .extern _lean_dec
  .extern _lean_dec_ref
  .extern _lean_box
  .extern _lean_unbox
  .extern _lean_unbox_uint32
  .extern _lean_is_scalar
  .extern _lean_is_shared
  .extern _lean_setup_args
  .extern _lean_initialize_runtime_module
  .extern _lean_io_mk_world
  .extern _lean_io_mark_end_initialization
  .extern _lean_io_result_is_ok
  .extern _lean_io_result_get_value
  .extern _lean_io_result_show_error
  .extern _lean_init_task_manager
  .extern _lean_finalize_task_manager
  .extern _lean_mk_string

  .text

  .data
  .align 3
  .globl _G_initialized
_G_initialized:
  .byte 0

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

  .globl _lean_main
  .align 2
_lean_main:
  // Function: main
  stp x29, x30, [sp, #-16]
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // dec 1
  tst x19, #1
  b.ne .Ldec_skip0_fn771961157887135399
  ldr x8, [x19]
  sub x8, x8, #1
  str x8, [x19]
.Ldec_skip0_fn771961157887135399:
  // call main._redArg with 1 args
  mov x0, x20
  bl _l_main___redArg
  mov x27, x0
  // return
  mov x0, x27
  ret
  ldp x29, x30, [sp, #16]
  ret

  .globl _l_main___redArg
  .align 2
_l_main___redArg:
  // Function: main._redArg
  stp x29, x30, [sp, #-16]
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___redArg___closed__3
  adrp x27, _l_main___redArg___closed__3@PAGE
  ldr x27, [x27, _l_main___redArg___closed__3@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 args
  mov x0, x27
  mov x1, x19
  bl _l_IO_println___at___main_spec__0
  mov x26, x0
  // return
  mov x0, x26
  ret
  ldp x29, x30, [sp, #16]
  ret

  .globl _l_IO_println___at___main_spec__0
  .align 2
_l_IO_println___at___main_spec__0:
  // Function: IO.println._at_.main.spec_0
  stp x29, x30, [sp, #-16]
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
  ret
  ldp x29, x30, [sp, #16]
  ret

  .globl _l_IO_print___at___IO_println___at___main_spec__0_spec__0
  .align 2
_l_IO_print___at___IO_println___at___main_spec__0_spec__0:
  // Function: IO.print._at_.IO.println._at_.main.spec_0.spec_0
  stp x29, x30, [sp, #-16]
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
  tst x14, #1
  b.ne .Linc_skip0_fn6423424597098576783
  ldr x8, [x14]
  add x8, x8, #1
  str x8, [x14]
.Linc_skip0_fn6423424597098576783:
  // proj field 1
  ldr x23, [x22, #16]
  // inc 1
  tst x23, #1
  b.ne .Linc_skip1_fn6423424597098576783
  ldr x8, [x23]
  add x8, x8, #1
  str x8, [x23]
.Linc_skip1_fn6423424597098576783:
  // dec 1
  ldr x8, [x22]
  sub x8, x8, #1
  str x8, [x22]
  // proj field 4
  ldr x15, [x14, #40]
  // inc 1
  ldr x8, [x15]
  add x8, x8, #1
  str x8, [x15]
  // dec 1
  tst x14, #1
  b.ne .Ldec_skip2_fn6423424597098576783
  ldr x8, [x14]
  sub x8, x8, #1
  str x8, [x14]
.Ldec_skip2_fn6423424597098576783:
  // indirect call with 2 args
  mov x0, x19
  mov x1, x23
  blr x15
  mov x13, x0
  // return
  mov x0, x13
  ret
  ldp x29, x30, [sp, #16]
  ret

  .globl _l_factorial___boxed
  .align 2
_l_factorial___boxed:
  // Function: factorial._boxed
  stp x29, x30, [sp, #-16]
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // call factorial with 1 args
  mov x0, x19
  bl _l_factorial
  mov x27, x0
  // dec 1
  tst x19, #1
  b.ne .Ldec_skip0_fn9657199083850770679
  ldr x8, [x19]
  sub x8, x8, #1
  str x8, [x19]
.Ldec_skip0_fn9657199083850770679:
  // return
  mov x0, x27
  ret
  ldp x29, x30, [sp, #16]
  ret

  .globl _l_factorial
  .align 2
_l_factorial:
  // Function: factorial
  stp x29, x30, [sp, #-16]
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
  b.eq .Lcase1_fn8414366013822448176
  cmp x8, #0
  b.eq .Lcase2_fn8414366013822448176
.Lcase1_fn8414366013822448176:
.Lcase_alt3_fn8414366013822448176:
  mov x23, #1
  // return
  mov x0, x23
  ret
  b .Lcase_end0_fn8414366013822448176
.Lcase2_fn8414366013822448176:
.Lcase_alt4_fn8414366013822448176:
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
  tst x14, #1
  b.ne .Ldec_skip5_fn8414366013822448176
  ldr x8, [x14]
  sub x8, x8, #1
  str x8, [x14]
.Ldec_skip5_fn8414366013822448176:
  // call Nat.mul with 2 args
  mov x0, x11
  mov x1, x12
  bl _lean_nat_mul
  mov x13, x0
  // dec 1
  tst x12, #1
  b.ne .Ldec_skip6_fn8414366013822448176
  ldr x8, [x12]
  sub x8, x8, #1
  str x8, [x12]
.Ldec_skip6_fn8414366013822448176:
  // dec 1
  tst x11, #1
  b.ne .Ldec_skip7_fn8414366013822448176
  ldr x8, [x11]
  sub x8, x8, #1
  str x8, [x11]
.Ldec_skip7_fn8414366013822448176:
  // return
  mov x0, x13
  ret
  b .Lcase_end0_fn8414366013822448176
.Lcase_end0_fn8414366013822448176:
  ldp x29, x30, [sp, #16]
  ret
