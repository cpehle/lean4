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
  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0:
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
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_Array_findPrefix___closed__0
_l_Array_findPrefix___closed__0:
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.main.spec_1._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // unbox
  asr x27, x21, #1
  // dec 1
  mov x0, x21
  bl _lean_dec
  // unbox
  asr x26, x22, #1
  // dec 1
  mov x0, x22
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1 with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x27
  mov x3, x26
  mov x4, x23
  mov x5, x24
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
  mov x25, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.main.spec_0._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // unbox
  asr x27, x20, #1
  // dec 1
  mov x0, x20
  bl _lean_dec
  // unbox
  asr x26, x21, #1
  // dec 1
  mov x0, x21
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0 with 5 runtime args
  mov x0, x19
  mov x1, x27
  mov x2, x26
  mov x3, x22
  mov x4, x23
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
  mov x25, x0
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x25
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
  sub sp, sp, #48
  // Stack frame: 48 bytes (6 spilled vars)
.Lfn_start_main:
  mov x19, x0
  // load global constant _l_main___closed__15
  adrp x22, _l_main___closed__15@PAGE
  ldr x22, [x22, _l_main___closed__15@PAGEOFF]
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  // load global constant _l_main___closed__16
  adrp x25, _l_main___closed__16@PAGE
  ldr x25, [x25, _l_main___closed__16@PAGEOFF]
  mov x24, #0
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1 with 6 runtime args
  mov x0, x26
  mov x1, x22
  mov x2, x25
  mov x3, x24
  mov x4, x26
  mov x5, x19
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
  mov x21, x0
  // dec 1
  // case
  // runtime scalar check
  tst x21, #1
  b.ne .Lscalar_tag0_fn771961157887135399
  ldrb w8, [x21, #7]
  b .Lcompare_tag1_fn771961157887135399
.Lscalar_tag0_fn771961157887135399:
  lsr x8, x21, #1
.Lcompare_tag1_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor4_fn771961157887135399
  b .Lcase_end2_fn771961157887135399
.Lcase_ctor3_fn771961157887135399:
  // isShared
  ldr x20, [x21]
  cmp x20, #1
  mov x8, #1
  csel x20, x8, xzr, gt
  // case
  mov x8, x20
  cmp x8, #0
  b.eq .Lcase_ctor6_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor7_fn771961157887135399
  b .Lcase_end5_fn771961157887135399
.Lcase_ctor6_fn771961157887135399:
  // proj field 0
  ldr x8, [x21, #8]
  // store result to spilled vreg18
  // store to stack slot 1
  str x8, [sp, #8]
  // dec 1
  // load spilled vreg18 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg19 into stack slot 2
  str x0, [sp, #16]
  ldr x0, [sp, #16]
  mov x1, #0
  mov x2, x21
  bl _lean_ctor_set
  ldr x0, [sp, #16]
  mov x1, #1
  mov x2, x26
  bl _lean_ctor_set
  // return
  // load spilled vreg19 from stack slot 2
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
  b .Lcase_end5_fn771961157887135399
.Lcase_ctor7_fn771961157887135399:
  // proj field 1
  ldr x8, [x21, #16]
  // store result to spilled vreg20
  // store to stack slot 3
  str x8, [sp, #24]
  // inc 1
  // load spilled vreg20 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x21
  bl _lean_dec
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg21 into stack slot 5
  str x0, [sp, #40]
  ldr x0, [sp, #40]
  mov x1, #0
  mov x2, x26
  bl _lean_ctor_set
  // load spilled vreg20 from stack slot 3
  ldr x8, [sp, #24]
  ldr x0, [sp, #40]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  // load spilled vreg21 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end5_fn771961157887135399
.Lcase_end5_fn771961157887135399:
  b .Lcase_end2_fn771961157887135399
.Lcase_ctor4_fn771961157887135399:
  // return
  mov x0, x21
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn771961157887135399
.Lcase_end2_fn771961157887135399:

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
.Lfn_start_main._closed_16:
  // load global constant _l_main___closed__15
  adrp x25, _l_main___closed__15@PAGE
  ldr x25, [x25, _l_main___closed__15@PAGEOFF]
  // call Array.usize with 1 runtime args
  mov x0, x25
  bl _lean_array_size
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
.Lfn_start_main._closed_15:
  // load global constant _l_main___closed__13
  adrp x27, _l_main___closed__13@PAGE
  ldr x27, [x27, _l_main___closed__13@PAGEOFF]
  // load global constant _l_main___closed__14
  adrp x26, _l_main___closed__14@PAGE
  ldr x26, [x26, _l_main___closed__14@PAGEOFF]
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
.Lfn_start_main._closed_14:
  // load global constant _l_main___closed__9
  adrp x27, _l_main___closed__9@PAGE
  ldr x27, [x27, _l_main___closed__9@PAGEOFF]
  // load global constant _l_main___closed__11
  adrp x26, _l_main___closed__11@PAGE
  ldr x26, [x26, _l_main___closed__11@PAGEOFF]
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
.Lfn_start_main._closed_13:
  // load global constant _l_main___closed__10
  adrp x27, _l_main___closed__10@PAGE
  ldr x27, [x27, _l_main___closed__10@PAGEOFF]
  // load global constant _l_main___closed__12
  adrp x26, _l_main___closed__12@PAGE
  ldr x26, [x26, _l_main___closed__12@PAGEOFF]
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
.Lfn_start_main._closed_12:
  // load global constant _l_keys___closed__0
  adrp x27, _l_keys___closed__0@PAGE
  ldr x27, [x27, _l_keys___closed__0@PAGEOFF]
  // load global constant _l_main___closed__11
  adrp x26, _l_main___closed__11@PAGE
  ldr x26, [x26, _l_main___closed__11@PAGEOFF]
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
.Lfn_start_main._closed_11:
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
.Lfn_start_main._closed_10:
  // string literal: helooooo
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
  .asciz "helooooo"
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
.Lfn_start_main._closed_9:
  // load global constant _l_keys___closed__9
  adrp x27, _l_keys___closed__9@PAGE
  ldr x27, [x27, _l_keys___closed__9@PAGEOFF]
  // load global constant _l_main___closed__8
  adrp x26, _l_main___closed__8@PAGE
  ldr x26, [x26, _l_main___closed__8@PAGEOFF]
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
  // load global constant _l_keys___closed__0
  adrp x27, _l_keys___closed__0@PAGE
  ldr x27, [x27, _l_keys___closed__0@PAGEOFF]
  // load global constant _l_main___closed__7
  adrp x26, _l_main___closed__7@PAGE
  ldr x26, [x26, _l_main___closed__7@PAGEOFF]
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
  // load global constant _l_keys___closed__11
  adrp x27, _l_keys___closed__11@PAGE
  ldr x27, [x27, _l_keys___closed__11@PAGEOFF]
  // load global constant _l_main___closed__6
  adrp x26, _l_main___closed__6@PAGE
  ldr x26, [x26, _l_main___closed__6@PAGEOFF]
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
  // load global constant _l_keys___closed__9
  adrp x27, _l_keys___closed__9@PAGE
  ldr x27, [x27, _l_keys___closed__9@PAGEOFF]
  // load global constant _l_main___closed__5
  adrp x26, _l_main___closed__5@PAGE
  ldr x26, [x26, _l_main___closed__5@PAGEOFF]
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
  // load global constant _l_keys___closed__8
  adrp x27, _l_keys___closed__8@PAGE
  ldr x27, [x27, _l_keys___closed__8@PAGEOFF]
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
.Lfn_start_main._closed_4:
  // load global constant _l_keys___closed__1
  adrp x27, _l_keys___closed__1@PAGE
  ldr x27, [x27, _l_keys___closed__1@PAGEOFF]
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
.Lfn_start_main._closed_3:
  // load global constant _l_keys___closed__4
  adrp x27, _l_keys___closed__4@PAGE
  ldr x27, [x27, _l_keys___closed__4@PAGEOFF]
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
.Lfn_start_main._closed_2:
  // load global constant _l_keys___closed__6
  adrp x27, _l_keys___closed__6@PAGE
  ldr x27, [x27, _l_keys___closed__6@PAGEOFF]
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
.Lfn_start_main._closed_1:
  // load global constant _l_keys___closed__2
  adrp x27, _l_keys___closed__2@PAGE
  ldr x27, [x27, _l_keys___closed__2@PAGEOFF]
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
.Lfn_start_main._closed_0:
  movz x0, #9, lsl #0
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #160
  // Stack frame: 160 bytes (19 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.main.spec_1:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // call USize.decLt with 2 runtime args
  mov x0, x22
  mov x1, x21
  bl _lean_usize_dec_lt
  mov x26, x0
  // case
  mov x8, x26
  cmp x8, #0
  b.eq .Lcase_ctor1_fn3921668302197039211
  cmp x8, #1
  b.eq .Lcase_ctor2_fn3921668302197039211
  b .Lcase_end0_fn3921668302197039211
.Lcase_ctor1_fn3921668302197039211:
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x25, x0
  mov x0, x25
  mov x1, #0
  mov x2, x23
  bl _lean_ctor_set
  mov x0, x25
  mov x1, #1
  mov x2, x24
  bl _lean_ctor_set
  // return
  mov x0, x25
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn3921668302197039211
.Lcase_ctor2_fn3921668302197039211:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGEOFF]
  // store result to spilled vreg35
  // store to stack slot 1
  str x8, [sp, #8]
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg35 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  mov x1, x24
  bl _l_IO_println___at___T_check_spec__0
  mov x28, x0
  // case
  // runtime scalar check
  tst x28, #1
  b.ne .Lscalar_tag3_fn3921668302197039211
  ldrb w8, [x28, #7]
  b .Lcompare_tag4_fn3921668302197039211
.Lscalar_tag3_fn3921668302197039211:
  lsr x8, x28, #1
.Lcompare_tag4_fn3921668302197039211:
  cmp x8, #0
  b.eq .Lcase_ctor6_fn3921668302197039211
  cmp x8, #1
  b.eq .Lcase_ctor7_fn3921668302197039211
  b .Lcase_end5_fn3921668302197039211
.Lcase_ctor6_fn3921668302197039211:
  // proj field 1
  ldr x8, [x28, #16]
  // store result to spilled vreg37
  // store to stack slot 3
  str x8, [sp, #24]
  // inc 1
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x28
  bl _lean_dec_ref
  // load global constant _l_T_empty
  adrp x8, _l_T_empty@PAGE
  ldr x8, [x8, _l_T_empty@PAGEOFF]
  // store result to spilled vreg38
  // store to stack slot 4
  str x8, [sp, #32]
  // inc 1
  // call T.check with 2 runtime args
  // load spilled vreg38 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  mov x1, x8
  bl _l_T_check
  mov x8, x0
  // store result to spilled vreg39
  // store to stack slot 5
  str x8, [sp, #40]
  // load spilled vreg39 from stack slot 5
  ldr x8, [sp, #40]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag8_fn3921668302197039211
  ldrb w8, [x8, #7]
  b .Lcompare_tag9_fn3921668302197039211
.Lscalar_tag8_fn3921668302197039211:
  lsr x8, x8, #1
.Lcompare_tag9_fn3921668302197039211:
  cmp x8, #0
  b.eq .Lcase_ctor11_fn3921668302197039211
  cmp x8, #1
  b.eq .Lcase_ctor12_fn3921668302197039211
  b .Lcase_end10_fn3921668302197039211
.Lcase_ctor11_fn3921668302197039211:
  // load spilled vreg39 from stack slot 5
  ldr x8, [sp, #40]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg40
  // store to stack slot 6
  str x8, [sp, #48]
  // inc 1
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg39 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // call Array.uget with 2 runtime args
  mov x0, x20
  mov x1, x22
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg41
  // store to stack slot 7
  str x8, [sp, #56]
  // call Array.usize with 1 runtime args
  // load spilled vreg41 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_array_size
  mov x8, x0
  // store result to spilled vreg42
  // store to stack slot 8
  str x8, [sp, #64]
  mov x8, #0
  // store result to spilled vreg43
  // store to stack slot 9
  str x8, [sp, #72]
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0 with 5 runtime args
  // load spilled vreg41 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  // load spilled vreg42 from stack slot 8
  ldr x8, [sp, #64]
  mov x1, x8
  // load spilled vreg43 from stack slot 9
  ldr x8, [sp, #72]
  mov x2, x8
  // load spilled vreg38 from stack slot 4
  ldr x8, [sp, #32]
  mov x3, x8
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  mov x4, x8
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
  mov x8, x0
  // store result to spilled vreg44
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg41 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // load spilled vreg44 from stack slot 10
  ldr x8, [sp, #80]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag13_fn3921668302197039211
  ldrb w8, [x8, #7]
  b .Lcompare_tag14_fn3921668302197039211
.Lscalar_tag13_fn3921668302197039211:
  lsr x8, x8, #1
.Lcompare_tag14_fn3921668302197039211:
  cmp x8, #0
  b.eq .Lcase_ctor16_fn3921668302197039211
  cmp x8, #1
  b.eq .Lcase_ctor17_fn3921668302197039211
  b .Lcase_end15_fn3921668302197039211
.Lcase_ctor16_fn3921668302197039211:
  // load spilled vreg44 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg45
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg45 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg44 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec_ref
  mov x8, #1
  // store result to spilled vreg46
  // store to stack slot 12
  str x8, [sp, #96]
  // load spilled vreg46 from stack slot 12
  ldr x8, [sp, #96]
  // inline lean_usize_add
  add x8, x22, x8
  // store result to spilled vreg47
  // store to stack slot 13
  str x8, [sp, #104]
  // tail call to _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1
  mov x0, x19
  mov x1, x20
  mov x2, x21
  // load spilled vreg47 from stack slot 13
  ldr x8, [sp, #104]
  mov x3, x8
  mov x4, x19
  // load spilled vreg45 from stack slot 11
  ldr x8, [sp, #88]
  mov x5, x8
  b .Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.main.spec_1
  b .Lcase_end15_fn3921668302197039211
.Lcase_ctor17_fn3921668302197039211:
  // load spilled vreg44 from stack slot 10
  ldr x8, [sp, #80]
  // isShared
  ldr x8, [x8]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg49
  // store to stack slot 15
  str x8, [sp, #120]
  // load spilled vreg49 from stack slot 15
  ldr x8, [sp, #120]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor19_fn3921668302197039211
  cmp x8, #1
  b.eq .Lcase_ctor20_fn3921668302197039211
  b .Lcase_end18_fn3921668302197039211
.Lcase_ctor19_fn3921668302197039211:
  // return
  // load spilled vreg44 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end18_fn3921668302197039211
.Lcase_ctor20_fn3921668302197039211:
  // load spilled vreg44 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg50
  // store to stack slot 16
  str x8, [sp, #128]
  // load spilled vreg44 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg51
  // store to stack slot 17
  str x8, [sp, #136]
  // inc 1
  // load spilled vreg51 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg50 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg44 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg52 into stack slot 18
  str x0, [sp, #144]
  // load spilled vreg50 from stack slot 16
  ldr x8, [sp, #128]
  ldr x0, [sp, #144]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg51 from stack slot 17
  ldr x8, [sp, #136]
  ldr x0, [sp, #144]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  // load spilled vreg52 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end18_fn3921668302197039211
.Lcase_end18_fn3921668302197039211:
  b .Lcase_end15_fn3921668302197039211
.Lcase_end15_fn3921668302197039211:
  b .Lcase_end10_fn3921668302197039211
.Lcase_ctor12_fn3921668302197039211:
  // dec 1
  // return
  // load spilled vreg39 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end10_fn3921668302197039211
.Lcase_end10_fn3921668302197039211:
  b .Lcase_end5_fn3921668302197039211
.Lcase_ctor7_fn3921668302197039211:
  // return
  mov x0, x28
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end5_fn3921668302197039211
.Lcase_end5_fn3921668302197039211:
  b .Lcase_end0_fn3921668302197039211
.Lcase_end0_fn3921668302197039211:

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_1._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.main.spec_1._closed_0:
  // string literal: Resetting trie
  adrp x0, .Lstrptr_857401665584123698_0@PAGE
  ldr x0, [x0, .Lstrptr_857401665584123698_0@PAGEOFF]
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
.Lstrptr_857401665584123698_0:
  .quad .Lstr_857401665584123698_0
.Lstr_857401665584123698_0:
  .asciz "Resetting trie"
  .text

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #160
  // Stack frame: 160 bytes (19 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.main.spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // call USize.decLt with 2 runtime args
  mov x0, x21
  mov x1, x20
  bl _lean_usize_dec_lt
  mov x26, x0
  // case
  mov x8, x26
  cmp x8, #0
  b.eq .Lcase_ctor1_fn3914997010423794216
  cmp x8, #1
  b.eq .Lcase_ctor2_fn3914997010423794216
  b .Lcase_end0_fn3914997010423794216
.Lcase_ctor1_fn3914997010423794216:
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x22
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x23
  bl _lean_ctor_set
  // return
  mov x0, x24
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn3914997010423794216
.Lcase_ctor2_fn3914997010423794216:
  // call Array.uget with 2 runtime args
  mov x0, x19
  mov x1, x21
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg34
  // store to stack slot 0
  str x8, [sp]
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGEOFF]
  // store result to spilled vreg35
  // store to stack slot 1
  str x8, [sp, #8]
  // call String.append with 2 runtime args
  // load spilled vreg35 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  // load spilled vreg34 from stack slot 0
  ldr x8, [sp]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg36
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg36 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  mov x1, x23
  bl _l_IO_println___at___T_check_spec__0
  mov x8, x0
  // store result to spilled vreg37
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag3_fn3914997010423794216
  ldrb w8, [x8, #7]
  b .Lcompare_tag4_fn3914997010423794216
.Lscalar_tag3_fn3914997010423794216:
  lsr x8, x8, #1
.Lcompare_tag4_fn3914997010423794216:
  cmp x8, #0
  b.eq .Lcase_ctor6_fn3914997010423794216
  cmp x8, #1
  b.eq .Lcase_ctor7_fn3914997010423794216
  b .Lcase_end5_fn3914997010423794216
.Lcase_ctor6_fn3914997010423794216:
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg38
  // store to stack slot 4
  str x8, [sp, #32]
  // inc 1
  // load spilled vreg38 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // call T.insert with 2 runtime args
  mov x0, x22
  // load spilled vreg34 from stack slot 0
  ldr x8, [sp]
  mov x1, x8
  bl _l_T_insert
  mov x8, x0
  // store result to spilled vreg39
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  // load spilled vreg39 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc_ref
  // call T.check with 2 runtime args
  // load spilled vreg39 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg38 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_T_check
  mov x8, x0
  // store result to spilled vreg40
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag8_fn3914997010423794216
  ldrb w8, [x8, #7]
  b .Lcompare_tag9_fn3914997010423794216
.Lscalar_tag8_fn3914997010423794216:
  lsr x8, x8, #1
.Lcompare_tag9_fn3914997010423794216:
  cmp x8, #0
  b.eq .Lcase_ctor11_fn3914997010423794216
  cmp x8, #1
  b.eq .Lcase_ctor12_fn3914997010423794216
  b .Lcase_end10_fn3914997010423794216
.Lcase_ctor11_fn3914997010423794216:
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg41
  // store to stack slot 7
  str x8, [sp, #56]
  // inc 1
  // load spilled vreg41 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _lean_dec_ref
  mov x8, #1
  // store result to spilled vreg42
  // store to stack slot 8
  str x8, [sp, #64]
  // load spilled vreg42 from stack slot 8
  ldr x8, [sp, #64]
  // inline lean_usize_add
  add x8, x21, x8
  // store result to spilled vreg43
  // store to stack slot 9
  str x8, [sp, #72]
  // tail call to _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0
  mov x0, x19
  mov x1, x20
  // load spilled vreg43 from stack slot 9
  ldr x8, [sp, #72]
  mov x2, x8
  // load spilled vreg39 from stack slot 5
  ldr x8, [sp, #40]
  mov x3, x8
  // load spilled vreg41 from stack slot 7
  ldr x8, [sp, #56]
  mov x4, x8
  b .Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.main.spec_0
  b .Lcase_end10_fn3914997010423794216
.Lcase_ctor12_fn3914997010423794216:
  // dec 1
  // load spilled vreg39 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  // isShared
  ldr x8, [x8]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg45
  // store to stack slot 11
  str x8, [sp, #88]
  // load spilled vreg45 from stack slot 11
  ldr x8, [sp, #88]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor14_fn3914997010423794216
  cmp x8, #1
  b.eq .Lcase_ctor15_fn3914997010423794216
  b .Lcase_end13_fn3914997010423794216
.Lcase_ctor14_fn3914997010423794216:
  // return
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end13_fn3914997010423794216
.Lcase_ctor15_fn3914997010423794216:
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg46
  // store to stack slot 12
  str x8, [sp, #96]
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg47
  // store to stack slot 13
  str x8, [sp, #104]
  // inc 1
  // load spilled vreg47 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg46 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg40 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg48 into stack slot 14
  str x0, [sp, #112]
  // load spilled vreg46 from stack slot 12
  ldr x8, [sp, #96]
  ldr x0, [sp, #112]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg47 from stack slot 13
  ldr x8, [sp, #104]
  ldr x0, [sp, #112]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  // load spilled vreg48 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end13_fn3914997010423794216
.Lcase_end13_fn3914997010423794216:
  b .Lcase_end10_fn3914997010423794216
.Lcase_end10_fn3914997010423794216:
  b .Lcase_end5_fn3914997010423794216
.Lcase_ctor7_fn3914997010423794216:
  // dec 1
  // load spilled vreg34 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec_ref
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  // isShared
  ldr x8, [x8]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg49
  // store to stack slot 15
  str x8, [sp, #120]
  // load spilled vreg49 from stack slot 15
  ldr x8, [sp, #120]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor17_fn3914997010423794216
  cmp x8, #1
  b.eq .Lcase_ctor18_fn3914997010423794216
  b .Lcase_end16_fn3914997010423794216
.Lcase_ctor17_fn3914997010423794216:
  // return
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end16_fn3914997010423794216
.Lcase_ctor18_fn3914997010423794216:
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg50
  // store to stack slot 16
  str x8, [sp, #128]
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg51
  // store to stack slot 17
  str x8, [sp, #136]
  // inc 1
  // load spilled vreg51 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg50 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg37 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec
  // ctor EStateM.Result.error (tag=1, objs=2, scalar=0)
  // load spilled vreg50 from stack slot 16
  ldr x8, [sp, #128]
  // load spilled vreg51 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg50 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg51 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #160
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end16_fn3914997010423794216
.Lcase_end16_fn3914997010423794216:
  b .Lcase_end5_fn3914997010423794216
.Lcase_end5_fn3914997010423794216:
  b .Lcase_end0_fn3914997010423794216
.Lcase_end0_fn3914997010423794216:

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.main.spec_0._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.main.spec_0._closed_0:
  // string literal: Inserting 
  adrp x0, .Lstrptr_7552745938543010397_0@PAGE
  ldr x0, [x0, .Lstrptr_7552745938543010397_0@PAGEOFF]
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
.Lstrptr_7552745938543010397_0:
  .quad .Lstr_7552745938543010397_0
.Lstr_7552745938543010397_0:
  .asciz "Inserting "
  .text

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 bytes (1 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  asr x27, x22, #1
  // dec 1
  mov x0, x22
  bl _lean_dec
  // unbox
  asr x26, x23, #1
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x27
  mov x4, x26
  mov x5, x24
  mov x6, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 bytes (1 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  asr x27, x22, #1
  // dec 1
  mov x0, x22
  bl _lean_dec
  // unbox
  asr x26, x23, #1
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x27
  mov x4, x26
  mov x5, x24
  mov x6, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 bytes (1 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  asr x27, x22, #1
  // dec 1
  mov x0, x22
  bl _lean_dec
  // unbox
  asr x26, x23, #1
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x27
  mov x4, x26
  mov x5, x24
  mov x6, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 bytes (1 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  asr x27, x22, #1
  // dec 1
  mov x0, x22
  bl _lean_dec
  // unbox
  asr x26, x23, #1
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x27
  mov x4, x26
  mov x5, x24
  mov x6, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 bytes (1 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  asr x27, x22, #1
  // dec 1
  mov x0, x22
  bl _lean_dec
  // unbox
  asr x26, x23, #1
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x27
  mov x4, x26
  mov x5, x24
  mov x6, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 bytes (1 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  asr x27, x22, #1
  // dec 1
  mov x0, x22
  bl _lean_dec
  // unbox
  asr x26, x23, #1
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x27
  mov x4, x26
  mov x5, x24
  mov x6, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
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
  sub sp, sp, #224
  // Stack frame: 224 bytes (27 spilled vars)
.Lfn_start_T.check:
  mov x19, x0
  mov x20, x1
  // proj field 0
  ldr x26, [x19, #8]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // proj field 1
  ldr x24, [x19, #16]
  // inc 1
  mov x0, x24
  bl _lean_inc
  // reset 2
  mov x23, x19
  // load global constant _l_keys
  adrp x22, _l_keys@PAGE
  ldr x22, [x22, _l_keys@PAGEOFF]
  // load global constant _l_T_check___closed__1
  adrp x8, _l_T_check___closed__1@PAGE
  add x8, x8, _l_T_check___closed__1@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg56
  // store to stack slot 20
  str x8, [sp, #160]
  // load spilled vreg56 from stack slot 20
  ldr x8, [sp, #160]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor3_fn18318715781730946978
  cmp x8, #1
  b.eq .Lcase_ctor4_fn18318715781730946978
  b .Lcase_end2_fn18318715781730946978
.Lcase_ctor3_fn18318715781730946978:
  // jump to JP25
  // store to stack slot 12
  str x20, [sp, #96]
  b .LJP1_fn18318715781730946978
  b .Lcase_end2_fn18318715781730946978
.Lcase_ctor4_fn18318715781730946978:
  // load global constant _l_T_check___closed__2
  adrp x8, _l_T_check___closed__2@PAGE
  add x8, x8, _l_T_check___closed__2@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg57
  // store to stack slot 21
  str x8, [sp, #168]
  // load spilled vreg57 from stack slot 21
  ldr x8, [sp, #168]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor6_fn18318715781730946978
  cmp x8, #1
  b.eq .Lcase_ctor7_fn18318715781730946978
  b .Lcase_end5_fn18318715781730946978
.Lcase_ctor6_fn18318715781730946978:
  // jump to JP25
  // store to stack slot 12
  str x20, [sp, #96]
  b .LJP1_fn18318715781730946978
  b .Lcase_end5_fn18318715781730946978
.Lcase_ctor7_fn18318715781730946978:
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg58 into stack slot 22
  str x0, [sp, #176]
  mov x8, #0
  // store result to spilled vreg59
  // store to stack slot 23
  str x8, [sp, #184]
  // load global constant _l_T_check___closed__3
  adrp x8, _l_T_check___closed__3@PAGE
  ldr x8, [x8, _l_T_check___closed__3@PAGEOFF]
  // store result to spilled vreg60
  // store to stack slot 24
  str x8, [sp, #192]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6 with 7 runtime args
  mov x0, x26
  mov x1, x24
  mov x2, x22
  // load spilled vreg59 from stack slot 23
  ldr x8, [sp, #184]
  mov x3, x8
  // load spilled vreg60 from stack slot 24
  ldr x8, [sp, #192]
  mov x4, x8
  // load spilled vreg58 from stack slot 22
  ldr x8, [sp, #176]
  mov x5, x8
  mov x6, x20
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
  mov x28, x0
  // case
  // runtime scalar check
  tst x28, #1
  b.ne .Lscalar_tag8_fn18318715781730946978
  ldrb w8, [x28, #7]
  b .Lcompare_tag9_fn18318715781730946978
.Lscalar_tag8_fn18318715781730946978:
  lsr x8, x28, #1
.Lcompare_tag9_fn18318715781730946978:
  cmp x8, #0
  b.eq .Lcase_ctor11_fn18318715781730946978
  cmp x8, #1
  b.eq .Lcase_ctor12_fn18318715781730946978
  b .Lcase_end10_fn18318715781730946978
.Lcase_ctor11_fn18318715781730946978:
  // proj field 1
  ldr x8, [x28, #16]
  // store result to spilled vreg62
  // store to stack slot 26
  str x8, [sp, #208]
  // inc 1
  // load spilled vreg62 from stack slot 26
  ldr x8, [sp, #208]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x28
  bl _lean_dec_ref
  // jump to JP25
  // load spilled vreg62 from stack slot 26
  ldr x8, [sp, #208]
  // store to stack slot 12
  str x8, [sp, #96]
  b .LJP1_fn18318715781730946978
  b .Lcase_end10_fn18318715781730946978
.Lcase_ctor12_fn18318715781730946978:
  // dec 1
  // dec 1
  mov x0, x23
  bl _lean_dec
  // dec 1
  mov x0, x24
  bl _lean_dec
  // dec 1
  mov x0, x26
  bl _lean_dec
  // return
  mov x0, x28
  add sp, sp, #224
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end10_fn18318715781730946978
.Lcase_end10_fn18318715781730946978:
  b .Lcase_end5_fn18318715781730946978
.Lcase_end5_fn18318715781730946978:
  b .Lcase_end2_fn18318715781730946978
.Lcase_end2_fn18318715781730946978:
.LJP1_fn18318715781730946978:
  // load global constant _l_T_check___closed__1
  adrp x8, _l_T_check___closed__1@PAGE
  add x8, x8, _l_T_check___closed__1@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg49
  // store to stack slot 13
  str x8, [sp, #104]
  // load spilled vreg49 from stack slot 13
  ldr x8, [sp, #104]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor14_fn18318715781730946978
  cmp x8, #1
  b.eq .Lcase_ctor15_fn18318715781730946978
  b .Lcase_end13_fn18318715781730946978
.Lcase_ctor14_fn18318715781730946978:
  // jump to JP16
  // load spilled vreg48 from stack slot 12
  ldr x8, [sp, #96]
  mov x21, x8
  b .LJP0_fn18318715781730946978
  b .Lcase_end13_fn18318715781730946978
.Lcase_ctor15_fn18318715781730946978:
  // load global constant _l_T_check___closed__2
  adrp x8, _l_T_check___closed__2@PAGE
  add x8, x8, _l_T_check___closed__2@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg50
  // store to stack slot 14
  str x8, [sp, #112]
  // load spilled vreg50 from stack slot 14
  ldr x8, [sp, #112]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor17_fn18318715781730946978
  cmp x8, #1
  b.eq .Lcase_ctor18_fn18318715781730946978
  b .Lcase_end16_fn18318715781730946978
.Lcase_ctor17_fn18318715781730946978:
  // jump to JP16
  // load spilled vreg48 from stack slot 12
  ldr x8, [sp, #96]
  mov x21, x8
  b .LJP0_fn18318715781730946978
  b .Lcase_end16_fn18318715781730946978
.Lcase_ctor18_fn18318715781730946978:
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg51 into stack slot 15
  str x0, [sp, #120]
  mov x8, #0
  // store result to spilled vreg52
  // store to stack slot 16
  str x8, [sp, #128]
  // load global constant _l_T_check___closed__3
  adrp x8, _l_T_check___closed__3@PAGE
  ldr x8, [x8, _l_T_check___closed__3@PAGEOFF]
  // store result to spilled vreg53
  // store to stack slot 17
  str x8, [sp, #136]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4 with 7 runtime args
  mov x0, x26
  mov x1, x24
  mov x2, x22
  // load spilled vreg52 from stack slot 16
  ldr x8, [sp, #128]
  mov x3, x8
  // load spilled vreg53 from stack slot 17
  ldr x8, [sp, #136]
  mov x4, x8
  // load spilled vreg51 from stack slot 15
  ldr x8, [sp, #120]
  mov x5, x8
  // load spilled vreg48 from stack slot 12
  ldr x8, [sp, #96]
  mov x6, x8
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
  mov x8, x0
  // store result to spilled vreg54
  // store to stack slot 18
  str x8, [sp, #144]
  // load spilled vreg54 from stack slot 18
  ldr x8, [sp, #144]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag19_fn18318715781730946978
  ldrb w8, [x8, #7]
  b .Lcompare_tag20_fn18318715781730946978
.Lscalar_tag19_fn18318715781730946978:
  lsr x8, x8, #1
.Lcompare_tag20_fn18318715781730946978:
  cmp x8, #0
  b.eq .Lcase_ctor22_fn18318715781730946978
  cmp x8, #1
  b.eq .Lcase_ctor23_fn18318715781730946978
  b .Lcase_end21_fn18318715781730946978
.Lcase_ctor22_fn18318715781730946978:
  // load spilled vreg54 from stack slot 18
  ldr x8, [sp, #144]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg55
  // store to stack slot 19
  str x8, [sp, #152]
  // inc 1
  // load spilled vreg55 from stack slot 19
  ldr x8, [sp, #152]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg54 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP16
  // load spilled vreg55 from stack slot 19
  ldr x8, [sp, #152]
  mov x21, x8
  b .LJP0_fn18318715781730946978
  b .Lcase_end21_fn18318715781730946978
.Lcase_ctor23_fn18318715781730946978:
  // dec 1
  // dec 1
  mov x0, x23
  bl _lean_dec
  // dec 1
  mov x0, x24
  bl _lean_dec
  // dec 1
  mov x0, x26
  bl _lean_dec
  // return
  // load spilled vreg54 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  add sp, sp, #224
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end21_fn18318715781730946978
.Lcase_end21_fn18318715781730946978:
  b .Lcase_end16_fn18318715781730946978
.Lcase_end16_fn18318715781730946978:
  b .Lcase_end13_fn18318715781730946978
.Lcase_end13_fn18318715781730946978:
.LJP0_fn18318715781730946978:
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg40 into stack slot 0
  str x0, [sp]
  // load global constant _l_T_check___closed__1
  adrp x8, _l_T_check___closed__1@PAGE
  add x8, x8, _l_T_check___closed__1@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg41
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg41 from stack slot 1
  ldr x8, [sp, #8]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor25_fn18318715781730946978
  cmp x8, #1
  b.eq .Lcase_ctor26_fn18318715781730946978
  b .Lcase_end24_fn18318715781730946978
.Lcase_ctor25_fn18318715781730946978:
  // dec 1
  // dec 1
  mov x0, x24
  bl _lean_dec
  // dec 1
  mov x0, x26
  bl _lean_dec
  // reuse EStateM.Result.ok
  mov x8, x23
  // store result to spilled vreg42
  // store to stack slot 5
  str x8, [sp, #40]
  // return
  // load spilled vreg42 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  add sp, sp, #224
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end24_fn18318715781730946978
.Lcase_ctor26_fn18318715781730946978:
  // load global constant _l_T_check___closed__2
  adrp x8, _l_T_check___closed__2@PAGE
  add x8, x8, _l_T_check___closed__2@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg43
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg43 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor28_fn18318715781730946978
  cmp x8, #1
  b.eq .Lcase_ctor29_fn18318715781730946978
  b .Lcase_end27_fn18318715781730946978
.Lcase_ctor28_fn18318715781730946978:
  // dec 1
  // dec 1
  mov x0, x24
  bl _lean_dec
  // dec 1
  mov x0, x26
  bl _lean_dec
  // reuse EStateM.Result.ok
  mov x8, x23
  // store result to spilled vreg44
  // store to stack slot 7
  str x8, [sp, #56]
  // return
  // load spilled vreg44 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  add sp, sp, #224
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end27_fn18318715781730946978
.Lcase_ctor29_fn18318715781730946978:
  // dec 1
  mov x0, x23
  bl _lean_dec
  mov x8, #0
  // store result to spilled vreg45
  // store to stack slot 9
  str x8, [sp, #72]
  // load global constant _l_T_check___closed__3
  adrp x8, _l_T_check___closed__3@PAGE
  ldr x8, [x8, _l_T_check___closed__3@PAGEOFF]
  // store result to spilled vreg46
  // store to stack slot 10
  str x8, [sp, #80]
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2 with 7 runtime args
  mov x0, x26
  mov x1, x24
  mov x2, x22
  // load spilled vreg45 from stack slot 9
  ldr x8, [sp, #72]
  mov x3, x8
  // load spilled vreg46 from stack slot 10
  ldr x8, [sp, #80]
  mov x4, x8
  // load spilled vreg40 from stack slot 0
  ldr x8, [sp]
  mov x5, x8
  mov x6, x21
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
  mov x8, x0
  // store result to spilled vreg47
  // store to stack slot 11
  str x8, [sp, #88]
  // dec 1
  // dec 1
  mov x0, x24
  bl _lean_dec
  // return
  // load spilled vreg47 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  add sp, sp, #224
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end27_fn18318715781730946978
.Lcase_end27_fn18318715781730946978:
  b .Lcase_end24_fn18318715781730946978
.Lcase_end24_fn18318715781730946978:

  .globl __init_l_T_check___closed__3
  .align 2
__init_l_T_check___closed__3:
  // Function: T.check._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_T.check._closed_3:
  // load global constant _l_T_check___closed__0
  adrp x25, _l_T_check___closed__0@PAGE
  ldr x25, [x25, _l_T_check___closed__0@PAGEOFF]
  // call USize.ofNat with 1 runtime args
  mov x0, x25
  bl _lean_usize_of_nat
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

  .globl __init_l_T_check___closed__2
  .align 2
__init_l_T_check___closed__2:
  // Function: T.check._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_T.check._closed_2:
  // load global constant _l_T_check___closed__0
  adrp x25, _l_T_check___closed__0@PAGE
  ldr x25, [x25, _l_T_check___closed__0@PAGEOFF]
  // call Nat.decLe with 2 runtime args
  mov x0, x25
  mov x1, x25
  bl _lean_nat_dec_le
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

  .globl __init_l_T_check___closed__1
  .align 2
__init_l_T_check___closed__1:
  // Function: T.check._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_T.check._closed_1:
  // load global constant _l_T_check___closed__0
  adrp x24, _l_T_check___closed__0@PAGE
  ldr x24, [x24, _l_T_check___closed__0@PAGEOFF]
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
  // call Nat.decLt with 2 runtime args
  mov x0, x26
  mov x1, x24
  bl _lean_nat_dec_lt
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

  .globl __init_l_T_check___closed__0
  .align 2
__init_l_T_check___closed__0:
  // Function: T.check._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_T.check._closed_0:
  // load global constant _l_keys
  adrp x25, _l_keys@PAGE
  ldr x25, [x25, _l_keys@PAGEOFF]
  // call Array.size with 1 runtime args
  mov x0, x25
  bl _lean_array_get_size
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #192
  // Stack frame: 192 bytes (23 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call USize.decEq with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_usize_dec_eq
  mov x8, x0
  // store result to spilled vreg47
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg47 from stack slot 3
  ldr x8, [sp, #24]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor2_fn17450135140498390286
  cmp x8, #1
  b.eq .Lcase_ctor3_fn17450135140498390286
  b .Lcase_end1_fn17450135140498390286
.Lcase_ctor2_fn17450135140498390286:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg48
  // store to stack slot 4
  str x8, [sp, #32]
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg49 into stack slot 5
  str x0, [sp, #40]
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg50 into stack slot 6
  str x0, [sp, #48]
  // load global constant _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
  adrp x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
  ldr x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
  // store result to spilled vreg51
  // store to stack slot 7
  str x8, [sp, #56]
  // call Array.usize with 1 runtime args
  mov x0, x20
  bl _lean_array_size
  mov x8, x0
  // store result to spilled vreg52
  // store to stack slot 8
  str x8, [sp, #64]
  mov x8, #0
  // store result to spilled vreg53
  // store to stack slot 9
  str x8, [sp, #72]
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0 with 7 runtime args
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  // load spilled vreg51 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  // load spilled vreg50 from stack slot 6
  ldr x8, [sp, #48]
  mov x2, x8
  mov x3, x20
  // load spilled vreg52 from stack slot 8
  ldr x8, [sp, #64]
  mov x4, x8
  // load spilled vreg53 from stack slot 9
  ldr x8, [sp, #72]
  mov x5, x8
  // load spilled vreg51 from stack slot 7
  ldr x8, [sp, #56]
  mov x6, x8
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
  mov x8, x0
  // store result to spilled vreg54
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg54 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg55
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg55 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg54 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec_ref
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  // store result to spilled vreg56
  // store to stack slot 12
  str x8, [sp, #96]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.find?._redArg with 2 runtime args
  mov x0, x19
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_Lean_Data_Trie_find_x3f___redArg
  mov x8, x0
  // store result to spilled vreg57
  // store to stack slot 13
  str x8, [sp, #104]
  // load spilled vreg55 from stack slot 11
  ldr x8, [sp, #88]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn17450135140498390286
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn17450135140498390286
.Lscalar_tag5_fn17450135140498390286:
  lsr x8, x8, #1
.Lcompare_tag6_fn17450135140498390286:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn17450135140498390286
  cmp x8, #1
  b.eq .Lcase_ctor9_fn17450135140498390286
  b .Lcase_end7_fn17450135140498390286
.Lcase_ctor8_fn17450135140498390286:
  // jump to JP32
  // load spilled vreg49 from stack slot 5
  ldr x8, [sp, #40]
  // store to stack slot 14
  str x8, [sp, #112]
  b .LJP4_fn17450135140498390286
  b .Lcase_end7_fn17450135140498390286
.Lcase_ctor9_fn17450135140498390286:
  // load spilled vreg55 from stack slot 11
  ldr x8, [sp, #88]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg65
  // store to stack slot 21
  str x8, [sp, #168]
  // inc 1
  // load spilled vreg65 from stack slot 21
  ldr x8, [sp, #168]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg55 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP32
  // load spilled vreg65 from stack slot 21
  ldr x8, [sp, #168]
  // store to stack slot 14
  str x8, [sp, #112]
  b .LJP4_fn17450135140498390286
  b .Lcase_end7_fn17450135140498390286
.Lcase_end7_fn17450135140498390286:
.LJP4_fn17450135140498390286:
  // call Option.instDecidableEq.decEq._redArg with 3 runtime args
  // load spilled vreg56 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  // load spilled vreg57 from stack slot 13
  ldr x8, [sp, #104]
  mov x1, x8
  // load spilled vreg58 from stack slot 14
  ldr x8, [sp, #112]
  mov x2, x8
  bl _l_Option_instDecidableEq_decEq___redArg
  mov x8, x0
  // store result to spilled vreg59
  // store to stack slot 15
  str x8, [sp, #120]
  // load spilled vreg59 from stack slot 15
  ldr x8, [sp, #120]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor11_fn17450135140498390286
  cmp x8, #1
  b.eq .Lcase_ctor12_fn17450135140498390286
  b .Lcase_end10_fn17450135140498390286
.Lcase_ctor11_fn17450135140498390286:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGEOFF]
  // store result to spilled vreg60
  // store to stack slot 16
  str x8, [sp, #128]
  // call String.append with 2 runtime args
  // load spilled vreg60 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg61
  // store to stack slot 17
  str x8, [sp, #136]
  // dec 1
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg61 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  mov x1, x25
  bl _l_IO_println___at___T_check_spec__0
  mov x8, x0
  // store result to spilled vreg62
  // store to stack slot 18
  str x8, [sp, #144]
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag13_fn17450135140498390286
  ldrb w8, [x8, #7]
  b .Lcompare_tag14_fn17450135140498390286
.Lscalar_tag13_fn17450135140498390286:
  lsr x8, x8, #1
.Lcompare_tag14_fn17450135140498390286:
  cmp x8, #0
  b.eq .Lcase_ctor16_fn17450135140498390286
  cmp x8, #1
  b.eq .Lcase_ctor17_fn17450135140498390286
  b .Lcase_end15_fn17450135140498390286
.Lcase_ctor16_fn17450135140498390286:
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg63
  // store to stack slot 19
  str x8, [sp, #152]
  // inc 1
  // load spilled vreg63 from stack slot 19
  ldr x8, [sp, #152]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg64
  // store to stack slot 20
  str x8, [sp, #160]
  // inc 1
  // load spilled vreg64 from stack slot 20
  ldr x8, [sp, #160]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  // load spilled vreg63 from stack slot 19
  ldr x8, [sp, #152]
  mov x27, x8
  // load spilled vreg64 from stack slot 20
  ldr x8, [sp, #160]
  mov x26, x8
  b .LJP0_fn17450135140498390286
  b .Lcase_end15_fn17450135140498390286
.Lcase_ctor17_fn17450135140498390286:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  add sp, sp, #192
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn17450135140498390286
.Lcase_end15_fn17450135140498390286:
  b .Lcase_end10_fn17450135140498390286
.Lcase_ctor12_fn17450135140498390286:
  // dec 1
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  // load spilled vreg50 from stack slot 6
  ldr x8, [sp, #48]
  mov x27, x8
  mov x26, x25
  b .LJP0_fn17450135140498390286
  b .Lcase_end10_fn17450135140498390286
.Lcase_end10_fn17450135140498390286:
  b .Lcase_end1_fn17450135140498390286
.Lcase_ctor3_fn17450135140498390286:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  mov x0, x28
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x28
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #192
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end1_fn17450135140498390286
.Lcase_end1_fn17450135140498390286:
.LJP0_fn17450135140498390286:
  mov x8, #1
  // store result to spilled vreg44
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg44 from stack slot 0
  ldr x8, [sp]
  // inline lean_usize_add
  add x8, x22, x8
  // store result to spilled vreg45
  // store to stack slot 1
  str x8, [sp, #8]
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  // load spilled vreg45 from stack slot 1
  ldr x8, [sp, #8]
  mov x3, x8
  mov x4, x23
  mov x5, x27
  mov x6, x26
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
  mov x8, x0
  // store result to spilled vreg46
  // store to stack slot 2
  str x8, [sp, #16]
  // return
  // load spilled vreg46 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #192
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #192
  // Stack frame: 192 bytes (23 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call USize.decEq with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_usize_dec_eq
  mov x8, x0
  // store result to spilled vreg47
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg47 from stack slot 3
  ldr x8, [sp, #24]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor2_fn14317183758026625686
  cmp x8, #1
  b.eq .Lcase_ctor3_fn14317183758026625686
  b .Lcase_end1_fn14317183758026625686
.Lcase_ctor2_fn14317183758026625686:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg48
  // store to stack slot 4
  str x8, [sp, #32]
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg49 into stack slot 5
  str x0, [sp, #40]
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg50 into stack slot 6
  str x0, [sp, #48]
  // load global constant _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
  adrp x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
  ldr x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
  // store result to spilled vreg51
  // store to stack slot 7
  str x8, [sp, #56]
  // call Array.usize with 1 runtime args
  mov x0, x20
  bl _lean_array_size
  mov x8, x0
  // store result to spilled vreg52
  // store to stack slot 8
  str x8, [sp, #64]
  mov x8, #0
  // store result to spilled vreg53
  // store to stack slot 9
  str x8, [sp, #72]
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0 with 7 runtime args
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  // load spilled vreg51 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  // load spilled vreg50 from stack slot 6
  ldr x8, [sp, #48]
  mov x2, x8
  mov x3, x20
  // load spilled vreg52 from stack slot 8
  ldr x8, [sp, #64]
  mov x4, x8
  // load spilled vreg53 from stack slot 9
  ldr x8, [sp, #72]
  mov x5, x8
  // load spilled vreg51 from stack slot 7
  ldr x8, [sp, #56]
  mov x6, x8
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
  mov x8, x0
  // store result to spilled vreg54
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg54 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg55
  // store to stack slot 11
  str x8, [sp, #88]
  // inc 1
  // load spilled vreg55 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg54 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec_ref
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  // store result to spilled vreg56
  // store to stack slot 12
  str x8, [sp, #96]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.find?._redArg with 2 runtime args
  mov x0, x19
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_Lean_Data_Trie_find_x3f___redArg
  mov x8, x0
  // store result to spilled vreg57
  // store to stack slot 13
  str x8, [sp, #104]
  // load spilled vreg55 from stack slot 11
  ldr x8, [sp, #88]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag5_fn14317183758026625686
  ldrb w8, [x8, #7]
  b .Lcompare_tag6_fn14317183758026625686
.Lscalar_tag5_fn14317183758026625686:
  lsr x8, x8, #1
.Lcompare_tag6_fn14317183758026625686:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn14317183758026625686
  cmp x8, #1
  b.eq .Lcase_ctor9_fn14317183758026625686
  b .Lcase_end7_fn14317183758026625686
.Lcase_ctor8_fn14317183758026625686:
  // jump to JP32
  // load spilled vreg49 from stack slot 5
  ldr x8, [sp, #40]
  // store to stack slot 14
  str x8, [sp, #112]
  b .LJP4_fn14317183758026625686
  b .Lcase_end7_fn14317183758026625686
.Lcase_ctor9_fn14317183758026625686:
  // load spilled vreg55 from stack slot 11
  ldr x8, [sp, #88]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg65
  // store to stack slot 21
  str x8, [sp, #168]
  // inc 1
  // load spilled vreg65 from stack slot 21
  ldr x8, [sp, #168]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg55 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP32
  // load spilled vreg65 from stack slot 21
  ldr x8, [sp, #168]
  // store to stack slot 14
  str x8, [sp, #112]
  b .LJP4_fn14317183758026625686
  b .Lcase_end7_fn14317183758026625686
.Lcase_end7_fn14317183758026625686:
.LJP4_fn14317183758026625686:
  // call Option.instDecidableEq.decEq._redArg with 3 runtime args
  // load spilled vreg56 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  // load spilled vreg57 from stack slot 13
  ldr x8, [sp, #104]
  mov x1, x8
  // load spilled vreg58 from stack slot 14
  ldr x8, [sp, #112]
  mov x2, x8
  bl _l_Option_instDecidableEq_decEq___redArg
  mov x8, x0
  // store result to spilled vreg59
  // store to stack slot 15
  str x8, [sp, #120]
  // load spilled vreg59 from stack slot 15
  ldr x8, [sp, #120]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor11_fn14317183758026625686
  cmp x8, #1
  b.eq .Lcase_ctor12_fn14317183758026625686
  b .Lcase_end10_fn14317183758026625686
.Lcase_ctor11_fn14317183758026625686:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGEOFF]
  // store result to spilled vreg60
  // store to stack slot 16
  str x8, [sp, #128]
  // call String.append with 2 runtime args
  // load spilled vreg60 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg61
  // store to stack slot 17
  str x8, [sp, #136]
  // dec 1
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg61 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  mov x1, x25
  bl _l_IO_println___at___T_check_spec__0
  mov x8, x0
  // store result to spilled vreg62
  // store to stack slot 18
  str x8, [sp, #144]
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag13_fn14317183758026625686
  ldrb w8, [x8, #7]
  b .Lcompare_tag14_fn14317183758026625686
.Lscalar_tag13_fn14317183758026625686:
  lsr x8, x8, #1
.Lcompare_tag14_fn14317183758026625686:
  cmp x8, #0
  b.eq .Lcase_ctor16_fn14317183758026625686
  cmp x8, #1
  b.eq .Lcase_ctor17_fn14317183758026625686
  b .Lcase_end15_fn14317183758026625686
.Lcase_ctor16_fn14317183758026625686:
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg63
  // store to stack slot 19
  str x8, [sp, #152]
  // inc 1
  // load spilled vreg63 from stack slot 19
  ldr x8, [sp, #152]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg64
  // store to stack slot 20
  str x8, [sp, #160]
  // inc 1
  // load spilled vreg64 from stack slot 20
  ldr x8, [sp, #160]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  // load spilled vreg63 from stack slot 19
  ldr x8, [sp, #152]
  mov x27, x8
  // load spilled vreg64 from stack slot 20
  ldr x8, [sp, #160]
  mov x26, x8
  b .LJP0_fn14317183758026625686
  b .Lcase_end15_fn14317183758026625686
.Lcase_ctor17_fn14317183758026625686:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  // load spilled vreg62 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  add sp, sp, #192
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end15_fn14317183758026625686
.Lcase_end15_fn14317183758026625686:
  b .Lcase_end10_fn14317183758026625686
.Lcase_ctor12_fn14317183758026625686:
  // dec 1
  // load spilled vreg48 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  // load spilled vreg50 from stack slot 6
  ldr x8, [sp, #48]
  mov x27, x8
  mov x26, x25
  b .LJP0_fn14317183758026625686
  b .Lcase_end10_fn14317183758026625686
.Lcase_end10_fn14317183758026625686:
  b .Lcase_end1_fn14317183758026625686
.Lcase_ctor3_fn14317183758026625686:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  mov x0, x28
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x28
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #192
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end1_fn14317183758026625686
.Lcase_end1_fn14317183758026625686:
.LJP0_fn14317183758026625686:
  mov x8, #1
  // store result to spilled vreg44
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg44 from stack slot 0
  ldr x8, [sp]
  // inline lean_usize_add
  add x8, x22, x8
  // store result to spilled vreg45
  // store to stack slot 1
  str x8, [sp, #8]
  // tail call to _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6
  mov x0, x19
  mov x1, x20
  mov x2, x21
  // load spilled vreg45 from stack slot 1
  ldr x8, [sp, #8]
  mov x3, x8
  mov x4, x23
  mov x5, x27
  mov x6, x26
  b .Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_6.spec_6._closed_0:
  // string literal: find? differs: key = 
  adrp x0, .Lstrptr_9816168847858860899_0@PAGE
  ldr x0, [x0, .Lstrptr_9816168847858860899_0@PAGEOFF]
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
.Lstrptr_9816168847858860899_0:
  .quad .Lstr_9816168847858860899_0
.Lstr_9816168847858860899_0:
  .asciz "find? differs: key = "
  .text

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #144
  // Stack frame: 144 bytes (18 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call USize.decEq with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_usize_dec_eq
  mov x8, x0
  // store result to spilled vreg41
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg41 from stack slot 3
  ldr x8, [sp, #24]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor2_fn5807016504259595998
  cmp x8, #1
  b.eq .Lcase_ctor3_fn5807016504259595998
  b .Lcase_end1_fn5807016504259595998
.Lcase_ctor2_fn5807016504259595998:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg42
  // store to stack slot 4
  str x8, [sp, #32]
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  // store result to spilled vreg43
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.findPrefix._redArg with 2 runtime args
  mov x0, x19
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_Lean_Data_Trie_findPrefix___redArg
  mov x8, x0
  // store result to spilled vreg44
  // store to stack slot 6
  str x8, [sp, #48]
  // call Array.sorted with 1 runtime args
  // load spilled vreg44 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _l_Array_sorted
  mov x8, x0
  // store result to spilled vreg45
  // store to stack slot 7
  str x8, [sp, #56]
  // call Array.findPrefix with 2 runtime args
  mov x0, x20
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_Array_findPrefix
  mov x8, x0
  // store result to spilled vreg46
  // store to stack slot 8
  str x8, [sp, #64]
  // call Array.sorted with 1 runtime args
  // load spilled vreg46 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _l_Array_sorted
  mov x8, x0
  // store result to spilled vreg47
  // store to stack slot 9
  str x8, [sp, #72]
  // call Array.instDecidableEq._redArg with 3 runtime args
  // load spilled vreg43 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg45 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  // load spilled vreg47 from stack slot 9
  ldr x8, [sp, #72]
  mov x2, x8
  bl _l_Array_instDecidableEq___redArg
  mov x8, x0
  // store result to spilled vreg48
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg47 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_dec_ref
  // dec 1
  // load spilled vreg45 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // load spilled vreg48 from stack slot 10
  ldr x8, [sp, #80]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor5_fn5807016504259595998
  cmp x8, #1
  b.eq .Lcase_ctor6_fn5807016504259595998
  b .Lcase_end4_fn5807016504259595998
.Lcase_ctor5_fn5807016504259595998:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGEOFF]
  // store result to spilled vreg49
  // store to stack slot 11
  str x8, [sp, #88]
  // call String.append with 2 runtime args
  // load spilled vreg49 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg50
  // store to stack slot 12
  str x8, [sp, #96]
  // dec 1
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg50 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  mov x1, x25
  bl _l_IO_println___at___T_check_spec__0
  mov x8, x0
  // store result to spilled vreg51
  // store to stack slot 13
  str x8, [sp, #104]
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag7_fn5807016504259595998
  ldrb w8, [x8, #7]
  b .Lcompare_tag8_fn5807016504259595998
.Lscalar_tag7_fn5807016504259595998:
  lsr x8, x8, #1
.Lcompare_tag8_fn5807016504259595998:
  cmp x8, #0
  b.eq .Lcase_ctor10_fn5807016504259595998
  cmp x8, #1
  b.eq .Lcase_ctor11_fn5807016504259595998
  b .Lcase_end9_fn5807016504259595998
.Lcase_ctor10_fn5807016504259595998:
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg52
  // store to stack slot 14
  str x8, [sp, #112]
  // inc 1
  // load spilled vreg52 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg53
  // store to stack slot 15
  str x8, [sp, #120]
  // inc 1
  // load spilled vreg53 from stack slot 15
  ldr x8, [sp, #120]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  // load spilled vreg52 from stack slot 14
  ldr x8, [sp, #112]
  mov x27, x8
  // load spilled vreg53 from stack slot 15
  ldr x8, [sp, #120]
  mov x26, x8
  b .LJP0_fn5807016504259595998
  b .Lcase_end9_fn5807016504259595998
.Lcase_ctor11_fn5807016504259595998:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  add sp, sp, #144
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn5807016504259595998
.Lcase_end9_fn5807016504259595998:
  b .Lcase_end4_fn5807016504259595998
.Lcase_ctor6_fn5807016504259595998:
  // dec 1
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg54 into stack slot 16
  str x0, [sp, #128]
  // jump to JP13
  // load spilled vreg54 from stack slot 16
  ldr x8, [sp, #128]
  mov x27, x8
  mov x26, x25
  b .LJP0_fn5807016504259595998
  b .Lcase_end4_fn5807016504259595998
.Lcase_end4_fn5807016504259595998:
  b .Lcase_end1_fn5807016504259595998
.Lcase_ctor3_fn5807016504259595998:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  mov x0, x28
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x28
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #144
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end1_fn5807016504259595998
.Lcase_end1_fn5807016504259595998:
.LJP0_fn5807016504259595998:
  mov x8, #1
  // store result to spilled vreg38
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg38 from stack slot 0
  ldr x8, [sp]
  // inline lean_usize_add
  add x8, x22, x8
  // store result to spilled vreg39
  // store to stack slot 1
  str x8, [sp, #8]
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  // load spilled vreg39 from stack slot 1
  ldr x8, [sp, #8]
  mov x3, x8
  mov x4, x23
  mov x5, x27
  mov x6, x26
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
  mov x8, x0
  // store result to spilled vreg40
  // store to stack slot 2
  str x8, [sp, #16]
  // return
  // load spilled vreg40 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #144
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #144
  // Stack frame: 144 bytes (18 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call USize.decEq with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_usize_dec_eq
  mov x8, x0
  // store result to spilled vreg41
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg41 from stack slot 3
  ldr x8, [sp, #24]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor2_fn933525366259102966
  cmp x8, #1
  b.eq .Lcase_ctor3_fn933525366259102966
  b .Lcase_end1_fn933525366259102966
.Lcase_ctor2_fn933525366259102966:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg42
  // store to stack slot 4
  str x8, [sp, #32]
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  // store result to spilled vreg43
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.findPrefix._redArg with 2 runtime args
  mov x0, x19
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_Lean_Data_Trie_findPrefix___redArg
  mov x8, x0
  // store result to spilled vreg44
  // store to stack slot 6
  str x8, [sp, #48]
  // call Array.sorted with 1 runtime args
  // load spilled vreg44 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _l_Array_sorted
  mov x8, x0
  // store result to spilled vreg45
  // store to stack slot 7
  str x8, [sp, #56]
  // call Array.findPrefix with 2 runtime args
  mov x0, x20
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_Array_findPrefix
  mov x8, x0
  // store result to spilled vreg46
  // store to stack slot 8
  str x8, [sp, #64]
  // call Array.sorted with 1 runtime args
  // load spilled vreg46 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _l_Array_sorted
  mov x8, x0
  // store result to spilled vreg47
  // store to stack slot 9
  str x8, [sp, #72]
  // call Array.instDecidableEq._redArg with 3 runtime args
  // load spilled vreg43 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg45 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  // load spilled vreg47 from stack slot 9
  ldr x8, [sp, #72]
  mov x2, x8
  bl _l_Array_instDecidableEq___redArg
  mov x8, x0
  // store result to spilled vreg48
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg47 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_dec_ref
  // dec 1
  // load spilled vreg45 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // load spilled vreg48 from stack slot 10
  ldr x8, [sp, #80]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor5_fn933525366259102966
  cmp x8, #1
  b.eq .Lcase_ctor6_fn933525366259102966
  b .Lcase_end4_fn933525366259102966
.Lcase_ctor5_fn933525366259102966:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGEOFF]
  // store result to spilled vreg49
  // store to stack slot 11
  str x8, [sp, #88]
  // call String.append with 2 runtime args
  // load spilled vreg49 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg50
  // store to stack slot 12
  str x8, [sp, #96]
  // dec 1
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg50 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  mov x1, x25
  bl _l_IO_println___at___T_check_spec__0
  mov x8, x0
  // store result to spilled vreg51
  // store to stack slot 13
  str x8, [sp, #104]
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag7_fn933525366259102966
  ldrb w8, [x8, #7]
  b .Lcompare_tag8_fn933525366259102966
.Lscalar_tag7_fn933525366259102966:
  lsr x8, x8, #1
.Lcompare_tag8_fn933525366259102966:
  cmp x8, #0
  b.eq .Lcase_ctor10_fn933525366259102966
  cmp x8, #1
  b.eq .Lcase_ctor11_fn933525366259102966
  b .Lcase_end9_fn933525366259102966
.Lcase_ctor10_fn933525366259102966:
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg52
  // store to stack slot 14
  str x8, [sp, #112]
  // inc 1
  // load spilled vreg52 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg53
  // store to stack slot 15
  str x8, [sp, #120]
  // inc 1
  // load spilled vreg53 from stack slot 15
  ldr x8, [sp, #120]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  // load spilled vreg52 from stack slot 14
  ldr x8, [sp, #112]
  mov x27, x8
  // load spilled vreg53 from stack slot 15
  ldr x8, [sp, #120]
  mov x26, x8
  b .LJP0_fn933525366259102966
  b .Lcase_end9_fn933525366259102966
.Lcase_ctor11_fn933525366259102966:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  // load spilled vreg51 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  add sp, sp, #144
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end9_fn933525366259102966
.Lcase_end9_fn933525366259102966:
  b .Lcase_end4_fn933525366259102966
.Lcase_ctor6_fn933525366259102966:
  // dec 1
  // load spilled vreg42 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg54 into stack slot 16
  str x0, [sp, #128]
  // jump to JP13
  // load spilled vreg54 from stack slot 16
  ldr x8, [sp, #128]
  mov x27, x8
  mov x26, x25
  b .LJP0_fn933525366259102966
  b .Lcase_end4_fn933525366259102966
.Lcase_end4_fn933525366259102966:
  b .Lcase_end1_fn933525366259102966
.Lcase_ctor3_fn933525366259102966:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  mov x0, x28
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x28
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #144
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end1_fn933525366259102966
.Lcase_end1_fn933525366259102966:
.LJP0_fn933525366259102966:
  mov x8, #1
  // store result to spilled vreg38
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg38 from stack slot 0
  ldr x8, [sp]
  // inline lean_usize_add
  add x8, x22, x8
  // store result to spilled vreg39
  // store to stack slot 1
  str x8, [sp, #8]
  // tail call to _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4
  mov x0, x19
  mov x1, x20
  mov x2, x21
  // load spilled vreg39 from stack slot 1
  ldr x8, [sp, #8]
  mov x3, x8
  mov x4, x23
  mov x5, x27
  mov x6, x26
  b .Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_4.spec_4._closed_0:
  // string literal: findPrefix differs: key = 
  adrp x0, .Lstrptr_10047218658025727299_0@PAGE
  ldr x0, [x0, .Lstrptr_10047218658025727299_0@PAGEOFF]
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
.Lstrptr_10047218658025727299_0:
  .quad .Lstr_10047218658025727299_0
.Lstr_10047218658025727299_0:
  .asciz "findPrefix differs: key = "
  .text

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #464
  // Stack frame: 464 bytes (57 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call USize.decEq with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_usize_dec_eq
  mov x8, x0
  // store result to spilled vreg87
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg87 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor3_fn2505022710515634400
  cmp x8, #1
  b.eq .Lcase_ctor4_fn2505022710515634400
  b .Lcase_end2_fn2505022710515634400
.Lcase_ctor3_fn2505022710515634400:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg88
  // store to stack slot 7
  str x8, [sp, #56]
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  // store result to spilled vreg109
  // store to stack slot 28
  str x8, [sp, #224]
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg110
  // store to stack slot 29
  str x8, [sp, #232]
  // call String.utf8ByteSize with 1 runtime args
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_string_utf8_byte_size
  mov x8, x0
  // store result to spilled vreg111
  // store to stack slot 30
  str x8, [sp, #240]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.matchPrefix._redArg with 4 runtime args
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  mov x1, x19
  // load spilled vreg110 from stack slot 29
  ldr x8, [sp, #232]
  mov x2, x8
  // load spilled vreg111 from stack slot 30
  ldr x8, [sp, #240]
  mov x3, x8
  bl _l_Lean_Data_Trie_matchPrefix___redArg
  mov x8, x0
  // store result to spilled vreg112
  // store to stack slot 31
  str x8, [sp, #248]
  // dec 1
  // load spilled vreg111 from stack slot 30
  ldr x8, [sp, #240]
  mov x0, x8
  bl _lean_dec
  // inc 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_inc_ref
  // call Array.matchPrefix with 2 runtime args
  mov x0, x20
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _l_Array_matchPrefix
  mov x8, x0
  // store result to spilled vreg113
  // store to stack slot 32
  str x8, [sp, #256]
  // inc 1
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  bl _lean_inc
  // call Option.instDecidableEq.decEq._redArg with 3 runtime args
  // load spilled vreg109 from stack slot 28
  ldr x8, [sp, #224]
  mov x0, x8
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  mov x1, x8
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  mov x2, x8
  bl _l_Option_instDecidableEq_decEq___redArg
  mov x8, x0
  // store result to spilled vreg114
  // store to stack slot 33
  str x8, [sp, #264]
  // load spilled vreg114 from stack slot 33
  ldr x8, [sp, #264]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor8_fn2505022710515634400
  cmp x8, #1
  b.eq .Lcase_ctor9_fn2505022710515634400
  b .Lcase_end7_fn2505022710515634400
.Lcase_ctor8_fn2505022710515634400:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGEOFF]
  // store result to spilled vreg115
  // store to stack slot 34
  str x8, [sp, #272]
  // call String.append with 2 runtime args
  // load spilled vreg115 from stack slot 34
  ldr x8, [sp, #272]
  mov x0, x8
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg116
  // store to stack slot 35
  str x8, [sp, #280]
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGEOFF]
  // store result to spilled vreg117
  // store to stack slot 36
  str x8, [sp, #288]
  // call String.append with 2 runtime args
  // load spilled vreg116 from stack slot 35
  ldr x8, [sp, #280]
  mov x0, x8
  // load spilled vreg117 from stack slot 36
  ldr x8, [sp, #288]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg118
  // store to stack slot 37
  str x8, [sp, #296]
  // dec 1
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag11_fn2505022710515634400
  ldrb w8, [x8, #7]
  b .Lcompare_tag12_fn2505022710515634400
.Lscalar_tag11_fn2505022710515634400:
  lsr x8, x8, #1
.Lcompare_tag12_fn2505022710515634400:
  cmp x8, #0
  b.eq .Lcase_ctor14_fn2505022710515634400
  cmp x8, #1
  b.eq .Lcase_ctor15_fn2505022710515634400
  b .Lcase_end13_fn2505022710515634400
.Lcase_ctor14_fn2505022710515634400:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
  // store result to spilled vreg130
  // store to stack slot 49
  str x8, [sp, #392]
  // jump to JP63
  // load spilled vreg130 from stack slot 49
  ldr x8, [sp, #392]
  // store to stack slot 38
  str x8, [sp, #304]
  b .LJP10_fn2505022710515634400
  b .Lcase_end13_fn2505022710515634400
.Lcase_ctor15_fn2505022710515634400:
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg131
  // store to stack slot 50
  str x8, [sp, #400]
  // inc 1
  // load spilled vreg131 from stack slot 50
  ldr x8, [sp, #400]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
  // store result to spilled vreg132
  // store to stack slot 51
  str x8, [sp, #408]
  // call addParenHeuristic with 1 runtime args
  // load spilled vreg131 from stack slot 50
  ldr x8, [sp, #400]
  mov x0, x8
  bl _l_addParenHeuristic
  mov x8, x0
  // store result to spilled vreg133
  // store to stack slot 52
  str x8, [sp, #416]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg132 from stack slot 51
  ldr x8, [sp, #408]
  mov x0, x8
  // load spilled vreg133 from stack slot 52
  ldr x8, [sp, #416]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg134
  // store to stack slot 53
  str x8, [sp, #424]
  // dec 1
  // load spilled vreg133 from stack slot 52
  ldr x8, [sp, #416]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
  // store result to spilled vreg135
  // store to stack slot 54
  str x8, [sp, #432]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg134 from stack slot 53
  ldr x8, [sp, #424]
  mov x0, x8
  // load spilled vreg135 from stack slot 54
  ldr x8, [sp, #432]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg136
  // store to stack slot 55
  str x8, [sp, #440]
  // dec 1
  // jump to JP63
  // load spilled vreg136 from stack slot 55
  ldr x8, [sp, #440]
  // store to stack slot 38
  str x8, [sp, #304]
  b .LJP10_fn2505022710515634400
  b .Lcase_end13_fn2505022710515634400
.Lcase_end13_fn2505022710515634400:
.LJP10_fn2505022710515634400:
  // call String.append with 2 runtime args
  // load spilled vreg118 from stack slot 37
  ldr x8, [sp, #296]
  mov x0, x8
  // load spilled vreg119 from stack slot 38
  ldr x8, [sp, #304]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg120
  // store to stack slot 39
  str x8, [sp, #312]
  // dec 1
  // load spilled vreg119 from stack slot 38
  ldr x8, [sp, #304]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGEOFF]
  // store result to spilled vreg121
  // store to stack slot 40
  str x8, [sp, #320]
  // call String.append with 2 runtime args
  // load spilled vreg120 from stack slot 39
  ldr x8, [sp, #312]
  mov x0, x8
  // load spilled vreg121 from stack slot 40
  ldr x8, [sp, #320]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg122
  // store to stack slot 41
  str x8, [sp, #328]
  // dec 1
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag16_fn2505022710515634400
  ldrb w8, [x8, #7]
  b .Lcompare_tag17_fn2505022710515634400
.Lscalar_tag16_fn2505022710515634400:
  lsr x8, x8, #1
.Lcompare_tag17_fn2505022710515634400:
  cmp x8, #0
  b.eq .Lcase_ctor19_fn2505022710515634400
  cmp x8, #1
  b.eq .Lcase_ctor20_fn2505022710515634400
  b .Lcase_end18_fn2505022710515634400
.Lcase_ctor19_fn2505022710515634400:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
  // store result to spilled vreg123
  // store to stack slot 42
  str x8, [sp, #336]
  // jump to JP41
  // load spilled vreg122 from stack slot 41
  ldr x8, [sp, #328]
  // store to stack slot 21
  str x8, [sp, #168]
  // load spilled vreg123 from stack slot 42
  ldr x8, [sp, #336]
  // store to stack slot 22
  str x8, [sp, #176]
  b .LJP6_fn2505022710515634400
  b .Lcase_end18_fn2505022710515634400
.Lcase_ctor20_fn2505022710515634400:
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg124
  // store to stack slot 43
  str x8, [sp, #344]
  // inc 1
  // load spilled vreg124 from stack slot 43
  ldr x8, [sp, #344]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
  // store result to spilled vreg125
  // store to stack slot 44
  str x8, [sp, #352]
  // call addParenHeuristic with 1 runtime args
  // load spilled vreg124 from stack slot 43
  ldr x8, [sp, #344]
  mov x0, x8
  bl _l_addParenHeuristic
  mov x8, x0
  // store result to spilled vreg126
  // store to stack slot 45
  str x8, [sp, #360]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg125 from stack slot 44
  ldr x8, [sp, #352]
  mov x0, x8
  // load spilled vreg126 from stack slot 45
  ldr x8, [sp, #360]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg127
  // store to stack slot 46
  str x8, [sp, #368]
  // dec 1
  // load spilled vreg126 from stack slot 45
  ldr x8, [sp, #360]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
  // store result to spilled vreg128
  // store to stack slot 47
  str x8, [sp, #376]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg127 from stack slot 46
  ldr x8, [sp, #368]
  mov x0, x8
  // load spilled vreg128 from stack slot 47
  ldr x8, [sp, #376]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg129
  // store to stack slot 48
  str x8, [sp, #384]
  // dec 1
  // jump to JP41
  // load spilled vreg122 from stack slot 41
  ldr x8, [sp, #328]
  // store to stack slot 21
  str x8, [sp, #168]
  // load spilled vreg129 from stack slot 48
  ldr x8, [sp, #384]
  // store to stack slot 22
  str x8, [sp, #176]
  b .LJP6_fn2505022710515634400
  b .Lcase_end18_fn2505022710515634400
.Lcase_end18_fn2505022710515634400:
  b .Lcase_end7_fn2505022710515634400
.Lcase_ctor9_fn2505022710515634400:
  // dec 1
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  bl _lean_dec
  // dec 1
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  bl _lean_dec
  // jump to JP33
  // store to stack slot 8
  str x25, [sp, #64]
  b .LJP5_fn2505022710515634400
  b .Lcase_end7_fn2505022710515634400
.Lcase_end7_fn2505022710515634400:
.LJP6_fn2505022710515634400:
  // call String.append with 2 runtime args
  // load spilled vreg102 from stack slot 21
  ldr x8, [sp, #168]
  mov x0, x8
  // load spilled vreg103 from stack slot 22
  ldr x8, [sp, #176]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg104
  // store to stack slot 23
  str x8, [sp, #184]
  // dec 1
  // load spilled vreg103 from stack slot 22
  ldr x8, [sp, #176]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGEOFF]
  // store result to spilled vreg105
  // store to stack slot 24
  str x8, [sp, #192]
  // call String.append with 2 runtime args
  // load spilled vreg104 from stack slot 23
  ldr x8, [sp, #184]
  mov x0, x8
  // load spilled vreg105 from stack slot 24
  ldr x8, [sp, #192]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg106
  // store to stack slot 25
  str x8, [sp, #200]
  // dec 1
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg106 from stack slot 25
  ldr x8, [sp, #200]
  mov x0, x8
  mov x1, x25
  bl _l_IO_println___at___T_check_spec__0
  mov x8, x0
  // store result to spilled vreg107
  // store to stack slot 26
  str x8, [sp, #208]
  // load spilled vreg107 from stack slot 26
  ldr x8, [sp, #208]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag21_fn2505022710515634400
  ldrb w8, [x8, #7]
  b .Lcompare_tag22_fn2505022710515634400
.Lscalar_tag21_fn2505022710515634400:
  lsr x8, x8, #1
.Lcompare_tag22_fn2505022710515634400:
  cmp x8, #0
  b.eq .Lcase_ctor24_fn2505022710515634400
  cmp x8, #1
  b.eq .Lcase_ctor25_fn2505022710515634400
  b .Lcase_end23_fn2505022710515634400
.Lcase_ctor24_fn2505022710515634400:
  // load spilled vreg107 from stack slot 26
  ldr x8, [sp, #208]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg108
  // store to stack slot 27
  str x8, [sp, #216]
  // inc 1
  // load spilled vreg108 from stack slot 27
  ldr x8, [sp, #216]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg107 from stack slot 26
  ldr x8, [sp, #208]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP33
  // load spilled vreg108 from stack slot 27
  ldr x8, [sp, #216]
  // store to stack slot 8
  str x8, [sp, #64]
  b .LJP5_fn2505022710515634400
  b .Lcase_end23_fn2505022710515634400
.Lcase_ctor25_fn2505022710515634400:
  // dec 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP17
  // load spilled vreg107 from stack slot 26
  ldr x8, [sp, #208]
  // store to stack slot 3
  str x8, [sp, #24]
  b .LJP1_fn2505022710515634400
  b .Lcase_end23_fn2505022710515634400
.Lcase_end23_fn2505022710515634400:
.LJP5_fn2505022710515634400:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
  // store result to spilled vreg90
  // store to stack slot 9
  str x8, [sp, #72]
  // call String.append with 2 runtime args
  // load spilled vreg90 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg91
  // store to stack slot 10
  str x8, [sp, #80]
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  // store result to spilled vreg92
  // store to stack slot 11
  str x8, [sp, #88]
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGEOFF]
  // store result to spilled vreg93
  // store to stack slot 12
  str x8, [sp, #96]
  // call String.utf8ByteSize with 1 runtime args
  // load spilled vreg91 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_string_utf8_byte_size
  mov x8, x0
  // store result to spilled vreg94
  // store to stack slot 13
  str x8, [sp, #104]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.matchPrefix._redArg with 4 runtime args
  // load spilled vreg91 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  mov x1, x19
  // load spilled vreg93 from stack slot 12
  ldr x8, [sp, #96]
  mov x2, x8
  // load spilled vreg94 from stack slot 13
  ldr x8, [sp, #104]
  mov x3, x8
  bl _l_Lean_Data_Trie_matchPrefix___redArg
  mov x8, x0
  // store result to spilled vreg95
  // store to stack slot 14
  str x8, [sp, #112]
  // dec 1
  // load spilled vreg94 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_dec
  // dec 1
  // load spilled vreg91 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec_ref
  // inc 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_inc_ref
  // call Array.matchPrefix with 2 runtime args
  mov x0, x20
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _l_Array_matchPrefix
  mov x8, x0
  // store result to spilled vreg96
  // store to stack slot 15
  str x8, [sp, #120]
  // call Option.instDecidableEq.decEq._redArg with 3 runtime args
  // load spilled vreg92 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  // load spilled vreg95 from stack slot 14
  ldr x8, [sp, #112]
  mov x1, x8
  // load spilled vreg96 from stack slot 15
  ldr x8, [sp, #120]
  mov x2, x8
  bl _l_Option_instDecidableEq_decEq___redArg
  mov x8, x0
  // store result to spilled vreg97
  // store to stack slot 16
  str x8, [sp, #128]
  // load spilled vreg97 from stack slot 16
  ldr x8, [sp, #128]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor27_fn2505022710515634400
  cmp x8, #1
  b.eq .Lcase_ctor28_fn2505022710515634400
  b .Lcase_end26_fn2505022710515634400
.Lcase_ctor27_fn2505022710515634400:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGEOFF]
  // store result to spilled vreg98
  // store to stack slot 17
  str x8, [sp, #136]
  // call String.append with 2 runtime args
  // load spilled vreg98 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg99
  // store to stack slot 18
  str x8, [sp, #144]
  // dec 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg99 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  // load spilled vreg89 from stack slot 8
  ldr x8, [sp, #64]
  mov x1, x8
  bl _l_IO_println___at___T_check_spec__0
  mov x8, x0
  // store result to spilled vreg100
  // store to stack slot 19
  str x8, [sp, #152]
  // jump to JP17
  // load spilled vreg100 from stack slot 19
  ldr x8, [sp, #152]
  // store to stack slot 3
  str x8, [sp, #24]
  b .LJP1_fn2505022710515634400
  b .Lcase_end26_fn2505022710515634400
.Lcase_ctor28_fn2505022710515634400:
  // dec 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg101 into stack slot 20
  str x0, [sp, #160]
  // jump to JP13
  // load spilled vreg101 from stack slot 20
  ldr x8, [sp, #160]
  mov x27, x8
  // load spilled vreg89 from stack slot 8
  ldr x8, [sp, #64]
  mov x26, x8
  b .LJP0_fn2505022710515634400
  b .Lcase_end26_fn2505022710515634400
.Lcase_end26_fn2505022710515634400:
  b .Lcase_end2_fn2505022710515634400
.Lcase_ctor4_fn2505022710515634400:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  mov x0, x28
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x28
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #464
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn2505022710515634400
.Lcase_end2_fn2505022710515634400:
.LJP1_fn2505022710515634400:
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag29_fn2505022710515634400
  ldrb w8, [x8, #7]
  b .Lcompare_tag30_fn2505022710515634400
.Lscalar_tag29_fn2505022710515634400:
  lsr x8, x8, #1
.Lcompare_tag30_fn2505022710515634400:
  cmp x8, #0
  b.eq .Lcase_ctor32_fn2505022710515634400
  cmp x8, #1
  b.eq .Lcase_ctor33_fn2505022710515634400
  b .Lcase_end31_fn2505022710515634400
.Lcase_ctor32_fn2505022710515634400:
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg85
  // store to stack slot 4
  str x8, [sp, #32]
  // inc 1
  // load spilled vreg85 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg86
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  // load spilled vreg86 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  // load spilled vreg85 from stack slot 4
  ldr x8, [sp, #32]
  mov x27, x8
  // load spilled vreg86 from stack slot 5
  ldr x8, [sp, #40]
  mov x26, x8
  b .LJP0_fn2505022710515634400
  b .Lcase_end31_fn2505022710515634400
.Lcase_ctor33_fn2505022710515634400:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #464
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end31_fn2505022710515634400
.Lcase_end31_fn2505022710515634400:
.LJP0_fn2505022710515634400:
  mov x8, #1
  // store result to spilled vreg81
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg81 from stack slot 0
  ldr x8, [sp]
  // inline lean_usize_add
  add x8, x22, x8
  // store result to spilled vreg82
  // store to stack slot 1
  str x8, [sp, #8]
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  // load spilled vreg82 from stack slot 1
  ldr x8, [sp, #8]
  mov x3, x8
  mov x4, x23
  mov x5, x27
  mov x6, x26
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
  mov x8, x0
  // store result to spilled vreg83
  // store to stack slot 2
  str x8, [sp, #16]
  // return
  // load spilled vreg83 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #464
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #464
  // Stack frame: 464 bytes (57 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call USize.decEq with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_usize_dec_eq
  mov x8, x0
  // store result to spilled vreg87
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg87 from stack slot 6
  ldr x8, [sp, #48]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor3_fn13824967047259891814
  cmp x8, #1
  b.eq .Lcase_ctor4_fn13824967047259891814
  b .Lcase_end2_fn13824967047259891814
.Lcase_ctor3_fn13824967047259891814:
  // call Array.uget with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg88
  // store to stack slot 7
  str x8, [sp, #56]
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  // store result to spilled vreg109
  // store to stack slot 28
  str x8, [sp, #224]
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg110
  // store to stack slot 29
  str x8, [sp, #232]
  // call String.utf8ByteSize with 1 runtime args
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_string_utf8_byte_size
  mov x8, x0
  // store result to spilled vreg111
  // store to stack slot 30
  str x8, [sp, #240]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.matchPrefix._redArg with 4 runtime args
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  mov x1, x19
  // load spilled vreg110 from stack slot 29
  ldr x8, [sp, #232]
  mov x2, x8
  // load spilled vreg111 from stack slot 30
  ldr x8, [sp, #240]
  mov x3, x8
  bl _l_Lean_Data_Trie_matchPrefix___redArg
  mov x8, x0
  // store result to spilled vreg112
  // store to stack slot 31
  str x8, [sp, #248]
  // dec 1
  // load spilled vreg111 from stack slot 30
  ldr x8, [sp, #240]
  mov x0, x8
  bl _lean_dec
  // inc 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_inc_ref
  // call Array.matchPrefix with 2 runtime args
  mov x0, x20
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _l_Array_matchPrefix
  mov x8, x0
  // store result to spilled vreg113
  // store to stack slot 32
  str x8, [sp, #256]
  // inc 1
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  bl _lean_inc
  // call Option.instDecidableEq.decEq._redArg with 3 runtime args
  // load spilled vreg109 from stack slot 28
  ldr x8, [sp, #224]
  mov x0, x8
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  mov x1, x8
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  mov x2, x8
  bl _l_Option_instDecidableEq_decEq___redArg
  mov x8, x0
  // store result to spilled vreg114
  // store to stack slot 33
  str x8, [sp, #264]
  // load spilled vreg114 from stack slot 33
  ldr x8, [sp, #264]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor8_fn13824967047259891814
  cmp x8, #1
  b.eq .Lcase_ctor9_fn13824967047259891814
  b .Lcase_end7_fn13824967047259891814
.Lcase_ctor8_fn13824967047259891814:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGEOFF]
  // store result to spilled vreg115
  // store to stack slot 34
  str x8, [sp, #272]
  // call String.append with 2 runtime args
  // load spilled vreg115 from stack slot 34
  ldr x8, [sp, #272]
  mov x0, x8
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg116
  // store to stack slot 35
  str x8, [sp, #280]
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGEOFF]
  // store result to spilled vreg117
  // store to stack slot 36
  str x8, [sp, #288]
  // call String.append with 2 runtime args
  // load spilled vreg116 from stack slot 35
  ldr x8, [sp, #280]
  mov x0, x8
  // load spilled vreg117 from stack slot 36
  ldr x8, [sp, #288]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg118
  // store to stack slot 37
  str x8, [sp, #296]
  // dec 1
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag11_fn13824967047259891814
  ldrb w8, [x8, #7]
  b .Lcompare_tag12_fn13824967047259891814
.Lscalar_tag11_fn13824967047259891814:
  lsr x8, x8, #1
.Lcompare_tag12_fn13824967047259891814:
  cmp x8, #0
  b.eq .Lcase_ctor14_fn13824967047259891814
  cmp x8, #1
  b.eq .Lcase_ctor15_fn13824967047259891814
  b .Lcase_end13_fn13824967047259891814
.Lcase_ctor14_fn13824967047259891814:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
  // store result to spilled vreg130
  // store to stack slot 49
  str x8, [sp, #392]
  // jump to JP63
  // load spilled vreg130 from stack slot 49
  ldr x8, [sp, #392]
  // store to stack slot 38
  str x8, [sp, #304]
  b .LJP10_fn13824967047259891814
  b .Lcase_end13_fn13824967047259891814
.Lcase_ctor15_fn13824967047259891814:
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg131
  // store to stack slot 50
  str x8, [sp, #400]
  // inc 1
  // load spilled vreg131 from stack slot 50
  ldr x8, [sp, #400]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
  // store result to spilled vreg132
  // store to stack slot 51
  str x8, [sp, #408]
  // call addParenHeuristic with 1 runtime args
  // load spilled vreg131 from stack slot 50
  ldr x8, [sp, #400]
  mov x0, x8
  bl _l_addParenHeuristic
  mov x8, x0
  // store result to spilled vreg133
  // store to stack slot 52
  str x8, [sp, #416]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg132 from stack slot 51
  ldr x8, [sp, #408]
  mov x0, x8
  // load spilled vreg133 from stack slot 52
  ldr x8, [sp, #416]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg134
  // store to stack slot 53
  str x8, [sp, #424]
  // dec 1
  // load spilled vreg133 from stack slot 52
  ldr x8, [sp, #416]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
  // store result to spilled vreg135
  // store to stack slot 54
  str x8, [sp, #432]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg134 from stack slot 53
  ldr x8, [sp, #424]
  mov x0, x8
  // load spilled vreg135 from stack slot 54
  ldr x8, [sp, #432]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg136
  // store to stack slot 55
  str x8, [sp, #440]
  // dec 1
  // jump to JP63
  // load spilled vreg136 from stack slot 55
  ldr x8, [sp, #440]
  // store to stack slot 38
  str x8, [sp, #304]
  b .LJP10_fn13824967047259891814
  b .Lcase_end13_fn13824967047259891814
.Lcase_end13_fn13824967047259891814:
.LJP10_fn13824967047259891814:
  // call String.append with 2 runtime args
  // load spilled vreg118 from stack slot 37
  ldr x8, [sp, #296]
  mov x0, x8
  // load spilled vreg119 from stack slot 38
  ldr x8, [sp, #304]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg120
  // store to stack slot 39
  str x8, [sp, #312]
  // dec 1
  // load spilled vreg119 from stack slot 38
  ldr x8, [sp, #304]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGEOFF]
  // store result to spilled vreg121
  // store to stack slot 40
  str x8, [sp, #320]
  // call String.append with 2 runtime args
  // load spilled vreg120 from stack slot 39
  ldr x8, [sp, #312]
  mov x0, x8
  // load spilled vreg121 from stack slot 40
  ldr x8, [sp, #320]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg122
  // store to stack slot 41
  str x8, [sp, #328]
  // dec 1
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag16_fn13824967047259891814
  ldrb w8, [x8, #7]
  b .Lcompare_tag17_fn13824967047259891814
.Lscalar_tag16_fn13824967047259891814:
  lsr x8, x8, #1
.Lcompare_tag17_fn13824967047259891814:
  cmp x8, #0
  b.eq .Lcase_ctor19_fn13824967047259891814
  cmp x8, #1
  b.eq .Lcase_ctor20_fn13824967047259891814
  b .Lcase_end18_fn13824967047259891814
.Lcase_ctor19_fn13824967047259891814:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
  // store result to spilled vreg123
  // store to stack slot 42
  str x8, [sp, #336]
  // jump to JP41
  // load spilled vreg122 from stack slot 41
  ldr x8, [sp, #328]
  // store to stack slot 21
  str x8, [sp, #168]
  // load spilled vreg123 from stack slot 42
  ldr x8, [sp, #336]
  // store to stack slot 22
  str x8, [sp, #176]
  b .LJP6_fn13824967047259891814
  b .Lcase_end18_fn13824967047259891814
.Lcase_ctor20_fn13824967047259891814:
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg124
  // store to stack slot 43
  str x8, [sp, #344]
  // inc 1
  // load spilled vreg124 from stack slot 43
  ldr x8, [sp, #344]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
  // store result to spilled vreg125
  // store to stack slot 44
  str x8, [sp, #352]
  // call addParenHeuristic with 1 runtime args
  // load spilled vreg124 from stack slot 43
  ldr x8, [sp, #344]
  mov x0, x8
  bl _l_addParenHeuristic
  mov x8, x0
  // store result to spilled vreg126
  // store to stack slot 45
  str x8, [sp, #360]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg125 from stack slot 44
  ldr x8, [sp, #352]
  mov x0, x8
  // load spilled vreg126 from stack slot 45
  ldr x8, [sp, #360]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg127
  // store to stack slot 46
  str x8, [sp, #368]
  // dec 1
  // load spilled vreg126 from stack slot 45
  ldr x8, [sp, #360]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
  // store result to spilled vreg128
  // store to stack slot 47
  str x8, [sp, #376]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg127 from stack slot 46
  ldr x8, [sp, #368]
  mov x0, x8
  // load spilled vreg128 from stack slot 47
  ldr x8, [sp, #376]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg129
  // store to stack slot 48
  str x8, [sp, #384]
  // dec 1
  // jump to JP41
  // load spilled vreg122 from stack slot 41
  ldr x8, [sp, #328]
  // store to stack slot 21
  str x8, [sp, #168]
  // load spilled vreg129 from stack slot 48
  ldr x8, [sp, #384]
  // store to stack slot 22
  str x8, [sp, #176]
  b .LJP6_fn13824967047259891814
  b .Lcase_end18_fn13824967047259891814
.Lcase_end18_fn13824967047259891814:
  b .Lcase_end7_fn13824967047259891814
.Lcase_ctor9_fn13824967047259891814:
  // dec 1
  // load spilled vreg113 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  bl _lean_dec
  // dec 1
  // load spilled vreg112 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  bl _lean_dec
  // jump to JP33
  // store to stack slot 8
  str x25, [sp, #64]
  b .LJP5_fn13824967047259891814
  b .Lcase_end7_fn13824967047259891814
.Lcase_end7_fn13824967047259891814:
.LJP6_fn13824967047259891814:
  // call String.append with 2 runtime args
  // load spilled vreg102 from stack slot 21
  ldr x8, [sp, #168]
  mov x0, x8
  // load spilled vreg103 from stack slot 22
  ldr x8, [sp, #176]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg104
  // store to stack slot 23
  str x8, [sp, #184]
  // dec 1
  // load spilled vreg103 from stack slot 22
  ldr x8, [sp, #176]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGEOFF]
  // store result to spilled vreg105
  // store to stack slot 24
  str x8, [sp, #192]
  // call String.append with 2 runtime args
  // load spilled vreg104 from stack slot 23
  ldr x8, [sp, #184]
  mov x0, x8
  // load spilled vreg105 from stack slot 24
  ldr x8, [sp, #192]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg106
  // store to stack slot 25
  str x8, [sp, #200]
  // dec 1
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg106 from stack slot 25
  ldr x8, [sp, #200]
  mov x0, x8
  mov x1, x25
  bl _l_IO_println___at___T_check_spec__0
  mov x8, x0
  // store result to spilled vreg107
  // store to stack slot 26
  str x8, [sp, #208]
  // load spilled vreg107 from stack slot 26
  ldr x8, [sp, #208]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag21_fn13824967047259891814
  ldrb w8, [x8, #7]
  b .Lcompare_tag22_fn13824967047259891814
.Lscalar_tag21_fn13824967047259891814:
  lsr x8, x8, #1
.Lcompare_tag22_fn13824967047259891814:
  cmp x8, #0
  b.eq .Lcase_ctor24_fn13824967047259891814
  cmp x8, #1
  b.eq .Lcase_ctor25_fn13824967047259891814
  b .Lcase_end23_fn13824967047259891814
.Lcase_ctor24_fn13824967047259891814:
  // load spilled vreg107 from stack slot 26
  ldr x8, [sp, #208]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg108
  // store to stack slot 27
  str x8, [sp, #216]
  // inc 1
  // load spilled vreg108 from stack slot 27
  ldr x8, [sp, #216]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg107 from stack slot 26
  ldr x8, [sp, #208]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP33
  // load spilled vreg108 from stack slot 27
  ldr x8, [sp, #216]
  // store to stack slot 8
  str x8, [sp, #64]
  b .LJP5_fn13824967047259891814
  b .Lcase_end23_fn13824967047259891814
.Lcase_ctor25_fn13824967047259891814:
  // dec 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP17
  // load spilled vreg107 from stack slot 26
  ldr x8, [sp, #208]
  // store to stack slot 3
  str x8, [sp, #24]
  b .LJP1_fn13824967047259891814
  b .Lcase_end23_fn13824967047259891814
.Lcase_end23_fn13824967047259891814:
.LJP5_fn13824967047259891814:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
  // store result to spilled vreg90
  // store to stack slot 9
  str x8, [sp, #72]
  // call String.append with 2 runtime args
  // load spilled vreg90 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg91
  // store to stack slot 10
  str x8, [sp, #80]
  // partial application instDecidableEqString._boxed with 0 args
  adrp x0, _l_instDecidableEqString___boxed@PAGE
  add x0, x0, _l_instDecidableEqString___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x8, x0
  // store result to spilled vreg92
  // store to stack slot 11
  str x8, [sp, #88]
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGEOFF]
  // store result to spilled vreg93
  // store to stack slot 12
  str x8, [sp, #96]
  // call String.utf8ByteSize with 1 runtime args
  // load spilled vreg91 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_string_utf8_byte_size
  mov x8, x0
  // store result to spilled vreg94
  // store to stack slot 13
  str x8, [sp, #104]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // call Lean.Data.Trie.matchPrefix._redArg with 4 runtime args
  // load spilled vreg91 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  mov x1, x19
  // load spilled vreg93 from stack slot 12
  ldr x8, [sp, #96]
  mov x2, x8
  // load spilled vreg94 from stack slot 13
  ldr x8, [sp, #104]
  mov x3, x8
  bl _l_Lean_Data_Trie_matchPrefix___redArg
  mov x8, x0
  // store result to spilled vreg95
  // store to stack slot 14
  str x8, [sp, #112]
  // dec 1
  // load spilled vreg94 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_dec
  // dec 1
  // load spilled vreg91 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec_ref
  // inc 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_inc_ref
  // call Array.matchPrefix with 2 runtime args
  mov x0, x20
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _l_Array_matchPrefix
  mov x8, x0
  // store result to spilled vreg96
  // store to stack slot 15
  str x8, [sp, #120]
  // call Option.instDecidableEq.decEq._redArg with 3 runtime args
  // load spilled vreg92 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  // load spilled vreg95 from stack slot 14
  ldr x8, [sp, #112]
  mov x1, x8
  // load spilled vreg96 from stack slot 15
  ldr x8, [sp, #120]
  mov x2, x8
  bl _l_Option_instDecidableEq_decEq___redArg
  mov x8, x0
  // store result to spilled vreg97
  // store to stack slot 16
  str x8, [sp, #128]
  // load spilled vreg97 from stack slot 16
  ldr x8, [sp, #128]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor27_fn13824967047259891814
  cmp x8, #1
  b.eq .Lcase_ctor28_fn13824967047259891814
  b .Lcase_end26_fn13824967047259891814
.Lcase_ctor27_fn13824967047259891814:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGE
  ldr x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGEOFF]
  // store result to spilled vreg98
  // store to stack slot 17
  str x8, [sp, #136]
  // call String.append with 2 runtime args
  // load spilled vreg98 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg99
  // store to stack slot 18
  str x8, [sp, #144]
  // dec 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // call IO.println._at_.T.check.spec_0 with 2 runtime args
  // load spilled vreg99 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  // load spilled vreg89 from stack slot 8
  ldr x8, [sp, #64]
  mov x1, x8
  bl _l_IO_println___at___T_check_spec__0
  mov x8, x0
  // store result to spilled vreg100
  // store to stack slot 19
  str x8, [sp, #152]
  // jump to JP17
  // load spilled vreg100 from stack slot 19
  ldr x8, [sp, #152]
  // store to stack slot 3
  str x8, [sp, #24]
  b .LJP1_fn13824967047259891814
  b .Lcase_end26_fn13824967047259891814
.Lcase_ctor28_fn13824967047259891814:
  // dec 1
  // load spilled vreg88 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg101 into stack slot 20
  str x0, [sp, #160]
  // jump to JP13
  // load spilled vreg101 from stack slot 20
  ldr x8, [sp, #160]
  mov x27, x8
  // load spilled vreg89 from stack slot 8
  ldr x8, [sp, #64]
  mov x26, x8
  b .LJP0_fn13824967047259891814
  b .Lcase_end26_fn13824967047259891814
.Lcase_end26_fn13824967047259891814:
  b .Lcase_end2_fn13824967047259891814
.Lcase_ctor4_fn13824967047259891814:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // ctor EStateM.Result.ok (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  mov x0, x28
  mov x1, #0
  mov x2, x24
  bl _lean_ctor_set
  mov x0, x28
  mov x1, #1
  mov x2, x25
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #464
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn13824967047259891814
.Lcase_end2_fn13824967047259891814:
.LJP1_fn13824967047259891814:
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag29_fn13824967047259891814
  ldrb w8, [x8, #7]
  b .Lcompare_tag30_fn13824967047259891814
.Lscalar_tag29_fn13824967047259891814:
  lsr x8, x8, #1
.Lcompare_tag30_fn13824967047259891814:
  cmp x8, #0
  b.eq .Lcase_ctor32_fn13824967047259891814
  cmp x8, #1
  b.eq .Lcase_ctor33_fn13824967047259891814
  b .Lcase_end31_fn13824967047259891814
.Lcase_ctor32_fn13824967047259891814:
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg85
  // store to stack slot 4
  str x8, [sp, #32]
  // inc 1
  // load spilled vreg85 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg86
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  // load spilled vreg86 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP13
  // load spilled vreg85 from stack slot 4
  ldr x8, [sp, #32]
  mov x27, x8
  // load spilled vreg86 from stack slot 5
  ldr x8, [sp, #40]
  mov x26, x8
  b .LJP0_fn13824967047259891814
  b .Lcase_end31_fn13824967047259891814
.Lcase_ctor33_fn13824967047259891814:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  // load spilled vreg84 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #464
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end31_fn13824967047259891814
.Lcase_end31_fn13824967047259891814:
.LJP0_fn13824967047259891814:
  mov x8, #1
  // store result to spilled vreg81
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg81 from stack slot 0
  ldr x8, [sp]
  // inline lean_usize_add
  add x8, x22, x8
  // store result to spilled vreg82
  // store to stack slot 1
  str x8, [sp, #8]
  // tail call to _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2
  mov x0, x19
  mov x1, x20
  mov x2, x21
  // load spilled vreg82 from stack slot 1
  ldr x8, [sp, #8]
  mov x3, x8
  mov x4, x23
  mov x5, x27
  mov x6, x26
  b .Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_9:
  // string literal: )
  adrp x0, .Lstrptr_9281954974707088690_0@PAGE
  ldr x0, [x0, .Lstrptr_9281954974707088690_0@PAGEOFF]
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
.Lstrptr_9281954974707088690_0:
  .quad .Lstr_9281954974707088690_0
.Lstr_9281954974707088690_0:
  .asciz ")"
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_8:
  // string literal: (some 
  adrp x0, .Lstrptr_15098684652375306764_0@PAGE
  ldr x0, [x0, .Lstrptr_15098684652375306764_0@PAGEOFF]
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
.Lstrptr_15098684652375306764_0:
  .quad .Lstr_15098684652375306764_0
.Lstr_15098684652375306764_0:
  .asciz "(some "
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_7:
  // string literal: none
  adrp x0, .Lstrptr_2727921649172384374_0@PAGE
  ldr x0, [x0, .Lstrptr_2727921649172384374_0@PAGEOFF]
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
.Lstrptr_2727921649172384374_0:
  .quad .Lstr_2727921649172384374_0
.Lstr_2727921649172384374_0:
  .asciz "none"
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_6:
  // string literal:  exp: 
  adrp x0, .Lstrptr_4431784613136631907_0@PAGE
  ldr x0, [x0, .Lstrptr_4431784613136631907_0@PAGEOFF]
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
.Lstrptr_4431784613136631907_0:
  .quad .Lstr_4431784613136631907_0
.Lstr_4431784613136631907_0:
  .asciz " exp: "
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_5:
  // string literal: , got: 
  adrp x0, .Lstrptr_9786624260686159416_0@PAGE
  ldr x0, [x0, .Lstrptr_9786624260686159416_0@PAGEOFF]
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
.Lstrptr_9786624260686159416_0:
  .quad .Lstr_9786624260686159416_0
.Lstr_9786624260686159416_0:
  .asciz ", got: "
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_4:
  // string literal: matchPrefix differs: key = 
  adrp x0, .Lstrptr_10913279908322871426_0@PAGE
  ldr x0, [x0, .Lstrptr_10913279908322871426_0@PAGEOFF]
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
.Lstrptr_10913279908322871426_0:
  .quad .Lstr_10913279908322871426_0
.Lstr_10913279908322871426_0:
  .asciz "matchPrefix differs: key = "
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_3:
  // string literal:  
  adrp x0, .Lstrptr_12913372446749376833_0@PAGE
  ldr x0, [x0, .Lstrptr_12913372446749376833_0@PAGEOFF]
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
.Lstrptr_12913372446749376833_0:
  .quad .Lstr_12913372446749376833_0
.Lstr_12913372446749376833_0:
  .asciz " "
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_2:
  // string literal: matchPrefix differs (with prefix): key = 
  adrp x0, .Lstrptr_16732961142432752160_0@PAGE
  ldr x0, [x0, .Lstrptr_16732961142432752160_0@PAGEOFF]
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
.Lstrptr_16732961142432752160_0:
  .quad .Lstr_16732961142432752160_0
.Lstr_16732961142432752160_0:
  .asciz "matchPrefix differs (with prefix): key = "
  .text

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_1:
  // load global constant _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
  adrp x25, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGE
  ldr x25, [x25, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
  // call String.utf8ByteSize with 1 runtime args
  mov x0, x25
  bl _lean_string_utf8_byte_size
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

  .globl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
  .align 2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_._private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.T.check.spec_2.spec_2._closed_0:
  // string literal: somePrefix
  adrp x0, .Lstrptr_9617951312369347187_0@PAGE
  ldr x0, [x0, .Lstrptr_9617951312369347187_0@PAGEOFF]
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
.Lstrptr_9617951312369347187_0:
  .quad .Lstr_9617951312369347187_0
.Lstr_9617951312369347187_0:
  .asciz "somePrefix"
  .text

  .globl _l_IO_println___at___T_check_spec__0
  .align 2
_l_IO_println___at___T_check_spec__0:
  // Function: IO.println._at_.T.check.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.T.check.spec_0:
  mov x19, x0
  mov x20, x1
  mov x27, #10
  // call String.push with 2 runtime args
  mov x0, x19
  mov x1, x27
  bl _lean_string_push
  mov x26, x0
  // call IO.print._at_.IO.println._at_.T.check.spec_0.spec_0 with 2 runtime args
  mov x0, x26
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
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

  .globl _l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
  .align 2
_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0:
  // Function: IO.print._at_.IO.println._at_.T.check.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #32
  // Stack frame: 32 bytes (3 spilled vars)
.Lfn_start_IO.print._at_.IO.println._at_.T.check.spec_0.spec_0:
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

  .globl _l_Array_matchPrefix___boxed
  .align 2
_l_Array_matchPrefix___boxed:
  // Function: Array.matchPrefix._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_Array.matchPrefix._boxed:
  mov x19, x0
  mov x20, x1
  // call Array.matchPrefix with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_Array_matchPrefix
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

  .globl _l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed
  .align 2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed:
  // Function: List.forIn'.loop._at_.Array.matchPrefix.spec_1._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.forIn_.loop._at_.Array.matchPrefix.spec_1._boxed:
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
  bl _l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed
  .align 2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed:
  // Function: List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.forIn_.loop._at_.Array.matchPrefix.spec_1._redArg._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  mov x6, x25
  bl _l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed
  .align 2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed:
  // Function: List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  mov x26, x7
  // call List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1 with 8 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  mov x6, x25
  mov x7, x26
  bl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1
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
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed
  .align 2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed:
  // Function: List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // call List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  bl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
  mov x27, x0
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
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 bytes (1 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.Array.matchPrefix.spec_0._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // unbox
  asr x27, x23, #1
  // dec 1
  mov x0, x23
  bl _lean_dec
  // unbox
  asr x26, x24, #1
  // dec 1
  mov x0, x24
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0 with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x27
  mov x5, x26
  mov x6, x25
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
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
  sub sp, sp, #64
  // Stack frame: 64 bytes (7 spilled vars)
.Lfn_start_Array.matchPrefix:
  mov x19, x0
  mov x20, x1
  // call String.length with 1 runtime args
  mov x0, x20
  bl _lean_string_length
  mov x24, x0
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
  // call Nat.add with 2 runtime args
  mov x0, x24
  mov x1, x26
  bl _lean_nat_add
  mov x25, x0
  // dec 1
  mov x0, x24
  bl _lean_dec
  // call List.range with 1 runtime args
  mov x0, x25
  bl _l_List_range
  mov x23, x0
  // call List.reverse._redArg with 1 runtime args
  mov x0, x23
  bl _l_List_reverse___redArg
  mov x22, x0
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x21, x0
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg22 into stack slot 0
  str x0, [sp]
  // load global constant _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
  adrp x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
  ldr x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
  // store result to spilled vreg23
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  mov x0, x22
  bl _lean_inc
  // call List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg with 7 runtime args
  mov x0, x20
  mov x1, x19
  // load spilled vreg23 from stack slot 1
  ldr x8, [sp, #8]
  mov x2, x8
  // load spilled vreg22 from stack slot 0
  ldr x8, [sp]
  mov x3, x8
  mov x4, x22
  mov x5, x22
  // load spilled vreg23 from stack slot 1
  ldr x8, [sp, #8]
  mov x6, x8
  bl _l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
  mov x8, x0
  // store result to spilled vreg24
  // store to stack slot 3
  str x8, [sp, #24]
  // dec 1
  mov x0, x22
  bl _lean_dec
  // dec 1
  // load spilled vreg24 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg25
  // store to stack slot 4
  str x8, [sp, #32]
  // inc 1
  // load spilled vreg25 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg24 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // load spilled vreg25 from stack slot 4
  ldr x8, [sp, #32]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag0_fn7327927241181157712
  ldrb w8, [x8, #7]
  b .Lcompare_tag1_fn7327927241181157712
.Lscalar_tag0_fn7327927241181157712:
  lsr x8, x8, #1
.Lcompare_tag1_fn7327927241181157712:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn7327927241181157712
  cmp x8, #1
  b.eq .Lcase_ctor4_fn7327927241181157712
  b .Lcase_end2_fn7327927241181157712
.Lcase_ctor3_fn7327927241181157712:
  // return
  mov x0, x21
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn7327927241181157712
.Lcase_ctor4_fn7327927241181157712:
  // load spilled vreg25 from stack slot 4
  ldr x8, [sp, #32]
  // proj field 0
  ldr x28, [x8, #8]
  // inc 1
  mov x0, x28
  bl _lean_inc
  // dec 1
  // load spilled vreg25 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
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
  b .Lcase_end2_fn7327927241181157712
.Lcase_end2_fn7327927241181157712:

  .globl _l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1
  .align 2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1:
  // Function: List.forIn'.loop._at_.Array.matchPrefix.spec_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.forIn_.loop._at_.Array.matchPrefix.spec_1:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  mov x26, x7
  // call List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg with 7 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  mov x5, x24
  mov x6, x25
  bl _l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
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

  .globl _l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
  .align 2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg:
  // Function: List.forIn'.loop._at_.Array.matchPrefix.spec_1._redArg
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #336
  // Stack frame: 336 bytes (41 spilled vars)
.Lfn_start_List.forIn_.loop._at_.Array.matchPrefix.spec_1._redArg:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // case
  // runtime scalar check
  tst x24, #1
  b.ne .Lscalar_tag0_fn3424173371631300159
  ldrb w8, [x24, #7]
  b .Lcompare_tag1_fn3424173371631300159
.Lscalar_tag0_fn3424173371631300159:
  lsr x8, x24, #1
.Lcompare_tag1_fn3424173371631300159:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn3424173371631300159
  cmp x8, #1
  b.eq .Lcase_ctor4_fn3424173371631300159
  b .Lcase_end2_fn3424173371631300159
.Lcase_ctor3_fn3424173371631300159:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // inc 1
  mov x0, x25
  bl _lean_inc_ref
  // return
  mov x0, x25
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn3424173371631300159
.Lcase_ctor4_fn3424173371631300159:
  // proj field 0
  ldr x26, [x24, #8]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // proj field 1
  ldr x8, [x24, #16]
  // store result to spilled vreg52
  // store to stack slot 0
  str x8, [sp]
  // inc 1
  // load spilled vreg52 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x24
  bl _lean_dec_ref
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg53
  // store to stack slot 1
  str x8, [sp, #8]
  // call String.utf8ByteSize with 1 runtime args
  mov x0, x19
  bl _lean_string_utf8_byte_size
  mov x8, x0
  // store result to spilled vreg54
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // ctor Substring.mk (tag=0, objs=3, scalar=0)
  mov x0, #0
  mov x1, #3
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg55 into stack slot 3
  str x0, [sp, #24]
  ldr x0, [sp, #24]
  mov x1, #0
  mov x2, x19
  bl _lean_ctor_set
  // load spilled vreg53 from stack slot 1
  ldr x8, [sp, #8]
  ldr x0, [sp, #24]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg54 from stack slot 2
  ldr x8, [sp, #16]
  ldr x0, [sp, #24]
  mov x1, #2
  mov x2, x8
  bl _lean_ctor_set
  // call Substring.nextn with 3 runtime args
  // load spilled vreg55 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  mov x1, x26
  // load spilled vreg53 from stack slot 1
  ldr x8, [sp, #8]
  mov x2, x8
  bl _l_Substring_nextn
  mov x8, x0
  // store result to spilled vreg56
  // store to stack slot 4
  str x8, [sp, #32]
  // dec 1
  // load spilled vreg55 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // call String.extract with 3 runtime args
  mov x0, x19
  // load spilled vreg53 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  // load spilled vreg56 from stack slot 4
  ldr x8, [sp, #32]
  mov x2, x8
  bl _lean_string_utf8_extract
  mov x8, x0
  // store result to spilled vreg57
  // store to stack slot 5
  str x8, [sp, #40]
  // dec 1
  // load spilled vreg56 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg58 into stack slot 6
  str x0, [sp, #48]
  // load global constant _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
  adrp x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
  ldr x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
  // store result to spilled vreg59
  // store to stack slot 7
  str x8, [sp, #56]
  // call Array.usize with 1 runtime args
  mov x0, x20
  bl _lean_array_size
  mov x8, x0
  // store result to spilled vreg60
  // store to stack slot 8
  str x8, [sp, #64]
  mov x8, #0
  // store result to spilled vreg61
  // store to stack slot 9
  str x8, [sp, #72]
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0 with 7 runtime args
  // load spilled vreg57 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg59 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  // load spilled vreg58 from stack slot 6
  ldr x8, [sp, #48]
  mov x2, x8
  mov x3, x20
  // load spilled vreg60 from stack slot 8
  ldr x8, [sp, #64]
  mov x4, x8
  // load spilled vreg61 from stack slot 9
  ldr x8, [sp, #72]
  mov x5, x8
  // load spilled vreg59 from stack slot 7
  ldr x8, [sp, #56]
  mov x6, x8
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
  mov x8, x0
  // store result to spilled vreg62
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  // isShared
  ldr x8, [x8]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg63
  // store to stack slot 11
  str x8, [sp, #88]
  // load spilled vreg63 from stack slot 11
  ldr x8, [sp, #88]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor6_fn3424173371631300159
  cmp x8, #1
  b.eq .Lcase_ctor7_fn3424173371631300159
  b .Lcase_end5_fn3424173371631300159
.Lcase_ctor6_fn3424173371631300159:
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg64
  // store to stack slot 12
  str x8, [sp, #96]
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg65
  // store to stack slot 13
  str x8, [sp, #104]
  // dec 1
  // load spilled vreg65 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_dec
  // load spilled vreg64 from stack slot 12
  ldr x8, [sp, #96]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag8_fn3424173371631300159
  ldrb w8, [x8, #7]
  b .Lcompare_tag9_fn3424173371631300159
.Lscalar_tag8_fn3424173371631300159:
  lsr x8, x8, #1
.Lcompare_tag9_fn3424173371631300159:
  cmp x8, #0
  b.eq .Lcase_ctor11_fn3424173371631300159
  cmp x8, #1
  b.eq .Lcase_ctor12_fn3424173371631300159
  b .Lcase_end10_fn3424173371631300159
.Lcase_ctor11_fn3424173371631300159:
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  // del
  mov x0, x8
  bl _lean_dec_ref
  // dec 1
  // load spilled vreg57 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // call List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  // load spilled vreg52 from stack slot 0
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  bl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
  mov x8, x0
  // store result to spilled vreg66
  // store to stack slot 14
  str x8, [sp, #112]
  // return
  // load spilled vreg66 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end10_fn3424173371631300159
.Lcase_ctor12_fn3424173371631300159:
  // load spilled vreg64 from stack slot 12
  ldr x8, [sp, #96]
  // isShared
  ldr x8, [x8]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg67
  // store to stack slot 15
  str x8, [sp, #120]
  // load spilled vreg67 from stack slot 15
  ldr x8, [sp, #120]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor14_fn3424173371631300159
  cmp x8, #1
  b.eq .Lcase_ctor15_fn3424173371631300159
  b .Lcase_end13_fn3424173371631300159
.Lcase_ctor14_fn3424173371631300159:
  // load spilled vreg64 from stack slot 12
  ldr x8, [sp, #96]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg68
  // store to stack slot 16
  str x8, [sp, #128]
  // load spilled vreg68 from stack slot 16
  ldr x8, [sp, #128]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag16_fn3424173371631300159
  ldrb w8, [x8, #7]
  b .Lcompare_tag17_fn3424173371631300159
.Lscalar_tag16_fn3424173371631300159:
  lsr x8, x8, #1
.Lcompare_tag17_fn3424173371631300159:
  cmp x8, #0
  b.eq .Lcase_ctor19_fn3424173371631300159
  cmp x8, #1
  b.eq .Lcase_ctor20_fn3424173371631300159
  b .Lcase_end18_fn3424173371631300159
.Lcase_ctor19_fn3424173371631300159:
  // load spilled vreg64 from stack slot 12
  ldr x8, [sp, #96]
  // del
  mov x0, x8
  bl _lean_dec_ref
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  // del
  mov x0, x8
  bl _lean_dec_ref
  // dec 1
  // load spilled vreg57 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // call List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  // load spilled vreg52 from stack slot 0
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  bl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
  mov x8, x0
  // store result to spilled vreg69
  // store to stack slot 17
  str x8, [sp, #136]
  // return
  // load spilled vreg69 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end18_fn3424173371631300159
.Lcase_ctor20_fn3424173371631300159:
  // dec 1
  // load spilled vreg52 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load spilled vreg68 from stack slot 16
  ldr x8, [sp, #128]
  // isShared
  ldr x8, [x8]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg70
  // store to stack slot 18
  str x8, [sp, #144]
  // load spilled vreg70 from stack slot 18
  ldr x8, [sp, #144]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor22_fn3424173371631300159
  cmp x8, #1
  b.eq .Lcase_ctor23_fn3424173371631300159
  b .Lcase_end21_fn3424173371631300159
.Lcase_ctor22_fn3424173371631300159:
  // load spilled vreg68 from stack slot 16
  ldr x8, [sp, #128]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg71
  // store to stack slot 19
  str x8, [sp, #152]
  // dec 1
  // load spilled vreg71 from stack slot 19
  ldr x8, [sp, #152]
  mov x0, x8
  bl _lean_dec
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg72 into stack slot 20
  str x0, [sp, #160]
  // load spilled vreg68 from stack slot 16
  ldr x8, [sp, #128]
  ldr x0, [sp, #160]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg57 from stack slot 5
  ldr x8, [sp, #40]
  ldr x0, [sp, #160]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg73 into stack slot 21
  str x0, [sp, #168]
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  ldr x0, [sp, #168]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  ldr x0, [sp, #168]
  mov x1, #1
  mov x2, x22
  bl _lean_ctor_set
  // return
  // load spilled vreg73 from stack slot 21
  ldr x8, [sp, #168]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end21_fn3424173371631300159
.Lcase_ctor23_fn3424173371631300159:
  // dec 1
  // load spilled vreg68 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  bl _lean_dec
  // ctor Option.some (tag=1, objs=1, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg74 into stack slot 22
  str x0, [sp, #176]
  // load spilled vreg57 from stack slot 5
  ldr x8, [sp, #40]
  ldr x0, [sp, #176]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg75 into stack slot 23
  str x0, [sp, #184]
  // load spilled vreg64 from stack slot 12
  ldr x8, [sp, #96]
  ldr x0, [sp, #184]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg74 from stack slot 22
  ldr x8, [sp, #176]
  ldr x0, [sp, #184]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg76 into stack slot 24
  str x0, [sp, #192]
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  ldr x0, [sp, #192]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  ldr x0, [sp, #192]
  mov x1, #1
  mov x2, x22
  bl _lean_ctor_set
  // return
  // load spilled vreg76 from stack slot 24
  ldr x8, [sp, #192]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end21_fn3424173371631300159
.Lcase_end21_fn3424173371631300159:
  b .Lcase_end18_fn3424173371631300159
.Lcase_end18_fn3424173371631300159:
  b .Lcase_end13_fn3424173371631300159
.Lcase_ctor15_fn3424173371631300159:
  // load spilled vreg64 from stack slot 12
  ldr x8, [sp, #96]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg77
  // store to stack slot 25
  str x8, [sp, #200]
  // inc 1
  // load spilled vreg77 from stack slot 25
  ldr x8, [sp, #200]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg64 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _lean_dec
  // load spilled vreg77 from stack slot 25
  ldr x8, [sp, #200]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag24_fn3424173371631300159
  ldrb w8, [x8, #7]
  b .Lcompare_tag25_fn3424173371631300159
.Lscalar_tag24_fn3424173371631300159:
  lsr x8, x8, #1
.Lcompare_tag25_fn3424173371631300159:
  cmp x8, #0
  b.eq .Lcase_ctor27_fn3424173371631300159
  cmp x8, #1
  b.eq .Lcase_ctor28_fn3424173371631300159
  b .Lcase_end26_fn3424173371631300159
.Lcase_ctor27_fn3424173371631300159:
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  // del
  mov x0, x8
  bl _lean_dec_ref
  // dec 1
  // load spilled vreg57 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // call List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  // load spilled vreg52 from stack slot 0
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  bl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
  mov x8, x0
  // store result to spilled vreg78
  // store to stack slot 26
  str x8, [sp, #208]
  // return
  // load spilled vreg78 from stack slot 26
  ldr x8, [sp, #208]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end26_fn3424173371631300159
.Lcase_ctor28_fn3424173371631300159:
  // dec 1
  // load spilled vreg52 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load spilled vreg77 from stack slot 25
  ldr x8, [sp, #200]
  // reset 1
  mov x8, x8
  // store result to spilled vreg79
  // store to stack slot 27
  str x8, [sp, #216]
  // load spilled vreg79 from stack slot 27
  ldr x8, [sp, #216]
  // reuse Option.some
  mov x8, x8
  // store result to spilled vreg80
  // store to stack slot 28
  str x8, [sp, #224]
  // ctor Option.some (tag=1, objs=1, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg81 into stack slot 29
  str x0, [sp, #232]
  // load spilled vreg80 from stack slot 28
  ldr x8, [sp, #224]
  ldr x0, [sp, #232]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg82 into stack slot 30
  str x0, [sp, #240]
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  ldr x0, [sp, #240]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  ldr x0, [sp, #240]
  mov x1, #1
  mov x2, x22
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg83 into stack slot 31
  str x0, [sp, #248]
  // load spilled vreg82 from stack slot 30
  ldr x8, [sp, #240]
  ldr x0, [sp, #248]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg81 from stack slot 29
  ldr x8, [sp, #232]
  ldr x0, [sp, #248]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  // load spilled vreg83 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end26_fn3424173371631300159
.Lcase_end26_fn3424173371631300159:
  b .Lcase_end13_fn3424173371631300159
.Lcase_end13_fn3424173371631300159:
  b .Lcase_end10_fn3424173371631300159
.Lcase_end10_fn3424173371631300159:
  b .Lcase_end5_fn3424173371631300159
.Lcase_ctor7_fn3424173371631300159:
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg84
  // store to stack slot 32
  str x8, [sp, #256]
  // inc 1
  // load spilled vreg84 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg62 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec
  // load spilled vreg84 from stack slot 32
  ldr x8, [sp, #256]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag29_fn3424173371631300159
  ldrb w8, [x8, #7]
  b .Lcompare_tag30_fn3424173371631300159
.Lscalar_tag29_fn3424173371631300159:
  lsr x8, x8, #1
.Lcompare_tag30_fn3424173371631300159:
  cmp x8, #0
  b.eq .Lcase_ctor32_fn3424173371631300159
  cmp x8, #1
  b.eq .Lcase_ctor33_fn3424173371631300159
  b .Lcase_end31_fn3424173371631300159
.Lcase_ctor32_fn3424173371631300159:
  // dec 1
  // load spilled vreg57 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // call List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  // load spilled vreg52 from stack slot 0
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  bl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
  mov x8, x0
  // store result to spilled vreg85
  // store to stack slot 33
  str x8, [sp, #264]
  // return
  // load spilled vreg85 from stack slot 33
  ldr x8, [sp, #264]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end31_fn3424173371631300159
.Lcase_ctor33_fn3424173371631300159:
  // load spilled vreg84 from stack slot 32
  ldr x8, [sp, #256]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg86
  // store to stack slot 34
  str x8, [sp, #272]
  // inc 1
  // load spilled vreg86 from stack slot 34
  ldr x8, [sp, #272]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg84 from stack slot 32
  ldr x8, [sp, #256]
  // reset 1
  mov x8, x8
  // store result to spilled vreg87
  // store to stack slot 35
  str x8, [sp, #280]
  // load spilled vreg86 from stack slot 34
  ldr x8, [sp, #272]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag34_fn3424173371631300159
  ldrb w8, [x8, #7]
  b .Lcompare_tag35_fn3424173371631300159
.Lscalar_tag34_fn3424173371631300159:
  lsr x8, x8, #1
.Lcompare_tag35_fn3424173371631300159:
  cmp x8, #0
  b.eq .Lcase_ctor37_fn3424173371631300159
  cmp x8, #1
  b.eq .Lcase_ctor38_fn3424173371631300159
  b .Lcase_end36_fn3424173371631300159
.Lcase_ctor37_fn3424173371631300159:
  // dec 1
  // load spilled vreg87 from stack slot 35
  ldr x8, [sp, #280]
  mov x0, x8
  bl _lean_dec
  // dec 1
  // load spilled vreg57 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // call List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  // load spilled vreg52 from stack slot 0
  ldr x8, [sp]
  mov x4, x8
  mov x5, x21
  bl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
  mov x8, x0
  // store result to spilled vreg88
  // store to stack slot 36
  str x8, [sp, #288]
  // return
  // load spilled vreg88 from stack slot 36
  ldr x8, [sp, #288]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end36_fn3424173371631300159
.Lcase_ctor38_fn3424173371631300159:
  // dec 1
  // load spilled vreg52 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load spilled vreg86 from stack slot 34
  ldr x8, [sp, #272]
  // reset 1
  mov x8, x8
  // store result to spilled vreg89
  // store to stack slot 37
  str x8, [sp, #296]
  // load spilled vreg89 from stack slot 37
  ldr x8, [sp, #296]
  // reuse Option.some
  mov x8, x8
  // store result to spilled vreg90
  // store to stack slot 38
  str x8, [sp, #304]
  // load spilled vreg87 from stack slot 35
  ldr x8, [sp, #280]
  // reuse Option.some
  mov x8, x8
  // store result to spilled vreg91
  // store to stack slot 39
  str x8, [sp, #312]
  // ctor MProd.mk (tag=0, objs=2, scalar=0)
  // load spilled vreg91 from stack slot 39
  ldr x8, [sp, #312]
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg91 from stack slot 39
  ldr x8, [sp, #312]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  mov x0, x28
  mov x1, #1
  mov x2, x22
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end36_fn3424173371631300159
.Lcase_end36_fn3424173371631300159:
  b .Lcase_end31_fn3424173371631300159
.Lcase_end31_fn3424173371631300159:
  b .Lcase_end5_fn3424173371631300159
.Lcase_end5_fn3424173371631300159:
  b .Lcase_end2_fn3424173371631300159
.Lcase_end2_fn3424173371631300159:

  .globl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1
  .align 2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1:
  // Function: List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  mov x26, x7
  // call List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg with 6 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x24
  mov x5, x25
  bl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
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

  .globl _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
  .align 2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg:
  // Function: List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #336
  // Stack frame: 336 bytes (41 spilled vars)
.Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  // case
  // runtime scalar check
  tst x23, #1
  b.ne .Lscalar_tag0_fn11590398138211410677
  ldrb w8, [x23, #7]
  b .Lcompare_tag1_fn11590398138211410677
.Lscalar_tag0_fn11590398138211410677:
  lsr x8, x23, #1
.Lcompare_tag1_fn11590398138211410677:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn11590398138211410677
  cmp x8, #1
  b.eq .Lcase_ctor4_fn11590398138211410677
  b .Lcase_end2_fn11590398138211410677
.Lcase_ctor3_fn11590398138211410677:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // inc 1
  mov x0, x24
  bl _lean_inc_ref
  // return
  mov x0, x24
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn11590398138211410677
.Lcase_ctor4_fn11590398138211410677:
  // proj field 0
  ldr x26, [x23, #8]
  // inc 1
  mov x0, x26
  bl _lean_inc
  // proj field 1
  ldr x25, [x23, #16]
  // inc 1
  mov x0, x25
  bl _lean_inc
  // dec 1
  mov x0, x23
  bl _lean_dec_ref
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg51
  // store to stack slot 1
  str x8, [sp, #8]
  // call String.utf8ByteSize with 1 runtime args
  mov x0, x19
  bl _lean_string_utf8_byte_size
  mov x8, x0
  // store result to spilled vreg52
  // store to stack slot 2
  str x8, [sp, #16]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // ctor Substring.mk (tag=0, objs=3, scalar=0)
  mov x0, #0
  mov x1, #3
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg53 into stack slot 3
  str x0, [sp, #24]
  ldr x0, [sp, #24]
  mov x1, #0
  mov x2, x19
  bl _lean_ctor_set
  // load spilled vreg51 from stack slot 1
  ldr x8, [sp, #8]
  ldr x0, [sp, #24]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg52 from stack slot 2
  ldr x8, [sp, #16]
  ldr x0, [sp, #24]
  mov x1, #2
  mov x2, x8
  bl _lean_ctor_set
  // call Substring.nextn with 3 runtime args
  // load spilled vreg53 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  mov x1, x26
  // load spilled vreg51 from stack slot 1
  ldr x8, [sp, #8]
  mov x2, x8
  bl _l_Substring_nextn
  mov x8, x0
  // store result to spilled vreg54
  // store to stack slot 4
  str x8, [sp, #32]
  // dec 1
  // load spilled vreg53 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // call String.extract with 3 runtime args
  mov x0, x19
  // load spilled vreg51 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  // load spilled vreg54 from stack slot 4
  ldr x8, [sp, #32]
  mov x2, x8
  bl _lean_string_utf8_extract
  mov x8, x0
  // store result to spilled vreg55
  // store to stack slot 5
  str x8, [sp, #40]
  // dec 1
  // load spilled vreg54 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg56 into stack slot 6
  str x0, [sp, #48]
  // load global constant _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
  adrp x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
  ldr x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
  // store result to spilled vreg57
  // store to stack slot 7
  str x8, [sp, #56]
  // call Array.usize with 1 runtime args
  mov x0, x20
  bl _lean_array_size
  mov x8, x0
  // store result to spilled vreg58
  // store to stack slot 8
  str x8, [sp, #64]
  mov x8, #0
  // store result to spilled vreg59
  // store to stack slot 9
  str x8, [sp, #72]
  // call _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0 with 7 runtime args
  // load spilled vreg55 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg57 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  // load spilled vreg56 from stack slot 6
  ldr x8, [sp, #48]
  mov x2, x8
  mov x3, x20
  // load spilled vreg58 from stack slot 8
  ldr x8, [sp, #64]
  mov x4, x8
  // load spilled vreg59 from stack slot 9
  ldr x8, [sp, #72]
  mov x5, x8
  // load spilled vreg57 from stack slot 7
  ldr x8, [sp, #56]
  mov x6, x8
  bl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
  mov x8, x0
  // store result to spilled vreg60
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  // isShared
  ldr x8, [x8]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg61
  // store to stack slot 11
  str x8, [sp, #88]
  // load spilled vreg61 from stack slot 11
  ldr x8, [sp, #88]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor6_fn11590398138211410677
  cmp x8, #1
  b.eq .Lcase_ctor7_fn11590398138211410677
  b .Lcase_end5_fn11590398138211410677
.Lcase_ctor6_fn11590398138211410677:
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg62
  // store to stack slot 12
  str x8, [sp, #96]
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg63
  // store to stack slot 13
  str x8, [sp, #104]
  // dec 1
  // load spilled vreg63 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_dec
  // load spilled vreg62 from stack slot 12
  ldr x8, [sp, #96]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag8_fn11590398138211410677
  ldrb w8, [x8, #7]
  b .Lcompare_tag9_fn11590398138211410677
.Lscalar_tag8_fn11590398138211410677:
  lsr x8, x8, #1
.Lcompare_tag9_fn11590398138211410677:
  cmp x8, #0
  b.eq .Lcase_ctor11_fn11590398138211410677
  cmp x8, #1
  b.eq .Lcase_ctor12_fn11590398138211410677
  b .Lcase_end10_fn11590398138211410677
.Lcase_ctor11_fn11590398138211410677:
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  // del
  mov x0, x8
  bl _lean_dec_ref
  // dec 1
  // load spilled vreg55 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // tail call to List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x25
  mov x5, x21
  b .Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  b .Lcase_end10_fn11590398138211410677
.Lcase_ctor12_fn11590398138211410677:
  // load spilled vreg62 from stack slot 12
  ldr x8, [sp, #96]
  // isShared
  ldr x8, [x8]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg65
  // store to stack slot 15
  str x8, [sp, #120]
  // load spilled vreg65 from stack slot 15
  ldr x8, [sp, #120]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor14_fn11590398138211410677
  cmp x8, #1
  b.eq .Lcase_ctor15_fn11590398138211410677
  b .Lcase_end13_fn11590398138211410677
.Lcase_ctor14_fn11590398138211410677:
  // load spilled vreg62 from stack slot 12
  ldr x8, [sp, #96]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg66
  // store to stack slot 16
  str x8, [sp, #128]
  // load spilled vreg66 from stack slot 16
  ldr x8, [sp, #128]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag16_fn11590398138211410677
  ldrb w8, [x8, #7]
  b .Lcompare_tag17_fn11590398138211410677
.Lscalar_tag16_fn11590398138211410677:
  lsr x8, x8, #1
.Lcompare_tag17_fn11590398138211410677:
  cmp x8, #0
  b.eq .Lcase_ctor19_fn11590398138211410677
  cmp x8, #1
  b.eq .Lcase_ctor20_fn11590398138211410677
  b .Lcase_end18_fn11590398138211410677
.Lcase_ctor19_fn11590398138211410677:
  // load spilled vreg62 from stack slot 12
  ldr x8, [sp, #96]
  // del
  mov x0, x8
  bl _lean_dec_ref
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  // del
  mov x0, x8
  bl _lean_dec_ref
  // dec 1
  // load spilled vreg55 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // tail call to List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x25
  mov x5, x21
  b .Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  b .Lcase_end18_fn11590398138211410677
.Lcase_ctor20_fn11590398138211410677:
  // dec 1
  mov x0, x25
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load spilled vreg66 from stack slot 16
  ldr x8, [sp, #128]
  // isShared
  ldr x8, [x8]
  cmp x8, #1
  mov x8, #1
  csel x8, x8, xzr, gt
  // store result to spilled vreg68
  // store to stack slot 18
  str x8, [sp, #144]
  // load spilled vreg68 from stack slot 18
  ldr x8, [sp, #144]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor22_fn11590398138211410677
  cmp x8, #1
  b.eq .Lcase_ctor23_fn11590398138211410677
  b .Lcase_end21_fn11590398138211410677
.Lcase_ctor22_fn11590398138211410677:
  // load spilled vreg66 from stack slot 16
  ldr x8, [sp, #128]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg69
  // store to stack slot 19
  str x8, [sp, #152]
  // dec 1
  // load spilled vreg69 from stack slot 19
  ldr x8, [sp, #152]
  mov x0, x8
  bl _lean_dec
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg70 into stack slot 20
  str x0, [sp, #160]
  // load spilled vreg66 from stack slot 16
  ldr x8, [sp, #128]
  ldr x0, [sp, #160]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg55 from stack slot 5
  ldr x8, [sp, #40]
  ldr x0, [sp, #160]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg71 into stack slot 21
  str x0, [sp, #168]
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  ldr x0, [sp, #168]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  ldr x0, [sp, #168]
  mov x1, #1
  mov x2, x22
  bl _lean_ctor_set
  // return
  // load spilled vreg71 from stack slot 21
  ldr x8, [sp, #168]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end21_fn11590398138211410677
.Lcase_ctor23_fn11590398138211410677:
  // dec 1
  // load spilled vreg66 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  bl _lean_dec
  // ctor Option.some (tag=1, objs=1, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg72 into stack slot 22
  str x0, [sp, #176]
  // load spilled vreg55 from stack slot 5
  ldr x8, [sp, #40]
  ldr x0, [sp, #176]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg73 into stack slot 23
  str x0, [sp, #184]
  // load spilled vreg62 from stack slot 12
  ldr x8, [sp, #96]
  ldr x0, [sp, #184]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg72 from stack slot 22
  ldr x8, [sp, #176]
  ldr x0, [sp, #184]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg74 into stack slot 24
  str x0, [sp, #192]
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  ldr x0, [sp, #192]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  ldr x0, [sp, #192]
  mov x1, #1
  mov x2, x22
  bl _lean_ctor_set
  // return
  // load spilled vreg74 from stack slot 24
  ldr x8, [sp, #192]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end21_fn11590398138211410677
.Lcase_end21_fn11590398138211410677:
  b .Lcase_end18_fn11590398138211410677
.Lcase_end18_fn11590398138211410677:
  b .Lcase_end13_fn11590398138211410677
.Lcase_ctor15_fn11590398138211410677:
  // load spilled vreg62 from stack slot 12
  ldr x8, [sp, #96]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg75
  // store to stack slot 25
  str x8, [sp, #200]
  // inc 1
  // load spilled vreg75 from stack slot 25
  ldr x8, [sp, #200]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg62 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _lean_dec
  // load spilled vreg75 from stack slot 25
  ldr x8, [sp, #200]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag24_fn11590398138211410677
  ldrb w8, [x8, #7]
  b .Lcompare_tag25_fn11590398138211410677
.Lscalar_tag24_fn11590398138211410677:
  lsr x8, x8, #1
.Lcompare_tag25_fn11590398138211410677:
  cmp x8, #0
  b.eq .Lcase_ctor27_fn11590398138211410677
  cmp x8, #1
  b.eq .Lcase_ctor28_fn11590398138211410677
  b .Lcase_end26_fn11590398138211410677
.Lcase_ctor27_fn11590398138211410677:
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  // del
  mov x0, x8
  bl _lean_dec_ref
  // dec 1
  // load spilled vreg55 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // tail call to List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x25
  mov x5, x21
  b .Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  b .Lcase_end26_fn11590398138211410677
.Lcase_ctor28_fn11590398138211410677:
  // dec 1
  mov x0, x25
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load spilled vreg75 from stack slot 25
  ldr x8, [sp, #200]
  // reset 1
  mov x8, x8
  // store result to spilled vreg77
  // store to stack slot 27
  str x8, [sp, #216]
  // load spilled vreg77 from stack slot 27
  ldr x8, [sp, #216]
  // reuse Option.some
  mov x8, x8
  // store result to spilled vreg78
  // store to stack slot 28
  str x8, [sp, #224]
  // ctor Option.some (tag=1, objs=1, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg79 into stack slot 29
  str x0, [sp, #232]
  // load spilled vreg78 from stack slot 28
  ldr x8, [sp, #224]
  ldr x0, [sp, #232]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg80 into stack slot 30
  str x0, [sp, #240]
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  ldr x0, [sp, #240]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  ldr x0, [sp, #240]
  mov x1, #1
  mov x2, x22
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg81 into stack slot 31
  str x0, [sp, #248]
  // load spilled vreg80 from stack slot 30
  ldr x8, [sp, #240]
  ldr x0, [sp, #248]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg79 from stack slot 29
  ldr x8, [sp, #232]
  ldr x0, [sp, #248]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  // load spilled vreg81 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end26_fn11590398138211410677
.Lcase_end26_fn11590398138211410677:
  b .Lcase_end13_fn11590398138211410677
.Lcase_end13_fn11590398138211410677:
  b .Lcase_end10_fn11590398138211410677
.Lcase_end10_fn11590398138211410677:
  b .Lcase_end5_fn11590398138211410677
.Lcase_ctor7_fn11590398138211410677:
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg82
  // store to stack slot 32
  str x8, [sp, #256]
  // inc 1
  // load spilled vreg82 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg60 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec
  // load spilled vreg82 from stack slot 32
  ldr x8, [sp, #256]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag29_fn11590398138211410677
  ldrb w8, [x8, #7]
  b .Lcompare_tag30_fn11590398138211410677
.Lscalar_tag29_fn11590398138211410677:
  lsr x8, x8, #1
.Lcompare_tag30_fn11590398138211410677:
  cmp x8, #0
  b.eq .Lcase_ctor32_fn11590398138211410677
  cmp x8, #1
  b.eq .Lcase_ctor33_fn11590398138211410677
  b .Lcase_end31_fn11590398138211410677
.Lcase_ctor32_fn11590398138211410677:
  // dec 1
  // load spilled vreg55 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // tail call to List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x25
  mov x5, x21
  b .Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  b .Lcase_end31_fn11590398138211410677
.Lcase_ctor33_fn11590398138211410677:
  // load spilled vreg82 from stack slot 32
  ldr x8, [sp, #256]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg84
  // store to stack slot 34
  str x8, [sp, #272]
  // inc 1
  // load spilled vreg84 from stack slot 34
  ldr x8, [sp, #272]
  mov x0, x8
  bl _lean_inc
  // load spilled vreg82 from stack slot 32
  ldr x8, [sp, #256]
  // reset 1
  mov x8, x8
  // store result to spilled vreg85
  // store to stack slot 35
  str x8, [sp, #280]
  // load spilled vreg84 from stack slot 34
  ldr x8, [sp, #272]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag34_fn11590398138211410677
  ldrb w8, [x8, #7]
  b .Lcompare_tag35_fn11590398138211410677
.Lscalar_tag34_fn11590398138211410677:
  lsr x8, x8, #1
.Lcompare_tag35_fn11590398138211410677:
  cmp x8, #0
  b.eq .Lcase_ctor37_fn11590398138211410677
  cmp x8, #1
  b.eq .Lcase_ctor38_fn11590398138211410677
  b .Lcase_end36_fn11590398138211410677
.Lcase_ctor37_fn11590398138211410677:
  // dec 1
  // load spilled vreg85 from stack slot 35
  ldr x8, [sp, #280]
  mov x0, x8
  bl _lean_dec
  // dec 1
  // load spilled vreg55 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // tail call to List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x25
  mov x5, x21
  b .Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg
  b .Lcase_end36_fn11590398138211410677
.Lcase_ctor38_fn11590398138211410677:
  // dec 1
  mov x0, x25
  bl _lean_dec
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load spilled vreg84 from stack slot 34
  ldr x8, [sp, #272]
  // reset 1
  mov x8, x8
  // store result to spilled vreg87
  // store to stack slot 37
  str x8, [sp, #296]
  // load spilled vreg87 from stack slot 37
  ldr x8, [sp, #296]
  // reuse Option.some
  mov x8, x8
  // store result to spilled vreg88
  // store to stack slot 38
  str x8, [sp, #304]
  // load spilled vreg85 from stack slot 35
  ldr x8, [sp, #280]
  // reuse Option.some
  mov x8, x8
  // store result to spilled vreg89
  // store to stack slot 39
  str x8, [sp, #312]
  // ctor MProd.mk (tag=0, objs=2, scalar=0)
  // load spilled vreg89 from stack slot 39
  ldr x8, [sp, #312]
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg89 from stack slot 39
  ldr x8, [sp, #312]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  mov x0, x28
  mov x1, #1
  mov x2, x22
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #336
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end36_fn11590398138211410677
.Lcase_end36_fn11590398138211410677:
  b .Lcase_end31_fn11590398138211410677
.Lcase_end31_fn11590398138211410677:
  b .Lcase_end5_fn11590398138211410677
.Lcase_end5_fn11590398138211410677:
  b .Lcase_end2_fn11590398138211410677
.Lcase_end2_fn11590398138211410677:

  .globl __init_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
  .align 2
__init_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0:
  // Function: List.forIn'.loop._at_.List.forIn'.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.forIn_.loop._at_.List.forIn_.loop._at_.Array.matchPrefix.spec_1.spec_1._redArg._closed_0:
  // ctor PUnit.unit (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x27, x0
  // ctor Option.none (tag=0, objs=0, scalar=0)
  mov x0, #0
  mov x1, #0
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  // ctor MProd.mk (tag=0, objs=2, scalar=0)
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #64
  // Stack frame: 64 bytes (8 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.Array.matchPrefix.spec_0:
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
  mov x26, x0
  // case
  mov x8, x26
  cmp x8, #0
  b.eq .Lcase_ctor1_fn9113516576963799135
  cmp x8, #1
  b.eq .Lcase_ctor2_fn9113516576963799135
  b .Lcase_end0_fn9113516576963799135
.Lcase_ctor1_fn9113516576963799135:
  // inc 1
  mov x0, x25
  bl _lean_inc_ref
  // return
  mov x0, x25
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn9113516576963799135
.Lcase_ctor2_fn9113516576963799135:
  // call Array.uget with 2 runtime args
  mov x0, x22
  mov x1, x24
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg25
  // store to stack slot 0
  str x8, [sp]
  // call String.decEq with 2 runtime args
  // load spilled vreg25 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, x19
  bl _lean_string_dec_eq
  mov x8, x0
  // store result to spilled vreg26
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg26 from stack slot 1
  ldr x8, [sp, #8]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor4_fn9113516576963799135
  cmp x8, #1
  b.eq .Lcase_ctor5_fn9113516576963799135
  b .Lcase_end3_fn9113516576963799135
.Lcase_ctor4_fn9113516576963799135:
  // dec 1
  // load spilled vreg25 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec_ref
  mov x8, #1
  // store result to spilled vreg27
  // store to stack slot 2
  str x8, [sp, #16]
  // load spilled vreg27 from stack slot 2
  ldr x8, [sp, #16]
  // inline lean_usize_add
  add x8, x24, x8
  // store result to spilled vreg28
  // store to stack slot 3
  str x8, [sp, #24]
  // tail call to _private.Init.Data.Array.Basic.0.Array.forIn'Unsafe.loop._at_.Array.matchPrefix.spec_0
  mov x0, x19
  mov x1, x20
  mov x2, x21
  mov x3, x22
  mov x4, x23
  // load spilled vreg28 from stack slot 3
  ldr x8, [sp, #24]
  mov x5, x8
  mov x6, x20
  b .Lfn_start__private.Init.Data.Array.Basic.0.Array.forIn_Unsafe.loop._at_.Array.matchPrefix.spec_0
  b .Lcase_end3_fn9113516576963799135
.Lcase_ctor5_fn9113516576963799135:
  // ctor Option.some (tag=1, objs=1, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg30 into stack slot 5
  str x0, [sp, #40]
  // load spilled vreg25 from stack slot 0
  ldr x8, [sp]
  ldr x0, [sp, #40]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // ctor Option.some (tag=1, objs=1, scalar=0)
  mov x0, #1
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg31 into stack slot 6
  str x0, [sp, #48]
  // load spilled vreg30 from stack slot 5
  ldr x8, [sp, #40]
  ldr x0, [sp, #48]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // ctor MProd.mk (tag=0, objs=2, scalar=0)
  // load spilled vreg31 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg31 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  mov x0, x28
  mov x1, #1
  mov x2, x21
  bl _lean_ctor_set
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
  b .Lcase_end3_fn9113516576963799135
.Lcase_end3_fn9113516576963799135:
  b .Lcase_end0_fn9113516576963799135
.Lcase_end0_fn9113516576963799135:

  .globl _l_Array_findPrefix___boxed
  .align 2
_l_Array_findPrefix___boxed:
  // Function: Array.findPrefix._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_Array.findPrefix._boxed:
  mov x19, x0
  mov x20, x1
  // call Array.findPrefix with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_Array_findPrefix
  mov x27, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // unbox
  asr x27, x21, #1
  // dec 1
  mov x0, x21
  bl _lean_dec
  // unbox
  asr x26, x22, #1
  // dec 1
  mov x0, x22
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0 with 5 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x27
  mov x3, x26
  mov x4, x23
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
  mov x25, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  sub sp, sp, #48
  // Stack frame: 48 bytes (6 spilled vars)
.Lfn_start_Array.findPrefix:
  mov x19, x0
  mov x20, x1
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Array.size with 1 runtime args
  mov x0, x19
  bl _lean_array_get_size
  mov x22, x0
  // load global constant _l_Array_findPrefix___closed__0
  adrp x21, _l_Array_findPrefix___closed__0@PAGE
  ldr x21, [x21, _l_Array_findPrefix___closed__0@PAGEOFF]
  // call Nat.decLt with 2 runtime args
  mov x0, x27
  mov x1, x22
  bl _lean_nat_dec_lt
  mov x23, x0
  // case
  mov x8, x23
  cmp x8, #0
  b.eq .Lcase_ctor1_fn4047743630531289897
  cmp x8, #1
  b.eq .Lcase_ctor2_fn4047743630531289897
  b .Lcase_end0_fn4047743630531289897
.Lcase_ctor1_fn4047743630531289897:
  // dec 1
  mov x0, x22
  bl _lean_dec
  // return
  mov x0, x21
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn4047743630531289897
.Lcase_ctor2_fn4047743630531289897:
  // call Nat.decLe with 2 runtime args
  mov x0, x22
  mov x1, x22
  bl _lean_nat_dec_le
  mov x8, x0
  // store result to spilled vreg17
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg17 from stack slot 0
  ldr x8, [sp]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor4_fn4047743630531289897
  cmp x8, #1
  b.eq .Lcase_ctor5_fn4047743630531289897
  b .Lcase_end3_fn4047743630531289897
.Lcase_ctor4_fn4047743630531289897:
  // dec 1
  mov x0, x22
  bl _lean_dec
  // return
  mov x0, x21
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn4047743630531289897
.Lcase_ctor5_fn4047743630531289897:
  mov x8, #0
  // store result to spilled vreg18
  // store to stack slot 3
  str x8, [sp, #24]
  // call USize.ofNat with 1 runtime args
  mov x0, x22
  bl _lean_usize_of_nat
  mov x8, x0
  // store result to spilled vreg19
  // store to stack slot 4
  str x8, [sp, #32]
  // dec 1
  mov x0, x22
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0 with 5 runtime args
  mov x0, x20
  mov x1, x19
  // load spilled vreg18 from stack slot 3
  ldr x8, [sp, #24]
  mov x2, x8
  // load spilled vreg19 from stack slot 4
  ldr x8, [sp, #32]
  mov x3, x8
  mov x4, x21
  bl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
  mov x28, x0
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
  b .Lcase_end3_fn4047743630531289897
.Lcase_end3_fn4047743630531289897:
  b .Lcase_end0_fn4047743630531289897
.Lcase_end0_fn4047743630531289897:

  .globl __init_l_Array_findPrefix___closed__0
  .align 2
__init_l_Array_findPrefix___closed__0:
  // Function: Array.findPrefix._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_Array.findPrefix._closed_0:
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

  .globl _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #32
  // Stack frame: 32 bytes (4 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  // call USize.decEq with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_usize_dec_eq
  mov x8, x0
  // store result to spilled vreg24
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg24 from stack slot 1
  ldr x8, [sp, #8]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor2_fn1843061737000024698
  cmp x8, #1
  b.eq .Lcase_ctor3_fn1843061737000024698
  b .Lcase_end1_fn1843061737000024698
.Lcase_ctor2_fn1843061737000024698:
  // call Array.uget with 2 runtime args
  mov x0, x20
  mov x1, x21
  bl _lean_array_uget
  mov x8, x0
  // store result to spilled vreg25
  // store to stack slot 2
  str x8, [sp, #16]
  // call String.isPrefixOf with 2 runtime args
  mov x0, x19
  // load spilled vreg25 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _l_String_isPrefixOf
  mov x8, x0
  // store result to spilled vreg26
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg26 from stack slot 3
  ldr x8, [sp, #24]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor5_fn1843061737000024698
  cmp x8, #1
  b.eq .Lcase_ctor6_fn1843061737000024698
  b .Lcase_end4_fn1843061737000024698
.Lcase_ctor5_fn1843061737000024698:
  // dec 1
  // load spilled vreg25 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP10
  mov x27, x23
  b .LJP0_fn1843061737000024698
  b .Lcase_end4_fn1843061737000024698
.Lcase_ctor6_fn1843061737000024698:
  // call Array.push with 2 runtime args
  mov x0, x23
  // load spilled vreg25 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _lean_array_push
  mov x28, x0
  // jump to JP10
  mov x27, x28
  b .LJP0_fn1843061737000024698
  b .Lcase_end4_fn1843061737000024698
.Lcase_end4_fn1843061737000024698:
  b .Lcase_end1_fn1843061737000024698
.Lcase_ctor3_fn1843061737000024698:
  // return
  mov x0, x23
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end1_fn1843061737000024698
.Lcase_end1_fn1843061737000024698:
.LJP0_fn1843061737000024698:
  mov x26, #1
  // inline lean_usize_add
  add x25, x21, x26
  // tail call to _private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0
  mov x0, x19
  mov x1, x20
  mov x2, x25
  mov x3, x22
  mov x4, x27
  b .Lfn_start__private.Init.Data.Array.Basic.0.Array.foldlMUnsafe.fold._at_.Array.findPrefix.spec_0

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___boxed:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._boxed:
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
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0
  mov x27, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
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

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___boxed
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___boxed:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
  mov x27, x0
  // dec 1
  mov x0, x21
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

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._lam_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._lam_0._boxed:
  mov x19, x0
  mov x20, x1
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._lam_0 with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0
  mov x27, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // box
  lsl x26, x27, #1
  orr x26, x26, #1
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
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
  sub sp, sp, #48
  // Stack frame: 48 bytes (6 spilled vars)
.Lfn_start_Array.sorted:
  mov x19, x0
  // call Array.size with 1 runtime args
  mov x0, x19
  bl _lean_array_get_size
  mov x21, x0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
  // call Nat.decEq with 2 runtime args
  mov x0, x21
  mov x1, x26
  bl _lean_nat_dec_eq
  mov x24, x0
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .Lcase_ctor1_fn16704466563556059722
  cmp x8, #1
  b.eq .Lcase_ctor2_fn16704466563556059722
  b .Lcase_end0_fn16704466563556059722
.Lcase_ctor1_fn16704466563556059722:
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x23, x0
  // call Nat.sub with 2 runtime args
  mov x0, x21
  mov x1, x23
  bl _lean_nat_sub
  mov x22, x0
  // dec 1
  mov x0, x21
  bl _lean_dec
  // call Nat.decLe with 2 runtime args
  mov x0, x26
  mov x1, x22
  bl _lean_nat_dec_le
  mov x8, x0
  // store result to spilled vreg23
  // store to stack slot 5
  str x8, [sp, #40]
  // load spilled vreg23 from stack slot 5
  ldr x8, [sp, #40]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor5_fn16704466563556059722
  cmp x8, #1
  b.eq .Lcase_ctor6_fn16704466563556059722
  b .Lcase_end4_fn16704466563556059722
.Lcase_ctor5_fn16704466563556059722:
  // inc 1
  mov x0, x22
  bl _lean_inc
  // jump to JP11
  mov x20, x22
  b .LJP3_fn16704466563556059722
  b .Lcase_end4_fn16704466563556059722
.Lcase_ctor6_fn16704466563556059722:
  // jump to JP11
  mov x20, x26
  b .LJP3_fn16704466563556059722
  b .Lcase_end4_fn16704466563556059722
.Lcase_end4_fn16704466563556059722:
.LJP3_fn16704466563556059722:
  // call Nat.decLe with 2 runtime args
  mov x0, x20
  mov x1, x22
  bl _lean_nat_dec_le
  mov x8, x0
  // store result to spilled vreg20
  // store to stack slot 0
  str x8, [sp]
  // load spilled vreg20 from stack slot 0
  ldr x8, [sp]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor8_fn16704466563556059722
  cmp x8, #1
  b.eq .Lcase_ctor9_fn16704466563556059722
  b .Lcase_end7_fn16704466563556059722
.Lcase_ctor8_fn16704466563556059722:
  // dec 1
  mov x0, x22
  bl _lean_dec
  // inc 1
  mov x0, x20
  bl _lean_inc
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x20
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
  mov x8, x0
  // store result to spilled vreg21
  // store to stack slot 3
  str x8, [sp, #24]
  // dec 1
  mov x0, x20
  bl _lean_dec
  // return
  // load spilled vreg21 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn16704466563556059722
.Lcase_ctor9_fn16704466563556059722:
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x22
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
  mov x8, x0
  // store result to spilled vreg22
  // store to stack slot 4
  str x8, [sp, #32]
  // dec 1
  mov x0, x22
  bl _lean_dec
  // return
  // load spilled vreg22 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn16704466563556059722
.Lcase_end7_fn16704466563556059722:
  b .Lcase_end0_fn16704466563556059722
.Lcase_ctor2_fn16704466563556059722:
  // dec 1
  mov x0, x21
  bl _lean_dec
  // return
  mov x0, x19
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn16704466563556059722
.Lcase_end0_fn16704466563556059722:

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  mov x23, x4
  mov x24, x5
  mov x25, x6
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x20
  mov x1, x21
  mov x2, x22
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
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

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #64
  // Stack frame: 64 bytes (8 spilled vars)
.Lfn_start__private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // call Nat.decLt with 2 runtime args
  mov x0, x20
  mov x1, x21
  bl _lean_nat_dec_lt
  mov x26, x0
  // case
  mov x8, x26
  cmp x8, #0
  b.eq .Lcase_ctor1_fn9396215556556964714
  cmp x8, #1
  b.eq .Lcase_ctor2_fn9396215556556964714
  b .Lcase_end0_fn9396215556556964714
.Lcase_ctor1_fn9396215556556964714:
  // dec 1
  mov x0, x20
  bl _lean_dec
  // return
  mov x0, x19
  add sp, sp, #64
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn9396215556556964714
.Lcase_ctor2_fn9396215556556964714:
  // partial application _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._lam_0._boxed with 0 args
  adrp x0, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed@PAGE
  add x0, x0, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed@PAGEOFF
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_closure
  mov x25, x0
  // inc 1
  mov x0, x20
  bl _lean_inc
  // call Array.qpartition._redArg with 4 runtime args
  mov x0, x19
  mov x1, x25
  mov x2, x20
  mov x3, x21
  bl _l_Array_qpartition___redArg
  mov x24, x0
  // proj field 0
  ldr x22, [x24, #8]
  // inc 1
  mov x0, x22
  bl _lean_inc
  // proj field 1
  ldr x28, [x24, #16]
  // inc 1
  mov x0, x28
  bl _lean_inc
  // dec 1
  mov x0, x24
  bl _lean_dec_ref
  // call Nat.decLe with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_nat_dec_le
  mov x8, x0
  // store result to spilled vreg22
  // store to stack slot 2
  str x8, [sp, #16]
  // load spilled vreg22 from stack slot 2
  ldr x8, [sp, #16]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor4_fn9396215556556964714
  cmp x8, #1
  b.eq .Lcase_ctor5_fn9396215556556964714
  b .Lcase_end3_fn9396215556556964714
.Lcase_ctor4_fn9396215556556964714:
  // call _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg with 3 runtime args
  mov x0, x28
  mov x1, x20
  mov x2, x22
  bl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
  mov x8, x0
  // store result to spilled vreg23
  // store to stack slot 3
  str x8, [sp, #24]
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg24
  // store to stack slot 4
  str x8, [sp, #32]
  // call Nat.add with 2 runtime args
  mov x0, x22
  // load spilled vreg24 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg25
  // store to stack slot 5
  str x8, [sp, #40]
  // dec 1
  mov x0, x22
  bl _lean_dec
  // tail call to _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg
  // load spilled vreg23 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  // load spilled vreg25 from stack slot 5
  ldr x8, [sp, #40]
  mov x1, x8
  mov x2, x21
  b .Lfn_start__private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg
  b .Lcase_end3_fn9396215556556964714
.Lcase_ctor5_fn9396215556556964714:
  // dec 1
  mov x0, x22
  bl _lean_dec
  // dec 1
  mov x0, x20
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
  b .Lcase_end3_fn9396215556556964714
.Lcase_end3_fn9396215556556964714:
  b .Lcase_end0_fn9396215556556964714
.Lcase_end0_fn9396215556556964714:

  .globl _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0
  .align 2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0:
  // Function: _private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._lam_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.QSort.Basic.0.Array.qsort.sort._at_.Array.sorted.spec_0._redArg._lam_0:
  mov x19, x0
  mov x20, x1
  // call String.decidableLT with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _lean_string_dec_lt
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

  .globl _l_Array_contains___at___T_insert_spec__0___boxed
  .align 2
_l_Array_contains___at___T_insert_spec__0___boxed:
  // Function: Array.contains._at_.T.insert.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_Array.contains._at_.T.insert.spec_0._boxed:
  mov x19, x0
  mov x20, x1
  // call Array.contains._at_.T.insert.spec_0 with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_Array_contains___at___T_insert_spec__0
  mov x27, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // box
  lsl x26, x27, #1
  orr x26, x26, #1
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed:
  // Function: _private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start__private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  // unbox
  asr x27, x21, #1
  // dec 1
  mov x0, x21
  bl _lean_dec
  // unbox
  asr x26, x22, #1
  // dec 1
  mov x0, x22
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0 with 4 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x27
  mov x3, x26
  bl _l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
  mov x25, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // box
  lsl x24, x25, #1
  orr x24, x24, #1
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  sub sp, sp, #96
  // Stack frame: 96 bytes (11 spilled vars)
.Lfn_start_T.insert:
  mov x19, x0
  mov x20, x1
  // isShared
  ldr x26, [x19]
  cmp x26, #1
  mov x8, #1
  csel x26, x8, xzr, gt
  // case
  mov x8, x26
  cmp x8, #0
  b.eq .Lcase_ctor1_fn2584167417775888009
  cmp x8, #1
  b.eq .Lcase_ctor2_fn2584167417775888009
  b .Lcase_end0_fn2584167417775888009
.Lcase_ctor1_fn2584167417775888009:
  // proj field 0
  ldr x25, [x19, #8]
  // proj field 1
  ldr x24, [x19, #16]
  // inc 1
  mov x0, x20
  bl _lean_inc_ref
  // call Lean.Data.Trie.insert._redArg with 3 runtime args
  mov x0, x25
  mov x1, x20
  mov x2, x20
  bl _l_Lean_Data_Trie_insert___redArg
  mov x23, x0
  // call Array.contains._at_.T.insert.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_Array_contains___at___T_insert_spec__0
  mov x21, x0
  // case
  mov x8, x21
  cmp x8, #0
  b.eq .Lcase_ctor4_fn2584167417775888009
  cmp x8, #1
  b.eq .Lcase_ctor5_fn2584167417775888009
  b .Lcase_end3_fn2584167417775888009
.Lcase_ctor4_fn2584167417775888009:
  // call Array.push with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _lean_array_push
  mov x8, x0
  // store result to spilled vreg23
  // store to stack slot 0
  str x8, [sp]
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg24 into stack slot 1
  str x0, [sp, #8]
  ldr x0, [sp, #8]
  mov x1, #0
  mov x2, x19
  bl _lean_ctor_set
  // load spilled vreg23 from stack slot 0
  ldr x8, [sp]
  ldr x0, [sp, #8]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg25 into stack slot 2
  str x0, [sp, #16]
  // load spilled vreg24 from stack slot 1
  ldr x8, [sp, #8]
  ldr x0, [sp, #16]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  ldr x0, [sp, #16]
  mov x1, #1
  mov x2, x23
  bl _lean_ctor_set
  // return
  // load spilled vreg25 from stack slot 2
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
  b .Lcase_end3_fn2584167417775888009
.Lcase_ctor5_fn2584167417775888009:
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg26 into stack slot 3
  str x0, [sp, #24]
  ldr x0, [sp, #24]
  mov x1, #0
  mov x2, x19
  bl _lean_ctor_set
  ldr x0, [sp, #24]
  mov x1, #1
  mov x2, x23
  bl _lean_ctor_set
  // return
  // load spilled vreg26 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn2584167417775888009
.Lcase_end3_fn2584167417775888009:
  b .Lcase_end0_fn2584167417775888009
.Lcase_ctor2_fn2584167417775888009:
  // proj field 0
  ldr x8, [x19, #8]
  // store result to spilled vreg27
  // store to stack slot 4
  str x8, [sp, #32]
  // proj field 1
  ldr x8, [x19, #16]
  // store result to spilled vreg28
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  // load spilled vreg28 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg27 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x19
  bl _lean_dec
  // inc 1
  mov x0, x20
  bl _lean_inc_ref
  // call Lean.Data.Trie.insert._redArg with 3 runtime args
  // load spilled vreg27 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  mov x1, x20
  mov x2, x20
  bl _l_Lean_Data_Trie_insert___redArg
  mov x8, x0
  // store result to spilled vreg29
  // store to stack slot 6
  str x8, [sp, #48]
  // call Array.contains._at_.T.insert.spec_0 with 2 runtime args
  // load spilled vreg28 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  mov x1, x20
  bl _l_Array_contains___at___T_insert_spec__0
  mov x8, x0
  // store result to spilled vreg30
  // store to stack slot 7
  str x8, [sp, #56]
  // load spilled vreg30 from stack slot 7
  ldr x8, [sp, #56]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor7_fn2584167417775888009
  cmp x8, #1
  b.eq .Lcase_ctor8_fn2584167417775888009
  b .Lcase_end6_fn2584167417775888009
.Lcase_ctor7_fn2584167417775888009:
  // call Array.push with 2 runtime args
  // load spilled vreg28 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  mov x1, x20
  bl _lean_array_push
  mov x8, x0
  // store result to spilled vreg31
  // store to stack slot 8
  str x8, [sp, #64]
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg32 into stack slot 9
  str x0, [sp, #72]
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  ldr x0, [sp, #72]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg31 from stack slot 8
  ldr x8, [sp, #64]
  ldr x0, [sp, #72]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  // load spilled vreg32 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn2584167417775888009
.Lcase_ctor8_fn2584167417775888009:
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  // load spilled vreg28 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg29 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x28
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg28 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x28
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // return
  mov x0, x28
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end6_fn2584167417775888009
.Lcase_end6_fn2584167417775888009:
  b .Lcase_end0_fn2584167417775888009
.Lcase_end0_fn2584167417775888009:

  .globl _l_Array_contains___at___T_insert_spec__0
  .align 2
_l_Array_contains___at___T_insert_spec__0:
  // Function: Array.contains._at_.T.insert.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #48
  // Stack frame: 48 bytes (5 spilled vars)
.Lfn_start_Array.contains._at_.T.insert.spec_0:
  mov x19, x0
  mov x20, x1
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Array.size with 1 runtime args
  mov x0, x19
  bl _lean_array_get_size
  mov x23, x0
  // call Nat.decLt with 2 runtime args
  mov x0, x27
  mov x1, x23
  bl _lean_nat_dec_lt
  mov x21, x0
  // case
  mov x8, x21
  cmp x8, #0
  b.eq .Lcase_ctor1_fn11765293436816212472
  cmp x8, #1
  b.eq .Lcase_ctor2_fn11765293436816212472
  b .Lcase_end0_fn11765293436816212472
.Lcase_ctor1_fn11765293436816212472:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x21
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end0_fn11765293436816212472
.Lcase_ctor2_fn11765293436816212472:
  // case
  mov x8, x21
  cmp x8, #0
  b.eq .Lcase_ctor4_fn11765293436816212472
  cmp x8, #1
  b.eq .Lcase_ctor5_fn11765293436816212472
  b .Lcase_end3_fn11765293436816212472
.Lcase_ctor4_fn11765293436816212472:
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x21
  add sp, sp, #48
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end3_fn11765293436816212472
.Lcase_ctor5_fn11765293436816212472:
  mov x8, #0
  // store result to spilled vreg14
  // store to stack slot 2
  str x8, [sp, #16]
  // call USize.ofNat with 1 runtime args
  mov x0, x23
  bl _lean_usize_of_nat
  mov x8, x0
  // store result to spilled vreg15
  // store to stack slot 3
  str x8, [sp, #24]
  // dec 1
  mov x0, x23
  bl _lean_dec
  // call _private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0 with 4 runtime args
  mov x0, x20
  mov x1, x19
  // load spilled vreg14 from stack slot 2
  ldr x8, [sp, #16]
  mov x2, x8
  // load spilled vreg15 from stack slot 3
  ldr x8, [sp, #24]
  mov x3, x8
  bl _l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
  mov x28, x0
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
  b .Lcase_end3_fn11765293436816212472
.Lcase_end3_fn11765293436816212472:
  b .Lcase_end0_fn11765293436816212472
.Lcase_end0_fn11765293436816212472:

  .globl _l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
  .align 2
_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0:
  // Function: _private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #48
  // Stack frame: 48 bytes (5 spilled vars)
.Lfn_start__private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  mov x22, x3
  // call USize.decEq with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_usize_dec_eq
  mov x26, x0
  // case
  mov x8, x26
  cmp x8, #0
  b.eq .Lcase_ctor1_fn12042488817409495888
  cmp x8, #1
  b.eq .Lcase_ctor2_fn12042488817409495888
  b .Lcase_end0_fn12042488817409495888
.Lcase_ctor1_fn12042488817409495888:
  // call Array.uget with 2 runtime args
  mov x0, x20
  mov x1, x21
  bl _lean_array_uget
  mov x23, x0
  // call String.decEq with 2 runtime args
  mov x0, x19
  mov x1, x23
  bl _lean_string_dec_eq
  mov x24, x0
  // dec 1
  mov x0, x23
  bl _lean_dec_ref
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .Lcase_ctor4_fn12042488817409495888
  cmp x8, #1
  b.eq .Lcase_ctor5_fn12042488817409495888
  b .Lcase_end3_fn12042488817409495888
.Lcase_ctor4_fn12042488817409495888:
  mov x8, #1
  // store result to spilled vreg19
  // store to stack slot 1
  str x8, [sp, #8]
  // load spilled vreg19 from stack slot 1
  ldr x8, [sp, #8]
  // inline lean_usize_add
  add x8, x21, x8
  // store result to spilled vreg20
  // store to stack slot 2
  str x8, [sp, #16]
  // tail call to _private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0
  mov x0, x19
  mov x1, x20
  // load spilled vreg20 from stack slot 2
  ldr x8, [sp, #16]
  mov x2, x8
  mov x3, x22
  b .Lfn_start__private.Init.Data.Array.Basic.0.Array.anyMUnsafe.any._at_.Array.contains._at_.T.insert.spec_0.spec_0
  b .Lcase_end3_fn12042488817409495888
.Lcase_ctor5_fn12042488817409495888:
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
  b .Lcase_end3_fn12042488817409495888
.Lcase_end3_fn12042488817409495888:
  b .Lcase_end0_fn12042488817409495888
.Lcase_ctor2_fn12042488817409495888:
  mov x28, #0
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
  b .Lcase_end0_fn12042488817409495888
.Lcase_end0_fn12042488817409495888:

  .globl __init_l_T_empty
  .align 2
__init_l_T_empty:
  // Function: T.empty
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_T.empty:
  // load global constant _l_T_empty___closed__2
  adrp x27, _l_T_empty___closed__2@PAGE
  ldr x27, [x27, _l_T_empty___closed__2@PAGEOFF]
  // return
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_T.empty._closed_2:
  // load global constant _l_T_empty___closed__1
  adrp x27, _l_T_empty___closed__1@PAGE
  ldr x27, [x27, _l_T_empty___closed__1@PAGEOFF]
  // load global constant _l_T_empty___closed__0
  adrp x26, _l_T_empty___closed__0@PAGE
  ldr x26, [x26, _l_T_empty___closed__0@PAGEOFF]
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
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

  .globl __init_l_T_empty___closed__1
  .align 2
__init_l_T_empty___closed__1:
  // Function: T.empty._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_T.empty._closed_1:
  // call Array.empty with 1 runtime args
  mov x0, #1
  bl _l_Array_empty
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

  .globl __init_l_T_empty___closed__0
  .align 2
__init_l_T_empty___closed__0:
  // Function: T.empty._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_T.empty._closed_0:
  // call Lean.Data.Trie.empty with 1 runtime args
  mov x0, #1
  bl _l_Lean_Data_Trie_empty
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

  .globl __init_l_keys
  .align 2
__init_l_keys:
  // Function: keys
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys:
  // load global constant _l_keys___closed__24
  adrp x27, _l_keys___closed__24@PAGE
  ldr x27, [x27, _l_keys___closed__24@PAGEOFF]
  // return
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_24:
  // load global constant _l_keys___closed__11
  adrp x27, _l_keys___closed__11@PAGE
  ldr x27, [x27, _l_keys___closed__11@PAGEOFF]
  // load global constant _l_keys___closed__23
  adrp x26, _l_keys___closed__23@PAGE
  ldr x26, [x26, _l_keys___closed__23@PAGEOFF]
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

  .globl __init_l_keys___closed__23
  .align 2
__init_l_keys___closed__23:
  // Function: keys._closed_23
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_23:
  // load global constant _l_keys___closed__10
  adrp x27, _l_keys___closed__10@PAGE
  ldr x27, [x27, _l_keys___closed__10@PAGEOFF]
  // load global constant _l_keys___closed__22
  adrp x26, _l_keys___closed__22@PAGE
  ldr x26, [x26, _l_keys___closed__22@PAGEOFF]
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

  .globl __init_l_keys___closed__22
  .align 2
__init_l_keys___closed__22:
  // Function: keys._closed_22
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_22:
  // load global constant _l_keys___closed__9
  adrp x27, _l_keys___closed__9@PAGE
  ldr x27, [x27, _l_keys___closed__9@PAGEOFF]
  // load global constant _l_keys___closed__21
  adrp x26, _l_keys___closed__21@PAGE
  ldr x26, [x26, _l_keys___closed__21@PAGEOFF]
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

  .globl __init_l_keys___closed__21
  .align 2
__init_l_keys___closed__21:
  // Function: keys._closed_21
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_21:
  // load global constant _l_keys___closed__8
  adrp x27, _l_keys___closed__8@PAGE
  ldr x27, [x27, _l_keys___closed__8@PAGEOFF]
  // load global constant _l_keys___closed__20
  adrp x26, _l_keys___closed__20@PAGE
  ldr x26, [x26, _l_keys___closed__20@PAGEOFF]
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

  .globl __init_l_keys___closed__20
  .align 2
__init_l_keys___closed__20:
  // Function: keys._closed_20
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_20:
  // load global constant _l_keys___closed__7
  adrp x27, _l_keys___closed__7@PAGE
  ldr x27, [x27, _l_keys___closed__7@PAGEOFF]
  // load global constant _l_keys___closed__19
  adrp x26, _l_keys___closed__19@PAGE
  ldr x26, [x26, _l_keys___closed__19@PAGEOFF]
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

  .globl __init_l_keys___closed__19
  .align 2
__init_l_keys___closed__19:
  // Function: keys._closed_19
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_19:
  // load global constant _l_keys___closed__6
  adrp x27, _l_keys___closed__6@PAGE
  ldr x27, [x27, _l_keys___closed__6@PAGEOFF]
  // load global constant _l_keys___closed__18
  adrp x26, _l_keys___closed__18@PAGE
  ldr x26, [x26, _l_keys___closed__18@PAGEOFF]
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

  .globl __init_l_keys___closed__18
  .align 2
__init_l_keys___closed__18:
  // Function: keys._closed_18
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_18:
  // load global constant _l_keys___closed__5
  adrp x27, _l_keys___closed__5@PAGE
  ldr x27, [x27, _l_keys___closed__5@PAGEOFF]
  // load global constant _l_keys___closed__17
  adrp x26, _l_keys___closed__17@PAGE
  ldr x26, [x26, _l_keys___closed__17@PAGEOFF]
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

  .globl __init_l_keys___closed__17
  .align 2
__init_l_keys___closed__17:
  // Function: keys._closed_17
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_17:
  // load global constant _l_keys___closed__4
  adrp x27, _l_keys___closed__4@PAGE
  ldr x27, [x27, _l_keys___closed__4@PAGEOFF]
  // load global constant _l_keys___closed__16
  adrp x26, _l_keys___closed__16@PAGE
  ldr x26, [x26, _l_keys___closed__16@PAGEOFF]
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

  .globl __init_l_keys___closed__16
  .align 2
__init_l_keys___closed__16:
  // Function: keys._closed_16
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_16:
  // load global constant _l_keys___closed__3
  adrp x27, _l_keys___closed__3@PAGE
  ldr x27, [x27, _l_keys___closed__3@PAGEOFF]
  // load global constant _l_keys___closed__15
  adrp x26, _l_keys___closed__15@PAGE
  ldr x26, [x26, _l_keys___closed__15@PAGEOFF]
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

  .globl __init_l_keys___closed__15
  .align 2
__init_l_keys___closed__15:
  // Function: keys._closed_15
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_15:
  // load global constant _l_keys___closed__2
  adrp x27, _l_keys___closed__2@PAGE
  ldr x27, [x27, _l_keys___closed__2@PAGEOFF]
  // load global constant _l_keys___closed__14
  adrp x26, _l_keys___closed__14@PAGE
  ldr x26, [x26, _l_keys___closed__14@PAGEOFF]
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

  .globl __init_l_keys___closed__14
  .align 2
__init_l_keys___closed__14:
  // Function: keys._closed_14
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_14:
  // load global constant _l_keys___closed__1
  adrp x27, _l_keys___closed__1@PAGE
  ldr x27, [x27, _l_keys___closed__1@PAGEOFF]
  // load global constant _l_keys___closed__13
  adrp x26, _l_keys___closed__13@PAGE
  ldr x26, [x26, _l_keys___closed__13@PAGEOFF]
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

  .globl __init_l_keys___closed__13
  .align 2
__init_l_keys___closed__13:
  // Function: keys._closed_13
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_13:
  // load global constant _l_keys___closed__0
  adrp x27, _l_keys___closed__0@PAGE
  ldr x27, [x27, _l_keys___closed__0@PAGEOFF]
  // load global constant _l_keys___closed__12
  adrp x26, _l_keys___closed__12@PAGE
  ldr x26, [x26, _l_keys___closed__12@PAGEOFF]
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

  .globl __init_l_keys___closed__12
  .align 2
__init_l_keys___closed__12:
  // Function: keys._closed_12
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_12:
  movz x0, #12, lsl #0
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

  .globl __init_l_keys___closed__11
  .align 2
__init_l_keys___closed__11:
  // Function: keys._closed_11
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_11:
  // string literal: 💩
  adrp x0, .Lstrptr_7222272468914231958_0@PAGE
  ldr x0, [x0, .Lstrptr_7222272468914231958_0@PAGEOFF]
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
.Lstrptr_7222272468914231958_0:
  .quad .Lstr_7222272468914231958_0
.Lstr_7222272468914231958_0:
  .asciz "\xA9"
  .text

  .globl __init_l_keys___closed__10
  .align 2
__init_l_keys___closed__10:
  // Function: keys._closed_10
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_10:
  // string literal: hä
  adrp x0, .Lstrptr_16380900457524856719_0@PAGE
  ldr x0, [x0, .Lstrptr_16380900457524856719_0@PAGEOFF]
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
.Lstrptr_16380900457524856719_0:
  .quad .Lstr_16380900457524856719_0
.Lstr_16380900457524856719_0:
  .asciz "h\xE4"
  .text

  .globl __init_l_keys___closed__9
  .align 2
__init_l_keys___closed__9:
  // Function: keys._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_9:
  // string literal: hü
  adrp x0, .Lstrptr_5407064138724495477_0@PAGE
  ldr x0, [x0, .Lstrptr_5407064138724495477_0@PAGEOFF]
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
.Lstrptr_5407064138724495477_0:
  .quad .Lstr_5407064138724495477_0
.Lstr_5407064138724495477_0:
  .asciz "h\xFC"
  .text

  .globl __init_l_keys___closed__8
  .align 2
__init_l_keys___closed__8:
  // Function: keys._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_8:
  // string literal: hö
  adrp x0, .Lstrptr_12119334317599312803_0@PAGE
  ldr x0, [x0, .Lstrptr_12119334317599312803_0@PAGEOFF]
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
.Lstrptr_12119334317599312803_0:
  .quad .Lstr_12119334317599312803_0
.Lstr_12119334317599312803_0:
  .asciz "h\xF6"
  .text

  .globl __init_l_keys___closed__7
  .align 2
__init_l_keys___closed__7:
  // Function: keys._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_7:
  // string literal: hellx
  adrp x0, .Lstrptr_2115751880740229817_0@PAGE
  ldr x0, [x0, .Lstrptr_2115751880740229817_0@PAGEOFF]
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
.Lstrptr_2115751880740229817_0:
  .quad .Lstr_2115751880740229817_0
.Lstr_2115751880740229817_0:
  .asciz "hellx"
  .text

  .globl __init_l_keys___closed__6
  .align 2
__init_l_keys___closed__6:
  // Function: keys._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_6:
  // string literal: hella
  adrp x0, .Lstrptr_12848600680088606412_0@PAGE
  ldr x0, [x0, .Lstrptr_12848600680088606412_0@PAGEOFF]
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
.Lstrptr_12848600680088606412_0:
  .quad .Lstr_12848600680088606412_0
.Lstr_12848600680088606412_0:
  .asciz "hella"
  .text

  .globl __init_l_keys___closed__5
  .align 2
__init_l_keys___closed__5:
  // Function: keys._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_5:
  // string literal: helloooooo
  adrp x0, .Lstrptr_11791377755550448847_0@PAGE
  ldr x0, [x0, .Lstrptr_11791377755550448847_0@PAGEOFF]
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
.Lstrptr_11791377755550448847_0:
  .quad .Lstr_11791377755550448847_0
.Lstr_11791377755550448847_0:
  .asciz "helloooooo"
  .text

  .globl __init_l_keys___closed__4
  .align 2
__init_l_keys___closed__4:
  // Function: keys._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_4:
  // string literal: hellooo
  adrp x0, .Lstrptr_7329043885303358405_0@PAGE
  ldr x0, [x0, .Lstrptr_7329043885303358405_0@PAGEOFF]
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
.Lstrptr_7329043885303358405_0:
  .quad .Lstr_7329043885303358405_0
.Lstr_7329043885303358405_0:
  .asciz "hellooo"
  .text

  .globl __init_l_keys___closed__3
  .align 2
__init_l_keys___closed__3:
  // Function: keys._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_3:
  // string literal: helloo
  adrp x0, .Lstrptr_3350352724944140206_0@PAGE
  ldr x0, [x0, .Lstrptr_3350352724944140206_0@PAGEOFF]
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
.Lstrptr_3350352724944140206_0:
  .quad .Lstr_3350352724944140206_0
.Lstr_3350352724944140206_0:
  .asciz "helloo"
  .text

  .globl __init_l_keys___closed__2
  .align 2
__init_l_keys___closed__2:
  // Function: keys._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_2:
  // string literal: hello
  adrp x0, .Lstrptr_2087413855234772231_0@PAGE
  ldr x0, [x0, .Lstrptr_2087413855234772231_0@PAGEOFF]
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
.Lstrptr_2087413855234772231_0:
  .quad .Lstr_2087413855234772231_0
.Lstr_2087413855234772231_0:
  .asciz "hello"
  .text

  .globl __init_l_keys___closed__1
  .align 2
__init_l_keys___closed__1:
  // Function: keys._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_1:
  // string literal: h
  adrp x0, .Lstrptr_1000471900948542308_0@PAGE
  ldr x0, [x0, .Lstrptr_1000471900948542308_0@PAGEOFF]
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
.Lstrptr_1000471900948542308_0:
  .quad .Lstr_1000471900948542308_0
.Lstr_1000471900948542308_0:
  .asciz "h"
  .text

  .globl __init_l_keys___closed__0
  .align 2
__init_l_keys___closed__0:
  // Function: keys._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_keys._closed_0:
  // string literal: 
  adrp x0, .Lstrptr_6131967736684501980_0@PAGE
  ldr x0, [x0, .Lstrptr_6131967736684501980_0@PAGEOFF]
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
.Lstrptr_6131967736684501980_0:
  .quad .Lstr_6131967736684501980_0
.Lstr_6131967736684501980_0:
  .asciz ""
  .text

  // Module initialization function
  .extern _initialize_Init
  .extern _initialize_Lean_Data_Trie
  .globl _initialize_trie
  .align 2
_initialize_trie:
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

  // Initialize Lean.Data.Trie
  mov x0, #1  // builtin
  mov x1, #1  // lean_io_mk_world() inlined
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

  // Initialize closed constants and 0-param defs
  // Initialize _l_keys___closed__0
  bl __init_l_keys___closed__0
  adrp x8, _l_keys___closed__0@PAGE
  str x0, [x8, _l_keys___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__0@PAGE
  ldr x0, [x8, _l_keys___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__1
  bl __init_l_keys___closed__1
  adrp x8, _l_keys___closed__1@PAGE
  str x0, [x8, _l_keys___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__1@PAGE
  ldr x0, [x8, _l_keys___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__2
  bl __init_l_keys___closed__2
  adrp x8, _l_keys___closed__2@PAGE
  str x0, [x8, _l_keys___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__2@PAGE
  ldr x0, [x8, _l_keys___closed__2@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__3
  bl __init_l_keys___closed__3
  adrp x8, _l_keys___closed__3@PAGE
  str x0, [x8, _l_keys___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__3@PAGE
  ldr x0, [x8, _l_keys___closed__3@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__4
  bl __init_l_keys___closed__4
  adrp x8, _l_keys___closed__4@PAGE
  str x0, [x8, _l_keys___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__4@PAGE
  ldr x0, [x8, _l_keys___closed__4@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__5
  bl __init_l_keys___closed__5
  adrp x8, _l_keys___closed__5@PAGE
  str x0, [x8, _l_keys___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__5@PAGE
  ldr x0, [x8, _l_keys___closed__5@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__6
  bl __init_l_keys___closed__6
  adrp x8, _l_keys___closed__6@PAGE
  str x0, [x8, _l_keys___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__6@PAGE
  ldr x0, [x8, _l_keys___closed__6@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__7
  bl __init_l_keys___closed__7
  adrp x8, _l_keys___closed__7@PAGE
  str x0, [x8, _l_keys___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__7@PAGE
  ldr x0, [x8, _l_keys___closed__7@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__8
  bl __init_l_keys___closed__8
  adrp x8, _l_keys___closed__8@PAGE
  str x0, [x8, _l_keys___closed__8@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__8@PAGE
  ldr x0, [x8, _l_keys___closed__8@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__9
  bl __init_l_keys___closed__9
  adrp x8, _l_keys___closed__9@PAGE
  str x0, [x8, _l_keys___closed__9@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__9@PAGE
  ldr x0, [x8, _l_keys___closed__9@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__10
  bl __init_l_keys___closed__10
  adrp x8, _l_keys___closed__10@PAGE
  str x0, [x8, _l_keys___closed__10@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__10@PAGE
  ldr x0, [x8, _l_keys___closed__10@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__11
  bl __init_l_keys___closed__11
  adrp x8, _l_keys___closed__11@PAGE
  str x0, [x8, _l_keys___closed__11@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__11@PAGE
  ldr x0, [x8, _l_keys___closed__11@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__12
  bl __init_l_keys___closed__12
  adrp x8, _l_keys___closed__12@PAGE
  str x0, [x8, _l_keys___closed__12@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__12@PAGE
  ldr x0, [x8, _l_keys___closed__12@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__13
  bl __init_l_keys___closed__13
  adrp x8, _l_keys___closed__13@PAGE
  str x0, [x8, _l_keys___closed__13@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__13@PAGE
  ldr x0, [x8, _l_keys___closed__13@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__14
  bl __init_l_keys___closed__14
  adrp x8, _l_keys___closed__14@PAGE
  str x0, [x8, _l_keys___closed__14@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__14@PAGE
  ldr x0, [x8, _l_keys___closed__14@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__15
  bl __init_l_keys___closed__15
  adrp x8, _l_keys___closed__15@PAGE
  str x0, [x8, _l_keys___closed__15@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__15@PAGE
  ldr x0, [x8, _l_keys___closed__15@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__16
  bl __init_l_keys___closed__16
  adrp x8, _l_keys___closed__16@PAGE
  str x0, [x8, _l_keys___closed__16@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__16@PAGE
  ldr x0, [x8, _l_keys___closed__16@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__17
  bl __init_l_keys___closed__17
  adrp x8, _l_keys___closed__17@PAGE
  str x0, [x8, _l_keys___closed__17@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__17@PAGE
  ldr x0, [x8, _l_keys___closed__17@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__18
  bl __init_l_keys___closed__18
  adrp x8, _l_keys___closed__18@PAGE
  str x0, [x8, _l_keys___closed__18@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__18@PAGE
  ldr x0, [x8, _l_keys___closed__18@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__19
  bl __init_l_keys___closed__19
  adrp x8, _l_keys___closed__19@PAGE
  str x0, [x8, _l_keys___closed__19@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__19@PAGE
  ldr x0, [x8, _l_keys___closed__19@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__20
  bl __init_l_keys___closed__20
  adrp x8, _l_keys___closed__20@PAGE
  str x0, [x8, _l_keys___closed__20@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__20@PAGE
  ldr x0, [x8, _l_keys___closed__20@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__21
  bl __init_l_keys___closed__21
  adrp x8, _l_keys___closed__21@PAGE
  str x0, [x8, _l_keys___closed__21@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__21@PAGE
  ldr x0, [x8, _l_keys___closed__21@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__22
  bl __init_l_keys___closed__22
  adrp x8, _l_keys___closed__22@PAGE
  str x0, [x8, _l_keys___closed__22@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__22@PAGE
  ldr x0, [x8, _l_keys___closed__22@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__23
  bl __init_l_keys___closed__23
  adrp x8, _l_keys___closed__23@PAGE
  str x0, [x8, _l_keys___closed__23@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__23@PAGE
  ldr x0, [x8, _l_keys___closed__23@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys___closed__24
  bl __init_l_keys___closed__24
  adrp x8, _l_keys___closed__24@PAGE
  str x0, [x8, _l_keys___closed__24@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys___closed__24@PAGE
  ldr x0, [x8, _l_keys___closed__24@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_keys
  bl __init_l_keys
  adrp x8, _l_keys@PAGE
  str x0, [x8, _l_keys@PAGEOFF]
  // Mark persistent
  adrp x8, _l_keys@PAGE
  ldr x0, [x8, _l_keys@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_T_empty___closed__0
  bl __init_l_T_empty___closed__0
  adrp x8, _l_T_empty___closed__0@PAGE
  str x0, [x8, _l_T_empty___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_T_empty___closed__0@PAGE
  ldr x0, [x8, _l_T_empty___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_T_empty___closed__1
  bl __init_l_T_empty___closed__1
  adrp x8, _l_T_empty___closed__1@PAGE
  str x0, [x8, _l_T_empty___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_T_empty___closed__1@PAGE
  ldr x0, [x8, _l_T_empty___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_T_empty___closed__2
  bl __init_l_T_empty___closed__2
  adrp x8, _l_T_empty___closed__2@PAGE
  str x0, [x8, _l_T_empty___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_T_empty___closed__2@PAGE
  ldr x0, [x8, _l_T_empty___closed__2@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_T_empty
  bl __init_l_T_empty
  adrp x8, _l_T_empty@PAGE
  str x0, [x8, _l_T_empty@PAGEOFF]
  // Mark persistent
  adrp x8, _l_T_empty@PAGE
  ldr x0, [x8, _l_T_empty@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_Array_findPrefix___closed__0
  bl __init_l_Array_findPrefix___closed__0
  adrp x8, _l_Array_findPrefix___closed__0@PAGE
  str x0, [x8, _l_Array_findPrefix___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_Array_findPrefix___closed__0@PAGE
  ldr x0, [x8, _l_Array_findPrefix___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
  bl __init_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
  adrp x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
  str x0, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
  ldr x0, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_T_check___closed__0
  bl __init_l_T_check___closed__0
  adrp x8, _l_T_check___closed__0@PAGE
  str x0, [x8, _l_T_check___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_T_check___closed__0@PAGE
  ldr x0, [x8, _l_T_check___closed__0@PAGEOFF]
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
  str x0, [x8, _l_T_check___closed__3@PAGEOFF]

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0
  bl __init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGE
  str x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGE
  ldr x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__0
  bl __init_l_main___closed__0
  adrp x8, _l_main___closed__0@PAGE
  str x0, [x8, _l_main___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__0@PAGE
  ldr x0, [x8, _l_main___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__1
  bl __init_l_main___closed__1
  adrp x8, _l_main___closed__1@PAGE
  str x0, [x8, _l_main___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__1@PAGE
  ldr x0, [x8, _l_main___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__2
  bl __init_l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  str x0, [x8, _l_main___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__2@PAGE
  ldr x0, [x8, _l_main___closed__2@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__3
  bl __init_l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  str x0, [x8, _l_main___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__3@PAGE
  ldr x0, [x8, _l_main___closed__3@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__4
  bl __init_l_main___closed__4
  adrp x8, _l_main___closed__4@PAGE
  str x0, [x8, _l_main___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__4@PAGE
  ldr x0, [x8, _l_main___closed__4@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__5
  bl __init_l_main___closed__5
  adrp x8, _l_main___closed__5@PAGE
  str x0, [x8, _l_main___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__5@PAGE
  ldr x0, [x8, _l_main___closed__5@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__6
  bl __init_l_main___closed__6
  adrp x8, _l_main___closed__6@PAGE
  str x0, [x8, _l_main___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__6@PAGE
  ldr x0, [x8, _l_main___closed__6@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__7
  bl __init_l_main___closed__7
  adrp x8, _l_main___closed__7@PAGE
  str x0, [x8, _l_main___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__7@PAGE
  ldr x0, [x8, _l_main___closed__7@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__8
  bl __init_l_main___closed__8
  adrp x8, _l_main___closed__8@PAGE
  str x0, [x8, _l_main___closed__8@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__8@PAGE
  ldr x0, [x8, _l_main___closed__8@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__9
  bl __init_l_main___closed__9
  adrp x8, _l_main___closed__9@PAGE
  str x0, [x8, _l_main___closed__9@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__9@PAGE
  ldr x0, [x8, _l_main___closed__9@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__10
  bl __init_l_main___closed__10
  adrp x8, _l_main___closed__10@PAGE
  str x0, [x8, _l_main___closed__10@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__10@PAGE
  ldr x0, [x8, _l_main___closed__10@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__11
  bl __init_l_main___closed__11
  adrp x8, _l_main___closed__11@PAGE
  str x0, [x8, _l_main___closed__11@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__11@PAGE
  ldr x0, [x8, _l_main___closed__11@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__12
  bl __init_l_main___closed__12
  adrp x8, _l_main___closed__12@PAGE
  str x0, [x8, _l_main___closed__12@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__12@PAGE
  ldr x0, [x8, _l_main___closed__12@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__13
  bl __init_l_main___closed__13
  adrp x8, _l_main___closed__13@PAGE
  str x0, [x8, _l_main___closed__13@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__13@PAGE
  ldr x0, [x8, _l_main___closed__13@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__14
  bl __init_l_main___closed__14
  adrp x8, _l_main___closed__14@PAGE
  str x0, [x8, _l_main___closed__14@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__14@PAGE
  ldr x0, [x8, _l_main___closed__14@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__15
  bl __init_l_main___closed__15
  adrp x8, _l_main___closed__15@PAGE
  str x0, [x8, _l_main___closed__15@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__15@PAGE
  ldr x0, [x8, _l_main___closed__15@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__16
  bl __init_l_main___closed__16
  adrp x8, _l_main___closed__16@PAGE
  str x0, [x8, _l_main___closed__16@PAGEOFF]

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
