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
  .extern _lean_mark_persistent
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
  .extern _lean_io_result_mk_ok
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
  stp x29, x30, [sp, #-16]
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___closed__2
  adrp x27, _l_main___closed__2@PAGE
  ldr x27, [x27, _l_main___closed__2@PAGEOFF]
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

  .globl _l_simpleConst
  .align 2
_l_simpleConst:
  // Function: simpleConst
  stp x29, x30, [sp, #-16]
  mov x29, sp
  mov x27, #42
  // return
  mov x0, x27
  ret
  ldp x29, x30, [sp, #16]
  ret

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_simple
  .align 2
_initialize_simple:
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
  bl _lean_io_mk_world
  mov x1, x0
  mov x0, #1
  bl _initialize_Init
  mov x19, x0
  // Check for error
  mov x0, x19
  bl _lean_io_result_is_ok
  cbz x0, .Linit_error
  mov x0, x19
  bl _lean_dec_ref

  // Initialize closed constants
  // Initialize _l_main___closed__2
  bl __init_l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  str x0, [x8, _l_main___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__2@PAGE
  ldr x0, [x8, _l_main___closed__2@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__1
  bl __init_l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  str x0, [x8, _l_main___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__1@PAGE
  ldr x0, [x8, _l_main___closed__1@PAGEOFF]
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
  // Return success
  mov x0, #0
  bl _lean_box
  bl _lean_io_result_mk_ok
  ldp x19, x20, [sp, #16]
  ldp x29, x30, [sp], #32
  ret

.Linit_error:
  // Return error result
  mov x0, x19
  ldp x19, x20, [sp, #16]
  ldp x29, x30, [sp], #32
  ret

  // C-compatible main entry point
  .globl _main
  .align 2
_main:
  // Save frame pointer and link register
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // Save argc and argv
  stp x0, x1, [sp, #-16]!

  // Call lean_setup_args(argc, argv)
  bl _lean_setup_args
  str x0, [sp, #8]  // Save updated argv

  // Call lean_initialize_runtime_module()
  bl _lean_initialize_runtime_module

  // Call module initializer
  mov x0, #1  // builtin flag
  bl _lean_io_mk_world
  bl _initialize_simple
  mov x19, x0  // Save init result

  // Mark end of initialization
  bl _lean_io_mark_end_initialization

  // Check if initialization succeeded
  mov x0, x19
  bl _lean_io_result_is_ok
  cbz x0, .Linit_failed

  // Init succeeded, dec result and init task manager
  mov x0, x19
  bl _lean_dec_ref
  bl _lean_init_task_manager

  // Call _l___lean__main(world)
  bl _lean_io_mk_world
  bl _l___lean__main
  mov x19, x0  // Save main result

.Linit_failed:
  // Finalize task manager
  bl _lean_finalize_task_manager

  // Check if result is ok
  mov x0, x19
  bl _lean_io_result_is_ok
  cbz x0, .Lmain_error

  // Success path - get return value
  mov x0, x19
  bl _lean_io_result_get_value
  mov x20, x0
  // Check if return value is scalar (UInt32)
  mov x0, x20
  bl _lean_is_scalar
  cbz x0, .Lreturn_zero
  // Unbox UInt32
  mov x0, x20
  bl _lean_unbox_uint32
  mov x20, x0
  b .Lreturn_value
.Lreturn_zero:
  mov x20, #0
.Lreturn_value:
  mov x0, x19
  bl _lean_dec_ref
  mov x0, x20
  ldp xzr, xzr, [sp], #16
  ldp x29, x30, [sp], #16
  ret

.Lmain_error:
  // Error path
  mov x0, x19
  bl _lean_io_result_show_error
  mov x0, x19
  bl _lean_dec_ref
  mov x0, #1
  ldp xzr, xzr, [sp], #16
  ldp x29, x30, [sp], #16
  ret
