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
  .extern _lean_is_shared
  .extern _lean_setup_args
  .extern _lean_initialize_runtime_module
  .extern _lean_io_mark_end_initialization
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

  .globl _l_main___boxed__const__1
_l_main___boxed__const__1:
  .quad 0  // Initialized at startup

  .text

  .globl _lean_main
  .align 2
_lean_main:
  // Function: main
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  // save param 0: xx0 → xx19
  mov x19, x0
  // load global constant _l_main___boxed__const__1
  adrp x27, _l_main___boxed__const__1@PAGE
  ldr x27, [x27, _l_main___boxed__const__1@PAGEOFF]
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
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___boxed__const__1
  .align 2
__init_l_main___boxed__const__1:
  // Function: main._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  mov x27, #7
  // box
  lsl x26, x27, #1
  orr x26, x26, #1
  // return
  mov x0, x26
  ldp x29, x30, [sp], #16
  ret

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_return__const
  .align 2
_initialize_return__const:
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
  // Initialize _l_main___boxed__const__1
  bl __init_l_main___boxed__const__1
  adrp x8, _l_main___boxed__const__1@PAGE
  str x0, [x8, _l_main___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___boxed__const__1@PAGEOFF]
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
