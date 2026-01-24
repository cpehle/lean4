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
  .extern _lean_internal_panic_unreachable
  .extern _lean_setup_args
  .extern _lean_initialize_runtime_module
  .extern _lean_io_mark_end_initialization
  .extern _lean_io_result_show_error
  .extern _lean_init_task_manager
  .extern _lean_finalize_task_manager
  .extern _lean_task_spawn
  .extern _lean_task_get_own
  .extern _lean_mk_string
  .extern _lean_mk_string_unchecked
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
  .globl _l_main___closed__16
_l_main___closed__16:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__15
_l_main___closed__15:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__14
_l_main___closed__14:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__13
_l_main___closed__13:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__12
_l_main___closed__12:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__11
_l_main___closed__11:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__10
_l_main___closed__10:
  .quad 0  // Object initialized at startup
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
  .align 3  // doubleword alignment
  .globl _l_main___closed__5
_l_main___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__4
_l_main___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__3
_l_main___closed__3:
  .quad 0  // Object initialized at startup
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
  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_T_check___closed__3
_l_T_check___closed__3:
  .quad 0  // uint64/usize/float initialized at startup
  .align 0  // byte alignment
  .globl _l_T_check___closed__2
_l_T_check___closed__2:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_T_check___closed__1
_l_T_check___closed__1:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_T_check___closed__0
_l_T_check___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_Array_matchPrefix___closed__0
_l_Array_matchPrefix___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_Array_findPrefix___closed__0
_l_Array_findPrefix___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_T_empty
_l_T_empty:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_T_empty___closed__2
_l_T_empty___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_T_empty___closed__1
_l_T_empty___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_T_empty___closed__0
_l_T_empty___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys
_l_keys:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__24
_l_keys___closed__24:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__23
_l_keys___closed__23:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__22
_l_keys___closed__22:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__21
_l_keys___closed__21:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__20
_l_keys___closed__20:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__19
_l_keys___closed__19:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__18
_l_keys___closed__18:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__17
_l_keys___closed__17:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__16
_l_keys___closed__16:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__15
_l_keys___closed__15:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__14
_l_keys___closed__14:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__13
_l_keys___closed__13:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__12
_l_keys___closed__12:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__11
_l_keys___closed__11:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__10
_l_keys___closed__10:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__9
_l_keys___closed__9:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__8
_l_keys___closed__8:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__7
_l_keys___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__6
_l_keys___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__5
_l_keys___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__4
_l_keys___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__3
_l_keys___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__2
_l_keys___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__1
_l_keys___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_keys___closed__0
_l_keys___closed__0:
  .quad 0  // Object initialized at startup

  .text

  .globl _l_main___boxed
  .align 2
_l_main___boxed:
  // Function: main._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_main__boxed:
  mov x19, x0
  // call main with 0 runtime args
  bl _lean_main
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // unbox
  mov x0, x21
  bl _lean_unbox_usize
  mov x25, x0
  // dec 1
  mov x0, x21
  bl _lean_dec
  // unbox
  mov x0, x22
  bl _lean_unbox_usize
  mov x26, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1 with 5 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x25
  mov x3, x26
  mov x4, x23
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1
  mov x27, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // return
  mov x0, x27
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 4/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // unbox
  mov x0, x20
  bl _lean_unbox_usize
  mov x24, x0
  // dec 1
  mov x0, x20
  bl _lean_dec
  // unbox
  mov x0, x21
  bl _lean_unbox_usize
  mov x25, x0
  // dec 1
  mov x0, x21
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0 with 4 runtime args
  mov x0, x19
  mov x1, x24
  mov x2, x25
  mov x3, x22
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0
  mov x26, x0
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x26
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 4/5, fp 0/4)
.Lfn_start_main:
  // load global constant _l_main___closed__15
  adrp x19, _l_main___closed__15@PAGE
  ldr x19, [x19, _l_main___closed__15@PAGEOFF]
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x20, #1
  // load global constant _l_main___closed__16
  adrp x21, _l_main___closed__16@PAGE
  ldr x21, [x21, _l_main___closed__16@PAGEOFF]
  movz x22, #0, lsl #0
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1 with 5 runtime args
  mov x0, x20
  mov x1, x19
  mov x2, x21
  mov x3, x22
  mov x4, x20
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1
  mov x23, x0
  // case
  // runtime scalar check
  tst x23, #1
  b.ne .scalar_tag_main_0
  ldrb w8, [x23, #7]
  b .compare_tag_main_1
.scalar_tag_main_0:
  lsr x8, x23, #1
.compare_tag_main_1:
  cmp x8, #0
  b.eq .case_ctor_main_3
  cmp x8, #1
  b.eq .case_ctor_main_4
  b .case_end_main_2
.case_ctor_main_3:
  // isShared (inline)
  tst x23, #1
  b.ne .is_shared_scalar_main_6
  ldr w8, [x23]
  cmp x8, #1
  cset x24, ne
  b .is_shared_done_main_5
.is_shared_scalar_main_6:
  mov x24, #1
.is_shared_done_main_5:
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .case_ctor_main_8
  cmp x8, #1
  b.eq .case_ctor_main_9
  b .case_end_main_7
.case_ctor_main_8:
  // proj field 0
  ldr x26, [x23, #8]
  // dec 1
  mov x0, x26
  bl _lean_dec
  // set field 0 (inline)
  str x20, [x23, #8]
  // return
  mov x0, x23
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_main_7
.case_ctor_main_9:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // ctor EST.Out.ok (tag=0, objs=1, usize=0, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  str x20, [x25, #8]
  // return
  mov x0, x25
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_main_7
.case_end_main_7:
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_main_2
.case_ctor_main_4:
  // return
  mov x0, x23
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_main_2
.case_end_main_2:
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl __init_l_main___closed__16
  .align 2
__init_l_main___closed__16:
  // Function: main._closed_16
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_main__closed_16:
  // load global constant _l_main___closed__15
  adrp x19, _l_main___closed__15@PAGE
  ldr x19, [x19, _l_main___closed__15@PAGEOFF]
  // call Array.usize with 1 runtime args
  mov x0, x19
  bl _lean_array_size
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_15:
  // load global constant _l_main___closed__13
  adrp x19, _l_main___closed__13@PAGE
  ldr x19, [x19, _l_main___closed__13@PAGEOFF]
  // load global constant _l_main___closed__14
  adrp x20, _l_main___closed__14@PAGE
  ldr x20, [x20, _l_main___closed__14@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_14:
  // load global constant _l_main___closed__9
  adrp x19, _l_main___closed__9@PAGE
  ldr x19, [x19, _l_main___closed__9@PAGEOFF]
  // load global constant _l_main___closed__11
  adrp x20, _l_main___closed__11@PAGE
  ldr x20, [x20, _l_main___closed__11@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_13:
  // load global constant _l_main___closed__10
  adrp x19, _l_main___closed__10@PAGE
  ldr x19, [x19, _l_main___closed__10@PAGEOFF]
  // load global constant _l_main___closed__12
  adrp x20, _l_main___closed__12@PAGE
  ldr x20, [x20, _l_main___closed__12@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_12:
  // load global constant _l_keys___closed__0
  adrp x19, _l_keys___closed__0@PAGE
  ldr x19, [x19, _l_keys___closed__0@PAGEOFF]
  // load global constant _l_main___closed__11
  adrp x20, _l_main___closed__11@PAGE
  ldr x20, [x20, _l_main___closed__11@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_main__closed_11:
  // lit nat 2
  movz x19, #5, lsl #0
  // inline lean_mk_empty_array_with_capacity
  mov x0, x19
  bl _lean_mk_empty_array_with_capacity
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_main__closed_10:
  // lit string "helooooo"
  adrp x0, _str_main__closed_10_0_data@PAGE
  add x0, x0, _str_main__closed_10_0_data@PAGEOFF
  movz x1, #8, lsl #0
  movz x2, #8, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_main__closed_10_0_data:
  .byte 0x68, 0x65, 0x6C, 0x6F, 0x6F, 0x6F, 0x6F, 0x6F, 0x00  // null terminator
  .text

  .globl __init_l_main___closed__9
  .align 2
__init_l_main___closed__9:
  // Function: main._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_9:
  // load global constant _l_keys___closed__9
  adrp x19, _l_keys___closed__9@PAGE
  ldr x19, [x19, _l_keys___closed__9@PAGEOFF]
  // load global constant _l_main___closed__8
  adrp x20, _l_main___closed__8@PAGE
  ldr x20, [x20, _l_main___closed__8@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_8:
  // load global constant _l_keys___closed__0
  adrp x19, _l_keys___closed__0@PAGE
  ldr x19, [x19, _l_keys___closed__0@PAGEOFF]
  // load global constant _l_main___closed__7
  adrp x20, _l_main___closed__7@PAGE
  ldr x20, [x20, _l_main___closed__7@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_7:
  // load global constant _l_keys___closed__11
  adrp x19, _l_keys___closed__11@PAGE
  ldr x19, [x19, _l_keys___closed__11@PAGEOFF]
  // load global constant _l_main___closed__6
  adrp x20, _l_main___closed__6@PAGE
  ldr x20, [x20, _l_main___closed__6@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_6:
  // load global constant _l_keys___closed__9
  adrp x19, _l_keys___closed__9@PAGE
  ldr x19, [x19, _l_keys___closed__9@PAGEOFF]
  // load global constant _l_main___closed__5
  adrp x20, _l_main___closed__5@PAGE
  ldr x20, [x20, _l_main___closed__5@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_5:
  // load global constant _l_keys___closed__8
  adrp x19, _l_keys___closed__8@PAGE
  ldr x19, [x19, _l_keys___closed__8@PAGEOFF]
  // load global constant _l_main___closed__4
  adrp x20, _l_main___closed__4@PAGE
  ldr x20, [x20, _l_main___closed__4@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_4:
  // load global constant _l_keys___closed__1
  adrp x19, _l_keys___closed__1@PAGE
  ldr x19, [x19, _l_keys___closed__1@PAGEOFF]
  // load global constant _l_main___closed__3
  adrp x20, _l_main___closed__3@PAGE
  ldr x20, [x20, _l_main___closed__3@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_3:
  // load global constant _l_keys___closed__4
  adrp x19, _l_keys___closed__4@PAGE
  ldr x19, [x19, _l_keys___closed__4@PAGEOFF]
  // load global constant _l_main___closed__2
  adrp x20, _l_main___closed__2@PAGE
  ldr x20, [x20, _l_main___closed__2@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_2:
  // load global constant _l_keys___closed__6
  adrp x19, _l_keys___closed__6@PAGE
  ldr x19, [x19, _l_keys___closed__6@PAGEOFF]
  // load global constant _l_main___closed__1
  adrp x20, _l_main___closed__1@PAGE
  ldr x20, [x20, _l_main___closed__1@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_1:
  // load global constant _l_keys___closed__2
  adrp x19, _l_keys___closed__2@PAGE
  ldr x19, [x19, _l_keys___closed__2@PAGEOFF]
  // load global constant _l_main___closed__0
  adrp x20, _l_main___closed__0@PAGE
  ldr x20, [x20, _l_main___closed__0@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_main__closed_0:
  // lit nat 9
  movz x19, #19, lsl #0
  // inline lean_mk_empty_array_with_capacity
  mov x0, x19
  bl _lean_mk_empty_array_with_capacity
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #48
  // Stack frame: 48 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // call USize.decLt with 2 runtime args
  mov x0, x22
  mov x1, x21
  bl _lean_usize_dec_lt
  and x8, x0, #255
  strb w8, [sp]
  ldrb w8, [sp]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_1
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_2
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_1:
  // ctor EST.Out.ok (tag=0, objs=1, usize=0, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  str x23, [x24, #8]
  // return
  mov x0, x24
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_2:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0
  adrp x25, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0@PAGE
  ldr x25, [x25, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0@PAGEOFF]
  // call IO.println._at_.T.check.spec_0 with 1 runtime args
  mov x0, x25
  bl _l_IO_println___at___00T_check_spec__0
  mov x8, x0
  str x8, [sp, #8]
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_3
  ldrb w9, [x8, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_4
.scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_3:
  lsr x9, x8, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_4:
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_6
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_7
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_5
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_6:
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_T_empty
  adrp x27, _l_T_empty@PAGE
  ldr x27, [x27, _l_T_empty@PAGEOFF]
  // call T.check with 1 runtime args
  mov x0, x27
  bl _l_T_check
  mov x8, x0
  str x8, [sp, #16]
  ldr x8, [sp, #16]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_8
  ldrb w9, [x8, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_9
.scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_8:
  lsr x9, x8, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_9:
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_11
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_12
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_10
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_11:
  // dec 1
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec_ref
  // call Array.uget with 2 runtime args
  mov x0, x20
  mov x1, x22
  bl _lean_array_uget
  mov x25, x0
  // call Array.usize with 1 runtime args
  mov x0, x25
  bl _lean_array_size
  mov x24, x0
  movz x26, #0, lsl #0
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0 with 4 runtime args
  mov x0, x25
  mov x1, x24
  mov x2, x26
  mov x3, x27
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0
  mov x28, x0
  // dec 1
  mov x0, x25
  bl _lean_dec
  // case
  // runtime scalar check
  tst x28, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_13
  ldrb w8, [x28, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_14
.scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_13:
  lsr x8, x28, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_14:
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_16
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_17
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_15
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_16:
  // dec 1
  mov x0, x28
  bl _lean_dec_ref
  movz x26, #1, lsl #0
  // inline lean_usize_add
  add x25, x22, x26
  // true tail call to self with 5 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x25
  mov x4, x19
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_15
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_17:
  // isShared (inline)
  tst x28, #1
  b.ne .is_shared_scalar__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_19
  ldr w8, [x28]
  cmp x8, #1
  cset x24, ne
  b .is_shared_done__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_18
.is_shared_scalar__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_19:
  mov x24, #1
.is_shared_done__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_18:
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_21
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_22
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_20
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_21:
  // return
  mov x0, x28
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_20
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_22:
  // proj field 0
  ldr x26, [x28, #8]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // dec 1
  mov x0, x28
  bl _lean_dec
  // ctor EST.Out.error (tag=1, objs=1, usize=0, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  str x26, [x25, #8]
  // return
  mov x0, x25
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_20
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_20:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_15
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_15:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_10
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_12:
  // return
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_10
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_10:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_5
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_7:
  // return
  ldr x9, [sp, #8]
  mov x0, x9
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_5
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_5:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_0
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1_0:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1__closed_0:
  // lit string "Resetting trie"
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1__closed_0_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1__closed_0_0_data@PAGEOFF
  movz x1, #14, lsl #0
  movz x2, #14, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_1__closed_0_0_data:
  .byte 0x52, 0x65, 0x73, 0x65, 0x74, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x74, 0x72, 0x69, 0x65, 0x00  // null terminator
  .text

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #32
  // Stack frame: 32 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  // call USize.decLt with 2 runtime args
  mov x0, x21
  mov x1, x20
  bl _lean_usize_dec_lt
  and x8, x0, #255
  strb w8, [sp]
  ldrb w8, [sp]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_1
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_2
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_1:
  // ctor EST.Out.ok (tag=0, objs=1, usize=0, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  str x22, [x28, #8]
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
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_2:
  // call Array.uget with 2 runtime args
  mov x0, x19
  mov x1, x21
  bl _lean_array_uget
  mov x24, x0
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0
  adrp x25, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0@PAGE
  ldr x25, [x25, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0@PAGEOFF]
  // call String.append with 2 runtime args
  mov x0, x25
  mov x1, x24
  bl _lean_string_append
  mov x26, x0
  // call IO.println._at_.T.check.spec_0 with 1 runtime args
  mov x0, x26
  bl _l_IO_println___at___00T_check_spec__0
  mov x27, x0
  // case
  // runtime scalar check
  tst x27, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_3
  ldrb w8, [x27, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_4
.scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_3:
  lsr x8, x27, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_4:
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_6
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_7
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_5
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_6:
  // dec 1
  mov x0, x27
  bl _lean_dec_ref
  // call T.insert with 2 runtime args
  mov x0, x22
  mov x1, x24
  bl _l_T_insert
  mov x8, x0
  str x8, [sp, #8]
  // inc 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc_ref
  // call T.check with 1 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  bl _l_T_check
  mov x26, x0
  // case
  // runtime scalar check
  tst x26, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_8
  ldrb w8, [x26, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_9
.scalar_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_8:
  lsr x8, x26, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_9:
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_11
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_12
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_10
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_11:
  // dec 1
  mov x0, x26
  bl _lean_dec_ref
  movz x23, #1, lsl #0
  // inline lean_usize_add
  add x25, x21, x23
  // true tail call to self with 4 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x25
  ldr x8, [sp, #8]
  mov x3, x8
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_10
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_12:
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // isShared (inline)
  tst x26, #1
  b.ne .is_shared_scalar__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_14
  ldr w8, [x26]
  cmp x8, #1
  cset x28, ne
  b .is_shared_done__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_13
.is_shared_scalar__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_14:
  mov x28, #1
.is_shared_done__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_13:
  // case
  mov x8, x28
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_16
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_17
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_15
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_16:
  // return
  mov x0, x26
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_15
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_17:
  // proj field 0
  ldr x23, [x26, #8]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // dec 1
  mov x0, x26
  bl _lean_dec
  // ctor EST.Out.error (tag=1, objs=1, usize=0, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  str x23, [x25, #8]
  // return
  mov x0, x25
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_15
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_15:
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_10
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_10:
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_5
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_7:
  // dec 1
  mov x0, x24
  bl _lean_dec
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // isShared (inline)
  tst x27, #1
  b.ne .is_shared_scalar__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_19
  ldr w8, [x27]
  cmp x8, #1
  cset x28, ne
  b .is_shared_done__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_18
.is_shared_scalar__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_19:
  mov x28, #1
.is_shared_done__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_18:
  // case
  mov x8, x28
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_21
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_22
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_20
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_21:
  // return
  mov x0, x27
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_20
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_22:
  // proj field 0
  ldr x25, [x27, #8]
  // inc 1
  mov x0, x25
  bl _lean_inc
  // dec 1
  mov x0, x27
  bl _lean_dec
  // ctor EST.Out.error (tag=1, objs=1, usize=0, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  str x25, [x26, #8]
  // return
  mov x0, x26
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_20
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_20:
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_5
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_5:
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_0
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0_0:
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0__closed_0:
  // lit string "Inserting "
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0__closed_0_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0__closed_0_0_data@PAGEOFF
  movz x1, #10, lsl #0
  movz x2, #10, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__main_spec_0__closed_0_0_data:
  .byte 0x49, 0x6E, 0x73, 0x65, 0x72, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x00  // null terminator
  .text

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  mov x0, x22
  bl _lean_unbox_usize
  mov x26, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
  // unbox
  mov x0, x23
  bl _lean_unbox_usize
  mov x27, x0
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2 with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x26
  mov x4, x27
  mov x5, x24
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2
  mov x28, x0
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // return
  mov x0, x28
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_T_check___boxed
  .align 2
_l_T_check___boxed:
  // Function: T.check._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_T_check__boxed:
  mov x19, x0
  mov x20, x1
  // general tail call to T.check with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_T_check

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  mov x0, x22
  bl _lean_unbox_usize
  mov x26, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
  // unbox
  mov x0, x23
  bl _lean_unbox_usize
  mov x27, x0
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4 with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x26
  mov x4, x27
  mov x5, x24
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4
  mov x28, x0
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // return
  mov x0, x28
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_3._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  mov x0, x22
  bl _lean_unbox_usize
  mov x26, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
  // unbox
  mov x0, x23
  bl _lean_unbox_usize
  mov x27, x0
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_3 with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x26
  mov x4, x27
  mov x5, x24
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3
  mov x28, x0
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // return
  mov x0, x28
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___redArg___boxed
  .align 2
_l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___redArg___boxed:
  // Function: Array.isEqvAux._at_.Array.instDecidableEqImpl._at_.T.check.spec_1.spec_2._redArg._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // call Array.isEqvAux._at_.Array.instDecidableEqImpl._at_.T.check.spec_1.spec_2._redArg with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  bl _l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___redArg
  and x22, x0, #255
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // box
  lsl x11, x22, #1
  orr x11, x11, #1
  // return
  mov x0, x11
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Array_instDecidableEqImpl___at___00T_check_spec__1___boxed
  .align 2
_l_Array_instDecidableEqImpl___at___00T_check_spec__1___boxed:
  // Function: Array.instDecidableEqImpl._at_.T.check.spec_1._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_Array_instDecidableEqImpl__at__T_check_spec_1__boxed:
  mov x19, x0
  mov x20, x1
  // call Array.instDecidableEqImpl._at_.T.check.spec_1 with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_Array_instDecidableEqImpl___at___00T_check_spec__1
  and x21, x0, #255
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // box
  lsl x11, x21, #1
  orr x11, x11, #1
  // return
  mov x0, x11
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_print___at___00IO_println___at___00T_check_spec__0_spec__0___boxed
  .align 2
_l_IO_print___at___00IO_println___at___00T_check_spec__0_spec__0___boxed:
  // Function: IO.print._at_.IO.println._at_.T.check.spec_0.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_print__at__IO_println__at__T_check_spec_0_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  // general tail call to IO.print._at_.IO.println._at_.T.check.spec_0.spec_0 with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00T_check_spec__0_spec__0

  .globl _l_IO_println___at___00T_check_spec__0___boxed
  .align 2
_l_IO_println___at___00T_check_spec__0___boxed:
  // Function: IO.println._at_.T.check.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__T_check_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  // general tail call to IO.println._at_.T.check.spec_0 with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00T_check_spec__0

  .globl _l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___boxed
  .align 2
_l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___boxed:
  // Function: Array.isEqvAux._at_.Array.instDecidableEqImpl._at_.T.check.spec_1.spec_2._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 3/5, fp 0/4)
.Lfn_start_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // call Array.isEqvAux._at_.Array.instDecidableEqImpl._at_.T.check.spec_1.spec_2 with 5 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  bl _l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2
  and x24, x0, #255
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // box
  lsl x11, x24, #1
  orr x11, x11, #1
  // return
  mov x0, x11
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_T_check
  .align 2
_l_T_check:
  // Function: T.check
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #64
  // Stack frame: 64 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_T_check:
  mov x19, x0
  // proj field 0
  ldr x8, [x19, #8]
  str x8, [sp, #8]
  // inc 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // proj field 1
  ldr x8, [x19, #16]
  str x8, [sp]
  // inc 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load global constant _l_keys
  adrp x9, _l_keys@PAGE
  ldr x9, [x9, _l_keys@PAGEOFF]
  str x9, [sp, #16]
  // load global constant _l_T_check___closed__1
  adrp x24, _l_T_check___closed__1@PAGE
  add x24, x24, _l_T_check___closed__1@PAGEOFF
  ldrb w24, [x24]
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .case_ctor_T_check_1
  cmp x8, #1
  b.eq .case_ctor_T_check_2
  b .case_end_T_check_0
.case_ctor_T_check_1:
  // jump to JP31
  mov x12, #1
  b .JP_T_check_3
  b .case_end_T_check_0
.case_ctor_T_check_2:
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x25, #1
  // load global constant _l_T_check___closed__2
  adrp x26, _l_T_check___closed__2@PAGE
  add x26, x26, _l_T_check___closed__2@PAGEOFF
  ldrb w26, [x26]
  // case
  mov x8, x26
  cmp x8, #0
  b.eq .case_ctor_T_check_5
  cmp x8, #1
  b.eq .case_ctor_T_check_6
  b .case_end_T_check_4
.case_ctor_T_check_5:
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .case_ctor_T_check_8
  cmp x8, #1
  b.eq .case_ctor_T_check_9
  b .case_end_T_check_7
.case_ctor_T_check_8:
  // jump to JP31
  mov x12, #1
  b .JP_T_check_3
  b .case_end_T_check_7
.case_ctor_T_check_9:
  movz x19, #0, lsl #0
  // load global constant _l_T_check___closed__3
  adrp x20, _l_T_check___closed__3@PAGE
  ldr x20, [x20, _l_T_check___closed__3@PAGEOFF]
  // inc 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4 with 6 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  ldr x8, [sp]
  mov x1, x8
  ldr x8, [sp, #16]
  mov x2, x8
  mov x3, x19
  mov x4, x20
  mov x5, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4
  mov x21, x0
  // jump to JP33
  str x21, [sp, #24]
  b .JP_T_check_10
  b .case_end_T_check_7
.case_end_T_check_7:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_T_check_4
.case_ctor_T_check_6:
  movz x23, #0, lsl #0
  // load global constant _l_T_check___closed__3
  adrp x22, _l_T_check___closed__3@PAGE
  ldr x22, [x22, _l_T_check___closed__3@PAGEOFF]
  // inc 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4 with 6 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  ldr x8, [sp]
  mov x1, x8
  ldr x8, [sp, #16]
  mov x2, x8
  mov x3, x23
  mov x4, x22
  mov x5, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4
  mov x28, x0
  // jump to JP33
  str x28, [sp, #24]
  b .JP_T_check_10
  b .case_end_T_check_4
.case_end_T_check_4:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_T_check_0
.case_end_T_check_0:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_T_check_10:
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_T_check_11
  ldrb w9, [x8, #7]
  b .compare_tag_T_check_12
.scalar_tag_T_check_11:
  lsr x9, x8, #1
.compare_tag_T_check_12:
  cmp x9, #0
  b.eq .case_ctor_T_check_14
  cmp x9, #1
  b.eq .case_ctor_T_check_15
  b .case_end_T_check_13
.case_ctor_T_check_14:
  // dec 1
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP31
  mov x12, #1
  b .JP_T_check_3
  b .case_end_T_check_13
.case_ctor_T_check_15:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec
  // return
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
  b .case_end_T_check_13
.case_end_T_check_13:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_T_check_3:
  // load global constant _l_T_check___closed__1
  adrp x27, _l_T_check___closed__1@PAGE
  add x27, x27, _l_T_check___closed__1@PAGEOFF
  ldrb w27, [x27]
  // case
  mov x8, x27
  cmp x8, #0
  b.eq .case_ctor_T_check_17
  cmp x8, #1
  b.eq .case_ctor_T_check_18
  b .case_end_T_check_16
.case_ctor_T_check_17:
  // jump to JP18
  mov x11, #1
  b .JP_T_check_19
  b .case_end_T_check_16
.case_ctor_T_check_18:
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x23, #1
  // load global constant _l_T_check___closed__2
  adrp x22, _l_T_check___closed__2@PAGE
  add x22, x22, _l_T_check___closed__2@PAGEOFF
  ldrb w22, [x22]
  // case
  mov x8, x22
  cmp x8, #0
  b.eq .case_ctor_T_check_21
  cmp x8, #1
  b.eq .case_ctor_T_check_22
  b .case_end_T_check_20
.case_ctor_T_check_21:
  // case
  mov x8, x27
  cmp x8, #0
  b.eq .case_ctor_T_check_24
  cmp x8, #1
  b.eq .case_ctor_T_check_25
  b .case_end_T_check_23
.case_ctor_T_check_24:
  // jump to JP18
  mov x11, #1
  b .JP_T_check_19
  b .case_end_T_check_23
.case_ctor_T_check_25:
  movz x28, #0, lsl #0
  // load global constant _l_T_check___closed__3
  adrp x24, _l_T_check___closed__3@PAGE
  ldr x24, [x24, _l_T_check___closed__3@PAGEOFF]
  // inc 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_3 with 6 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  ldr x8, [sp]
  mov x1, x8
  ldr x8, [sp, #16]
  mov x2, x8
  mov x3, x28
  mov x4, x24
  mov x5, x23
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3
  mov x26, x0
  // jump to JP20
  str x26, [sp, #32]
  b .JP_T_check_26
  b .case_end_T_check_23
.case_end_T_check_23:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_T_check_20
.case_ctor_T_check_22:
  movz x26, #0, lsl #0
  // load global constant _l_T_check___closed__3
  adrp x28, _l_T_check___closed__3@PAGE
  ldr x28, [x28, _l_T_check___closed__3@PAGEOFF]
  // inc 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_3 with 6 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  ldr x8, [sp]
  mov x1, x8
  ldr x8, [sp, #16]
  mov x2, x8
  mov x3, x26
  mov x4, x28
  mov x5, x23
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3
  mov x24, x0
  // jump to JP20
  str x24, [sp, #32]
  b .JP_T_check_26
  b .case_end_T_check_20
.case_end_T_check_20:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_T_check_16
.case_end_T_check_16:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_T_check_26:
  ldr x8, [sp, #32]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_T_check_27
  ldrb w9, [x8, #7]
  b .compare_tag_T_check_28
.scalar_tag_T_check_27:
  lsr x9, x8, #1
.compare_tag_T_check_28:
  cmp x9, #0
  b.eq .case_ctor_T_check_30
  cmp x9, #1
  b.eq .case_ctor_T_check_31
  b .case_end_T_check_29
.case_ctor_T_check_30:
  // dec 1
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP18
  mov x11, #1
  b .JP_T_check_19
  b .case_end_T_check_29
.case_ctor_T_check_31:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec
  // return
  ldr x8, [sp, #32]
  mov x0, x8
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_T_check_29
.case_end_T_check_29:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_T_check_19:
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x20, #1
  // load global constant _l_T_check___closed__1
  adrp x21, _l_T_check___closed__1@PAGE
  add x21, x21, _l_T_check___closed__1@PAGEOFF
  ldrb w21, [x21]
  // case
  mov x8, x21
  cmp x8, #0
  b.eq .case_ctor_T_check_33
  cmp x8, #1
  b.eq .case_ctor_T_check_34
  b .case_end_T_check_32
.case_ctor_T_check_33:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec
  // ctor EST.Out.ok (tag=0, objs=1, usize=0, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  str x20, [x28, #8]
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
  b .case_end_T_check_32
.case_ctor_T_check_34:
  // load global constant _l_T_check___closed__2
  adrp x25, _l_T_check___closed__2@PAGE
  add x25, x25, _l_T_check___closed__2@PAGEOFF
  ldrb w25, [x25]
  // case
  mov x8, x25
  cmp x8, #0
  b.eq .case_ctor_T_check_36
  cmp x8, #1
  b.eq .case_ctor_T_check_37
  b .case_end_T_check_35
.case_ctor_T_check_36:
  // case
  mov x8, x21
  cmp x8, #0
  b.eq .case_ctor_T_check_39
  cmp x8, #1
  b.eq .case_ctor_T_check_40
  b .case_end_T_check_38
.case_ctor_T_check_39:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec
  // ctor EST.Out.ok (tag=0, objs=1, usize=0, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  str x20, [x26, #8]
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
  b .case_end_T_check_38
.case_ctor_T_check_40:
  movz x26, #0, lsl #0
  // load global constant _l_T_check___closed__3
  adrp x28, _l_T_check___closed__3@PAGE
  ldr x28, [x28, _l_T_check___closed__3@PAGEOFF]
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2 with 6 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  ldr x8, [sp]
  mov x1, x8
  ldr x8, [sp, #16]
  mov x2, x8
  mov x3, x26
  mov x4, x28
  mov x5, x20
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2
  mov x24, x0
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // return
  mov x0, x24
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_T_check_38
.case_end_T_check_38:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_T_check_35
.case_ctor_T_check_37:
  movz x26, #0, lsl #0
  // load global constant _l_T_check___closed__3
  adrp x27, _l_T_check___closed__3@PAGE
  ldr x27, [x27, _l_T_check___closed__3@PAGEOFF]
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2 with 6 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  ldr x8, [sp]
  mov x1, x8
  ldr x8, [sp, #16]
  mov x2, x8
  mov x3, x26
  mov x4, x27
  mov x5, x20
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2
  mov x28, x0
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
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
  b .case_end_T_check_35
.case_end_T_check_35:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_T_check_32
.case_end_T_check_32:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #96
  // Stack frame: 96 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // call USize.decEq with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_usize_dec_eq
  and x8, x0, #255
  strb w8, [sp, #48]
  ldrb w8, [sp, #48]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_1
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_2
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_1:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_array_uget
  mov x8, x0
  str x8, [sp]
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  str x8, [sp, #8]
  // lit nat 0
  movz x25, #1, lsl #0
  // call String.utf8ByteSize with 1 runtime args
  ldr x8, [sp]
  mov x0, x8
  bl _lean_string_utf8_byte_size
  mov x26, x0
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.matchPrefix._redArg with 4 runtime args
  ldr x9, [sp]
  mov x0, x9
  mov x1, x19
  mov x2, x25
  mov x3, x26
  bl _l_Lean_Data_Trie_matchPrefix___redArg
  mov x8, x0
  str x8, [sp, #64]
  // inc 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_inc
  // call Array.matchPrefix with 2 runtime args
  mov x0, x20
  ldr x9, [sp]
  mov x1, x9
  bl _l_Array_matchPrefix
  mov x8, x0
  str x8, [sp, #16]
  // inc 1
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_inc
  // inc 1
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // call Option.instDecidableEq._redArg with 3 runtime args
  ldr x9, [sp, #8]
  mov x0, x9
  ldr x9, [sp, #64]
  mov x1, x9
  ldr x9, [sp, #16]
  mov x2, x9
  bl _l_Option_instDecidableEq___redArg
  and x8, x0, #255
  strb w8, [sp, #32]
  ldrb w8, [sp, #32]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_4
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_5
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_4:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4
  adrp x26, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4@PAGE
  ldr x26, [x26, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4@PAGEOFF]
  // call String.append with 2 runtime args
  mov x0, x26
  ldr x8, [sp]
  mov x1, x8
  bl _lean_string_append
  mov x25, x0
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5
  adrp x9, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5@PAGE
  ldr x9, [x9, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5@PAGEOFF]
  str x9, [sp, #8]
  // call String.append with 2 runtime args
  mov x0, x25
  ldr x9, [sp, #8]
  mov x1, x9
  bl _lean_string_append
  mov x8, x0
  str x8, [sp, #72]
  ldr x8, [sp, #64]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_6
  ldrb w9, [x8, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_7
.scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_6:
  lsr x9, x8, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_7:
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_9
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_10
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_8
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_9:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7
  adrp x27, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7@PAGE
  ldr x27, [x27, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7@PAGEOFF]
  // jump to JP61
  mov x26, x27
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_11
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_8
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_10:
  ldr x8, [sp, #64]
  // proj field 0
  ldr x26, [x8, #8]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // dec 1
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8
  adrp x28, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8@PAGE
  ldr x28, [x28, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8@PAGEOFF]
  // call addParenHeuristic with 1 runtime args
  mov x0, x26
  bl _l_addParenHeuristic
  mov x27, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x28
  mov x1, x27
  bl _lean_string_append
  mov x25, x0
  // dec 1
  mov x0, x27
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9
  adrp x26, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9@PAGE
  ldr x26, [x26, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9@PAGEOFF]
  // call String.Internal.append with 2 runtime args
  mov x0, x25
  mov x1, x26
  bl _lean_string_append
  mov x28, x0
  // jump to JP61
  mov x26, x28
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_11
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_8
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_8:
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_11:
  // call String.append with 2 runtime args
  ldr x8, [sp, #72]
  mov x0, x8
  mov x1, x26
  bl _lean_string_append
  mov x27, x0
  // dec 1
  mov x0, x26
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6
  adrp x28, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6@PAGE
  ldr x28, [x28, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6@PAGEOFF]
  // call String.append with 2 runtime args
  mov x0, x27
  mov x1, x28
  bl _lean_string_append
  mov x8, x0
  str x8, [sp, #40]
  ldr x8, [sp, #16]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_12
  ldrb w9, [x8, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_13
.scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_12:
  lsr x9, x8, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_13:
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_15
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_16
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_14
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_15:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7
  adrp x27, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7@PAGE
  ldr x27, [x27, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7@PAGEOFF]
  // jump to JP39
  ldr x26, [sp, #40]
  mov x25, x27
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_17
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_14
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_16:
  ldr x8, [sp, #16]
  // proj field 0
  ldr x27, [x8, #8]
  // inc 1
  mov x0, x27
  bl _lean_inc
  // dec 1
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8
  adrp x28, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8@PAGE
  ldr x28, [x28, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8@PAGEOFF]
  // call addParenHeuristic with 1 runtime args
  mov x0, x27
  bl _l_addParenHeuristic
  mov x26, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x28
  mov x1, x26
  bl _lean_string_append
  mov x25, x0
  // dec 1
  mov x0, x26
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9
  adrp x27, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9@PAGE
  ldr x27, [x27, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9@PAGEOFF]
  // call String.Internal.append with 2 runtime args
  mov x0, x25
  mov x1, x27
  bl _lean_string_append
  mov x28, x0
  // jump to JP39
  ldr x26, [sp, #40]
  mov x25, x28
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_17
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_14
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_14:
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_5:
  // dec 1
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec
  // dec 1
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_dec
  // jump to JP32
  mov x11, #1
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_18
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_3
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_3:
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_17:
  // call String.append with 2 runtime args
  mov x0, x26
  mov x1, x25
  bl _lean_string_append
  mov x8, x0
  str x8, [sp, #24]
  // dec 1
  mov x0, x25
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3
  adrp x9, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3@PAGE
  ldr x9, [x9, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3@PAGEOFF]
  str x9, [sp, #64]
  // call String.append with 2 runtime args
  ldr x8, [sp, #24]
  mov x0, x8
  ldr x8, [sp, #64]
  mov x1, x8
  bl _lean_string_append
  mov x25, x0
  // call IO.println._at_.T.check.spec_0 with 1 runtime args
  mov x0, x25
  bl _l_IO_println___at___00T_check_spec__0
  mov x8, x0
  str x8, [sp, #8]
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_19
  ldrb w9, [x8, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_20
.scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_19:
  lsr x9, x8, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_20:
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_22
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_23
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_21
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_22:
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP32
  mov x11, #1
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_18
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_21
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_23:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // jump to JP16
  ldr x8, [sp, #8]
  str x8, [sp, #16]
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_24
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_21
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_21:
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_18:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0
  adrp x25, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0@PAGE
  ldr x25, [x25, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0@PAGEOFF]
  // call String.append with 2 runtime args
  mov x0, x25
  ldr x8, [sp]
  mov x1, x8
  bl _lean_string_append
  mov x27, x0
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x28, x0
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1
  adrp x25, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1@PAGE
  ldr x25, [x25, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1@PAGEOFF]
  // call String.utf8ByteSize with 1 runtime args
  mov x0, x27
  bl _lean_string_utf8_byte_size
  mov x26, x0
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.matchPrefix._redArg with 4 runtime args
  mov x0, x27
  mov x1, x19
  mov x2, x25
  mov x3, x26
  bl _l_Lean_Data_Trie_matchPrefix___redArg
  mov x8, x0
  str x8, [sp, #8]
  // dec 1
  mov x0, x27
  bl _lean_dec_ref
  // inc 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_inc
  // call Array.matchPrefix with 2 runtime args
  mov x0, x20
  ldr x8, [sp]
  mov x1, x8
  bl _l_Array_matchPrefix
  mov x27, x0
  // call Option.instDecidableEq._redArg with 3 runtime args
  mov x0, x28
  ldr x9, [sp, #8]
  mov x1, x9
  mov x2, x27
  bl _l_Option_instDecidableEq___redArg
  and x8, x0, #255
  str x8, [sp, #40]
  ldr x8, [sp, #40]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_26
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_27
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_25
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_26:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2
  adrp x9, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2@PAGE
  ldr x9, [x9, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2@PAGEOFF]
  str x9, [sp, #72]
  // call String.append with 2 runtime args
  ldr x8, [sp, #72]
  mov x0, x8
  ldr x8, [sp]
  mov x1, x8
  bl _lean_string_append
  mov x27, x0
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // call IO.println._at_.T.check.spec_0 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00T_check_spec__0
  mov x28, x0
  // jump to JP16
  str x28, [sp, #16]
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_24
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_25
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_27:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x28, #1
  // jump to JP13
  str x28, [sp, #56]
  mov x26, #1
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_28
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_25
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_25:
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_2:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // ctor EST.Out.ok (tag=0, objs=1, usize=0, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  str x24, [x25, #8]
  // return
  mov x0, x25
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_0
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_0:
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_24:
  ldr x8, [sp, #16]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_29
  ldrb w9, [x8, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_30
.scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_29:
  lsr x9, x8, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_30:
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_32
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_33
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_31
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_32:
  ldr x8, [sp, #16]
  // proj field 0
  ldr x9, [x8, #8]
  str x9, [sp, #32]
  // inc 1
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  ldr x8, [sp, #32]
  str x8, [sp, #56]
  mov x26, #1
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_28
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_31
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_33:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_31
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_31:
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2_28:
  movz x27, #1, lsl #0
  // inline lean_usize_add
  add x8, x22, x27
  str x8, [sp, #24]
  // true tail call to self with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  ldr x8, [sp, #24]
  mov x3, x8
  mov x4, x23
  ldr x8, [sp, #56]
  mov x5, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_9:
  // lit string ")"
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_9_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_9_0_data@PAGEOFF
  movz x1, #1, lsl #0
  movz x2, #1, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_9_0_data:
  .byte 0x29, 0x00  // null terminator
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_8:
  // lit string "(some "
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_8_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_8_0_data@PAGEOFF
  movz x1, #6, lsl #0
  movz x2, #6, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_8_0_data:
  .byte 0x28, 0x73, 0x6F, 0x6D, 0x65, 0x20, 0x00  // null terminator
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_7:
  // lit string "none"
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_7_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_7_0_data@PAGEOFF
  movz x1, #4, lsl #0
  movz x2, #4, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_7_0_data:
  .byte 0x6E, 0x6F, 0x6E, 0x65, 0x00  // null terminator
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_6:
  // lit string " exp: "
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_6_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_6_0_data@PAGEOFF
  movz x1, #6, lsl #0
  movz x2, #6, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_6_0_data:
  .byte 0x20, 0x65, 0x78, 0x70, 0x3A, 0x20, 0x00  // null terminator
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_5:
  // lit string ", got: "
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_5_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_5_0_data@PAGEOFF
  movz x1, #7, lsl #0
  movz x2, #7, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_5_0_data:
  .byte 0x2C, 0x20, 0x67, 0x6F, 0x74, 0x3A, 0x20, 0x00  // null terminator
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_4:
  // lit string "matchPrefix differs:..."
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_4_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_4_0_data@PAGEOFF
  movz x1, #27, lsl #0
  movz x2, #27, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_4_0_data:
  .byte 0x6D, 0x61, 0x74, 0x63, 0x68, 0x50, 0x72, 0x65, 0x66, 0x69, 0x78, 0x20, 0x64, 0x69, 0x66, 0x66, 0x65, 0x72, 0x73, 0x3A, 0x20, 0x6B, 0x65, 0x79, 0x20, 0x3D, 0x20, 0x00  // null terminator
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_3:
  // lit string " "
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_3_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_3_0_data@PAGEOFF
  movz x1, #1, lsl #0
  movz x2, #1, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_3_0_data:
  .byte 0x20, 0x00  // null terminator
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_2:
  // lit string "matchPrefix differs ..."
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_2_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_2_0_data@PAGEOFF
  movz x1, #41, lsl #0
  movz x2, #41, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_2_0_data:
  .byte 0x6D, 0x61, 0x74, 0x63, 0x68, 0x50, 0x72, 0x65, 0x66, 0x69, 0x78, 0x20, 0x64, 0x69, 0x66, 0x66, 0x65, 0x72, 0x73, 0x20, 0x28, 0x77, 0x69, 0x74, 0x68, 0x20, 0x70, 0x72, 0x65, 0x66, 0x69, 0x78, 0x29, 0x3A, 0x20, 0x6B, 0x65, 0x79, 0x20, 0x3D, 0x20, 0x00  // null terminator
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_1:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0
  adrp x19, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0@PAGE
  ldr x19, [x19, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0@PAGEOFF]
  // call String.utf8ByteSize with 1 runtime args
  mov x0, x19
  bl _lean_string_utf8_byte_size
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_0:
  // lit string "somePrefix"
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_0_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_0_0_data@PAGEOFF
  movz x1, #10, lsl #0
  movz x2, #10, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_2__closed_0_0_data:
  .byte 0x73, 0x6F, 0x6D, 0x65, 0x50, 0x72, 0x65, 0x66, 0x69, 0x78, 0x00  // null terminator
  .text

  .globl __init_l_T_check___closed__3
  .align 2
__init_l_T_check___closed__3:
  // Function: T.check._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_T_check__closed_3:
  // load global constant _l_T_check___closed__0
  adrp x19, _l_T_check___closed__0@PAGE
  ldr x19, [x19, _l_T_check___closed__0@PAGEOFF]
  // call USize.ofNat with 1 runtime args
  mov x0, x19
  bl _lean_usize_of_nat
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_T_check___closed__2
  .align 2
__init_l_T_check___closed__2:
  // Function: T.check._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_T_check__closed_2:
  // load global constant _l_T_check___closed__0
  adrp x19, _l_T_check___closed__0@PAGE
  ldr x19, [x19, _l_T_check___closed__0@PAGEOFF]
  // call Nat.decLe with 2 runtime args
  mov x0, x19
  mov x1, x19
  bl _lean_nat_dec_le
  and x20, x0, #255
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_T_check___closed__1
  .align 2
__init_l_T_check___closed__1:
  // Function: T.check._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_T_check__closed_1:
  // load global constant _l_T_check___closed__0
  adrp x19, _l_T_check___closed__0@PAGE
  ldr x19, [x19, _l_T_check___closed__0@PAGEOFF]
  // lit nat 0
  movz x20, #1, lsl #0
  // call Nat.decLt with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_nat_dec_lt
  and x21, x0, #255
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_T_check___closed__0
  .align 2
__init_l_T_check___closed__0:
  // Function: T.check._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_T_check__closed_0:
  // load global constant _l_keys
  adrp x19, _l_keys@PAGE
  ldr x19, [x19, _l_keys@PAGEOFF]
  // call Array.size with 1 runtime args
  mov x0, x19
  bl _lean_array_get_size
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #112
  // Stack frame: 112 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // call USize.decEq with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_usize_dec_eq
  and x8, x0, #255
  strb w8, [sp]
  ldrb w8, [sp]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_1
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_2
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_1:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_array_uget
  mov x8, x0
  str x8, [sp, #64]
  // ctor Option.none (tag=0, objs=0, usize=0, scalar=0)
  mov x8, #1
  str x8, [sp, #32]
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x8, #1
  str x8, [sp, #56]
  // load global constant _l_Array_matchPrefix___closed__0
  adrp x28, _l_Array_matchPrefix___closed__0@PAGE
  ldr x28, [x28, _l_Array_matchPrefix___closed__0@PAGEOFF]
  // call Array.usize with 1 runtime args
  mov x0, x20
  bl _lean_array_size
  mov x25, x0
  movz x26, #0, lsl #0
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0 with 7 runtime args
  ldr x9, [sp, #64]
  mov x0, x9
  mov x1, x28
  ldr x9, [sp, #56]
  mov x2, x9
  mov x3, x20
  mov x4, x25
  mov x5, x26
  mov x6, x28
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Array_matchPrefix_spec__0
  mov x8, x0
  str x8, [sp, #88]
  ldr x8, [sp, #88]
  // proj field 0
  ldr x9, [x8, #8]
  str x9, [sp, #40]
  // inc 1
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // dec 1
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_dec_ref
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  str x8, [sp, #48]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.find?._redArg with 2 runtime args
  mov x0, x19
  ldr x9, [sp, #64]
  mov x1, x9
  bl _l_Lean_Data_Trie_find_x3f___redArg
  mov x8, x0
  str x8, [sp, #24]
  ldr x8, [sp, #40]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_3
  ldrb w9, [x8, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_4
.scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_3:
  lsr x9, x8, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_4:
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_6
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_7
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_5
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_6:
  // jump to JP31
  ldr x28, [sp, #32]
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_8
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_5
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_7:
  ldr x8, [sp, #40]
  // proj field 0
  ldr x26, [x8, #8]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // dec 1
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP31
  mov x28, x26
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_8
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_5
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_5:
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_8:
  // call Option.instDecidableEq._redArg with 3 runtime args
  ldr x9, [sp, #48]
  mov x0, x9
  ldr x9, [sp, #24]
  mov x1, x9
  mov x2, x28
  bl _l_Option_instDecidableEq___redArg
  and x8, x0, #255
  str x8, [sp, #72]
  ldr x8, [sp, #72]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_10
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_11
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_9
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_10:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0
  adrp x26, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0@PAGE
  ldr x26, [x26, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0@PAGEOFF]
  // call String.append with 2 runtime args
  mov x0, x26
  ldr x8, [sp, #64]
  mov x1, x8
  bl _lean_string_append
  mov x27, x0
  // dec 1
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_dec
  // call IO.println._at_.T.check.spec_0 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00T_check_spec__0
  mov x8, x0
  str x8, [sp, #80]
  ldr x8, [sp, #80]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_12
  ldrb w9, [x8, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_13
.scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_12:
  lsr x9, x8, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_13:
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_15
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_16
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_14
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_15:
  ldr x8, [sp, #80]
  // proj field 0
  ldr x27, [x8, #8]
  // inc 1
  mov x0, x27
  bl _lean_inc
  // dec 1
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  str x27, [sp, #16]
  mov x11, #1
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_17
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_14
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_16:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  ldr x8, [sp, #80]
  mov x0, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_14
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_14:
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_9
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_11:
  // dec 1
  ldr x9, [sp, #64]
  mov x0, x9
  bl _lean_dec
  // jump to JP13
  ldr x8, [sp, #56]
  str x8, [sp, #16]
  mov x11, #1
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_17
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_9
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_9:
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_2:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // ctor EST.Out.ok (tag=0, objs=1, usize=0, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  str x24, [x26, #8]
  // return
  mov x0, x26
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_0
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_0:
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4_17:
  movz x26, #1, lsl #0
  // inline lean_usize_add
  add x8, x22, x26
  str x8, [sp, #8]
  // true tail call to self with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  ldr x8, [sp, #8]
  mov x3, x8
  mov x4, x23
  ldr x8, [sp, #16]
  mov x5, x8
  add sp, sp, #112
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4__closed_0:
  // lit string "find? differs: key =..."
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4__closed_0_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4__closed_0_0_data@PAGEOFF
  movz x1, #21, lsl #0
  movz x2, #21, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_4__closed_0_0_data:
  .byte 0x66, 0x69, 0x6E, 0x64, 0x3F, 0x20, 0x64, 0x69, 0x66, 0x66, 0x65, 0x72, 0x73, 0x3A, 0x20, 0x6B, 0x65, 0x79, 0x20, 0x3D, 0x20, 0x00  // null terminator
  .text

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #48
  // Stack frame: 48 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // call USize.decEq with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_usize_dec_eq
  and x8, x0, #255
  strb w8, [sp]
  ldrb w8, [sp]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_1
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_2
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_1:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_array_uget
  mov x28, x0
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.findPrefix._redArg with 2 runtime args
  mov x0, x19
  mov x1, x28
  bl _l_Lean_Data_Trie_findPrefix___redArg
  mov x26, x0
  // call Array.sorted with 1 runtime args
  mov x0, x26
  bl _l_Array_sorted
  mov x27, x0
  // call Array.findPrefix with 2 runtime args
  mov x0, x20
  mov x1, x28
  bl _l_Array_findPrefix
  mov x25, x0
  // call Array.sorted with 1 runtime args
  mov x0, x25
  bl _l_Array_sorted
  mov x26, x0
  // call Array.instDecidableEqImpl._at_.T.check.spec_1 with 2 runtime args
  mov x0, x27
  mov x1, x26
  bl _l_Array_instDecidableEqImpl___at___00T_check_spec__1
  and x8, x0, #255
  strb w8, [sp, #24]
  // dec 1
  mov x0, x26
  bl _lean_dec_ref
  // dec 1
  mov x0, x27
  bl _lean_dec_ref
  ldrb w8, [sp, #24]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_4
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_5
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_4:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0
  adrp x25, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0@PAGE
  ldr x25, [x25, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0@PAGEOFF]
  // call String.append with 2 runtime args
  mov x0, x25
  mov x1, x28
  bl _lean_string_append
  mov x26, x0
  // dec 1
  mov x0, x28
  bl _lean_dec
  // call IO.println._at_.T.check.spec_0 with 1 runtime args
  mov x0, x26
  bl _l_IO_println___at___00T_check_spec__0
  mov x27, x0
  // case
  // runtime scalar check
  tst x27, #1
  b.ne .scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_6
  ldrb w8, [x27, #7]
  b .compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_7
.scalar_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_6:
  lsr x8, x27, #1
.compare_tag__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_7:
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_9
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_10
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_8
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_9:
  // proj field 0
  ldr x25, [x27, #8]
  // inc 1
  mov x0, x25
  bl _lean_inc
  // dec 1
  mov x0, x27
  bl _lean_dec_ref
  // jump to JP13
  str x25, [sp, #16]
  mov x11, #1
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_11
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_8
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_10:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x27
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_8
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_8:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_5:
  // dec 1
  mov x0, x28
  bl _lean_dec
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x13, #1
  // jump to JP13
  str x13, [sp, #16]
  mov x11, #1
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_11
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_3
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_3:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_2:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // ctor EST.Out.ok (tag=0, objs=1, usize=0, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  str x24, [x26, #8]
  // return
  mov x0, x26
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_0
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_0:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3_11:
  movz x26, #1, lsl #0
  // inline lean_usize_add
  add x8, x22, x26
  str x8, [sp, #8]
  // true tail call to self with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  ldr x8, [sp, #8]
  mov x3, x8
  mov x4, x23
  ldr x8, [sp, #16]
  mov x5, x8
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_3._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3__closed_0:
  // lit string "findPrefix differs: ..."
  adrp x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3__closed_0_0_data@PAGE
  add x0, x0, _str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3__closed_0_0_data@PAGEOFF
  movz x1, #26, lsl #0
  movz x2, #26, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__T_check_spec_3__closed_0_0_data:
  .byte 0x66, 0x69, 0x6E, 0x64, 0x50, 0x72, 0x65, 0x66, 0x69, 0x78, 0x20, 0x64, 0x69, 0x66, 0x66, 0x65, 0x72, 0x73, 0x3A, 0x20, 0x6B, 0x65, 0x79, 0x20, 0x3D, 0x20, 0x00  // null terminator
  .text

  .globl _l_Array_instDecidableEqImpl___at___00T_check_spec__1
  .align 2
_l_Array_instDecidableEqImpl___at___00T_check_spec__1:
  // Function: Array.instDecidableEqImpl._at_.T.check.spec_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 3/5, fp 0/4)
.Lfn_start_Array_instDecidableEqImpl__at__T_check_spec_1:
  mov x19, x0
  mov x20, x1
  // call Array.size with 1 runtime args
  mov x0, x19
  bl _lean_array_get_size
  mov x21, x0
  // call Array.size with 1 runtime args
  mov x0, x20
  bl _lean_array_get_size
  mov x22, x0
  // call Nat.decEq with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_nat_dec_eq
  and x23, x0, #255
  // case
  mov x8, x23
  cmp x8, #0
  b.eq .case_ctor_Array_instDecidableEqImpl__at__T_check_spec_1_1
  cmp x8, #1
  b.eq .case_ctor_Array_instDecidableEqImpl__at__T_check_spec_1_2
  b .case_end_Array_instDecidableEqImpl__at__T_check_spec_1_0
.case_ctor_Array_instDecidableEqImpl__at__T_check_spec_1_1:
  // return
  mov x0, x23
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_instDecidableEqImpl__at__T_check_spec_1_0
.case_ctor_Array_instDecidableEqImpl__at__T_check_spec_1_2:
  // general tail call to Array.isEqvAux._at_.Array.instDecidableEqImpl._at_.T.check.spec_1.spec_2._redArg with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___redArg
  b .case_end_Array_instDecidableEqImpl__at__T_check_spec_1_0
.case_end_Array_instDecidableEqImpl__at__T_check_spec_1_0:
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l_IO_println___at___00T_check_spec__0
  .align 2
_l_IO_println___at___00T_check_spec__0:
  // Function: IO.println._at_.T.check.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__T_check_spec_0:
  mov x19, x0
  movz x20, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _lean_string_push
  mov x21, x0
  // general tail call to IO.print._at_.IO.println._at_.T.check.spec_0.spec_0 with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00T_check_spec__0_spec__0

  .globl _l_IO_print___at___00IO_println___at___00T_check_spec__0_spec__0
  .align 2
_l_IO_print___at___00IO_println___at___00T_check_spec__0_spec__0:
  // Function: IO.print._at_.IO.println._at_.T.check.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_print__at__IO_println__at__T_check_spec_0_spec_0:
  mov x19, x0
  // call IO.getStdout with 0 runtime args
  bl _lean_get_stdout
  mov x20, x0
  // proj field 4
  ldr x21, [x20, #40]
  // inc 1
  mov x0, x21
  bl _lean_inc_ref
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // apply closure with 2 args
  mov x0, x21
  mov x1, x19
  mov x2, #1
  bl _lean_apply_2
  mov x22, x0
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2
  .align 2
_l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2:
  // Function: Array.isEqvAux._at_.Array.instDecidableEqImpl._at_.T.check.spec_1.spec_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 3/5, fp 0/4)
.Lfn_start_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // general tail call to Array.isEqvAux._at_.Array.instDecidableEqImpl._at_.T.check.spec_1.spec_2._redArg with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x22
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___redArg

  .globl _l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___redArg
  .align 2
_l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___redArg:
  // Function: Array.isEqvAux._at_.Array.instDecidableEqImpl._at_.T.check.spec_1.spec_2._redArg
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // lit nat 0
  movz x22, #1, lsl #0
  // call Nat.decEq with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_nat_dec_eq
  and x23, x0, #255
  // case
  mov x8, x23
  cmp x8, #1
  b.eq .case_ctor_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_1
  cmp x8, #0
  b.eq .case_ctor_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_2
  b .case_end_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_0
.case_ctor_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_1:
  // dec 1
  mov x0, x21
  bl _lean_dec
  // return
  mov x0, x23
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_0
.case_ctor_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_2:
  // lit nat 1
  movz x24, #3, lsl #0
  // call Nat.sub with 2 runtime args
  mov x0, x21
  mov x1, x24
  bl _lean_nat_sub
  mov x25, x0
  // dec 1
  mov x0, x21
  bl _lean_dec
  // call Array.getInternalBorrowed with 2 runtime args
  mov x0, x19
  mov x1, x25
  bl _lean_array_fget_borrowed
  mov x26, x0
  // call Array.getInternalBorrowed with 2 runtime args
  mov x0, x20
  mov x1, x25
  bl _lean_array_fget_borrowed
  mov x27, x0
  // call String.decEq with 2 runtime args
  mov x0, x26
  mov x1, x27
  bl _lean_string_dec_eq
  and x28, x0, #255
  // case
  mov x8, x28
  cmp x8, #0
  b.eq .case_ctor_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_4
  cmp x8, #1
  b.eq .case_ctor_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_5
  b .case_end_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_3
.case_ctor_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_4:
  // dec 1
  mov x0, x25
  bl _lean_dec
  // return
  mov x0, x28
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_3
.case_ctor_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_5:
  // true tail call to self with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x25
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_Array_isEqvAux___at___00Array_instDecidableEqImpl___at___00T_check_spec__1_spec__2___redArg
  b .case_end_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_3
.case_end_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_3:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_0
.case_end_Array_isEqvAux__at__Array_instDecidableEqImpl__at__T_check_spec_1_spec_2__redArg_0:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg___boxed
  .align 2
_l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg___boxed:
  // Function: List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 4/5, fp 0/4)
.Lfn_start_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // call List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  bl _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg
  mov x25, x0
  // dec 1
  mov x0, x24
  bl _lean_dec_ref
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // return
  mov x0, x25
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Array_matchPrefix_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Array_matchPrefix_spec__0___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  mov x0, x23
  bl _lean_unbox_usize
  mov x26, x0
  // dec 1
  mov x0, x23
  bl _lean_dec
  // unbox
  mov x0, x24
  bl _lean_unbox_usize
  mov x27, x0
  // dec 1
  mov x0, x24
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x26
  mov x5, x27
  mov x6, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Array_matchPrefix_spec__0
  mov x28, x0
  // dec 1
  mov x0, x25
  bl _lean_dec_ref
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x28
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Array_matchPrefix___boxed
  .align 2
_l_Array_matchPrefix___boxed:
  // Function: Array.matchPrefix._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_Array_matchPrefix__boxed:
  mov x19, x0
  mov x20, x1
  // call Array.matchPrefix with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_Array_matchPrefix
  mov x21, x0
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___boxed
  .align 2
_l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___boxed:
  // Function: List.forIn'.loop._at_.Array.matchPrefix.spec_1._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_List_forIn__loop__at__Array_matchPrefix_spec_1__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  mov x26, x7
  // call List.forIn'.loop._at_.Array.matchPrefix.spec_1 with 8 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  mov x6, x25
  mov x7, x26
  bl _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1
  mov x27, x0
  // dec 1
  mov x0, x25
  bl _lean_dec_ref
  // dec 1
  mov x0, x23
  bl _lean_dec
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // return
  mov x0, x27
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Array_matchPrefix
  .align 2
_l_Array_matchPrefix:
  // Function: Array.matchPrefix
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_Array_matchPrefix:
  mov x19, x0
  mov x20, x1
  // call String.length with 1 runtime args
  mov x0, x20
  bl _lean_string_length
  mov x21, x0
  // lit nat 1
  movz x22, #3, lsl #0
  // call Nat.add with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_nat_add
  mov x23, x0
  // call List.range with 1 runtime args
  mov x0, x23
  bl _l_List_range
  mov x24, x0
  // call List.reverse._redArg with 1 runtime args
  mov x0, x24
  bl _l_List_reverse___redArg
  mov x25, x0
  // ctor Option.none (tag=0, objs=0, usize=0, scalar=0)
  mov x26, #1
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x27, #1
  // load global constant _l_Array_matchPrefix___closed__0
  adrp x28, _l_Array_matchPrefix___closed__0@PAGE
  ldr x28, [x28, _l_Array_matchPrefix___closed__0@PAGEOFF]
  // call List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg with 6 runtime args
  mov x0, x20
  mov x1, x19
  mov x2, x28
  mov x3, x27
  mov x4, x25
  mov x5, x28
  bl _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg
  mov x22, x0
  // proj field 0
  ldr x21, [x22, #8]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // case
  // runtime scalar check
  tst x21, #1
  b.ne .scalar_tag_Array_matchPrefix_0
  ldrb w8, [x21, #7]
  b .compare_tag_Array_matchPrefix_1
.scalar_tag_Array_matchPrefix_0:
  lsr x8, x21, #1
.compare_tag_Array_matchPrefix_1:
  cmp x8, #0
  b.eq .case_ctor_Array_matchPrefix_3
  cmp x8, #1
  b.eq .case_ctor_Array_matchPrefix_4
  b .case_end_Array_matchPrefix_2
.case_ctor_Array_matchPrefix_3:
  // return
  mov x0, x26
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_matchPrefix_2
.case_ctor_Array_matchPrefix_4:
  // proj field 0
  ldr x23, [x21, #8]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // return
  mov x0, x23
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_matchPrefix_2
.case_end_Array_matchPrefix_2:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1
  .align 2
_l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1:
  // Function: List.forIn'.loop._at_.Array.matchPrefix.spec_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_List_forIn__loop__at__Array_matchPrefix_spec_1:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  mov x26, x7
  // general tail call to List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x24
  mov x5, x25
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg

  .globl _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg
  .align 2
_l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg:
  // Function: List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #64
  // Stack frame: 64 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // case
  // runtime scalar check
  tst x23, #1
  b.ne .scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_0
  ldrb w8, [x23, #7]
  b .compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_1
.scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_0:
  lsr x8, x23, #1
.compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_1:
  cmp x8, #0
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_3
  cmp x8, #1
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_4
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_2
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_3:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // inc 1
  mov x0, x24
  bl _lean_inc_ref
  // return
  mov x0, x24
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_2
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_4:
  // proj field 0
  ldr x25, [x23, #8]
  // inc 1
  mov x0, x25
  bl _lean_inc
  // proj field 1
  ldr x8, [x23, #16]
  str x8, [sp]
  // inc 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x23
  bl _lean_dec_ref
  // lit nat 0
  movz x27, #1, lsl #0
  // call String.utf8ByteSize with 1 runtime args
  mov x0, x19
  bl _lean_string_utf8_byte_size
  mov x28, x0
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // ctor String.Slice.mk (tag=0, objs=3, usize=0, scalar=0)
  mov x0, #0
  mov x1, #3
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  str x19, [x26, #8]
  str x27, [x26, #16]
  str x28, [x26, #24]
  // call String.Slice.Pos.nextn with 3 runtime args
  mov x0, x26
  mov x1, x27
  mov x2, x25
  bl _l_String_Slice_Pos_nextn
  mov x8, x0
  str x8, [sp, #8]
  // dec 1
  mov x0, x26
  bl _lean_dec_ref
  // call String.extract with 3 runtime args
  mov x0, x19
  mov x1, x27
  ldr x9, [sp, #8]
  mov x2, x9
  bl _lean_string_utf8_extract
  mov x8, x0
  str x8, [sp, #8]
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x25, #1
  // load global constant _l_Array_matchPrefix___closed__0
  adrp x26, _l_Array_matchPrefix___closed__0@PAGE
  ldr x26, [x26, _l_Array_matchPrefix___closed__0@PAGEOFF]
  // call Array.usize with 1 runtime args
  mov x0, x20
  bl _lean_array_size
  mov x27, x0
  movz x28, #0, lsl #0
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0 with 7 runtime args
  ldr x9, [sp, #8]
  mov x0, x9
  mov x1, x26
  mov x2, x25
  mov x3, x20
  mov x4, x27
  mov x5, x28
  mov x6, x26
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Array_matchPrefix_spec__0
  mov x8, x0
  str x8, [sp, #16]
  ldr x8, [sp, #16]
  // isShared (inline)
  tst x8, #1
  b.ne .is_shared_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_6
  ldr w10, [x8]
  cmp x10, #1
  cset x9, ne
  b .is_shared_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_5
.is_shared_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_6:
  mov x9, #1
.is_shared_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_5:
  strb w9, [sp, #24]
  ldrb w8, [sp, #24]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_8
  cmp x9, #1
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_9
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_7
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_8:
  ldr x8, [sp, #16]
  // proj field 0
  ldr x9, [x8, #8]
  str x9, [sp, #32]
  ldr x8, [sp, #16]
  // proj field 1
  ldr x25, [x8, #16]
  // dec 1
  mov x0, x25
  bl _lean_dec
  ldr x8, [sp, #32]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_10
  ldrb w9, [x8, #7]
  b .compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_11
.scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_10:
  lsr x9, x8, #1
.compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_11:
  cmp x9, #0
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_13
  cmp x9, #1
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_14
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_12
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_13:
  ldr x8, [sp, #16]
  // del
  mov x0, x8
  bl _lean_free_object
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // true tail call to self with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_12
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_14:
  ldr x8, [sp, #32]
  // isShared (inline)
  tst x8, #1
  b.ne .is_shared_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_16
  ldr w10, [x8]
  cmp x10, #1
  cset x9, ne
  b .is_shared_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_15
.is_shared_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_16:
  mov x9, #1
.is_shared_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_15:
  strb w9, [sp, #40]
  ldrb w8, [sp, #40]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_18
  cmp x9, #1
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_19
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_17
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_18:
  ldr x8, [sp, #32]
  // proj field 0
  ldr x25, [x8, #8]
  // case
  // runtime scalar check
  tst x25, #1
  b.ne .scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_20
  ldrb w8, [x25, #7]
  b .compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_21
.scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_20:
  lsr x8, x25, #1
.compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_21:
  cmp x8, #1
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_23
  b .case_default_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_24
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_23:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // isShared (inline)
  tst x25, #1
  b.ne .is_shared_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_26
  ldr w8, [x25]
  cmp x8, #1
  cset x27, ne
  b .is_shared_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_25
.is_shared_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_26:
  mov x27, #1
.is_shared_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_25:
  // case
  mov x8, x27
  cmp x8, #0
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_28
  cmp x8, #1
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_29
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_27
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_28:
  // proj field 0
  ldr x26, [x25, #8]
  // dec 1
  mov x0, x26
  bl _lean_dec
  // set field 0 (inline)
  ldr x8, [sp, #8]
  str x8, [x25, #8]
  ldr x8, [sp, #16]
  // set field 1 (inline)
  str x22, [x8, #16]
  // return
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_27
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_29:
  // dec 1
  mov x0, x25
  bl _lean_dec
  // ctor Option.some (tag=1, objs=1, usize=0, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  ldr x8, [sp, #8]
  str x8, [x28, #8]
  ldr x8, [sp, #32]
  // set field 0 (inline)
  str x28, [x8, #8]
  ldr x8, [sp, #16]
  // set field 1 (inline)
  str x22, [x8, #16]
  // return
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_27
.case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_27:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_22
.case_default_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_24:
  ldr x9, [sp, #32]
  // del
  mov x0, x9
  bl _lean_free_object
  // dec 1
  mov x0, x25
  bl _lean_dec
  ldr x8, [sp, #16]
  // del
  mov x0, x8
  bl _lean_free_object
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // true tail call to self with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_22
.case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_22:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_17
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_19:
  ldr x8, [sp, #32]
  // proj field 0
  ldr x26, [x8, #8]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // dec 1
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec
  // case
  // runtime scalar check
  tst x26, #1
  b.ne .scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_30
  ldrb w8, [x26, #7]
  b .compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_31
.scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_30:
  lsr x8, x26, #1
.compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_31:
  cmp x8, #1
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_33
  b .case_default_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_34
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_33:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // reset 1
  tst x26, #1
  b.ne .reset_not_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_35
  ldr w8, [x26]
  cmp x8, #1
  b.eq .reset_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_36
  b .reset_not_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_35
.reset_not_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_35:
  mov x0, x26
  bl _lean_dec_ref
  mov x25, #1
  b .reset_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_37
.reset_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_36:
  ldr x8, [x26, #8]
  tst x8, #1
  b.ne .reset_skip_dec_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_38
  mov x0, x8
  bl _lean_dec_ref
.reset_skip_dec_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_38:
  mov x8, #1
  str x8, [x26, #8]
  mov x25, x26
.reset_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_37:
  // reuse Option.some
  tst x25, #1
  b.ne .reuse_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_39
  mov x27, x25
  b .reuse_set_fields_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_40
.reuse_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_39:
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
.reuse_set_fields_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_40:
  ldr x8, [sp, #8]
  str x8, [x27, #8]
  // ctor Option.some (tag=1, objs=1, usize=0, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  str x27, [x28, #8]
  ldr x8, [sp, #16]
  // set field 1 (inline)
  str x22, [x8, #16]
  ldr x8, [sp, #16]
  // set field 0 (inline)
  str x28, [x8, #8]
  // return
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_32
.case_default_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_34:
  // dec 1
  mov x0, x26
  bl _lean_dec
  ldr x8, [sp, #16]
  // del
  mov x0, x8
  bl _lean_free_object
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // true tail call to self with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_32
.case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_32:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_17
.case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_17:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_12
.case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_12:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_7
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_9:
  ldr x8, [sp, #16]
  // proj field 0
  ldr x9, [x8, #8]
  str x9, [sp, #32]
  // inc 1
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec
  ldr x8, [sp, #32]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_41
  ldrb w9, [x8, #7]
  b .compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_42
.scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_41:
  lsr x9, x8, #1
.compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_42:
  cmp x9, #0
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_44
  cmp x9, #1
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_45
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_43
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_44:
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // true tail call to self with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_43
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_45:
  ldr x8, [sp, #32]
  // proj field 0
  ldr x9, [x8, #8]
  str x9, [sp, #40]
  // inc 1
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // reset 1
  ldr x9, [sp, #32]
  tst x9, #1
  b.ne .reset_not_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_46
  ldr w8, [x9]
  cmp x8, #1
  b.eq .reset_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_47
  b .reset_not_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_46
.reset_not_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_46:
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  mov x26, #1
  b .reset_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_48
.reset_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_47:
  ldr x8, [sp, #32]
  ldr x9, [x8, #8]
  tst x9, #1
  b.ne .reset_skip_dec_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_49
  mov x0, x9
  bl _lean_dec_ref
.reset_skip_dec_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_49:
  mov x9, #1
  ldr x8, [sp, #32]
  str x9, [x8, #8]
  ldr x8, [sp, #32]
  mov x26, x8
.reset_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_48:
  ldr x8, [sp, #40]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_50
  ldrb w9, [x8, #7]
  b .compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_51
.scalar_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_50:
  lsr x9, x8, #1
.compare_tag_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_51:
  cmp x9, #1
  b.eq .case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_53
  b .case_default_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_54
.case_ctor_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_53:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // reset 1
  ldr x9, [sp, #40]
  tst x9, #1
  b.ne .reset_not_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_55
  ldr w8, [x9]
  cmp x8, #1
  b.eq .reset_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_56
  b .reset_not_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_55
.reset_not_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_55:
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  mov x28, #1
  b .reset_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_57
.reset_exclusive_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_56:
  ldr x8, [sp, #40]
  ldr x9, [x8, #8]
  tst x9, #1
  b.ne .reset_skip_dec_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_58
  mov x0, x9
  bl _lean_dec_ref
.reset_skip_dec_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_58:
  mov x9, #1
  ldr x8, [sp, #40]
  str x9, [x8, #8]
  ldr x8, [sp, #40]
  mov x28, x8
.reset_done_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_57:
  // reuse Option.some
  tst x28, #1
  b.ne .reuse_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_59
  mov x27, x28
  b .reuse_set_fields_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_60
.reuse_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_59:
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
.reuse_set_fields_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_60:
  ldr x8, [sp, #8]
  str x8, [x27, #8]
  // reuse Option.some
  tst x26, #1
  b.ne .reuse_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_61
  mov x25, x26
  b .reuse_set_fields_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_62
.reuse_scalar_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_61:
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
.reuse_set_fields_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_62:
  str x27, [x25, #8]
  // ctor MProd.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  str x25, [x28, #8]
  str x22, [x28, #16]
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
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_52
.case_default_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_54:
  // dec 1
  mov x0, x26
  bl _lean_dec
  // dec 1
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // true tail call to self with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_forIn_x27_loop___at___00Array_matchPrefix_spec__1___redArg
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_52
.case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_52:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_43
.case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_43:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_7
.case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_7:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_2
.case_end_List_forIn__loop__at__Array_matchPrefix_spec_1__redArg_2:
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Array_matchPrefix_spec__0
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Array_matchPrefix_spec__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #48
  // Stack frame: 48 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call USize.decLt with 2 runtime args
  mov x0, x24
  mov x1, x23
  bl _lean_usize_dec_lt
  and x8, x0, #255
  strb w8, [sp]
  ldrb w8, [sp]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_1
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_2
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_1:
  // inc 1
  mov x0, x25
  bl _lean_inc_ref
  // return
  mov x0, x25
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_2:
  // call Array.uget with 2 runtime args
  mov x0, x22
  mov x1, x24
  bl _lean_array_uget
  mov x8, x0
  str x8, [sp, #16]
  // call String.decEq with 2 runtime args
  ldr x9, [sp, #16]
  mov x0, x9
  mov x1, x19
  bl _lean_string_dec_eq
  and x8, x0, #255
  strb w8, [sp, #8]
  ldrb w8, [sp, #8]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_4
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_5
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_4:
  // dec 1
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec
  movz x26, #1, lsl #0
  // inline lean_usize_add
  add x28, x24, x26
  // true tail call to self with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x28
  mov x6, x20
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Array_matchPrefix_spec__0
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_5:
  // ctor Option.some (tag=1, objs=1, usize=0, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  ldr x8, [sp, #16]
  str x8, [x26, #8]
  // ctor Option.some (tag=1, objs=1, usize=0, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  str x26, [x28, #8]
  // ctor MProd.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  str x28, [x27, #8]
  str x21, [x27, #16]
  // return
  mov x0, x27
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_3
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_3:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_0
.case_end__private_Init_Data_Array_Basic_0_Array_forIn_Unsafe_loop__at__Array_matchPrefix_spec_0_0:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl __init_l_Array_matchPrefix___closed__0
  .align 2
__init_l_Array_matchPrefix___closed__0:
  // Function: Array.matchPrefix._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_Array_matchPrefix__closed_0:
  // ctor PUnit.unit (tag=0, objs=0, usize=0, scalar=0)
  mov x19, #1
  // ctor Option.none (tag=0, objs=0, usize=0, scalar=0)
  mov x20, #1
  // ctor MProd.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x21, x0
  str x20, [x21, #8]
  str x19, [x21, #16]
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_findPrefix_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_findPrefix_spec__0___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 4/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // unbox
  mov x0, x21
  bl _lean_unbox_usize
  mov x24, x0
  // dec 1
  mov x0, x21
  bl _lean_dec
  // unbox
  mov x0, x22
  bl _lean_unbox_usize
  mov x25, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0 with 5 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x24
  mov x3, x25
  mov x4, x23
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_findPrefix_spec__0
  mov x26, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x26
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Array_findPrefix___boxed
  .align 2
_l_Array_findPrefix___boxed:
  // Function: Array.findPrefix._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_Array_findPrefix__boxed:
  mov x19, x0
  mov x20, x1
  // call Array.findPrefix with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_Array_findPrefix
  mov x21, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Array_findPrefix
  .align 2
_l_Array_findPrefix:
  // Function: Array.findPrefix
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_Array_findPrefix:
  mov x19, x0
  mov x20, x1
  // lit nat 0
  movz x21, #1, lsl #0
  // call Array.size with 1 runtime args
  mov x0, x19
  bl _lean_array_get_size
  mov x22, x0
  // load global constant _l_Array_findPrefix___closed__0
  adrp x23, _l_Array_findPrefix___closed__0@PAGE
  ldr x23, [x23, _l_Array_findPrefix___closed__0@PAGEOFF]
  // call Nat.decLt with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_nat_dec_lt
  and x24, x0, #255
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .case_ctor_Array_findPrefix_1
  cmp x8, #1
  b.eq .case_ctor_Array_findPrefix_2
  b .case_end_Array_findPrefix_0
.case_ctor_Array_findPrefix_1:
  // return
  mov x0, x23
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_findPrefix_0
.case_ctor_Array_findPrefix_2:
  // call Nat.decLe with 2 runtime args
  mov x0, x22
  mov x1, x22
  bl _lean_nat_dec_le
  and x25, x0, #255
  // case
  mov x8, x25
  cmp x8, #0
  b.eq .case_ctor_Array_findPrefix_4
  cmp x8, #1
  b.eq .case_ctor_Array_findPrefix_5
  b .case_end_Array_findPrefix_3
.case_ctor_Array_findPrefix_4:
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .case_ctor_Array_findPrefix_7
  cmp x8, #1
  b.eq .case_ctor_Array_findPrefix_8
  b .case_end_Array_findPrefix_6
.case_ctor_Array_findPrefix_7:
  // return
  mov x0, x23
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_findPrefix_6
.case_ctor_Array_findPrefix_8:
  movz x21, #0, lsl #0
  // call USize.ofNat with 1 runtime args
  mov x0, x22
  bl _lean_usize_of_nat
  mov x26, x0
  // general tail call to _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0 with 5 runtime args
  mov x0, x20
  mov x1, x19
  mov x2, x21
  mov x3, x26
  mov x4, x23
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_findPrefix_spec__0
  b .case_end_Array_findPrefix_6
.case_end_Array_findPrefix_6:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_Array_findPrefix_3
.case_ctor_Array_findPrefix_5:
  movz x26, #0, lsl #0
  // call USize.ofNat with 1 runtime args
  mov x0, x22
  bl _lean_usize_of_nat
  mov x27, x0
  // general tail call to _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0 with 5 runtime args
  mov x0, x20
  mov x1, x19
  mov x2, x26
  mov x3, x27
  mov x4, x23
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_findPrefix_spec__0
  b .case_end_Array_findPrefix_3
.case_end_Array_findPrefix_3:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_Array_findPrefix_0
.case_end_Array_findPrefix_0:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_findPrefix_spec__0
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_findPrefix_spec__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #48
  // Stack frame: 48 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // call USize.decEq with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_usize_dec_eq
  and x8, x0, #255
  strb w8, [sp]
  ldrb w8, [sp]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_1
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_2
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_1:
  // call Array.uget with 2 runtime args
  mov x0, x20
  mov x1, x21
  bl _lean_array_uget
  mov x28, x0
  // call String.utf8ByteSize with 1 runtime args
  mov x0, x28
  bl _lean_string_utf8_byte_size
  mov x25, x0
  // call String.utf8ByteSize with 1 runtime args
  mov x0, x19
  bl _lean_string_utf8_byte_size
  mov x27, x0
  // call Nat.decLe with 2 runtime args
  mov x0, x27
  mov x1, x25
  bl _lean_nat_dec_le
  and x8, x0, #255
  strb w8, [sp, #8]
  ldrb w8, [sp, #8]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_4
  cmp x9, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_5
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_4:
  // dec 1
  mov x0, x28
  bl _lean_dec
  // jump to JP10
  str x23, [sp, #24]
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_6
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_5:
  // lit nat 0
  movz x26, #1, lsl #0
  // call String.Slice.Pattern.Internal.memcmpStr with 5 runtime args
  mov x0, x28
  mov x1, x19
  mov x2, x26
  mov x3, x26
  mov x4, x27
  bl _lean_string_memcmp
  and x25, x0, #255
  // case
  mov x8, x25
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_8
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_9
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_7
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_8:
  // dec 1
  mov x0, x28
  bl _lean_dec
  // jump to JP10
  str x23, [sp, #24]
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_6
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_7
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_9:
  // call Array.push with 2 runtime args
  mov x0, x23
  mov x1, x28
  bl _lean_array_push
  mov x24, x0
  // jump to JP10
  str x24, [sp, #24]
  b .JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_6
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_7
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_7:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_3
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_3:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_2:
  // return
  mov x0, x23
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_0
.case_end__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_0:
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP__private_Init_Data_Array_Basic_0_Array_foldlMUnsafe_fold__at__Array_findPrefix_spec_0_6:
  movz x25, #1, lsl #0
  // inline lean_usize_add
  add x8, x21, x25
  str x8, [sp, #16]
  // true tail call to self with 5 runtime args
  mov x0, x19
  mov x1, x20
  ldr x8, [sp, #16]
  mov x2, x8
  mov x3, x22
  ldr x8, [sp, #24]
  mov x4, x8
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_findPrefix_spec__0

  .globl __init_l_Array_findPrefix___closed__0
  .align 2
__init_l_Array_findPrefix___closed__0:
  // Function: Array.findPrefix._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_Array_findPrefix__closed_0:
  // lit nat 0
  movz x19, #1, lsl #0
  // inline lean_mk_empty_array_with_capacity
  mov x0, x19
  bl _lean_mk_empty_array_with_capacity
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___boxed
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___boxed:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg
  mov x22, x0
  // dec 1
  mov x0, x21
  bl _lean_dec
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___boxed:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 4/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  mov x6, x25
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0
  mov x26, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec
  // return
  mov x0, x26
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Array_sorted
  .align 2
_l_Array_sorted:
  // Function: Array.sorted
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_Array_sorted:
  mov x19, x0
  // call Array.size with 1 runtime args
  mov x0, x19
  bl _lean_array_get_size
  mov x26, x0
  // lit nat 0
  movz x22, #1, lsl #0
  // call Nat.decEq with 2 runtime args
  mov x0, x26
  mov x1, x22
  bl _lean_nat_dec_eq
  and x23, x0, #255
  // case
  mov x8, x23
  cmp x8, #0
  b.eq .case_ctor_Array_sorted_1
  cmp x8, #1
  b.eq .case_ctor_Array_sorted_2
  b .case_end_Array_sorted_0
.case_ctor_Array_sorted_1:
  // lit nat 1
  movz x28, #3, lsl #0
  // call Nat.sub with 2 runtime args
  mov x0, x26
  mov x1, x28
  bl _lean_nat_sub
  mov x21, x0
  // call Nat.decLe with 2 runtime args
  mov x0, x22
  mov x1, x21
  bl _lean_nat_dec_le
  and x25, x0, #255
  // case
  mov x8, x25
  cmp x8, #0
  b.eq .case_ctor_Array_sorted_4
  cmp x8, #1
  b.eq .case_ctor_Array_sorted_5
  b .case_end_Array_sorted_3
.case_ctor_Array_sorted_4:
  // inc 1
  mov x0, x21
  bl _lean_inc
  // jump to JP11
  mov x20, x21
  b .JP_Array_sorted_6
  b .case_end_Array_sorted_3
.case_ctor_Array_sorted_5:
  // jump to JP11
  mov x20, x22
  b .JP_Array_sorted_6
  b .case_end_Array_sorted_3
.case_end_Array_sorted_3:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_Array_sorted_6:
  // call Nat.decLe with 2 runtime args
  mov x0, x20
  mov x1, x21
  bl _lean_nat_dec_le
  and x24, x0, #255
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .case_ctor_Array_sorted_8
  cmp x8, #1
  b.eq .case_ctor_Array_sorted_9
  b .case_end_Array_sorted_7
.case_ctor_Array_sorted_8:
  // dec 1
  mov x0, x21
  bl _lean_dec
  // inc 1
  mov x0, x20
  bl _lean_inc
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x20
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg
  mov x27, x0
  // dec 1
  mov x0, x20
  bl _lean_dec
  // return
  mov x0, x27
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_sorted_7
.case_ctor_Array_sorted_9:
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg
  mov x25, x0
  // dec 1
  mov x0, x21
  bl _lean_dec
  // return
  mov x0, x25
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_sorted_7
.case_end_Array_sorted_7:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_Array_sorted_0
.case_ctor_Array_sorted_2:
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_sorted_0
.case_end_Array_sorted_0:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 4/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // general tail call to _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x20
  mov x1, x21
  mov x2, x22
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // call Nat.decLt with 2 runtime args
  mov x0, x20
  mov x1, x21
  bl _lean_nat_dec_lt
  and x22, x0, #255
  // case
  mov x8, x22
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_1
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_2
  b .case_end__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_0
.case_ctor__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_1:
  // dec 1
  mov x0, x20
  bl _lean_dec
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_0
.case_ctor__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_2:
  // load global constant _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0
  adrp x23, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0@PAGE
  ldr x23, [x23, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0@PAGEOFF]
  // inc 1
  mov x0, x20
  bl _lean_inc
  // call Array.qpartition._redArg with 4 runtime args
  mov x0, x19
  mov x1, x23
  mov x2, x20
  mov x3, x21
  bl _l_Array_qpartition___redArg
  mov x24, x0
  // proj field 0
  ldr x25, [x24, #8]
  // inc 1
  mov x0, x25
  bl _lean_inc
  // proj field 1
  ldr x26, [x24, #16]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // dec 1
  mov x0, x24
  bl _lean_dec_ref
  // call Nat.decLe with 2 runtime args
  mov x0, x21
  mov x1, x25
  bl _lean_nat_dec_le
  and x27, x0, #255
  // case
  mov x8, x27
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_4
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_5
  b .case_end__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_3
.case_ctor__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_4:
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x26
  mov x1, x20
  mov x2, x25
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg
  mov x28, x0
  // lit nat 1
  movz x23, #3, lsl #0
  // call Nat.add with 2 runtime args
  mov x0, x25
  mov x1, x23
  bl _lean_nat_add
  mov x24, x0
  // dec 1
  mov x0, x25
  bl _lean_dec
  // true tail call to self with 3 runtime args
  mov x0, x28
  mov x1, x24
  mov x2, x21
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg
  b .case_end__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_3
.case_ctor__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_5:
  // dec 1
  mov x0, x25
  bl _lean_dec
  // dec 1
  mov x0, x20
  bl _lean_dec
  // return
  mov x0, x26
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_3
.case_end__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_3:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_0
.case_end__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg_0:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl __init_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0
  .align 2
__init_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_QSort_Basic_0_Array_qsort_sort__at__Array_sorted_spec_0__redArg__closed_0:
  // partial application String.decidableLT._boxed with 0 args
  adrp x0, _l_String_decidableLT___boxed@PAGE
  add x0, x0, _l_String_decidableLT___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00T_insert_spec__0_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00T_insert_spec__0_spec__0___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 4/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  // unbox
  mov x0, x21
  bl _lean_unbox_usize
  mov x23, x0
  // dec 1
  mov x0, x21
  bl _lean_dec
  // unbox
  mov x0, x22
  bl _lean_unbox_usize
  mov x24, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0 with 4 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x23
  mov x3, x24
  bl _l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00T_insert_spec__0_spec__0
  and x25, x0, #255
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // box
  lsl x11, x25, #1
  orr x11, x11, #1
  // return
  mov x0, x11
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Array_contains___at___00T_insert_spec__0___boxed
  .align 2
_l_Array_contains___at___00T_insert_spec__0___boxed:
  // Function: Array.contains._at_.T.insert.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_Array_contains__at__T_insert_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  // call Array.contains._at_.T.insert.spec_0 with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_Array_contains___at___00T_insert_spec__0
  and x21, x0, #255
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // box
  lsl x11, x21, #1
  orr x11, x11, #1
  // return
  mov x0, x11
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_T_insert
  .align 2
_l_T_insert:
  // Function: T.insert
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_T_insert:
  mov x19, x0
  mov x20, x1
  // isShared (inline)
  tst x19, #1
  b.ne .is_shared_scalar_T_insert_1
  ldr w8, [x19]
  cmp x8, #1
  cset x21, ne
  b .is_shared_done_T_insert_0
.is_shared_scalar_T_insert_1:
  mov x21, #1
.is_shared_done_T_insert_0:
  // case
  mov x8, x21
  cmp x8, #0
  b.eq .case_ctor_T_insert_3
  cmp x8, #1
  b.eq .case_ctor_T_insert_4
  b .case_end_T_insert_2
.case_ctor_T_insert_3:
  // proj field 0
  ldr x22, [x19, #8]
  // proj field 1
  ldr x26, [x19, #16]
  // inc 1
  mov x0, x20
  bl _lean_inc_ref
  // call Lean.Data.Trie.insert._redArg with 3 runtime args
  mov x0, x22
  mov x1, x20
  mov x2, x20
  bl _l_Lean_Data_Trie_insert___redArg
  mov x27, x0
  // call Array.contains._at_.T.insert.spec_0 with 2 runtime args
  mov x0, x26
  mov x1, x20
  bl _l_Array_contains___at___00T_insert_spec__0
  and x28, x0, #255
  // case
  mov x8, x28
  cmp x8, #0
  b.eq .case_ctor_T_insert_6
  cmp x8, #1
  b.eq .case_ctor_T_insert_7
  b .case_end_T_insert_5
.case_ctor_T_insert_6:
  // call Array.push with 2 runtime args
  mov x0, x26
  mov x1, x20
  bl _lean_array_push
  mov x24, x0
  // set field 1 (inline)
  str x24, [x19, #16]
  // set field 0 (inline)
  str x27, [x19, #8]
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_T_insert_5
.case_ctor_T_insert_7:
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // set field 0 (inline)
  str x27, [x19, #8]
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_T_insert_5
.case_end_T_insert_5:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_T_insert_2
.case_ctor_T_insert_4:
  // proj field 0
  ldr x22, [x19, #8]
  // proj field 1
  ldr x23, [x19, #16]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // inc 1
  mov x0, x22
  bl _lean_inc
  // dec 1
  mov x0, x19
  bl _lean_dec
  // inc 1
  mov x0, x20
  bl _lean_inc_ref
  // call Lean.Data.Trie.insert._redArg with 3 runtime args
  mov x0, x22
  mov x1, x20
  mov x2, x20
  bl _l_Lean_Data_Trie_insert___redArg
  mov x24, x0
  // call Array.contains._at_.T.insert.spec_0 with 2 runtime args
  mov x0, x23
  mov x1, x20
  bl _l_Array_contains___at___00T_insert_spec__0
  and x25, x0, #255
  // case
  mov x8, x25
  cmp x8, #0
  b.eq .case_ctor_T_insert_9
  cmp x8, #1
  b.eq .case_ctor_T_insert_10
  b .case_end_T_insert_8
.case_ctor_T_insert_9:
  // call Array.push with 2 runtime args
  mov x0, x23
  mov x1, x20
  bl _lean_array_push
  mov x27, x0
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  str x24, [x28, #8]
  str x27, [x28, #16]
  // return
  mov x0, x28
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_T_insert_8
.case_ctor_T_insert_10:
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  str x24, [x26, #8]
  str x23, [x26, #16]
  // return
  mov x0, x26
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_T_insert_8
.case_end_T_insert_8:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_T_insert_2
.case_end_T_insert_2:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l_Array_contains___at___00T_insert_spec__0
  .align 2
_l_Array_contains___at___00T_insert_spec__0:
  // Function: Array.contains._at_.T.insert.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 4/5, fp 0/4)
.Lfn_start_Array_contains__at__T_insert_spec_0:
  mov x19, x0
  mov x20, x1
  // lit nat 0
  movz x21, #1, lsl #0
  // call Array.size with 1 runtime args
  mov x0, x19
  bl _lean_array_get_size
  mov x22, x0
  // call Nat.decLt with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_nat_dec_lt
  and x23, x0, #255
  // case
  mov x8, x23
  cmp x8, #0
  b.eq .case_ctor_Array_contains__at__T_insert_spec_0_1
  cmp x8, #1
  b.eq .case_ctor_Array_contains__at__T_insert_spec_0_2
  b .case_end_Array_contains__at__T_insert_spec_0_0
.case_ctor_Array_contains__at__T_insert_spec_0_1:
  // return
  mov x0, x23
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_contains__at__T_insert_spec_0_0
.case_ctor_Array_contains__at__T_insert_spec_0_2:
  // case
  mov x8, x23
  cmp x8, #0
  b.eq .case_ctor_Array_contains__at__T_insert_spec_0_4
  cmp x8, #1
  b.eq .case_ctor_Array_contains__at__T_insert_spec_0_5
  b .case_end_Array_contains__at__T_insert_spec_0_3
.case_ctor_Array_contains__at__T_insert_spec_0_4:
  // return
  mov x0, x23
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_Array_contains__at__T_insert_spec_0_3
.case_ctor_Array_contains__at__T_insert_spec_0_5:
  movz x24, #0, lsl #0
  // call USize.ofNat with 1 runtime args
  mov x0, x22
  bl _lean_usize_of_nat
  mov x25, x0
  // general tail call to _private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0 with 4 runtime args
  mov x0, x20
  mov x1, x19
  mov x2, x24
  mov x3, x25
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00T_insert_spec__0_spec__0
  b .case_end_Array_contains__at__T_insert_spec_0_3
.case_end_Array_contains__at__T_insert_spec_0_3:
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_Array_contains__at__T_insert_spec_0_0
.case_end_Array_contains__at__T_insert_spec_0_0:
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00T_insert_spec__0_spec__0
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00T_insert_spec__0_spec__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  // call USize.decEq with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_usize_dec_eq
  and x23, x0, #255
  // case
  mov x8, x23
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_1
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_2
  b .case_end__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_1:
  // call Array.uget with 2 runtime args
  mov x0, x20
  mov x1, x21
  bl _lean_array_uget
  mov x24, x0
  // call String.decEq with 2 runtime args
  mov x0, x19
  mov x1, x24
  bl _lean_string_dec_eq
  and x25, x0, #255
  // dec 1
  mov x0, x24
  bl _lean_dec
  // case
  mov x8, x25
  cmp x8, #0
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_4
  cmp x8, #1
  b.eq .case_ctor__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_5
  b .case_end__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_4:
  movz x26, #1, lsl #0
  // inline lean_usize_add
  add x27, x21, x26
  // true tail call to self with 4 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x27
  mov x3, x22
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00T_insert_spec__0_spec__0
  b .case_end__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_3
.case_ctor__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_5:
  // return
  mov x0, x25
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_3
.case_end__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_3:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_0
.case_ctor__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_2:
  movz x11, #0, lsl #0
  // return
  mov x0, x11
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_0
.case_end__private_Init_Data_Array_Basic_0_Array_anyMUnsafe_any__at__Array_contains__at__T_insert_spec_0_spec_0_0:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl __init_l_T_empty
  .align 2
__init_l_T_empty:
  // Function: T.empty
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_T_empty:
  // load global constant _l_T_empty___closed__2
  adrp x19, _l_T_empty___closed__2@PAGE
  ldr x19, [x19, _l_T_empty___closed__2@PAGEOFF]
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_T_empty___closed__2
  .align 2
__init_l_T_empty___closed__2:
  // Function: T.empty._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_T_empty__closed_2:
  // load global constant _l_T_empty___closed__1
  adrp x19, _l_T_empty___closed__1@PAGE
  ldr x19, [x19, _l_T_empty___closed__1@PAGEOFF]
  // load global constant _l_T_empty___closed__0
  adrp x20, _l_T_empty___closed__0@PAGE
  ldr x20, [x20, _l_T_empty___closed__0@PAGEOFF]
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x21, x0
  str x20, [x21, #8]
  str x19, [x21, #16]
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_T_empty___closed__1
  .align 2
__init_l_T_empty___closed__1:
  // Function: T.empty._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_T_empty__closed_1:
  // general tail call to Array.empty with 1 runtime args
  mov x0, #1
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_Array_empty

  .globl __init_l_T_empty___closed__0
  .align 2
__init_l_T_empty___closed__0:
  // Function: T.empty._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_T_empty__closed_0:
  // general tail call to Lean.Data.Trie.empty with 1 runtime args
  mov x0, #1
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_Lean_Data_Trie_empty

  .globl __init_l_keys
  .align 2
__init_l_keys:
  // Function: keys
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys:
  // load global constant _l_keys___closed__24
  adrp x19, _l_keys___closed__24@PAGE
  ldr x19, [x19, _l_keys___closed__24@PAGEOFF]
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__24
  .align 2
__init_l_keys___closed__24:
  // Function: keys._closed_24
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_24:
  // load global constant _l_keys___closed__11
  adrp x19, _l_keys___closed__11@PAGE
  ldr x19, [x19, _l_keys___closed__11@PAGEOFF]
  // load global constant _l_keys___closed__23
  adrp x20, _l_keys___closed__23@PAGE
  ldr x20, [x20, _l_keys___closed__23@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__23
  .align 2
__init_l_keys___closed__23:
  // Function: keys._closed_23
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_23:
  // load global constant _l_keys___closed__10
  adrp x19, _l_keys___closed__10@PAGE
  ldr x19, [x19, _l_keys___closed__10@PAGEOFF]
  // load global constant _l_keys___closed__22
  adrp x20, _l_keys___closed__22@PAGE
  ldr x20, [x20, _l_keys___closed__22@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__22
  .align 2
__init_l_keys___closed__22:
  // Function: keys._closed_22
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_22:
  // load global constant _l_keys___closed__9
  adrp x19, _l_keys___closed__9@PAGE
  ldr x19, [x19, _l_keys___closed__9@PAGEOFF]
  // load global constant _l_keys___closed__21
  adrp x20, _l_keys___closed__21@PAGE
  ldr x20, [x20, _l_keys___closed__21@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__21
  .align 2
__init_l_keys___closed__21:
  // Function: keys._closed_21
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_21:
  // load global constant _l_keys___closed__8
  adrp x19, _l_keys___closed__8@PAGE
  ldr x19, [x19, _l_keys___closed__8@PAGEOFF]
  // load global constant _l_keys___closed__20
  adrp x20, _l_keys___closed__20@PAGE
  ldr x20, [x20, _l_keys___closed__20@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__20
  .align 2
__init_l_keys___closed__20:
  // Function: keys._closed_20
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_20:
  // load global constant _l_keys___closed__7
  adrp x19, _l_keys___closed__7@PAGE
  ldr x19, [x19, _l_keys___closed__7@PAGEOFF]
  // load global constant _l_keys___closed__19
  adrp x20, _l_keys___closed__19@PAGE
  ldr x20, [x20, _l_keys___closed__19@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__19
  .align 2
__init_l_keys___closed__19:
  // Function: keys._closed_19
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_19:
  // load global constant _l_keys___closed__6
  adrp x19, _l_keys___closed__6@PAGE
  ldr x19, [x19, _l_keys___closed__6@PAGEOFF]
  // load global constant _l_keys___closed__18
  adrp x20, _l_keys___closed__18@PAGE
  ldr x20, [x20, _l_keys___closed__18@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__18
  .align 2
__init_l_keys___closed__18:
  // Function: keys._closed_18
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_18:
  // load global constant _l_keys___closed__5
  adrp x19, _l_keys___closed__5@PAGE
  ldr x19, [x19, _l_keys___closed__5@PAGEOFF]
  // load global constant _l_keys___closed__17
  adrp x20, _l_keys___closed__17@PAGE
  ldr x20, [x20, _l_keys___closed__17@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__17
  .align 2
__init_l_keys___closed__17:
  // Function: keys._closed_17
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_17:
  // load global constant _l_keys___closed__4
  adrp x19, _l_keys___closed__4@PAGE
  ldr x19, [x19, _l_keys___closed__4@PAGEOFF]
  // load global constant _l_keys___closed__16
  adrp x20, _l_keys___closed__16@PAGE
  ldr x20, [x20, _l_keys___closed__16@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__16
  .align 2
__init_l_keys___closed__16:
  // Function: keys._closed_16
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_16:
  // load global constant _l_keys___closed__3
  adrp x19, _l_keys___closed__3@PAGE
  ldr x19, [x19, _l_keys___closed__3@PAGEOFF]
  // load global constant _l_keys___closed__15
  adrp x20, _l_keys___closed__15@PAGE
  ldr x20, [x20, _l_keys___closed__15@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__15
  .align 2
__init_l_keys___closed__15:
  // Function: keys._closed_15
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_15:
  // load global constant _l_keys___closed__2
  adrp x19, _l_keys___closed__2@PAGE
  ldr x19, [x19, _l_keys___closed__2@PAGEOFF]
  // load global constant _l_keys___closed__14
  adrp x20, _l_keys___closed__14@PAGE
  ldr x20, [x20, _l_keys___closed__14@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__14
  .align 2
__init_l_keys___closed__14:
  // Function: keys._closed_14
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_14:
  // load global constant _l_keys___closed__1
  adrp x19, _l_keys___closed__1@PAGE
  ldr x19, [x19, _l_keys___closed__1@PAGEOFF]
  // load global constant _l_keys___closed__13
  adrp x20, _l_keys___closed__13@PAGE
  ldr x20, [x20, _l_keys___closed__13@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__13
  .align 2
__init_l_keys___closed__13:
  // Function: keys._closed_13
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_keys__closed_13:
  // load global constant _l_keys___closed__0
  adrp x19, _l_keys___closed__0@PAGE
  ldr x19, [x19, _l_keys___closed__0@PAGEOFF]
  // load global constant _l_keys___closed__12
  adrp x20, _l_keys___closed__12@PAGE
  ldr x20, [x20, _l_keys___closed__12@PAGEOFF]
  // call Array.push with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_array_push
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__12
  .align 2
__init_l_keys___closed__12:
  // Function: keys._closed_12
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_12:
  // lit nat 12
  movz x19, #25, lsl #0
  // inline lean_mk_empty_array_with_capacity
  mov x0, x19
  bl _lean_mk_empty_array_with_capacity
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_keys___closed__11
  .align 2
__init_l_keys___closed__11:
  // Function: keys._closed_11
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_11:
  // lit string "?"
  adrp x0, _str_keys__closed_11_0_data@PAGE
  add x0, x0, _str_keys__closed_11_0_data@PAGEOFF
  movz x1, #4, lsl #0
  movz x2, #4, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_11_0_data:
  .byte 0xF0, 0x9F, 0x92, 0xA9, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__10
  .align 2
__init_l_keys___closed__10:
  // Function: keys._closed_10
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_10:
  // lit string "h?"
  adrp x0, _str_keys__closed_10_0_data@PAGE
  add x0, x0, _str_keys__closed_10_0_data@PAGEOFF
  movz x1, #3, lsl #0
  movz x2, #3, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_10_0_data:
  .byte 0x68, 0xC3, 0xA4, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__9
  .align 2
__init_l_keys___closed__9:
  // Function: keys._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_9:
  // lit string "h?"
  adrp x0, _str_keys__closed_9_0_data@PAGE
  add x0, x0, _str_keys__closed_9_0_data@PAGEOFF
  movz x1, #3, lsl #0
  movz x2, #3, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_9_0_data:
  .byte 0x68, 0xC3, 0xBC, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__8
  .align 2
__init_l_keys___closed__8:
  // Function: keys._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_8:
  // lit string "h?"
  adrp x0, _str_keys__closed_8_0_data@PAGE
  add x0, x0, _str_keys__closed_8_0_data@PAGEOFF
  movz x1, #3, lsl #0
  movz x2, #3, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_8_0_data:
  .byte 0x68, 0xC3, 0xB6, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__7
  .align 2
__init_l_keys___closed__7:
  // Function: keys._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_7:
  // lit string "hellx"
  adrp x0, _str_keys__closed_7_0_data@PAGE
  add x0, x0, _str_keys__closed_7_0_data@PAGEOFF
  movz x1, #5, lsl #0
  movz x2, #5, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_7_0_data:
  .byte 0x68, 0x65, 0x6C, 0x6C, 0x78, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__6
  .align 2
__init_l_keys___closed__6:
  // Function: keys._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_6:
  // lit string "hella"
  adrp x0, _str_keys__closed_6_0_data@PAGE
  add x0, x0, _str_keys__closed_6_0_data@PAGEOFF
  movz x1, #5, lsl #0
  movz x2, #5, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_6_0_data:
  .byte 0x68, 0x65, 0x6C, 0x6C, 0x61, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__5
  .align 2
__init_l_keys___closed__5:
  // Function: keys._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_5:
  // lit string "helloooooo"
  adrp x0, _str_keys__closed_5_0_data@PAGE
  add x0, x0, _str_keys__closed_5_0_data@PAGEOFF
  movz x1, #10, lsl #0
  movz x2, #10, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_5_0_data:
  .byte 0x68, 0x65, 0x6C, 0x6C, 0x6F, 0x6F, 0x6F, 0x6F, 0x6F, 0x6F, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__4
  .align 2
__init_l_keys___closed__4:
  // Function: keys._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_4:
  // lit string "hellooo"
  adrp x0, _str_keys__closed_4_0_data@PAGE
  add x0, x0, _str_keys__closed_4_0_data@PAGEOFF
  movz x1, #7, lsl #0
  movz x2, #7, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_4_0_data:
  .byte 0x68, 0x65, 0x6C, 0x6C, 0x6F, 0x6F, 0x6F, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__3
  .align 2
__init_l_keys___closed__3:
  // Function: keys._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_3:
  // lit string "helloo"
  adrp x0, _str_keys__closed_3_0_data@PAGE
  add x0, x0, _str_keys__closed_3_0_data@PAGEOFF
  movz x1, #6, lsl #0
  movz x2, #6, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_3_0_data:
  .byte 0x68, 0x65, 0x6C, 0x6C, 0x6F, 0x6F, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__2
  .align 2
__init_l_keys___closed__2:
  // Function: keys._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_2:
  // lit string "hello"
  adrp x0, _str_keys__closed_2_0_data@PAGE
  add x0, x0, _str_keys__closed_2_0_data@PAGEOFF
  movz x1, #5, lsl #0
  movz x2, #5, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_2_0_data:
  .byte 0x68, 0x65, 0x6C, 0x6C, 0x6F, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__1
  .align 2
__init_l_keys___closed__1:
  // Function: keys._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_1:
  // lit string "h"
  adrp x0, _str_keys__closed_1_0_data@PAGE
  add x0, x0, _str_keys__closed_1_0_data@PAGEOFF
  movz x1, #1, lsl #0
  movz x2, #1, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_1_0_data:
  .byte 0x68, 0x00  // null terminator
  .text

  .globl __init_l_keys___closed__0
  .align 2
__init_l_keys___closed__0:
  // Function: keys._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_keys__closed_0:
  // lit string ""
  adrp x0, _str_keys__closed_0_0_data@PAGE
  add x0, x0, _str_keys__closed_0_0_data@PAGEOFF
  movz x1, #0, lsl #0
  movz x2, #0, lsl #0
  bl _lean_mk_string_unchecked
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .data
  .align 3
_str_keys__closed_0_0_data:
  .byte 0x00  // empty string (null terminator only)
  .text

  // Module initialization function
  .extern _initialize_Init
  .extern _initialize_Lean_Data_Trie
  .globl _initialize_tests_compiler_trie
  .align 2
_initialize_tests_compiler_trie:
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

  // Initialize Lean.Data.Trie
  mov x0, #1  // builtin
  bl _initialize_Lean_Data_Trie
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

  // Initialize all declarations
  // Initialize _l_keys___closed__0
  bl __init_l_keys___closed__0
  adrp x8, _l_keys___closed__0@PAGE
  add x8, x8, _l_keys___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__0@PAGE
  add x8, x8, _l_keys___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__1
  bl __init_l_keys___closed__1
  adrp x8, _l_keys___closed__1@PAGE
  add x8, x8, _l_keys___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__1@PAGE
  add x8, x8, _l_keys___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__2
  bl __init_l_keys___closed__2
  adrp x8, _l_keys___closed__2@PAGE
  add x8, x8, _l_keys___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__2@PAGE
  add x8, x8, _l_keys___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__3
  bl __init_l_keys___closed__3
  adrp x8, _l_keys___closed__3@PAGE
  add x8, x8, _l_keys___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__3@PAGE
  add x8, x8, _l_keys___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__4
  bl __init_l_keys___closed__4
  adrp x8, _l_keys___closed__4@PAGE
  add x8, x8, _l_keys___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__4@PAGE
  add x8, x8, _l_keys___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__5
  bl __init_l_keys___closed__5
  adrp x8, _l_keys___closed__5@PAGE
  add x8, x8, _l_keys___closed__5@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__5@PAGE
  add x8, x8, _l_keys___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__6
  bl __init_l_keys___closed__6
  adrp x8, _l_keys___closed__6@PAGE
  add x8, x8, _l_keys___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__6@PAGE
  add x8, x8, _l_keys___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__7
  bl __init_l_keys___closed__7
  adrp x8, _l_keys___closed__7@PAGE
  add x8, x8, _l_keys___closed__7@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__7@PAGE
  add x8, x8, _l_keys___closed__7@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__8
  bl __init_l_keys___closed__8
  adrp x8, _l_keys___closed__8@PAGE
  add x8, x8, _l_keys___closed__8@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__8@PAGE
  add x8, x8, _l_keys___closed__8@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__9
  bl __init_l_keys___closed__9
  adrp x8, _l_keys___closed__9@PAGE
  add x8, x8, _l_keys___closed__9@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__9@PAGE
  add x8, x8, _l_keys___closed__9@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__10
  bl __init_l_keys___closed__10
  adrp x8, _l_keys___closed__10@PAGE
  add x8, x8, _l_keys___closed__10@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__10@PAGE
  add x8, x8, _l_keys___closed__10@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__11
  bl __init_l_keys___closed__11
  adrp x8, _l_keys___closed__11@PAGE
  add x8, x8, _l_keys___closed__11@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__11@PAGE
  add x8, x8, _l_keys___closed__11@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__12
  bl __init_l_keys___closed__12
  adrp x8, _l_keys___closed__12@PAGE
  add x8, x8, _l_keys___closed__12@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__12@PAGE
  add x8, x8, _l_keys___closed__12@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__13
  bl __init_l_keys___closed__13
  adrp x8, _l_keys___closed__13@PAGE
  add x8, x8, _l_keys___closed__13@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__13@PAGE
  add x8, x8, _l_keys___closed__13@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__14
  bl __init_l_keys___closed__14
  adrp x8, _l_keys___closed__14@PAGE
  add x8, x8, _l_keys___closed__14@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__14@PAGE
  add x8, x8, _l_keys___closed__14@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__15
  bl __init_l_keys___closed__15
  adrp x8, _l_keys___closed__15@PAGE
  add x8, x8, _l_keys___closed__15@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__15@PAGE
  add x8, x8, _l_keys___closed__15@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__16
  bl __init_l_keys___closed__16
  adrp x8, _l_keys___closed__16@PAGE
  add x8, x8, _l_keys___closed__16@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__16@PAGE
  add x8, x8, _l_keys___closed__16@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__17
  bl __init_l_keys___closed__17
  adrp x8, _l_keys___closed__17@PAGE
  add x8, x8, _l_keys___closed__17@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__17@PAGE
  add x8, x8, _l_keys___closed__17@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__18
  bl __init_l_keys___closed__18
  adrp x8, _l_keys___closed__18@PAGE
  add x8, x8, _l_keys___closed__18@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__18@PAGE
  add x8, x8, _l_keys___closed__18@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__19
  bl __init_l_keys___closed__19
  adrp x8, _l_keys___closed__19@PAGE
  add x8, x8, _l_keys___closed__19@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__19@PAGE
  add x8, x8, _l_keys___closed__19@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__20
  bl __init_l_keys___closed__20
  adrp x8, _l_keys___closed__20@PAGE
  add x8, x8, _l_keys___closed__20@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__20@PAGE
  add x8, x8, _l_keys___closed__20@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__21
  bl __init_l_keys___closed__21
  adrp x8, _l_keys___closed__21@PAGE
  add x8, x8, _l_keys___closed__21@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__21@PAGE
  add x8, x8, _l_keys___closed__21@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__22
  bl __init_l_keys___closed__22
  adrp x8, _l_keys___closed__22@PAGE
  add x8, x8, _l_keys___closed__22@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__22@PAGE
  add x8, x8, _l_keys___closed__22@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__23
  bl __init_l_keys___closed__23
  adrp x8, _l_keys___closed__23@PAGE
  add x8, x8, _l_keys___closed__23@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__23@PAGE
  add x8, x8, _l_keys___closed__23@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__24
  bl __init_l_keys___closed__24
  adrp x8, _l_keys___closed__24@PAGE
  add x8, x8, _l_keys___closed__24@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys___closed__24@PAGE
  add x8, x8, _l_keys___closed__24@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_keys
  bl __init_l_keys
  adrp x8, _l_keys@PAGE
  add x8, x8, _l_keys@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_keys@PAGE
  add x8, x8, _l_keys@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_T_empty___closed__0
  bl __init_l_T_empty___closed__0
  adrp x8, _l_T_empty___closed__0@PAGE
  add x8, x8, _l_T_empty___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_T_empty___closed__0@PAGE
  add x8, x8, _l_T_empty___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_T_empty___closed__1
  bl __init_l_T_empty___closed__1
  adrp x8, _l_T_empty___closed__1@PAGE
  add x8, x8, _l_T_empty___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_T_empty___closed__1@PAGE
  add x8, x8, _l_T_empty___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_T_empty___closed__2
  bl __init_l_T_empty___closed__2
  adrp x8, _l_T_empty___closed__2@PAGE
  add x8, x8, _l_T_empty___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_T_empty___closed__2@PAGE
  add x8, x8, _l_T_empty___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_T_empty
  bl __init_l_T_empty
  adrp x8, _l_T_empty@PAGE
  add x8, x8, _l_T_empty@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_T_empty@PAGE
  add x8, x8, _l_T_empty@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0
  bl __init_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0
  adrp x8, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___00Array_sorted_spec__0___redArg___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_Array_findPrefix___closed__0
  bl __init_l_Array_findPrefix___closed__0
  adrp x8, _l_Array_findPrefix___closed__0@PAGE
  add x8, x8, _l_Array_findPrefix___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_Array_findPrefix___closed__0@PAGE
  add x8, x8, _l_Array_findPrefix___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_Array_matchPrefix___closed__0
  bl __init_l_Array_matchPrefix___closed__0
  adrp x8, _l_Array_matchPrefix___closed__0@PAGE
  add x8, x8, _l_Array_matchPrefix___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_Array_matchPrefix___closed__0@PAGE
  add x8, x8, _l_Array_matchPrefix___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__3___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__4___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_T_check___closed__0
  bl __init_l_T_check___closed__0
  adrp x8, _l_T_check___closed__0@PAGE
  add x8, x8, _l_T_check___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_T_check___closed__0@PAGE
  add x8, x8, _l_T_check___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_T_check___closed__1
  bl __init_l_T_check___closed__1
  adrp x8, _l_T_check___closed__1@PAGE
  add x8, x8, _l_T_check___closed__1@PAGEOFF
  strb w0, [x8]

  // Initialize _l_T_check___closed__2
  bl __init_l_T_check___closed__2
  adrp x8, _l_T_check___closed__2@PAGE
  add x8, x8, _l_T_check___closed__2@PAGEOFF
  strb w0, [x8]

  // Initialize _l_T_check___closed__3
  bl __init_l_T_check___closed__3
  adrp x8, _l_T_check___closed__3@PAGE
  add x8, x8, _l_T_check___closed__3@PAGEOFF
  str x0, [x8]

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__6@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__7@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__8@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00T_check_spec__2___closed__9@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__0___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0@PAGE
  add x8, x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00main_spec__1___closed__0@PAGEOFF
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
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__5@PAGE
  add x8, x8, _l_main___closed__5@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

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

  // Initialize _l_main___closed__10
  bl __init_l_main___closed__10
  adrp x8, _l_main___closed__10@PAGE
  add x8, x8, _l_main___closed__10@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__10@PAGE
  add x8, x8, _l_main___closed__10@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__11
  bl __init_l_main___closed__11
  adrp x8, _l_main___closed__11@PAGE
  add x8, x8, _l_main___closed__11@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__11@PAGE
  add x8, x8, _l_main___closed__11@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__12
  bl __init_l_main___closed__12
  adrp x8, _l_main___closed__12@PAGE
  add x8, x8, _l_main___closed__12@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__12@PAGE
  add x8, x8, _l_main___closed__12@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__13
  bl __init_l_main___closed__13
  adrp x8, _l_main___closed__13@PAGE
  add x8, x8, _l_main___closed__13@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__13@PAGE
  add x8, x8, _l_main___closed__13@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__14
  bl __init_l_main___closed__14
  adrp x8, _l_main___closed__14@PAGE
  add x8, x8, _l_main___closed__14@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__14@PAGE
  add x8, x8, _l_main___closed__14@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__15
  bl __init_l_main___closed__15
  adrp x8, _l_main___closed__15@PAGE
  add x8, x8, _l_main___closed__15@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__15@PAGE
  add x8, x8, _l_main___closed__15@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__16
  bl __init_l_main___closed__16
  adrp x8, _l_main___closed__16@PAGE
  add x8, x8, _l_main___closed__16@PAGEOFF
  str x0, [x8]

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
