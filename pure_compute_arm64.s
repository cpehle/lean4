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

  .globl _l___lean__main
  .align 2
_l___lean__main:
  // Function: main
  stp x29, x30, [sp, #-16]
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // save param 1: xx1 → xx20
  mov x20, x1
  // dec 1
  tst x19, #1
  b.ne dec_skip0
  ldr x8, [x19]
  sub x8, x8, #1
  str x8, [x19]
dec_skip0:
  // call main._redArg with 1 args
  mov x0, x20
  bl _l_main___redArg
  mov x27, x0
  // return
  mov x0, x27
  ret
  ldp x29, x30, [sp, #16]
  ret
