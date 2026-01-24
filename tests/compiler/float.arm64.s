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
  .globl _l_main___closed__17
_l_main___closed__17:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__17___boxed__const__1
_l_main___closed__17___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__16
_l_main___closed__16:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__16___boxed__const__1
_l_main___closed__16___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__15
_l_main___closed__15:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__15___boxed__const__1
_l_main___closed__15___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__14
_l_main___closed__14:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__14___boxed__const__1
_l_main___closed__14___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__13
_l_main___closed__13:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__13___boxed__const__1
_l_main___closed__13___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__12
_l_main___closed__12:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__12___boxed__const__1
_l_main___closed__12___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__11
_l_main___closed__11:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__10
_l_main___closed__10:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__10___boxed__const__1
_l_main___closed__10___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__9
_l_main___closed__9:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__9___boxed__const__1
_l_main___closed__9___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__8
_l_main___closed__8:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__8___boxed__const__1
_l_main___closed__8___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__7
_l_main___closed__7:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__7___boxed__const__1
_l_main___closed__7___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__6
_l_main___closed__6:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__6___boxed__const__1
_l_main___closed__6___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__5
_l_main___closed__5:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__5___boxed__const__1
_l_main___closed__5___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__4
_l_main___closed__4:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__3
_l_main___closed__3:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__2
_l_main___closed__2:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__1
_l_main___closed__1:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_main___closed__0
_l_main___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst4___closed__0
_l_tst4___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2
_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1
_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0
_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__107
_l_tst1___closed__107:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__106
_l_tst1___closed__106:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__105
_l_tst1___closed__105:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__104
_l_tst1___closed__104:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__104___boxed__const__1
_l_tst1___closed__104___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__103
_l_tst1___closed__103:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__102
_l_tst1___closed__102:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__101
_l_tst1___closed__101:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__100
_l_tst1___closed__100:
  .quad 0  // Object initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__99
_l_tst1___closed__99:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__98
_l_tst1___closed__98:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__97
_l_tst1___closed__97:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__96
_l_tst1___closed__96:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__95
_l_tst1___closed__95:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__95___boxed__const__1
_l_tst1___closed__95___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__94
_l_tst1___closed__94:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__93
_l_tst1___closed__93:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__92
_l_tst1___closed__92:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__91
_l_tst1___closed__91:
  .quad 0  // Object initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__90
_l_tst1___closed__90:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__89
_l_tst1___closed__89:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__88
_l_tst1___closed__88:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__87
_l_tst1___closed__87:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__87___boxed__const__1
_l_tst1___closed__87___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__86
_l_tst1___closed__86:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__85
_l_tst1___closed__85:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__84
_l_tst1___closed__84:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__83
_l_tst1___closed__83:
  .quad 0  // Object initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__82
_l_tst1___closed__82:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__81
_l_tst1___closed__81:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__80
_l_tst1___closed__80:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__79
_l_tst1___closed__79:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__78
_l_tst1___closed__78:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__77
_l_tst1___closed__77:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__77___boxed__const__1
_l_tst1___closed__77___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__76
_l_tst1___closed__76:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__75
_l_tst1___closed__75:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__74
_l_tst1___closed__74:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__73
_l_tst1___closed__73:
  .quad 0  // Object initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__72
_l_tst1___closed__72:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__71
_l_tst1___closed__71:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__70
_l_tst1___closed__70:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__69
_l_tst1___closed__69:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__69___boxed__const__1
_l_tst1___closed__69___boxed__const__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__68
_l_tst1___closed__68:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__67
_l_tst1___closed__67:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__66
_l_tst1___closed__66:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__65
_l_tst1___closed__65:
  .quad 0  // Object initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__64
_l_tst1___closed__64:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__63
_l_tst1___closed__63:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__62
_l_tst1___closed__62:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__61
_l_tst1___closed__61:
  .quad 0  // uint64/usize/float initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__60
_l_tst1___closed__60:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__59
_l_tst1___closed__59:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__58
_l_tst1___closed__58:
  .quad 0  // uint64/usize/float initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__57
_l_tst1___closed__57:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__56
_l_tst1___closed__56:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__55
_l_tst1___closed__55:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__54
_l_tst1___closed__54:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__53
_l_tst1___closed__53:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__52
_l_tst1___closed__52:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__51
_l_tst1___closed__51:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__50
_l_tst1___closed__50:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__49
_l_tst1___closed__49:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__48
_l_tst1___closed__48:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__47
_l_tst1___closed__47:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__46
_l_tst1___closed__46:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__45
_l_tst1___closed__45:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__44
_l_tst1___closed__44:
  .quad 0  // uint64/usize/float initialized at startup
  .align 2  // word alignment
  .globl _l_tst1___closed__43
_l_tst1___closed__43:
  .long 0  // uint32/float32 initialized at startup
  .align 2  // word alignment
  .globl _l_tst1___closed__42
_l_tst1___closed__42:
  .long 0  // uint32/float32 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__41
_l_tst1___closed__41:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__40
_l_tst1___closed__40:
  .quad 0  // uint64/usize/float initialized at startup
  .align 2  // word alignment
  .globl _l_tst1___closed__39
_l_tst1___closed__39:
  .long 0  // uint32/float32 initialized at startup
  .align 1  // halfword alignment
  .globl _l_tst1___closed__38
_l_tst1___closed__38:
  .short 0  // uint16 initialized at startup
  .align 1  // halfword alignment
  .globl _l_tst1___closed__37
_l_tst1___closed__37:
  .short 0  // uint16 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__36
_l_tst1___closed__36:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__35
_l_tst1___closed__35:
  .quad 0  // uint64/usize/float initialized at startup
  .align 1  // halfword alignment
  .globl _l_tst1___closed__34
_l_tst1___closed__34:
  .short 0  // uint16 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__33
_l_tst1___closed__33:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__32
_l_tst1___closed__32:
  .quad 0  // uint64/usize/float initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__31
_l_tst1___closed__31:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__30
_l_tst1___closed__30:
  .quad 0  // uint64/usize/float initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__29
_l_tst1___closed__29:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__28
_l_tst1___closed__28:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__27
_l_tst1___closed__27:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__26
_l_tst1___closed__26:
  .quad 0  // uint64/usize/float initialized at startup
  .align 2  // word alignment
  .globl _l_tst1___closed__25
_l_tst1___closed__25:
  .long 0  // uint32/float32 initialized at startup
  .align 1  // halfword alignment
  .globl _l_tst1___closed__24
_l_tst1___closed__24:
  .short 0  // uint16 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__23
_l_tst1___closed__23:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__22
_l_tst1___closed__22:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__21
_l_tst1___closed__21:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__20
_l_tst1___closed__20:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__19
_l_tst1___closed__19:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__18
_l_tst1___closed__18:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__17
_l_tst1___closed__17:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__16
_l_tst1___closed__16:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__15
_l_tst1___closed__15:
  .quad 0  // uint64/usize/float initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__14
_l_tst1___closed__14:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__13
_l_tst1___closed__13:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__12
_l_tst1___closed__12:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__11
_l_tst1___closed__11:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__10
_l_tst1___closed__10:
  .byte 0  // uint8 initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__9
_l_tst1___closed__9:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__8
_l_tst1___closed__8:
  .quad 0  // uint64/usize/float initialized at startup
  .align 0  // byte alignment
  .globl _l_tst1___closed__7
_l_tst1___closed__7:
  .byte 0  // uint8 initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__6
_l_tst1___closed__6:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__5
_l_tst1___closed__5:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__4
_l_tst1___closed__4:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__3
_l_tst1___closed__3:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__2
_l_tst1___closed__2:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__1
_l_tst1___closed__1:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_tst1___closed__0
_l_tst1___closed__0:
  .quad 0  // uint64/usize/float initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___00tst1_spec__7___closed__4
_l_IO_println___at___00tst1_spec__7___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___00tst1_spec__7___closed__3
_l_IO_println___at___00tst1_spec__7___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___00tst1_spec__7___closed__2
_l_IO_println___at___00tst1_spec__7___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___00tst1_spec__7___closed__1
_l_IO_println___at___00tst1_spec__7___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___00tst1_spec__7___closed__0
_l_IO_println___at___00tst1_spec__7___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___00tst1_spec__1___closed__1
_l_IO_println___at___00tst1_spec__1___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___00tst1_spec__1___closed__0
_l_IO_println___at___00tst1_spec__1___closed__0:
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

  .globl _l_IO_println___at___00main_spec__0___boxed
  .align 2
_l_IO_println___at___00main_spec__0___boxed:
  // Function: IO.println._at_.main.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__main_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  // general tail call to IO.println._at_.main.spec_0 with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00main_spec__0

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
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 96 saved regs (gp 5/5, fp 1/4)
.Lfn_start_main:
  // call tst1 with 0 runtime args
  bl _l_tst1
  mov x19, x0
  // case
  // runtime scalar check
  tst x19, #1
  b.ne .scalar_tag_main_0
  ldrb w8, [x19, #7]
  b .compare_tag_main_1
.scalar_tag_main_0:
  lsr x8, x19, #1
.compare_tag_main_1:
  cmp x8, #0
  b.eq .case_ctor_main_3
  cmp x8, #1
  b.eq .case_ctor_main_4
  b .case_end_main_2
.case_ctor_main_3:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load global constant _l_main___closed__0
  adrp x20, _l_main___closed__0@PAGE
  ldr x20, [x20, _l_main___closed__0@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 1 runtime args
  mov x0, x20
  bl _l_IO_println___at___00main_spec__0
  mov x21, x0
  // case
  // runtime scalar check
  tst x21, #1
  b.ne .scalar_tag_main_5
  ldrb w8, [x21, #7]
  b .compare_tag_main_6
.scalar_tag_main_5:
  lsr x8, x21, #1
.compare_tag_main_6:
  cmp x8, #0
  b.eq .case_ctor_main_8
  cmp x8, #1
  b.eq .case_ctor_main_9
  b .case_end_main_7
.case_ctor_main_8:
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // lit nat 7
  movz x22, #15, lsl #0
  // call tst2 with 1 runtime args
  mov x0, x22
  bl _l_tst2
  mov x23, x0
  // case
  // runtime scalar check
  tst x23, #1
  b.ne .scalar_tag_main_10
  ldrb w8, [x23, #7]
  b .compare_tag_main_11
.scalar_tag_main_10:
  lsr x8, x23, #1
.compare_tag_main_11:
  cmp x8, #0
  b.eq .case_ctor_main_13
  cmp x8, #1
  b.eq .case_ctor_main_14
  b .case_end_main_12
.case_ctor_main_13:
  // dec 1
  mov x0, x23
  bl _lean_dec_ref
  // load global constant _l_main___closed__10
  adrp x24, _l_main___closed__10@PAGE
  ldr x24, [x24, _l_main___closed__10@PAGEOFF]
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // call tst3 with 2 runtime args
  mov x0, x24
  fmov d1, d8
  bl _l_tst3
  mov x25, x0
  // case
  // runtime scalar check
  tst x25, #1
  b.ne .scalar_tag_main_15
  ldrb w8, [x25, #7]
  b .compare_tag_main_16
.scalar_tag_main_15:
  lsr x8, x25, #1
.compare_tag_main_16:
  cmp x8, #0
  b.eq .case_ctor_main_18
  cmp x8, #1
  b.eq .case_ctor_main_19
  b .case_end_main_17
.case_ctor_main_18:
  // dec 1
  mov x0, x25
  bl _lean_dec_ref
  // load global constant _l_main___closed__17
  adrp x26, _l_main___closed__17@PAGE
  ldr x26, [x26, _l_main___closed__17@PAGEOFF]
  // general tail call to tst4 with 1 runtime args
  mov x0, x26
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_tst4
  b .case_end_main_17
.case_ctor_main_19:
  // return
  mov x0, x25
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_main_17
.case_end_main_17:
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_main_12
.case_ctor_main_14:
  // return
  mov x0, x23
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_main_12
.case_end_main_12:
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_main_7
.case_ctor_main_9:
  // return
  mov x0, x21
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_main_7
.case_end_main_7:
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
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
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_main_2
.case_end_main_2:
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl __init_l_main___closed__17
  .align 2
__init_l_main___closed__17:
  // Function: main._closed_17
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_17:
  // load global constant _l_main___closed__16
  adrp x19, _l_main___closed__16@PAGE
  ldr x19, [x19, _l_main___closed__16@PAGEOFF]
  // load global constant _l_main___closed__17___boxed__const__1
  adrp x20, _l_main___closed__17___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__17___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__17___boxed__const__1
  .align 2
__init_l_main___closed__17___boxed__const__1:
  // Function: main._closed_17._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_17__boxed_const_1:
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_16:
  // load global constant _l_main___closed__15
  adrp x19, _l_main___closed__15@PAGE
  ldr x19, [x19, _l_main___closed__15@PAGEOFF]
  // load global constant _l_main___closed__16___boxed__const__1
  adrp x20, _l_main___closed__16___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__16___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__16___boxed__const__1
  .align 2
__init_l_main___closed__16___boxed__const__1:
  // Function: main._closed_16._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_16__boxed_const_1:
  // load global constant _l_main___closed__11
  adrp x16, _l_main___closed__11@PAGE
  add x16, x16, _l_main___closed__11@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  // load global constant _l_main___closed__14
  adrp x19, _l_main___closed__14@PAGE
  ldr x19, [x19, _l_main___closed__14@PAGEOFF]
  // load global constant _l_main___closed__15___boxed__const__1
  adrp x20, _l_main___closed__15___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__15___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__15___boxed__const__1
  .align 2
__init_l_main___closed__15___boxed__const__1:
  // Function: main._closed_15._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_15__boxed_const_1:
  // load global constant _l_tst1___closed__21
  adrp x16, _l_tst1___closed__21@PAGE
  add x16, x16, _l_tst1___closed__21@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  // load global constant _l_main___closed__13
  adrp x19, _l_main___closed__13@PAGE
  ldr x19, [x19, _l_main___closed__13@PAGEOFF]
  // load global constant _l_main___closed__14___boxed__const__1
  adrp x20, _l_main___closed__14___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__14___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__14___boxed__const__1
  .align 2
__init_l_main___closed__14___boxed__const__1:
  // Function: main._closed_14._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_14__boxed_const_1:
  // load global constant _l_tst1___closed__78
  adrp x16, _l_tst1___closed__78@PAGE
  add x16, x16, _l_tst1___closed__78@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  // load global constant _l_main___closed__12
  adrp x19, _l_main___closed__12@PAGE
  ldr x19, [x19, _l_main___closed__12@PAGEOFF]
  // load global constant _l_main___closed__13___boxed__const__1
  adrp x20, _l_main___closed__13___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__13___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__13___boxed__const__1
  .align 2
__init_l_main___closed__13___boxed__const__1:
  // Function: main._closed_13._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_13__boxed_const_1:
  // load global constant _l_tst1___closed__96
  adrp x16, _l_tst1___closed__96@PAGE
  add x16, x16, _l_tst1___closed__96@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  // ctor List.nil (tag=0, objs=0, usize=0, scalar=0)
  mov x19, #1
  // load global constant _l_main___closed__12___boxed__const__1
  adrp x20, _l_main___closed__12___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__12___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__12___boxed__const__1
  .align 2
__init_l_main___closed__12___boxed__const__1:
  // Function: main._closed_12._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_12__boxed_const_1:
  // load global constant _l_tst1___closed__79
  adrp x16, _l_tst1___closed__79@PAGE
  add x16, x16, _l_tst1___closed__79@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_main___closed__11
  .align 2
__init_l_main___closed__11:
  // Function: main._closed_11
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 0/5, fp 1/4)
.Lfn_start_main__closed_11:
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.neg with 1 runtime args
  fmov d0, d8
  bl _lean_float_negate
  fmov d9, d0
  // return
  fmov d0, d9
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_10:
  // load global constant _l_main___closed__9
  adrp x19, _l_main___closed__9@PAGE
  ldr x19, [x19, _l_main___closed__9@PAGEOFF]
  // load global constant _l_main___closed__10___boxed__const__1
  adrp x20, _l_main___closed__10___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__10___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__10___boxed__const__1
  .align 2
__init_l_main___closed__10___boxed__const__1:
  // Function: main._closed_10._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_10__boxed_const_1:
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_main__closed_9:
  // load global constant _l_main___closed__8
  adrp x19, _l_main___closed__8@PAGE
  ldr x19, [x19, _l_main___closed__8@PAGEOFF]
  // load global constant _l_main___closed__9___boxed__const__1
  adrp x20, _l_main___closed__9___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__9___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__9___boxed__const__1
  .align 2
__init_l_main___closed__9___boxed__const__1:
  // Function: main._closed_9._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_9__boxed_const_1:
  // load global constant _l_tst1___closed__8
  adrp x16, _l_tst1___closed__8@PAGE
  add x16, x16, _l_tst1___closed__8@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  // load global constant _l_main___closed__7
  adrp x19, _l_main___closed__7@PAGE
  ldr x19, [x19, _l_main___closed__7@PAGEOFF]
  // load global constant _l_main___closed__8___boxed__const__1
  adrp x20, _l_main___closed__8___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__8___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__8___boxed__const__1
  .align 2
__init_l_main___closed__8___boxed__const__1:
  // Function: main._closed_8._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_8__boxed_const_1:
  // load global constant _l_main___closed__1
  adrp x16, _l_main___closed__1@PAGE
  add x16, x16, _l_main___closed__1@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  // load global constant _l_main___closed__6
  adrp x19, _l_main___closed__6@PAGE
  ldr x19, [x19, _l_main___closed__6@PAGEOFF]
  // load global constant _l_main___closed__7___boxed__const__1
  adrp x20, _l_main___closed__7___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__7___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__7___boxed__const__1
  .align 2
__init_l_main___closed__7___boxed__const__1:
  // Function: main._closed_7._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_7__boxed_const_1:
  // load global constant _l_main___closed__2
  adrp x16, _l_main___closed__2@PAGE
  add x16, x16, _l_main___closed__2@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  // load global constant _l_main___closed__5
  adrp x19, _l_main___closed__5@PAGE
  ldr x19, [x19, _l_main___closed__5@PAGEOFF]
  // load global constant _l_main___closed__6___boxed__const__1
  adrp x20, _l_main___closed__6___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__6___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__6___boxed__const__1
  .align 2
__init_l_main___closed__6___boxed__const__1:
  // Function: main._closed_6._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_6__boxed_const_1:
  // load global constant _l_main___closed__3
  adrp x16, _l_main___closed__3@PAGE
  add x16, x16, _l_main___closed__3@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  // ctor List.nil (tag=0, objs=0, usize=0, scalar=0)
  mov x19, #1
  // load global constant _l_main___closed__5___boxed__const__1
  adrp x20, _l_main___closed__5___boxed__const__1@PAGE
  ldr x20, [x20, _l_main___closed__5___boxed__const__1@PAGEOFF]
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
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

  .globl __init_l_main___closed__5___boxed__const__1
  .align 2
__init_l_main___closed__5___boxed__const__1:
  // Function: main._closed_5._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_5__boxed_const_1:
  // load global constant _l_main___closed__4
  adrp x16, _l_main___closed__4@PAGE
  add x16, x16, _l_main___closed__4@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
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
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_4:
  // lit nat 11
  movz x19, #23, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_main___closed__3
  .align 2
__init_l_main___closed__3:
  // Function: main._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_3:
  // lit nat 9
  movz x19, #19, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_main___closed__2
  .align 2
__init_l_main___closed__2:
  // Function: main._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_2:
  // lit nat 8
  movz x19, #17, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_main___closed__1
  .align 2
__init_l_main___closed__1:
  // Function: main._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_main__closed_1:
  // lit nat 7
  movz x19, #15, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

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
  // lit string "-----"
  adrp x0, _str_main__closed_0_0_data@PAGE
  add x0, x0, _str_main__closed_0_0_data@PAGEOFF
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
_str_main__closed_0_0_data:
  .byte 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x00  // null terminator
  .text

  .globl _l_IO_println___at___00main_spec__0
  .align 2
_l_IO_println___at___00main_spec__0:
  // Function: IO.println._at_.main.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__main_spec_0:
  mov x19, x0
  movz x20, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _lean_string_push
  mov x21, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl _l_tst4___boxed
  .align 2
_l_tst4___boxed:
  // Function: tst4._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst4__boxed:
  mov x19, x0
  mov x20, x1
  // general tail call to tst4 with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_tst4

  .globl _l_tst4
  .align 2
_l_tst4:
  // Function: tst4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst4:
  mov x19, x0
  // load global constant _l_tst4___closed__0
  adrp x20, _l_tst4___closed__0@PAGE
  ldr x20, [x20, _l_tst4___closed__0@PAGEOFF]
  // call fMap with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _l_fMap
  mov x21, x0
  // call IO.println._at_.tst3.spec_0 with 1 runtime args
  mov x0, x21
  bl _l_IO_println___at___00tst3_spec__0
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

  .globl __init_l_tst4___closed__0
  .align 2
__init_l_tst4___closed__0:
  // Function: tst4._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_tst4__closed_0:
  // partial application Float.abs._boxed with 0 args
  adrp x0, _l_Float_abs___boxed@PAGE
  add x0, x0, _l_Float_abs___boxed@PAGEOFF
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_closure
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___boxed
  .align 2
_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___boxed:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_List_toString__at__IO_println__at__tst3_spec_0_spec_0__boxed:
  mov x19, x0
  // call List.toString._at_.IO.println._at_.tst3.spec_0.spec_0 with 1 runtime args
  mov x0, x19
  bl _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0
  mov x20, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_List_foldl___at___00List_toString___at___00IO_println___at___00tst3_spec__0_spec__0_spec__1___boxed
  .align 2
_l_List_foldl___at___00List_toString___at___00IO_println___at___00tst3_spec__0_spec__0_spec__1___boxed:
  // Function: List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_1._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1__boxed:
  mov x19, x0
  mov x20, x1
  // call List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_1 with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_List_foldl___at___00List_toString___at___00IO_println___at___00tst3_spec__0_spec__0_spec__1
  mov x21, x0
  // dec 1
  mov x0, x20
  bl _lean_dec
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___00tst3_spec__0___boxed
  .align 2
_l_IO_println___at___00tst3_spec__0___boxed:
  // Function: IO.println._at_.tst3.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__tst3_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  // call IO.println._at_.tst3.spec_0 with 1 runtime args
  mov x0, x19
  bl _l_IO_println___at___00tst3_spec__0
  mov x21, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_tst3___boxed
  .align 2
_l_tst3___boxed:
  // Function: tst3._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 2/5, fp 1/4)
.Lfn_start_tst3__boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // unbox
  mov x0, x20
  bl _lean_unbox_float
  fmov d8, d0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // general tail call to tst3 with 2 runtime args
  mov x0, x19
  fmov d1, d8
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_tst3

  .globl _l_tst3
  .align 2
_l_tst3:
  // Function: tst3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 3/5, fp 1/4)
.Lfn_start_tst3:
  mov x19, x0
  fmov d8, d1
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x20, x0
  // partial application tst3._lam_0._boxed with 1 args
  adrp x0, _l_tst3___lam__0___boxed@PAGE
  add x0, x0, _l_tst3___lam__0___boxed@PAGEOFF
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_closure
  str x0, [sp]
  ldr x0, [sp]
  mov x1, #0
  mov x2, x20
  bl _lean_closure_set
  ldr x0, [sp]
  mov x21, x0
  // call fMap with 2 runtime args
  mov x0, x21
  mov x1, x19
  bl _l_fMap
  mov x22, x0
  // call IO.println._at_.tst3.spec_0 with 1 runtime args
  mov x0, x22
  bl _l_IO_println___at___00tst3_spec__0
  mov x23, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
  // return
  mov x0, x23
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___00tst3_spec__0
  .align 2
_l_IO_println___at___00tst3_spec__0:
  // Function: IO.println._at_.tst3.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 3/5, fp 0/4)
.Lfn_start_IO_println__at__tst3_spec_0:
  mov x19, x0
  // call List.toString._at_.IO.println._at_.tst3.spec_0.spec_0 with 1 runtime args
  mov x0, x19
  bl _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0
  mov x20, x0
  movz x21, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x20
  mov x1, x21
  bl _lean_string_push
  mov x22, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x22
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0
  .align 2
_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 96 saved regs (gp 5/5, fp 1/4)
.Lfn_start_List_toString__at__IO_println__at__tst3_spec_0_spec_0:
  mov x19, x0
  // case
  // runtime scalar check
  tst x19, #1
  b.ne .scalar_tag_List_toString__at__IO_println__at__tst3_spec_0_spec_0_0
  ldrb w8, [x19, #7]
  b .compare_tag_List_toString__at__IO_println__at__tst3_spec_0_spec_0_1
.scalar_tag_List_toString__at__IO_println__at__tst3_spec_0_spec_0_0:
  lsr x8, x19, #1
.compare_tag_List_toString__at__IO_println__at__tst3_spec_0_spec_0_1:
  cmp x8, #0
  b.eq .case_ctor_List_toString__at__IO_println__at__tst3_spec_0_spec_0_3
  cmp x8, #1
  b.eq .case_ctor_List_toString__at__IO_println__at__tst3_spec_0_spec_0_4
  b .case_end_List_toString__at__IO_println__at__tst3_spec_0_spec_0_2
.case_ctor_List_toString__at__IO_println__at__tst3_spec_0_spec_0_3:
  // load global constant _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0
  adrp x26, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0@PAGE
  ldr x26, [x26, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0@PAGEOFF]
  // return
  mov x0, x26
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_List_toString__at__IO_println__at__tst3_spec_0_spec_0_2
.case_ctor_List_toString__at__IO_println__at__tst3_spec_0_spec_0_4:
  // proj field 1
  ldr x20, [x19, #16]
  // case
  // runtime scalar check
  tst x20, #1
  b.ne .scalar_tag_List_toString__at__IO_println__at__tst3_spec_0_spec_0_5
  ldrb w8, [x20, #7]
  b .compare_tag_List_toString__at__IO_println__at__tst3_spec_0_spec_0_6
.scalar_tag_List_toString__at__IO_println__at__tst3_spec_0_spec_0_5:
  lsr x8, x20, #1
.compare_tag_List_toString__at__IO_println__at__tst3_spec_0_spec_0_6:
  cmp x8, #0
  b.eq .case_ctor_List_toString__at__IO_println__at__tst3_spec_0_spec_0_8
  b .case_default_List_toString__at__IO_println__at__tst3_spec_0_spec_0_9
.case_ctor_List_toString__at__IO_println__at__tst3_spec_0_spec_0_8:
  // proj field 0
  ldr x28, [x19, #8]
  // load global constant _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1
  adrp x21, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1@PAGE
  ldr x21, [x21, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1@PAGEOFF]
  // unbox
  mov x0, x28
  bl _lean_unbox_float
  fmov d9, d0
  // call Float.toString with 1 runtime args
  fmov d0, d9
  bl _lean_float_to_string
  mov x22, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_string_append
  mov x23, x0
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // load global constant _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2
  adrp x24, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2@PAGE
  ldr x24, [x24, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2@PAGEOFF]
  // call String.Internal.append with 2 runtime args
  mov x0, x23
  mov x1, x24
  bl _lean_string_append
  mov x25, x0
  // return
  mov x0, x25
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_List_toString__at__IO_println__at__tst3_spec_0_spec_0_7
.case_default_List_toString__at__IO_println__at__tst3_spec_0_spec_0_9:
  // proj field 0
  ldr x21, [x19, #8]
  // load global constant _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1
  adrp x22, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1@PAGE
  ldr x22, [x22, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1@PAGEOFF]
  // unbox
  mov x0, x21
  bl _lean_unbox_float
  fmov d8, d0
  // call Float.toString with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_string
  mov x23, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_string_append
  mov x24, x0
  // dec 1
  mov x0, x23
  bl _lean_dec_ref
  // call List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_1 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_List_foldl___at___00List_toString___at___00IO_println___at___00tst3_spec__0_spec__0_spec__1
  mov x25, x0
  movz x26, #93, lsl #0
  // call String.push with 2 runtime args
  mov x0, x25
  mov x1, x26
  bl _lean_string_push
  mov x27, x0
  // return
  mov x0, x27
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_List_toString__at__IO_println__at__tst3_spec_0_spec_0_7
.case_end_List_toString__at__IO_println__at__tst3_spec_0_spec_0_7:
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_toString__at__IO_println__at__tst3_spec_0_spec_0_2
.case_end_List_toString__at__IO_println__at__tst3_spec_0_spec_0_2:
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l_List_foldl___at___00List_toString___at___00IO_println___at___00tst3_spec__0_spec__0_spec__1
  .align 2
_l_List_foldl___at___00List_toString___at___00IO_println___at___00tst3_spec__0_spec__0_spec__1:
  // Function: List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 4/5, fp 1/4)
.Lfn_start_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1:
  mov x19, x0
  mov x20, x1
  // case
  // runtime scalar check
  tst x20, #1
  b.ne .scalar_tag_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_0
  ldrb w8, [x20, #7]
  b .compare_tag_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_1
.scalar_tag_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_0:
  lsr x8, x20, #1
.compare_tag_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_1:
  cmp x8, #0
  b.eq .case_ctor_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_3
  cmp x8, #1
  b.eq .case_ctor_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_4
  b .case_end_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_2
.case_ctor_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_3:
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_2
.case_ctor_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_4:
  // proj field 0
  ldr x21, [x20, #8]
  // proj field 1
  ldr x22, [x20, #16]
  // load global constant _l_IO_println___at___00tst1_spec__7___closed__1
  adrp x23, _l_IO_println___at___00tst1_spec__7___closed__1@PAGE
  ldr x23, [x23, _l_IO_println___at___00tst1_spec__7___closed__1@PAGEOFF]
  // call String.Internal.append with 2 runtime args
  mov x0, x19
  mov x1, x23
  bl _lean_string_append
  mov x24, x0
  // unbox
  mov x0, x21
  bl _lean_unbox_float
  fmov d8, d0
  // call Float.toString with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_string
  mov x25, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x24
  mov x1, x25
  bl _lean_string_append
  mov x26, x0
  // dec 1
  mov x0, x25
  bl _lean_dec_ref
  // true tail call to self with 2 runtime args
  mov x0, x26
  mov x1, x22
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_foldl___at___00List_toString___at___00IO_println___at___00tst3_spec__0_spec__0_spec__1
  b .case_end_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_2
.case_end_List_foldl__at__List_toString__at__IO_println__at__tst3_spec_0_spec_0_spec_1_2:
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl __init_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2
  .align 2
__init_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_2:
  // lit string "]"
  adrp x0, _str_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_2_0_data@PAGE
  add x0, x0, _str_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_2_0_data@PAGEOFF
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
_str_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_2_0_data:
  .byte 0x5D, 0x00  // null terminator
  .text

  .globl __init_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1
  .align 2
__init_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_1:
  // lit string "["
  adrp x0, _str_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_1_0_data@PAGE
  add x0, x0, _str_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_1_0_data@PAGEOFF
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
_str_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_1_0_data:
  .byte 0x5B, 0x00  // null terminator
  .text

  .globl __init_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0
  .align 2
__init_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_0:
  // lit string "[]"
  adrp x0, _str_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_0_0_data@PAGE
  add x0, x0, _str_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_0_0_data@PAGEOFF
  movz x1, #2, lsl #0
  movz x2, #2, lsl #0
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
_str_List_toString__at__IO_println__at__tst3_spec_0_spec_0__closed_0_0_data:
  .byte 0x5B, 0x5D, 0x00  // null terminator
  .text

  .globl _l_tst3___lam__0___boxed
  .align 2
_l_tst3___lam__0___boxed:
  // Function: tst3._lam_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 2/5, fp 2/4)
.Lfn_start_tst3__lam_0__boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  mov x0, x19
  bl _lean_unbox_float
  fmov d8, d0
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // unbox
  mov x0, x20
  bl _lean_unbox_float
  fmov d9, d0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // call tst3._lam_0 with 2 runtime args
  fmov d0, d8
  fmov d1, d9
  bl _l_tst3___lam__0
  fmov d10, d0
  // box
  fmov d0, d10
  bl _lean_box_float
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_tst3___lam__0
  .align 2
_l_tst3___lam__0:
  // Function: tst3._lam_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst3__lam_0:
  fmov d8, d0
  fmov d9, d1
  // call Float.div with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_div
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_fMap
  .align 2
_l_fMap:
  // Function: fMap
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_fMap:
  mov x19, x0
  mov x20, x1
  // ctor List.nil (tag=0, objs=0, usize=0, scalar=0)
  mov x21, #1
  // general tail call to List.mapTR.loop._at_.fMap.spec_0 with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_mapTR_loop___at___00fMap_spec__0

  .globl _l_List_mapTR_loop___at___00fMap_spec__0
  .align 2
_l_List_mapTR_loop___at___00fMap_spec__0:
  // Function: List.mapTR.loop._at_.fMap.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 5/5, fp 0/4)
.Lfn_start_List_mapTR_loop__at__fMap_spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // case
  // runtime scalar check
  tst x20, #1
  b.ne .scalar_tag_List_mapTR_loop__at__fMap_spec_0_0
  ldrb w8, [x20, #7]
  b .compare_tag_List_mapTR_loop__at__fMap_spec_0_1
.scalar_tag_List_mapTR_loop__at__fMap_spec_0_0:
  lsr x8, x20, #1
.compare_tag_List_mapTR_loop__at__fMap_spec_0_1:
  cmp x8, #0
  b.eq .case_ctor_List_mapTR_loop__at__fMap_spec_0_3
  cmp x8, #1
  b.eq .case_ctor_List_mapTR_loop__at__fMap_spec_0_4
  b .case_end_List_mapTR_loop__at__fMap_spec_0_2
.case_ctor_List_mapTR_loop__at__fMap_spec_0_3:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // general tail call to List.reverse._redArg with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_reverse___redArg
  b .case_end_List_mapTR_loop__at__fMap_spec_0_2
.case_ctor_List_mapTR_loop__at__fMap_spec_0_4:
  // isShared (inline)
  tst x20, #1
  b.ne .is_shared_scalar_List_mapTR_loop__at__fMap_spec_0_6
  ldr w8, [x20]
  cmp x8, #1
  cset x22, ne
  b .is_shared_done_List_mapTR_loop__at__fMap_spec_0_5
.is_shared_scalar_List_mapTR_loop__at__fMap_spec_0_6:
  mov x22, #1
.is_shared_done_List_mapTR_loop__at__fMap_spec_0_5:
  // case
  mov x8, x22
  cmp x8, #0
  b.eq .case_ctor_List_mapTR_loop__at__fMap_spec_0_8
  cmp x8, #1
  b.eq .case_ctor_List_mapTR_loop__at__fMap_spec_0_9
  b .case_end_List_mapTR_loop__at__fMap_spec_0_7
.case_ctor_List_mapTR_loop__at__fMap_spec_0_8:
  // proj field 0
  ldr x27, [x20, #8]
  // proj field 1
  ldr x28, [x20, #16]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // apply closure with 1 args
  mov x0, x19
  mov x1, x27
  bl _lean_apply_1
  mov x23, x0
  // set field 1 (inline)
  str x21, [x20, #16]
  // set field 0 (inline)
  str x23, [x20, #8]
  // true tail call to self with 3 runtime args
  mov x0, x19
  mov x1, x28
  mov x2, x20
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_mapTR_loop___at___00fMap_spec__0
  b .case_end_List_mapTR_loop__at__fMap_spec_0_7
.case_ctor_List_mapTR_loop__at__fMap_spec_0_9:
  // proj field 0
  ldr x23, [x20, #8]
  // proj field 1
  ldr x24, [x20, #16]
  // inc 1
  mov x0, x24
  bl _lean_inc
  // inc 1
  mov x0, x23
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // apply closure with 1 args
  mov x0, x19
  mov x1, x23
  bl _lean_apply_1
  mov x25, x0
  // ctor List.cons (tag=1, objs=2, usize=0, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x26, x0
  str x25, [x26, #8]
  str x21, [x26, #16]
  // true tail call to self with 3 runtime args
  mov x0, x19
  mov x1, x24
  mov x2, x26
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_List_mapTR_loop___at___00fMap_spec__0
  b .case_end_List_mapTR_loop__at__fMap_spec_0_7
.case_end_List_mapTR_loop__at__fMap_spec_0_7:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_List_mapTR_loop__at__fMap_spec_0_2
.case_end_List_mapTR_loop__at__fMap_spec_0_2:
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l_tst2___boxed
  .align 2
_l_tst2___boxed:
  // Function: tst2._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst2__boxed:
  mov x19, x0
  mov x20, x1
  // general tail call to tst2 with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_tst2

  .globl _l_tst2
  .align 2
_l_tst2:
  // Function: tst2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 2/5, fp 1/4)
.Lfn_start_tst2:
  mov x19, x0
  // call mkFoo with 1 runtime args
  mov x0, x19
  bl _l_mkFoo
  mov x20, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d8
  bl _l_IO_println___at___00tst1_spec__0
  mov x21, x0
  // case
  // runtime scalar check
  tst x21, #1
  b.ne .scalar_tag_tst2_0
  ldrb w8, [x21, #7]
  b .compare_tag_tst2_1
.scalar_tag_tst2_0:
  lsr x8, x21, #1
.compare_tag_tst2_1:
  cmp x8, #0
  b.eq .case_ctor_tst2_3
  cmp x8, #1
  b.eq .case_ctor_tst2_4
  b .case_end_tst2_2
.case_ctor_tst2_3:
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // general tail call to IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d9
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00tst1_spec__0
  b .case_end_tst2_2
.case_ctor_tst2_4:
  // return
  mov x0, x21
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst2_2
.case_end_tst2_2:
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl _l_mkFoo
  .align 2
_l_mkFoo:
  // Function: mkFoo
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  stp d12, d13, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 80 saved regs (gp 2/5, fp 3/4)
.Lfn_start_mkFoo:
  mov x19, x0
  // call UInt64.ofNat with 1 runtime args
  mov x0, x19
  bl _lean_uint64_of_nat
  mov x20, x0
  // inc 1
  mov x0, x19
  bl _lean_inc
  // call Float.ofNat with 1 runtime args
  mov x0, x19
  bl _lean_float_of_nat
  fmov d8, d0
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.div with 2 runtime args
  fmov d0, d8
  fmov d1, d9
  bl _lean_float_div
  fmov d10, d0
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // call Float.div with 2 runtime args
  fmov d0, d8
  fmov d1, d11
  bl _lean_float_div
  fmov d12, d0
  // ctor Foo.mk (tag=0, objs=1, usize=0, scalar=24)
  mov x0, #0
  mov x1, #1
  mov x2, #24
  bl _lean_alloc_ctor
  mov x21, x0
  str x19, [x21, #8]
  // sset scalar 1 offset 0
  str x20, [x21, #16]
  // sset scalar 1 offset 8
  // sset scalar 1 offset 16
  // return
  mov x0, x21
  add sp, sp, #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_tst1___boxed
  .align 2
_l_tst1___boxed:
  // Function: tst1._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_tst1__boxed:
  mov x19, x0
  // call tst1 with 0 runtime args
  bl _l_tst1
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___00tst1_spec__7___boxed
  .align 2
_l_IO_println___at___00tst1_spec__7___boxed:
  // Function: IO.println._at_.tst1.spec_7._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_7__boxed:
  mov x19, x0
  mov x20, x1
  // call IO.println._at_.tst1.spec_7 with 1 runtime args
  mov x0, x19
  bl _l_IO_println___at___00tst1_spec__7
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

  .globl _l_IO_println___at___00tst1_spec__1___boxed
  .align 2
_l_IO_println___at___00tst1_spec__1___boxed:
  // Function: IO.println._at_.tst1.spec_1._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_1__boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x21, x19, #1
  // general tail call to IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00tst1_spec__1

  .globl _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0___boxed
  .align 2
_l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0___boxed:
  // Function: IO.print._at_.IO.println._at_.tst1.spec_0.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_print__at__IO_println__at__tst1_spec_0_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl _l_IO_println___at___00tst1_spec__6___boxed
  .align 2
_l_IO_println___at___00tst1_spec__6___boxed:
  // Function: IO.println._at_.tst1.spec_6._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_6__boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  mov x0, x19
  bl _lean_unbox_usize
  mov x21, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // general tail call to IO.println._at_.tst1.spec_6 with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00tst1_spec__6

  .globl _l_IO_println___at___00tst1_spec__5___boxed
  .align 2
_l_IO_println___at___00tst1_spec__5___boxed:
  // Function: IO.println._at_.tst1.spec_5._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_5__boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  mov x0, x19
  bl _lean_unbox_uint64
  mov x21, x0
  // dec 1
  mov x0, x19
  bl _lean_dec
  // general tail call to IO.println._at_.tst1.spec_5 with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00tst1_spec__5

  .globl _l_IO_println___at___00tst1_spec__4___boxed
  .align 2
_l_IO_println___at___00tst1_spec__4___boxed:
  // Function: IO.println._at_.tst1.spec_4._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_4__boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x21, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec
  // general tail call to IO.println._at_.tst1.spec_4 with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00tst1_spec__4

  .globl _l_IO_println___at___00tst1_spec__3___boxed
  .align 2
_l_IO_println___at___00tst1_spec__3___boxed:
  // Function: IO.println._at_.tst1.spec_3._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_3__boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x21, x19, #1
  // general tail call to IO.println._at_.tst1.spec_3 with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00tst1_spec__3

  .globl _l_IO_println___at___00tst1_spec__2___boxed
  .align 2
_l_IO_println___at___00tst1_spec__2___boxed:
  // Function: IO.println._at_.tst1.spec_2._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_2__boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x21, x19, #1
  // general tail call to IO.println._at_.tst1.spec_2 with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00tst1_spec__2

  .globl _l_IO_println___at___00tst1_spec__0___boxed
  .align 2
_l_IO_println___at___00tst1_spec__0___boxed:
  // Function: IO.println._at_.tst1.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 2/5, fp 1/4)
.Lfn_start_IO_println__at__tst1_spec_0__boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  mov x0, x19
  bl _lean_unbox_float
  fmov d8, d0
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // general tail call to IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d8
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00tst1_spec__0

  .globl _l_tst1
  .align 2
_l_tst1:
  // Function: tst1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  stp d12, d13, [sp, #-16]!
  stp d14, d15, [sp, #-16]!
  sub sp, sp, #288
  // Stack frame: 288 spill + 144 saved regs (gp 5/5, fp 4/4)
.Lfn_start_tst1:
  // load global constant _l_tst1___closed__0
  adrp x16, _l_tst1___closed__0@PAGE
  add x16, x16, _l_tst1___closed__0@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d8
  bl _l_IO_println___at___00tst1_spec__0
  mov x8, x0
  str x8, [sp]
  ldr x8, [sp]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_0
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_1
.scalar_tag_tst1_0:
  lsr x9, x8, #1
.compare_tag_tst1_1:
  cmp x9, #0
  b.eq .case_ctor_tst1_3
  cmp x9, #1
  b.eq .case_ctor_tst1_4
  b .case_end_tst1_2
.case_ctor_tst1_3:
  // dec 1
  ldr x8, [sp]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__2
  adrp x16, _l_tst1___closed__2@PAGE
  add x16, x16, _l_tst1___closed__2@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d9
  bl _l_IO_println___at___00tst1_spec__0
  mov x8, x0
  str x8, [sp, #8]
  ldr x8, [sp, #8]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_5
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_6
.scalar_tag_tst1_5:
  lsr x9, x8, #1
.compare_tag_tst1_6:
  cmp x9, #0
  b.eq .case_ctor_tst1_8
  cmp x9, #1
  b.eq .case_ctor_tst1_9
  b .case_end_tst1_7
.case_ctor_tst1_8:
  // dec 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__4
  adrp x16, _l_tst1___closed__4@PAGE
  add x16, x16, _l_tst1___closed__4@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d10
  bl _l_IO_println___at___00tst1_spec__0
  mov x8, x0
  str x8, [sp, #16]
  ldr x8, [sp, #16]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_10
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_11
.scalar_tag_tst1_10:
  lsr x9, x8, #1
.compare_tag_tst1_11:
  cmp x9, #0
  b.eq .case_ctor_tst1_13
  cmp x9, #1
  b.eq .case_ctor_tst1_14
  b .case_end_tst1_12
.case_ctor_tst1_13:
  // dec 1
  ldr x8, [sp, #16]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__5
  adrp x16, _l_tst1___closed__5@PAGE
  add x16, x16, _l_tst1___closed__5@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d11
  bl _l_IO_println___at___00tst1_spec__0
  mov x8, x0
  str x8, [sp, #24]
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_15
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_16
.scalar_tag_tst1_15:
  lsr x9, x8, #1
.compare_tag_tst1_16:
  cmp x9, #0
  b.eq .case_ctor_tst1_18
  cmp x9, #1
  b.eq .case_ctor_tst1_19
  b .case_end_tst1_17
.case_ctor_tst1_18:
  // dec 1
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__6
  adrp x16, _l_tst1___closed__6@PAGE
  add x16, x16, _l_tst1___closed__6@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d12
  bl _l_IO_println___at___00tst1_spec__0
  mov x8, x0
  str x8, [sp, #32]
  ldr x8, [sp, #32]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_20
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_21
.scalar_tag_tst1_20:
  lsr x9, x8, #1
.compare_tag_tst1_21:
  cmp x9, #0
  b.eq .case_ctor_tst1_23
  cmp x9, #1
  b.eq .case_ctor_tst1_24
  b .case_end_tst1_22
.case_ctor_tst1_23:
  // dec 1
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__7
  adrp x24, _l_tst1___closed__7@PAGE
  add x24, x24, _l_tst1___closed__7@PAGEOFF
  ldrb w24, [x24]
  // call IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x24
  bl _l_IO_println___at___00tst1_spec__1
  mov x8, x0
  str x8, [sp, #40]
  ldr x8, [sp, #40]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_25
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_26
.scalar_tag_tst1_25:
  lsr x9, x8, #1
.compare_tag_tst1_26:
  cmp x9, #0
  b.eq .case_ctor_tst1_28
  cmp x9, #1
  b.eq .case_ctor_tst1_29
  b .case_end_tst1_27
.case_ctor_tst1_28:
  // dec 1
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__9
  adrp x26, _l_tst1___closed__9@PAGE
  add x26, x26, _l_tst1___closed__9@PAGEOFF
  ldrb w26, [x26]
  // call IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x26
  bl _l_IO_println___at___00tst1_spec__1
  mov x8, x0
  str x8, [sp, #48]
  ldr x8, [sp, #48]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_30
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_31
.scalar_tag_tst1_30:
  lsr x9, x8, #1
.compare_tag_tst1_31:
  cmp x9, #0
  b.eq .case_ctor_tst1_33
  cmp x9, #1
  b.eq .case_ctor_tst1_34
  b .case_end_tst1_32
.case_ctor_tst1_33:
  // dec 1
  ldr x8, [sp, #48]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__10
  adrp x28, _l_tst1___closed__10@PAGE
  add x28, x28, _l_tst1___closed__10@PAGEOFF
  ldrb w28, [x28]
  // call IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x28
  bl _l_IO_println___at___00tst1_spec__1
  mov x8, x0
  str x8, [sp, #56]
  ldr x8, [sp, #56]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_35
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_36
.scalar_tag_tst1_35:
  lsr x9, x8, #1
.compare_tag_tst1_36:
  cmp x9, #0
  b.eq .case_ctor_tst1_38
  cmp x9, #1
  b.eq .case_ctor_tst1_39
  b .case_end_tst1_37
.case_ctor_tst1_38:
  // dec 1
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__11
  adrp x26, _l_tst1___closed__11@PAGE
  add x26, x26, _l_tst1___closed__11@PAGEOFF
  ldrb w26, [x26]
  // call IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x26
  bl _l_IO_println___at___00tst1_spec__1
  mov x8, x0
  str x8, [sp, #64]
  ldr x8, [sp, #64]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_40
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_41
.scalar_tag_tst1_40:
  lsr x9, x8, #1
.compare_tag_tst1_41:
  cmp x9, #0
  b.eq .case_ctor_tst1_43
  cmp x9, #1
  b.eq .case_ctor_tst1_44
  b .case_end_tst1_42
.case_ctor_tst1_43:
  // dec 1
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__12
  adrp x26, _l_tst1___closed__12@PAGE
  add x26, x26, _l_tst1___closed__12@PAGEOFF
  ldrb w26, [x26]
  // call IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x26
  bl _l_IO_println___at___00tst1_spec__1
  mov x8, x0
  str x8, [sp, #72]
  ldr x8, [sp, #72]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_45
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_46
.scalar_tag_tst1_45:
  lsr x9, x8, #1
.compare_tag_tst1_46:
  cmp x9, #0
  b.eq .case_ctor_tst1_48
  cmp x9, #1
  b.eq .case_ctor_tst1_49
  b .case_end_tst1_47
.case_ctor_tst1_48:
  // dec 1
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__13
  adrp x26, _l_tst1___closed__13@PAGE
  add x26, x26, _l_tst1___closed__13@PAGEOFF
  ldrb w26, [x26]
  // call IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x26
  bl _l_IO_println___at___00tst1_spec__1
  mov x8, x0
  str x8, [sp, #80]
  ldr x8, [sp, #80]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_50
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_51
.scalar_tag_tst1_50:
  lsr x9, x8, #1
.compare_tag_tst1_51:
  cmp x9, #0
  b.eq .case_ctor_tst1_53
  cmp x9, #1
  b.eq .case_ctor_tst1_54
  b .case_end_tst1_52
.case_ctor_tst1_53:
  // dec 1
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__14
  adrp x26, _l_tst1___closed__14@PAGE
  add x26, x26, _l_tst1___closed__14@PAGEOFF
  ldrb w26, [x26]
  // call IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x26
  bl _l_IO_println___at___00tst1_spec__1
  mov x8, x0
  str x8, [sp, #88]
  ldr x8, [sp, #88]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_55
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_56
.scalar_tag_tst1_55:
  lsr x9, x8, #1
.compare_tag_tst1_56:
  cmp x9, #0
  b.eq .case_ctor_tst1_58
  cmp x9, #1
  b.eq .case_ctor_tst1_59
  b .case_end_tst1_57
.case_ctor_tst1_58:
  // dec 1
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__15
  adrp x16, _l_tst1___closed__15@PAGE
  add x16, x16, _l_tst1___closed__15@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d13
  bl _l_IO_println___at___00tst1_spec__0
  mov x8, x0
  str x8, [sp, #96]
  ldr x8, [sp, #96]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_60
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_61
.scalar_tag_tst1_60:
  lsr x9, x8, #1
.compare_tag_tst1_61:
  cmp x9, #0
  b.eq .case_ctor_tst1_63
  cmp x9, #1
  b.eq .case_ctor_tst1_64
  b .case_end_tst1_62
.case_ctor_tst1_63:
  // dec 1
  ldr x8, [sp, #96]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__17
  adrp x16, _l_tst1___closed__17@PAGE
  add x16, x16, _l_tst1___closed__17@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d14
  bl _l_IO_println___at___00tst1_spec__0
  mov x8, x0
  str x8, [sp, #104]
  ldr x8, [sp, #104]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_65
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_66
.scalar_tag_tst1_65:
  lsr x9, x8, #1
.compare_tag_tst1_66:
  cmp x9, #0
  b.eq .case_ctor_tst1_68
  cmp x9, #1
  b.eq .case_ctor_tst1_69
  b .case_end_tst1_67
.case_ctor_tst1_68:
  // dec 1
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__19
  adrp x16, _l_tst1___closed__19@PAGE
  add x16, x16, _l_tst1___closed__19@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d15
  bl _l_IO_println___at___00tst1_spec__0
  mov x8, x0
  str x8, [sp, #112]
  ldr x8, [sp, #112]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_70
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_71
.scalar_tag_tst1_70:
  lsr x9, x8, #1
.compare_tag_tst1_71:
  cmp x9, #0
  b.eq .case_ctor_tst1_73
  cmp x9, #1
  b.eq .case_ctor_tst1_74
  b .case_end_tst1_72
.case_ctor_tst1_73:
  // dec 1
  ldr x8, [sp, #112]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__20
  adrp x16, _l_tst1___closed__20@PAGE
  add x16, x16, _l_tst1___closed__20@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d8
  bl _l_IO_println___at___00tst1_spec__0
  mov x8, x0
  str x8, [sp, #120]
  ldr x8, [sp, #120]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_75
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_76
.scalar_tag_tst1_75:
  lsr x9, x8, #1
.compare_tag_tst1_76:
  cmp x9, #0
  b.eq .case_ctor_tst1_78
  cmp x9, #1
  b.eq .case_ctor_tst1_79
  b .case_end_tst1_77
.case_ctor_tst1_78:
  // dec 1
  ldr x8, [sp, #120]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__23
  adrp x27, _l_tst1___closed__23@PAGE
  add x27, x27, _l_tst1___closed__23@PAGEOFF
  ldrb w27, [x27]
  // call IO.println._at_.tst1.spec_2 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__2
  mov x8, x0
  str x8, [sp, #128]
  ldr x8, [sp, #128]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_80
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_81
.scalar_tag_tst1_80:
  lsr x9, x8, #1
.compare_tag_tst1_81:
  cmp x9, #0
  b.eq .case_ctor_tst1_83
  cmp x9, #1
  b.eq .case_ctor_tst1_84
  b .case_end_tst1_82
.case_ctor_tst1_83:
  // dec 1
  ldr x8, [sp, #128]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__24
  adrp x27, _l_tst1___closed__24@PAGE
  add x27, x27, _l_tst1___closed__24@PAGEOFF
  ldrh w27, [x27]
  // call IO.println._at_.tst1.spec_3 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__3
  mov x8, x0
  str x8, [sp, #136]
  ldr x8, [sp, #136]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_85
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_86
.scalar_tag_tst1_85:
  lsr x9, x8, #1
.compare_tag_tst1_86:
  cmp x9, #0
  b.eq .case_ctor_tst1_88
  cmp x9, #1
  b.eq .case_ctor_tst1_89
  b .case_end_tst1_87
.case_ctor_tst1_88:
  // dec 1
  ldr x8, [sp, #136]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__25
  adrp x27, _l_tst1___closed__25@PAGE
  add x27, x27, _l_tst1___closed__25@PAGEOFF
  ldr w27, [x27]
  // call IO.println._at_.tst1.spec_4 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__4
  mov x8, x0
  str x8, [sp, #144]
  ldr x8, [sp, #144]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_90
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_91
.scalar_tag_tst1_90:
  lsr x9, x8, #1
.compare_tag_tst1_91:
  cmp x9, #0
  b.eq .case_ctor_tst1_93
  cmp x9, #1
  b.eq .case_ctor_tst1_94
  b .case_end_tst1_92
.case_ctor_tst1_93:
  // dec 1
  ldr x8, [sp, #144]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__26
  adrp x27, _l_tst1___closed__26@PAGE
  ldr x27, [x27, _l_tst1___closed__26@PAGEOFF]
  // call IO.println._at_.tst1.spec_5 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__5
  mov x8, x0
  str x8, [sp, #152]
  ldr x8, [sp, #152]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_95
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_96
.scalar_tag_tst1_95:
  lsr x9, x8, #1
.compare_tag_tst1_96:
  cmp x9, #0
  b.eq .case_ctor_tst1_98
  cmp x9, #1
  b.eq .case_ctor_tst1_99
  b .case_end_tst1_97
.case_ctor_tst1_98:
  // dec 1
  ldr x8, [sp, #152]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__27
  adrp x27, _l_tst1___closed__27@PAGE
  ldr x27, [x27, _l_tst1___closed__27@PAGEOFF]
  // call IO.println._at_.tst1.spec_6 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__6
  mov x8, x0
  str x8, [sp, #160]
  ldr x8, [sp, #160]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_100
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_101
.scalar_tag_tst1_100:
  lsr x9, x8, #1
.compare_tag_tst1_101:
  cmp x9, #0
  b.eq .case_ctor_tst1_103
  cmp x9, #1
  b.eq .case_ctor_tst1_104
  b .case_end_tst1_102
.case_ctor_tst1_103:
  // dec 1
  ldr x8, [sp, #160]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__29
  adrp x27, _l_tst1___closed__29@PAGE
  add x27, x27, _l_tst1___closed__29@PAGEOFF
  ldrb w27, [x27]
  // call IO.println._at_.tst1.spec_2 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__2
  mov x8, x0
  str x8, [sp, #168]
  ldr x8, [sp, #168]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_105
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_106
.scalar_tag_tst1_105:
  lsr x9, x8, #1
.compare_tag_tst1_106:
  cmp x9, #0
  b.eq .case_ctor_tst1_108
  cmp x9, #1
  b.eq .case_ctor_tst1_109
  b .case_end_tst1_107
.case_ctor_tst1_108:
  // dec 1
  ldr x8, [sp, #168]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__31
  adrp x27, _l_tst1___closed__31@PAGE
  add x27, x27, _l_tst1___closed__31@PAGEOFF
  ldrb w27, [x27]
  // call IO.println._at_.tst1.spec_2 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__2
  mov x8, x0
  str x8, [sp, #176]
  ldr x8, [sp, #176]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_110
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_111
.scalar_tag_tst1_110:
  lsr x9, x8, #1
.compare_tag_tst1_111:
  cmp x9, #0
  b.eq .case_ctor_tst1_113
  cmp x9, #1
  b.eq .case_ctor_tst1_114
  b .case_end_tst1_112
.case_ctor_tst1_113:
  // dec 1
  ldr x8, [sp, #176]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__33
  adrp x27, _l_tst1___closed__33@PAGE
  add x27, x27, _l_tst1___closed__33@PAGEOFF
  ldrb w27, [x27]
  // call IO.println._at_.tst1.spec_2 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__2
  mov x8, x0
  str x8, [sp, #184]
  ldr x8, [sp, #184]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_115
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_116
.scalar_tag_tst1_115:
  lsr x9, x8, #1
.compare_tag_tst1_116:
  cmp x9, #0
  b.eq .case_ctor_tst1_118
  cmp x9, #1
  b.eq .case_ctor_tst1_119
  b .case_end_tst1_117
.case_ctor_tst1_118:
  // dec 1
  ldr x8, [sp, #184]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__34
  adrp x27, _l_tst1___closed__34@PAGE
  add x27, x27, _l_tst1___closed__34@PAGEOFF
  ldrh w27, [x27]
  // call IO.println._at_.tst1.spec_3 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__3
  mov x8, x0
  str x8, [sp, #192]
  ldr x8, [sp, #192]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_120
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_121
.scalar_tag_tst1_120:
  lsr x9, x8, #1
.compare_tag_tst1_121:
  cmp x9, #0
  b.eq .case_ctor_tst1_123
  cmp x9, #1
  b.eq .case_ctor_tst1_124
  b .case_end_tst1_122
.case_ctor_tst1_123:
  // dec 1
  ldr x8, [sp, #192]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__37
  adrp x27, _l_tst1___closed__37@PAGE
  add x27, x27, _l_tst1___closed__37@PAGEOFF
  ldrh w27, [x27]
  // call IO.println._at_.tst1.spec_3 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__3
  mov x8, x0
  str x8, [sp, #200]
  ldr x8, [sp, #200]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_125
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_126
.scalar_tag_tst1_125:
  lsr x9, x8, #1
.compare_tag_tst1_126:
  cmp x9, #0
  b.eq .case_ctor_tst1_128
  cmp x9, #1
  b.eq .case_ctor_tst1_129
  b .case_end_tst1_127
.case_ctor_tst1_128:
  // dec 1
  ldr x8, [sp, #200]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__38
  adrp x27, _l_tst1___closed__38@PAGE
  add x27, x27, _l_tst1___closed__38@PAGEOFF
  ldrh w27, [x27]
  // call IO.println._at_.tst1.spec_3 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__3
  mov x8, x0
  str x8, [sp, #208]
  ldr x8, [sp, #208]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_130
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_131
.scalar_tag_tst1_130:
  lsr x9, x8, #1
.compare_tag_tst1_131:
  cmp x9, #0
  b.eq .case_ctor_tst1_133
  cmp x9, #1
  b.eq .case_ctor_tst1_134
  b .case_end_tst1_132
.case_ctor_tst1_133:
  // dec 1
  ldr x8, [sp, #208]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__39
  adrp x27, _l_tst1___closed__39@PAGE
  add x27, x27, _l_tst1___closed__39@PAGEOFF
  ldr w27, [x27]
  // call IO.println._at_.tst1.spec_4 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__4
  mov x8, x0
  str x8, [sp, #216]
  ldr x8, [sp, #216]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_135
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_136
.scalar_tag_tst1_135:
  lsr x9, x8, #1
.compare_tag_tst1_136:
  cmp x9, #0
  b.eq .case_ctor_tst1_138
  cmp x9, #1
  b.eq .case_ctor_tst1_139
  b .case_end_tst1_137
.case_ctor_tst1_138:
  // dec 1
  ldr x8, [sp, #216]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__42
  adrp x27, _l_tst1___closed__42@PAGE
  add x27, x27, _l_tst1___closed__42@PAGEOFF
  ldr w27, [x27]
  // call IO.println._at_.tst1.spec_4 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__4
  mov x8, x0
  str x8, [sp, #224]
  ldr x8, [sp, #224]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_140
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_141
.scalar_tag_tst1_140:
  lsr x9, x8, #1
.compare_tag_tst1_141:
  cmp x9, #0
  b.eq .case_ctor_tst1_143
  cmp x9, #1
  b.eq .case_ctor_tst1_144
  b .case_end_tst1_142
.case_ctor_tst1_143:
  // dec 1
  ldr x8, [sp, #224]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__43
  adrp x27, _l_tst1___closed__43@PAGE
  add x27, x27, _l_tst1___closed__43@PAGEOFF
  ldr w27, [x27]
  // call IO.println._at_.tst1.spec_4 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__4
  mov x8, x0
  str x8, [sp, #232]
  ldr x8, [sp, #232]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_145
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_146
.scalar_tag_tst1_145:
  lsr x9, x8, #1
.compare_tag_tst1_146:
  cmp x9, #0
  b.eq .case_ctor_tst1_148
  cmp x9, #1
  b.eq .case_ctor_tst1_149
  b .case_end_tst1_147
.case_ctor_tst1_148:
  // dec 1
  ldr x8, [sp, #232]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__44
  adrp x27, _l_tst1___closed__44@PAGE
  ldr x27, [x27, _l_tst1___closed__44@PAGEOFF]
  // call IO.println._at_.tst1.spec_5 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__5
  mov x8, x0
  str x8, [sp, #240]
  ldr x8, [sp, #240]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_150
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_151
.scalar_tag_tst1_150:
  lsr x9, x8, #1
.compare_tag_tst1_151:
  cmp x9, #0
  b.eq .case_ctor_tst1_153
  cmp x9, #1
  b.eq .case_ctor_tst1_154
  b .case_end_tst1_152
.case_ctor_tst1_153:
  // dec 1
  ldr x8, [sp, #240]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__47
  adrp x27, _l_tst1___closed__47@PAGE
  ldr x27, [x27, _l_tst1___closed__47@PAGEOFF]
  // call IO.println._at_.tst1.spec_5 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__5
  mov x8, x0
  str x8, [sp, #248]
  ldr x8, [sp, #248]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_155
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_156
.scalar_tag_tst1_155:
  lsr x9, x8, #1
.compare_tag_tst1_156:
  cmp x9, #0
  b.eq .case_ctor_tst1_158
  cmp x9, #1
  b.eq .case_ctor_tst1_159
  b .case_end_tst1_157
.case_ctor_tst1_158:
  // dec 1
  ldr x8, [sp, #248]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__48
  adrp x27, _l_tst1___closed__48@PAGE
  ldr x27, [x27, _l_tst1___closed__48@PAGEOFF]
  // call IO.println._at_.tst1.spec_5 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__5
  mov x8, x0
  str x8, [sp, #256]
  ldr x8, [sp, #256]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .scalar_tag_tst1_160
  ldrb w9, [x8, #7]
  b .compare_tag_tst1_161
.scalar_tag_tst1_160:
  lsr x9, x8, #1
.compare_tag_tst1_161:
  cmp x9, #0
  b.eq .case_ctor_tst1_163
  cmp x9, #1
  b.eq .case_ctor_tst1_164
  b .case_end_tst1_162
.case_ctor_tst1_163:
  // dec 1
  ldr x8, [sp, #256]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__49
  adrp x27, _l_tst1___closed__49@PAGE
  ldr x27, [x27, _l_tst1___closed__49@PAGEOFF]
  // call IO.println._at_.tst1.spec_6 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__6
  mov x25, x0
  // case
  // runtime scalar check
  tst x25, #1
  b.ne .scalar_tag_tst1_165
  ldrb w8, [x25, #7]
  b .compare_tag_tst1_166
.scalar_tag_tst1_165:
  lsr x8, x25, #1
.compare_tag_tst1_166:
  cmp x8, #0
  b.eq .case_ctor_tst1_168
  cmp x8, #1
  b.eq .case_ctor_tst1_169
  b .case_end_tst1_167
.case_ctor_tst1_168:
  // dec 1
  mov x0, x25
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__57
  adrp x27, _l_tst1___closed__57@PAGE
  add x27, x27, _l_tst1___closed__57@PAGEOFF
  ldrb w27, [x27]
  // call IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__1
  mov x24, x0
  // case
  // runtime scalar check
  tst x24, #1
  b.ne .scalar_tag_tst1_170
  ldrb w8, [x24, #7]
  b .compare_tag_tst1_171
.scalar_tag_tst1_170:
  lsr x8, x24, #1
.compare_tag_tst1_171:
  cmp x8, #0
  b.eq .case_ctor_tst1_173
  cmp x8, #1
  b.eq .case_ctor_tst1_174
  b .case_end_tst1_172
.case_ctor_tst1_173:
  // dec 1
  mov x0, x24
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__60
  adrp x27, _l_tst1___closed__60@PAGE
  add x27, x27, _l_tst1___closed__60@PAGEOFF
  ldrb w27, [x27]
  // call IO.println._at_.tst1.spec_1 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__1
  mov x28, x0
  // case
  // runtime scalar check
  tst x28, #1
  b.ne .scalar_tag_tst1_175
  ldrb w8, [x28, #7]
  b .compare_tag_tst1_176
.scalar_tag_tst1_175:
  lsr x8, x28, #1
.compare_tag_tst1_176:
  cmp x8, #0
  b.eq .case_ctor_tst1_178
  cmp x8, #1
  b.eq .case_ctor_tst1_179
  b .case_end_tst1_177
.case_ctor_tst1_178:
  // dec 1
  mov x0, x28
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__69
  adrp x27, _l_tst1___closed__69@PAGE
  ldr x27, [x27, _l_tst1___closed__69@PAGEOFF]
  // call IO.println._at_.tst1.spec_7 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__7
  mov x19, x0
  // case
  // runtime scalar check
  tst x19, #1
  b.ne .scalar_tag_tst1_180
  ldrb w8, [x19, #7]
  b .compare_tag_tst1_181
.scalar_tag_tst1_180:
  lsr x8, x19, #1
.compare_tag_tst1_181:
  cmp x8, #0
  b.eq .case_ctor_tst1_183
  cmp x8, #1
  b.eq .case_ctor_tst1_184
  b .case_end_tst1_182
.case_ctor_tst1_183:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__77
  adrp x27, _l_tst1___closed__77@PAGE
  ldr x27, [x27, _l_tst1___closed__77@PAGEOFF]
  // call IO.println._at_.tst1.spec_7 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__7
  mov x20, x0
  // case
  // runtime scalar check
  tst x20, #1
  b.ne .scalar_tag_tst1_185
  ldrb w8, [x20, #7]
  b .compare_tag_tst1_186
.scalar_tag_tst1_185:
  lsr x8, x20, #1
.compare_tag_tst1_186:
  cmp x8, #0
  b.eq .case_ctor_tst1_188
  cmp x8, #1
  b.eq .case_ctor_tst1_189
  b .case_end_tst1_187
.case_ctor_tst1_188:
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__87
  adrp x27, _l_tst1___closed__87@PAGE
  ldr x27, [x27, _l_tst1___closed__87@PAGEOFF]
  // call IO.println._at_.tst1.spec_7 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__7
  mov x21, x0
  // case
  // runtime scalar check
  tst x21, #1
  b.ne .scalar_tag_tst1_190
  ldrb w8, [x21, #7]
  b .compare_tag_tst1_191
.scalar_tag_tst1_190:
  lsr x8, x21, #1
.compare_tag_tst1_191:
  cmp x8, #0
  b.eq .case_ctor_tst1_193
  cmp x8, #1
  b.eq .case_ctor_tst1_194
  b .case_end_tst1_192
.case_ctor_tst1_193:
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__95
  adrp x27, _l_tst1___closed__95@PAGE
  ldr x27, [x27, _l_tst1___closed__95@PAGEOFF]
  // call IO.println._at_.tst1.spec_7 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__7
  mov x26, x0
  // case
  // runtime scalar check
  tst x26, #1
  b.ne .scalar_tag_tst1_195
  ldrb w8, [x26, #7]
  b .compare_tag_tst1_196
.scalar_tag_tst1_195:
  lsr x8, x26, #1
.compare_tag_tst1_196:
  cmp x8, #0
  b.eq .case_ctor_tst1_198
  cmp x8, #1
  b.eq .case_ctor_tst1_199
  b .case_end_tst1_197
.case_ctor_tst1_198:
  // dec 1
  mov x0, x26
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__104
  adrp x27, _l_tst1___closed__104@PAGE
  ldr x27, [x27, _l_tst1___closed__104@PAGEOFF]
  // call IO.println._at_.tst1.spec_7 with 1 runtime args
  mov x0, x27
  bl _l_IO_println___at___00tst1_spec__7
  mov x22, x0
  // case
  // runtime scalar check
  tst x22, #1
  b.ne .scalar_tag_tst1_200
  ldrb w8, [x22, #7]
  b .compare_tag_tst1_201
.scalar_tag_tst1_200:
  lsr x8, x22, #1
.compare_tag_tst1_201:
  cmp x8, #0
  b.eq .case_ctor_tst1_203
  cmp x8, #1
  b.eq .case_ctor_tst1_204
  b .case_end_tst1_202
.case_ctor_tst1_203:
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__105
  adrp x16, _l_tst1___closed__105@PAGE
  add x16, x16, _l_tst1___closed__105@PAGEOFF
  // call IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d9
  bl _l_IO_println___at___00tst1_spec__0
  mov x27, x0
  // case
  // runtime scalar check
  tst x27, #1
  b.ne .scalar_tag_tst1_205
  ldrb w8, [x27, #7]
  b .compare_tag_tst1_206
.scalar_tag_tst1_205:
  lsr x8, x27, #1
.compare_tag_tst1_206:
  cmp x8, #0
  b.eq .case_ctor_tst1_208
  cmp x8, #1
  b.eq .case_ctor_tst1_209
  b .case_end_tst1_207
.case_ctor_tst1_208:
  // dec 1
  mov x0, x27
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__107
  adrp x16, _l_tst1___closed__107@PAGE
  add x16, x16, _l_tst1___closed__107@PAGEOFF
  // general tail call to IO.println._at_.tst1.spec_0 with 1 runtime args
  fmov d0, d10
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_println___at___00tst1_spec__0
  b .case_end_tst1_207
.case_ctor_tst1_209:
  // return
  mov x0, x27
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_207
.case_end_tst1_207:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_202
.case_ctor_tst1_204:
  // return
  mov x0, x22
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_202
.case_end_tst1_202:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_197
.case_ctor_tst1_199:
  // return
  mov x0, x26
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_197
.case_end_tst1_197:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_192
.case_ctor_tst1_194:
  // return
  mov x0, x21
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_192
.case_end_tst1_192:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_187
.case_ctor_tst1_189:
  // return
  mov x0, x20
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_187
.case_end_tst1_187:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_182
.case_ctor_tst1_184:
  // return
  mov x0, x19
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_182
.case_end_tst1_182:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_177
.case_ctor_tst1_179:
  // return
  mov x0, x28
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_177
.case_end_tst1_177:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_172
.case_ctor_tst1_174:
  // return
  mov x0, x24
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_172
.case_end_tst1_172:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_167
.case_ctor_tst1_169:
  // return
  mov x0, x25
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_167
.case_end_tst1_167:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_162
.case_ctor_tst1_164:
  // return
  ldr x8, [sp, #256]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_162
.case_end_tst1_162:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_157
.case_ctor_tst1_159:
  // return
  ldr x9, [sp, #248]
  mov x0, x9
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_157
.case_end_tst1_157:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_152
.case_ctor_tst1_154:
  // return
  ldr x10, [sp, #240]
  mov x0, x10
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_152
.case_end_tst1_152:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_147
.case_ctor_tst1_149:
  // return
  ldr x8, [sp, #232]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_147
.case_end_tst1_147:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_142
.case_ctor_tst1_144:
  // return
  ldr x8, [sp, #224]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_142
.case_end_tst1_142:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_137
.case_ctor_tst1_139:
  // return
  ldr x8, [sp, #216]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_137
.case_end_tst1_137:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_132
.case_ctor_tst1_134:
  // return
  ldr x8, [sp, #208]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_132
.case_end_tst1_132:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_127
.case_ctor_tst1_129:
  // return
  ldr x8, [sp, #200]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_127
.case_end_tst1_127:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_122
.case_ctor_tst1_124:
  // return
  ldr x8, [sp, #192]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_122
.case_end_tst1_122:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_117
.case_ctor_tst1_119:
  // return
  ldr x8, [sp, #184]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_117
.case_end_tst1_117:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_112
.case_ctor_tst1_114:
  // return
  ldr x8, [sp, #176]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_112
.case_end_tst1_112:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_107
.case_ctor_tst1_109:
  // return
  ldr x8, [sp, #168]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_107
.case_end_tst1_107:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_102
.case_ctor_tst1_104:
  // return
  ldr x8, [sp, #160]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_102
.case_end_tst1_102:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_97
.case_ctor_tst1_99:
  // return
  ldr x8, [sp, #152]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_97
.case_end_tst1_97:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_92
.case_ctor_tst1_94:
  // return
  ldr x8, [sp, #144]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_92
.case_end_tst1_92:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_87
.case_ctor_tst1_89:
  // return
  ldr x8, [sp, #136]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_87
.case_end_tst1_87:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_82
.case_ctor_tst1_84:
  // return
  ldr x8, [sp, #128]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_82
.case_end_tst1_82:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_77
.case_ctor_tst1_79:
  // return
  ldr x8, [sp, #120]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_77
.case_end_tst1_77:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_72
.case_ctor_tst1_74:
  // return
  ldr x8, [sp, #112]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_72
.case_end_tst1_72:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_67
.case_ctor_tst1_69:
  // return
  ldr x8, [sp, #104]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_67
.case_end_tst1_67:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_62
.case_ctor_tst1_64:
  // return
  ldr x8, [sp, #96]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_62
.case_end_tst1_62:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_57
.case_ctor_tst1_59:
  // return
  ldr x8, [sp, #88]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_57
.case_end_tst1_57:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_52
.case_ctor_tst1_54:
  // return
  ldr x8, [sp, #80]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_52
.case_end_tst1_52:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_47
.case_ctor_tst1_49:
  // return
  ldr x8, [sp, #72]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_47
.case_end_tst1_47:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_42
.case_ctor_tst1_44:
  // return
  ldr x8, [sp, #64]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_42
.case_end_tst1_42:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_37
.case_ctor_tst1_39:
  // return
  ldr x8, [sp, #56]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_37
.case_end_tst1_37:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_32
.case_ctor_tst1_34:
  // return
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_32
.case_end_tst1_32:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_27
.case_ctor_tst1_29:
  // return
  ldr x8, [sp, #40]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_27
.case_end_tst1_27:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_22
.case_ctor_tst1_24:
  // return
  ldr x8, [sp, #32]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_22
.case_end_tst1_22:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_17
.case_ctor_tst1_19:
  // return
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_17
.case_end_tst1_17:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_12
.case_ctor_tst1_14:
  // return
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_12
.case_end_tst1_12:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_7
.case_ctor_tst1_9:
  // return
  ldr x8, [sp, #8]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_7
.case_end_tst1_7:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
  b .case_end_tst1_2
.case_ctor_tst1_4:
  // return
  ldr x8, [sp]
  mov x0, x8
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .case_end_tst1_2
.case_end_tst1_2:
  add sp, sp, #288
  ldp d14, d15, [sp], #16
  ldp d12, d13, [sp], #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret

  .globl __init_l_tst1___closed__107
  .align 2
__init_l_tst1___closed__107:
  // Function: tst1._closed_107
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 0/5, fp 1/4)
.Lfn_start_tst1__closed_107:
  // load global constant _l_tst1___closed__106
  adrp x16, _l_tst1___closed__106@PAGE
  add x16, x16, _l_tst1___closed__106@PAGEOFF
  // call Float.pow with 2 runtime args
  fmov d0, d8
  fmov d1, d8
  bl _pow
  fmov d9, d0
  // return
  fmov d0, d9
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__106
  .align 2
__init_l_tst1___closed__106:
  // Function: tst1._closed_106
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 2/5, fp 1/4)
.Lfn_start_tst1__closed_106:
  // lit nat 1
  movz x19, #3, lsl #0
  movz x20, #1, lsl #0
  // lit nat 22
  movz x21, #45, lsl #0
  // general tail call to Float.ofScientific with 3 runtime args
  mov x0, x21
  mov x1, x20
  mov x2, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_Float_ofScientific

  .globl __init_l_tst1___closed__105
  .align 2
__init_l_tst1___closed__105:
  // Function: tst1._closed_105
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_105:
  // load global constant _l_tst1___closed__28
  adrp x16, _l_tst1___closed__28@PAGE
  add x16, x16, _l_tst1___closed__28@PAGEOFF
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // call Float.pow with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _pow
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__104
  .align 2
__init_l_tst1___closed__104:
  // Function: tst1._closed_104
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_104:
  // load global constant _l_tst1___closed__103
  adrp x19, _l_tst1___closed__103@PAGE
  ldr x19, [x19, _l_tst1___closed__103@PAGEOFF]
  // load global constant _l_tst1___closed__104___boxed__const__1
  adrp x20, _l_tst1___closed__104___boxed__const__1@PAGE
  ldr x20, [x20, _l_tst1___closed__104___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__104___boxed__const__1
  .align 2
__init_l_tst1___closed__104___boxed__const__1:
  // Function: tst1._closed_104._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_104__boxed_const_1:
  // load global constant _l_tst1___closed__96
  adrp x16, _l_tst1___closed__96@PAGE
  add x16, x16, _l_tst1___closed__96@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__103
  .align 2
__init_l_tst1___closed__103:
  // Function: tst1._closed_103
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_103:
  // load global constant _l_tst1___closed__102
  adrp x19, _l_tst1___closed__102@PAGE
  ldr x19, [x19, _l_tst1___closed__102@PAGEOFF]
  // load global constant _l_tst1___closed__97
  adrp x20, _l_tst1___closed__97@PAGE
  add x20, x20, _l_tst1___closed__97@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__102
  .align 2
__init_l_tst1___closed__102:
  // Function: tst1._closed_102
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_102:
  // load global constant _l_tst1___closed__101
  adrp x19, _l_tst1___closed__101@PAGE
  ldr x19, [x19, _l_tst1___closed__101@PAGEOFF]
  // load global constant _l_tst1___closed__98
  adrp x20, _l_tst1___closed__98@PAGE
  add x20, x20, _l_tst1___closed__98@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__101
  .align 2
__init_l_tst1___closed__101:
  // Function: tst1._closed_101
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_101:
  // load global constant _l_tst1___closed__100
  adrp x19, _l_tst1___closed__100@PAGE
  ldr x19, [x19, _l_tst1___closed__100@PAGEOFF]
  // load global constant _l_tst1___closed__99
  adrp x20, _l_tst1___closed__99@PAGE
  add x20, x20, _l_tst1___closed__99@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__100
  .align 2
__init_l_tst1___closed__100:
  // Function: tst1._closed_100
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_100:
  // load global constant _l_tst1___closed__96
  adrp x16, _l_tst1___closed__96@PAGE
  add x16, x16, _l_tst1___closed__96@PAGEOFF
  // call Float.frExp with 1 runtime args
  fmov d0, d8
  bl _lean_float_frexp
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__99
  .align 2
__init_l_tst1___closed__99:
  // Function: tst1._closed_99
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_99:
  // load global constant _l_tst1___closed__96
  adrp x16, _l_tst1___closed__96@PAGE
  add x16, x16, _l_tst1___closed__96@PAGEOFF
  // call Float.isFinite with 1 runtime args
  fmov d0, d8
  bl _lean_float_isfinite
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__98
  .align 2
__init_l_tst1___closed__98:
  // Function: tst1._closed_98
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_98:
  // load global constant _l_tst1___closed__96
  adrp x16, _l_tst1___closed__96@PAGE
  add x16, x16, _l_tst1___closed__96@PAGEOFF
  // call Float.isInf with 1 runtime args
  fmov d0, d8
  bl _lean_float_isinf
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__97
  .align 2
__init_l_tst1___closed__97:
  // Function: tst1._closed_97
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_97:
  // load global constant _l_tst1___closed__96
  adrp x16, _l_tst1___closed__96@PAGE
  add x16, x16, _l_tst1___closed__96@PAGEOFF
  // call Float.isNaN with 1 runtime args
  fmov d0, d8
  bl _lean_float_isnan
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__96
  .align 2
__init_l_tst1___closed__96:
  // Function: tst1._closed_96
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_96:
  // load global constant _l_tst1___closed__21
  adrp x16, _l_tst1___closed__21@PAGE
  add x16, x16, _l_tst1___closed__21@PAGEOFF
  // load global constant _l_tst1___closed__28
  adrp x16, _l_tst1___closed__28@PAGE
  add x16, x16, _l_tst1___closed__28@PAGEOFF
  // call Float.div with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_div
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__95
  .align 2
__init_l_tst1___closed__95:
  // Function: tst1._closed_95
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_95:
  // load global constant _l_tst1___closed__94
  adrp x19, _l_tst1___closed__94@PAGE
  ldr x19, [x19, _l_tst1___closed__94@PAGEOFF]
  // load global constant _l_tst1___closed__95___boxed__const__1
  adrp x20, _l_tst1___closed__95___boxed__const__1@PAGE
  ldr x20, [x20, _l_tst1___closed__95___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__95___boxed__const__1
  .align 2
__init_l_tst1___closed__95___boxed__const__1:
  // Function: tst1._closed_95._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_95__boxed_const_1:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__94
  .align 2
__init_l_tst1___closed__94:
  // Function: tst1._closed_94
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_94:
  // load global constant _l_tst1___closed__93
  adrp x19, _l_tst1___closed__93@PAGE
  ldr x19, [x19, _l_tst1___closed__93@PAGEOFF]
  // load global constant _l_tst1___closed__88
  adrp x20, _l_tst1___closed__88@PAGE
  add x20, x20, _l_tst1___closed__88@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__93
  .align 2
__init_l_tst1___closed__93:
  // Function: tst1._closed_93
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_93:
  // load global constant _l_tst1___closed__92
  adrp x19, _l_tst1___closed__92@PAGE
  ldr x19, [x19, _l_tst1___closed__92@PAGEOFF]
  // load global constant _l_tst1___closed__89
  adrp x20, _l_tst1___closed__89@PAGE
  add x20, x20, _l_tst1___closed__89@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__92
  .align 2
__init_l_tst1___closed__92:
  // Function: tst1._closed_92
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_92:
  // load global constant _l_tst1___closed__91
  adrp x19, _l_tst1___closed__91@PAGE
  ldr x19, [x19, _l_tst1___closed__91@PAGEOFF]
  // load global constant _l_tst1___closed__90
  adrp x20, _l_tst1___closed__90@PAGE
  add x20, x20, _l_tst1___closed__90@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__91
  .align 2
__init_l_tst1___closed__91:
  // Function: tst1._closed_91
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_91:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // call Float.frExp with 1 runtime args
  fmov d0, d8
  bl _lean_float_frexp
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__90
  .align 2
__init_l_tst1___closed__90:
  // Function: tst1._closed_90
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_90:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // call Float.isFinite with 1 runtime args
  fmov d0, d8
  bl _lean_float_isfinite
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__89
  .align 2
__init_l_tst1___closed__89:
  // Function: tst1._closed_89
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_89:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // call Float.isInf with 1 runtime args
  fmov d0, d8
  bl _lean_float_isinf
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__88
  .align 2
__init_l_tst1___closed__88:
  // Function: tst1._closed_88
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_88:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // call Float.isNaN with 1 runtime args
  fmov d0, d8
  bl _lean_float_isnan
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__87
  .align 2
__init_l_tst1___closed__87:
  // Function: tst1._closed_87
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_87:
  // load global constant _l_tst1___closed__86
  adrp x19, _l_tst1___closed__86@PAGE
  ldr x19, [x19, _l_tst1___closed__86@PAGEOFF]
  // load global constant _l_tst1___closed__87___boxed__const__1
  adrp x20, _l_tst1___closed__87___boxed__const__1@PAGE
  ldr x20, [x20, _l_tst1___closed__87___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__87___boxed__const__1
  .align 2
__init_l_tst1___closed__87___boxed__const__1:
  // Function: tst1._closed_87._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_87__boxed_const_1:
  // load global constant _l_tst1___closed__79
  adrp x16, _l_tst1___closed__79@PAGE
  add x16, x16, _l_tst1___closed__79@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__86
  .align 2
__init_l_tst1___closed__86:
  // Function: tst1._closed_86
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_86:
  // load global constant _l_tst1___closed__85
  adrp x19, _l_tst1___closed__85@PAGE
  ldr x19, [x19, _l_tst1___closed__85@PAGEOFF]
  // load global constant _l_tst1___closed__80
  adrp x20, _l_tst1___closed__80@PAGE
  add x20, x20, _l_tst1___closed__80@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__85
  .align 2
__init_l_tst1___closed__85:
  // Function: tst1._closed_85
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_85:
  // load global constant _l_tst1___closed__84
  adrp x19, _l_tst1___closed__84@PAGE
  ldr x19, [x19, _l_tst1___closed__84@PAGEOFF]
  // load global constant _l_tst1___closed__81
  adrp x20, _l_tst1___closed__81@PAGE
  add x20, x20, _l_tst1___closed__81@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__84
  .align 2
__init_l_tst1___closed__84:
  // Function: tst1._closed_84
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_84:
  // load global constant _l_tst1___closed__83
  adrp x19, _l_tst1___closed__83@PAGE
  ldr x19, [x19, _l_tst1___closed__83@PAGEOFF]
  // load global constant _l_tst1___closed__82
  adrp x20, _l_tst1___closed__82@PAGE
  add x20, x20, _l_tst1___closed__82@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__83
  .align 2
__init_l_tst1___closed__83:
  // Function: tst1._closed_83
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_83:
  // load global constant _l_tst1___closed__79
  adrp x16, _l_tst1___closed__79@PAGE
  add x16, x16, _l_tst1___closed__79@PAGEOFF
  // call Float.frExp with 1 runtime args
  fmov d0, d8
  bl _lean_float_frexp
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__82
  .align 2
__init_l_tst1___closed__82:
  // Function: tst1._closed_82
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_82:
  // load global constant _l_tst1___closed__79
  adrp x16, _l_tst1___closed__79@PAGE
  add x16, x16, _l_tst1___closed__79@PAGEOFF
  // call Float.isFinite with 1 runtime args
  fmov d0, d8
  bl _lean_float_isfinite
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__81
  .align 2
__init_l_tst1___closed__81:
  // Function: tst1._closed_81
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_81:
  // load global constant _l_tst1___closed__79
  adrp x16, _l_tst1___closed__79@PAGE
  add x16, x16, _l_tst1___closed__79@PAGEOFF
  // call Float.isInf with 1 runtime args
  fmov d0, d8
  bl _lean_float_isinf
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__80
  .align 2
__init_l_tst1___closed__80:
  // Function: tst1._closed_80
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_80:
  // load global constant _l_tst1___closed__79
  adrp x16, _l_tst1___closed__79@PAGE
  add x16, x16, _l_tst1___closed__79@PAGEOFF
  // call Float.isNaN with 1 runtime args
  fmov d0, d8
  bl _lean_float_isnan
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__79
  .align 2
__init_l_tst1___closed__79:
  // Function: tst1._closed_79
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_79:
  // load global constant _l_tst1___closed__21
  adrp x16, _l_tst1___closed__21@PAGE
  add x16, x16, _l_tst1___closed__21@PAGEOFF
  // load global constant _l_tst1___closed__78
  adrp x16, _l_tst1___closed__78@PAGE
  add x16, x16, _l_tst1___closed__78@PAGEOFF
  // call Float.div with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_div
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__78
  .align 2
__init_l_tst1___closed__78:
  // Function: tst1._closed_78
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 0/5, fp 1/4)
.Lfn_start_tst1__closed_78:
  // load global constant _l_tst1___closed__21
  adrp x16, _l_tst1___closed__21@PAGE
  add x16, x16, _l_tst1___closed__21@PAGEOFF
  // call Float.neg with 1 runtime args
  fmov d0, d8
  bl _lean_float_negate
  fmov d9, d0
  // return
  fmov d0, d9
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__77
  .align 2
__init_l_tst1___closed__77:
  // Function: tst1._closed_77
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_77:
  // load global constant _l_tst1___closed__76
  adrp x19, _l_tst1___closed__76@PAGE
  ldr x19, [x19, _l_tst1___closed__76@PAGEOFF]
  // load global constant _l_tst1___closed__77___boxed__const__1
  adrp x20, _l_tst1___closed__77___boxed__const__1@PAGE
  ldr x20, [x20, _l_tst1___closed__77___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__77___boxed__const__1
  .align 2
__init_l_tst1___closed__77___boxed__const__1:
  // Function: tst1._closed_77._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_77__boxed_const_1:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__76
  .align 2
__init_l_tst1___closed__76:
  // Function: tst1._closed_76
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_76:
  // load global constant _l_tst1___closed__75
  adrp x19, _l_tst1___closed__75@PAGE
  ldr x19, [x19, _l_tst1___closed__75@PAGEOFF]
  // load global constant _l_tst1___closed__70
  adrp x20, _l_tst1___closed__70@PAGE
  add x20, x20, _l_tst1___closed__70@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__75
  .align 2
__init_l_tst1___closed__75:
  // Function: tst1._closed_75
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_75:
  // load global constant _l_tst1___closed__74
  adrp x19, _l_tst1___closed__74@PAGE
  ldr x19, [x19, _l_tst1___closed__74@PAGEOFF]
  // load global constant _l_tst1___closed__71
  adrp x20, _l_tst1___closed__71@PAGE
  add x20, x20, _l_tst1___closed__71@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__74
  .align 2
__init_l_tst1___closed__74:
  // Function: tst1._closed_74
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_74:
  // load global constant _l_tst1___closed__73
  adrp x19, _l_tst1___closed__73@PAGE
  ldr x19, [x19, _l_tst1___closed__73@PAGEOFF]
  // load global constant _l_tst1___closed__72
  adrp x20, _l_tst1___closed__72@PAGE
  add x20, x20, _l_tst1___closed__72@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__73
  .align 2
__init_l_tst1___closed__73:
  // Function: tst1._closed_73
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_73:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // call Float.frExp with 1 runtime args
  fmov d0, d8
  bl _lean_float_frexp
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__72
  .align 2
__init_l_tst1___closed__72:
  // Function: tst1._closed_72
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_72:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // call Float.isFinite with 1 runtime args
  fmov d0, d8
  bl _lean_float_isfinite
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__71
  .align 2
__init_l_tst1___closed__71:
  // Function: tst1._closed_71
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_71:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // call Float.isInf with 1 runtime args
  fmov d0, d8
  bl _lean_float_isinf
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__70
  .align 2
__init_l_tst1___closed__70:
  // Function: tst1._closed_70
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_70:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // call Float.isNaN with 1 runtime args
  fmov d0, d8
  bl _lean_float_isnan
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__69
  .align 2
__init_l_tst1___closed__69:
  // Function: tst1._closed_69
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_69:
  // load global constant _l_tst1___closed__68
  adrp x19, _l_tst1___closed__68@PAGE
  ldr x19, [x19, _l_tst1___closed__68@PAGEOFF]
  // load global constant _l_tst1___closed__69___boxed__const__1
  adrp x20, _l_tst1___closed__69___boxed__const__1@PAGE
  ldr x20, [x20, _l_tst1___closed__69___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__69___boxed__const__1
  .align 2
__init_l_tst1___closed__69___boxed__const__1:
  // Function: tst1._closed_69._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_69__boxed_const_1:
  // load global constant _l_tst1___closed__61
  adrp x16, _l_tst1___closed__61@PAGE
  add x16, x16, _l_tst1___closed__61@PAGEOFF
  // box
  fmov d0, d8
  bl _lean_box_float
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__68
  .align 2
__init_l_tst1___closed__68:
  // Function: tst1._closed_68
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_68:
  // load global constant _l_tst1___closed__67
  adrp x19, _l_tst1___closed__67@PAGE
  ldr x19, [x19, _l_tst1___closed__67@PAGEOFF]
  // load global constant _l_tst1___closed__62
  adrp x20, _l_tst1___closed__62@PAGE
  add x20, x20, _l_tst1___closed__62@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__67
  .align 2
__init_l_tst1___closed__67:
  // Function: tst1._closed_67
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_67:
  // load global constant _l_tst1___closed__66
  adrp x19, _l_tst1___closed__66@PAGE
  ldr x19, [x19, _l_tst1___closed__66@PAGEOFF]
  // load global constant _l_tst1___closed__63
  adrp x20, _l_tst1___closed__63@PAGE
  add x20, x20, _l_tst1___closed__63@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__66
  .align 2
__init_l_tst1___closed__66:
  // Function: tst1._closed_66
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_66:
  // load global constant _l_tst1___closed__65
  adrp x19, _l_tst1___closed__65@PAGE
  ldr x19, [x19, _l_tst1___closed__65@PAGEOFF]
  // load global constant _l_tst1___closed__64
  adrp x20, _l_tst1___closed__64@PAGE
  add x20, x20, _l_tst1___closed__64@PAGEOFF
  ldrb w20, [x20]
  // box
  lsl x21, x20, #1
  orr x21, x21, #1
  // ctor Prod.mk (tag=0, objs=2, usize=0, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x22, x0
  str x21, [x22, #8]
  str x19, [x22, #16]
  // return
  mov x0, x22
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__65
  .align 2
__init_l_tst1___closed__65:
  // Function: tst1._closed_65
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_65:
  // load global constant _l_tst1___closed__61
  adrp x16, _l_tst1___closed__61@PAGE
  add x16, x16, _l_tst1___closed__61@PAGEOFF
  // call Float.frExp with 1 runtime args
  fmov d0, d8
  bl _lean_float_frexp
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__64
  .align 2
__init_l_tst1___closed__64:
  // Function: tst1._closed_64
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_64:
  // load global constant _l_tst1___closed__61
  adrp x16, _l_tst1___closed__61@PAGE
  add x16, x16, _l_tst1___closed__61@PAGEOFF
  // call Float.isFinite with 1 runtime args
  fmov d0, d8
  bl _lean_float_isfinite
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__63
  .align 2
__init_l_tst1___closed__63:
  // Function: tst1._closed_63
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_63:
  // load global constant _l_tst1___closed__61
  adrp x16, _l_tst1___closed__61@PAGE
  add x16, x16, _l_tst1___closed__61@PAGEOFF
  // call Float.isInf with 1 runtime args
  fmov d0, d8
  bl _lean_float_isinf
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__62
  .align 2
__init_l_tst1___closed__62:
  // Function: tst1._closed_62
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_62:
  // load global constant _l_tst1___closed__61
  adrp x16, _l_tst1___closed__61@PAGE
  add x16, x16, _l_tst1___closed__61@PAGEOFF
  // call Float.isNaN with 1 runtime args
  fmov d0, d8
  bl _lean_float_isnan
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__61
  .align 2
__init_l_tst1___closed__61:
  // Function: tst1._closed_61
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 2/5, fp 1/4)
.Lfn_start_tst1__closed_61:
  // lit nat 1
  movz x19, #3, lsl #0
  movz x20, #1, lsl #0
  // lit nat 14
  movz x21, #29, lsl #0
  // general tail call to Float.ofScientific with 3 runtime args
  mov x0, x21
  mov x1, x20
  mov x2, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_Float_ofScientific

  .globl __init_l_tst1___closed__60
  .align 2
__init_l_tst1___closed__60:
  // Function: tst1._closed_60
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_60:
  // load global constant _l_tst1___closed__56
  adrp x19, _l_tst1___closed__56@PAGE
  ldr x19, [x19, _l_tst1___closed__56@PAGEOFF]
  // load global constant _l_tst1___closed__59
  adrp x20, _l_tst1___closed__59@PAGE
  ldr x20, [x20, _l_tst1___closed__59@PAGEOFF]
  // call Nat.decEq with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_nat_dec_eq
  and x21, x0, #255
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__59
  .align 2
__init_l_tst1___closed__59:
  // Function: tst1._closed_59
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_tst1__closed_59:
  // load global constant _l_tst1___closed__58
  adrp x19, _l_tst1___closed__58@PAGE
  ldr x19, [x19, _l_tst1___closed__58@PAGEOFF]
  // call USize.toNat with 1 runtime args
  mov x0, x19
  bl _lean_usize_to_nat
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__58
  .align 2
__init_l_tst1___closed__58:
  // Function: tst1._closed_58
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_58:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // call Float.toUSize with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_usize
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__57
  .align 2
__init_l_tst1___closed__57:
  // Function: tst1._closed_57
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_57:
  // load global constant _l_tst1___closed__56
  adrp x19, _l_tst1___closed__56@PAGE
  ldr x19, [x19, _l_tst1___closed__56@PAGEOFF]
  // load global constant _l_tst1___closed__55
  adrp x20, _l_tst1___closed__55@PAGE
  ldr x20, [x20, _l_tst1___closed__55@PAGEOFF]
  // call Nat.decEq with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_nat_dec_eq
  and x21, x0, #255
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__56
  .align 2
__init_l_tst1___closed__56:
  // Function: tst1._closed_56
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_56:
  // lit nat 1
  movz x19, #3, lsl #0
  // load global constant _l_tst1___closed__50
  adrp x20, _l_tst1___closed__50@PAGE
  ldr x20, [x20, _l_tst1___closed__50@PAGEOFF]
  // call Nat.sub with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_nat_sub
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__55
  .align 2
__init_l_tst1___closed__55:
  // Function: tst1._closed_55
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_tst1__closed_55:
  // load global constant _l_tst1___closed__54
  adrp x19, _l_tst1___closed__54@PAGE
  ldr x19, [x19, _l_tst1___closed__54@PAGEOFF]
  // call USize.toNat with 1 runtime args
  mov x0, x19
  bl _lean_usize_to_nat
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__54
  .align 2
__init_l_tst1___closed__54:
  // Function: tst1._closed_54
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_54:
  // load global constant _l_tst1___closed__53
  adrp x16, _l_tst1___closed__53@PAGE
  add x16, x16, _l_tst1___closed__53@PAGEOFF
  // call Float.toUSize with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_usize
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__53
  .align 2
__init_l_tst1___closed__53:
  // Function: tst1._closed_53
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_53:
  // load global constant _l_tst1___closed__52
  adrp x16, _l_tst1___closed__52@PAGE
  add x16, x16, _l_tst1___closed__52@PAGEOFF
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // call Float.pow with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _pow
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__52
  .align 2
__init_l_tst1___closed__52:
  // Function: tst1._closed_52
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_52:
  // load global constant _l_tst1___closed__51
  adrp x19, _l_tst1___closed__51@PAGE
  ldr x19, [x19, _l_tst1___closed__51@PAGEOFF]
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_tst1___closed__51
  .align 2
__init_l_tst1___closed__51:
  // Function: tst1._closed_51
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_tst1__closed_51:
  // load global constant _l_tst1___closed__50
  adrp x19, _l_tst1___closed__50@PAGE
  ldr x19, [x19, _l_tst1___closed__50@PAGEOFF]
  // call Nat.log2 with 1 runtime args
  mov x0, x19
  bl _lean_nat_log2
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__50
  .align 2
__init_l_tst1___closed__50:
  // Function: tst1._closed_50
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_tst1__closed_50:
  // load global constant _l_System_Platform_numBits
  adrp x19, _l_System_Platform_numBits@PAGE
  ldr x19, [x19, _l_System_Platform_numBits@PAGEOFF]
  // lit nat 2
  movz x20, #5, lsl #0
  // call Nat.pow with 2 runtime args
  mov x0, x20
  mov x1, x19
  bl _lean_nat_pow
  mov x21, x0
  // return
  mov x0, x21
  add sp, sp, #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__49
  .align 2
__init_l_tst1___closed__49:
  // Function: tst1._closed_49
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_49:
  // load global constant _l_tst1___closed__28
  adrp x16, _l_tst1___closed__28@PAGE
  add x16, x16, _l_tst1___closed__28@PAGEOFF
  // call Float.toUSize with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_usize
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__48
  .align 2
__init_l_tst1___closed__48:
  // Function: tst1._closed_48
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_48:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // call Float.toUInt64 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint64
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__47
  .align 2
__init_l_tst1___closed__47:
  // Function: tst1._closed_47
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_47:
  // load global constant _l_tst1___closed__46
  adrp x16, _l_tst1___closed__46@PAGE
  add x16, x16, _l_tst1___closed__46@PAGEOFF
  // call Float.toUInt64 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint64
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__46
  .align 2
__init_l_tst1___closed__46:
  // Function: tst1._closed_46
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_46:
  // load global constant _l_tst1___closed__45
  adrp x16, _l_tst1___closed__45@PAGE
  add x16, x16, _l_tst1___closed__45@PAGEOFF
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // call Float.pow with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _pow
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__45
  .align 2
__init_l_tst1___closed__45:
  // Function: tst1._closed_45
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_45:
  // lit nat 64
  movz x19, #129, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_tst1___closed__44
  .align 2
__init_l_tst1___closed__44:
  // Function: tst1._closed_44
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_44:
  // load global constant _l_tst1___closed__28
  adrp x16, _l_tst1___closed__28@PAGE
  add x16, x16, _l_tst1___closed__28@PAGEOFF
  // call Float.toUInt64 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint64
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__43
  .align 2
__init_l_tst1___closed__43:
  // Function: tst1._closed_43
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_43:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // call Float.toUInt32 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint32
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__42
  .align 2
__init_l_tst1___closed__42:
  // Function: tst1._closed_42
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_42:
  // load global constant _l_tst1___closed__41
  adrp x16, _l_tst1___closed__41@PAGE
  add x16, x16, _l_tst1___closed__41@PAGEOFF
  // call Float.toUInt32 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint32
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__41
  .align 2
__init_l_tst1___closed__41:
  // Function: tst1._closed_41
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_41:
  // load global constant _l_tst1___closed__40
  adrp x16, _l_tst1___closed__40@PAGE
  add x16, x16, _l_tst1___closed__40@PAGEOFF
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // call Float.pow with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _pow
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__40
  .align 2
__init_l_tst1___closed__40:
  // Function: tst1._closed_40
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_40:
  // lit nat 32
  movz x19, #65, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_tst1___closed__39
  .align 2
__init_l_tst1___closed__39:
  // Function: tst1._closed_39
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_39:
  // load global constant _l_tst1___closed__28
  adrp x16, _l_tst1___closed__28@PAGE
  add x16, x16, _l_tst1___closed__28@PAGEOFF
  // call Float.toUInt32 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint32
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__38
  .align 2
__init_l_tst1___closed__38:
  // Function: tst1._closed_38
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_38:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // call Float.toUInt16 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint16
  and x19, x0, #65535
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__37
  .align 2
__init_l_tst1___closed__37:
  // Function: tst1._closed_37
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_37:
  // load global constant _l_tst1___closed__36
  adrp x16, _l_tst1___closed__36@PAGE
  add x16, x16, _l_tst1___closed__36@PAGEOFF
  // call Float.toUInt16 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint16
  and x19, x0, #65535
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__36
  .align 2
__init_l_tst1___closed__36:
  // Function: tst1._closed_36
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_36:
  // load global constant _l_tst1___closed__35
  adrp x16, _l_tst1___closed__35@PAGE
  add x16, x16, _l_tst1___closed__35@PAGEOFF
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // call Float.pow with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _pow
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__35
  .align 2
__init_l_tst1___closed__35:
  // Function: tst1._closed_35
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_35:
  // lit nat 16
  movz x19, #33, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_tst1___closed__34
  .align 2
__init_l_tst1___closed__34:
  // Function: tst1._closed_34
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_34:
  // load global constant _l_tst1___closed__28
  adrp x16, _l_tst1___closed__28@PAGE
  add x16, x16, _l_tst1___closed__28@PAGEOFF
  // call Float.toUInt16 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint16
  and x19, x0, #65535
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__33
  .align 2
__init_l_tst1___closed__33:
  // Function: tst1._closed_33
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_33:
  // load global constant _l_tst1___closed__32
  adrp x16, _l_tst1___closed__32@PAGE
  add x16, x16, _l_tst1___closed__32@PAGEOFF
  // call Float.toUInt8 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint8
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__32
  .align 2
__init_l_tst1___closed__32:
  // Function: tst1._closed_32
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_32:
  // load global constant _l_tst1___closed__21
  adrp x16, _l_tst1___closed__21@PAGE
  add x16, x16, _l_tst1___closed__21@PAGEOFF
  // load global constant _l_tst1___closed__0
  adrp x16, _l_tst1___closed__0@PAGE
  add x16, x16, _l_tst1___closed__0@PAGEOFF
  // call Float.div with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_div
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__31
  .align 2
__init_l_tst1___closed__31:
  // Function: tst1._closed_31
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_31:
  // load global constant _l_tst1___closed__30
  adrp x16, _l_tst1___closed__30@PAGE
  add x16, x16, _l_tst1___closed__30@PAGEOFF
  // call Float.toUInt8 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint8
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__30
  .align 2
__init_l_tst1___closed__30:
  // Function: tst1._closed_30
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_30:
  // lit nat 256
  movz x19, #513, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_tst1___closed__29
  .align 2
__init_l_tst1___closed__29:
  // Function: tst1._closed_29
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_29:
  // load global constant _l_tst1___closed__28
  adrp x16, _l_tst1___closed__28@PAGE
  add x16, x16, _l_tst1___closed__28@PAGEOFF
  // call Float.toUInt8 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint8
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__28
  .align 2
__init_l_tst1___closed__28:
  // Function: tst1._closed_28
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 0/5, fp 1/4)
.Lfn_start_tst1__closed_28:
  // load global constant _l_tst1___closed__0
  adrp x16, _l_tst1___closed__0@PAGE
  add x16, x16, _l_tst1___closed__0@PAGEOFF
  // call Float.neg with 1 runtime args
  fmov d0, d8
  bl _lean_float_negate
  fmov d9, d0
  // return
  fmov d0, d9
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__27
  .align 2
__init_l_tst1___closed__27:
  // Function: tst1._closed_27
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_27:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // call Float.toUSize with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_usize
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__26
  .align 2
__init_l_tst1___closed__26:
  // Function: tst1._closed_26
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_26:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // call Float.toUInt64 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint64
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__25
  .align 2
__init_l_tst1___closed__25:
  // Function: tst1._closed_25
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_25:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // call Float.toUInt32 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint32
  mov x19, x0
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__24
  .align 2
__init_l_tst1___closed__24:
  // Function: tst1._closed_24
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_24:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // call Float.toUInt16 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint16
  and x19, x0, #65535
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__23
  .align 2
__init_l_tst1___closed__23:
  // Function: tst1._closed_23
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_23:
  // load global constant _l_tst1___closed__22
  adrp x16, _l_tst1___closed__22@PAGE
  add x16, x16, _l_tst1___closed__22@PAGEOFF
  // call Float.toUInt8 with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_uint8
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__22
  .align 2
__init_l_tst1___closed__22:
  // Function: tst1._closed_22
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 0/5, fp 1/4)
.Lfn_start_tst1__closed_22:
  // load global constant _l_tst1___closed__21
  adrp x16, _l_tst1___closed__21@PAGE
  add x16, x16, _l_tst1___closed__21@PAGEOFF
  // call Float.div with 2 runtime args
  fmov d0, d8
  fmov d1, d8
  bl _lean_float_div
  fmov d9, d0
  // return
  fmov d0, d9
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__21
  .align 2
__init_l_tst1___closed__21:
  // Function: tst1._closed_21
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_21:
  // lit nat 0
  movz x19, #1, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_tst1___closed__20
  .align 2
__init_l_tst1___closed__20:
  // Function: tst1._closed_20
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_20:
  movz x19, #0, lsl #0
  // call UInt64.toFloat with 1 runtime args
  mov x0, x19
  bl _lean_uint64_to_float
  fmov d8, d0
  // return
  fmov d0, d8
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__19
  .align 2
__init_l_tst1___closed__19:
  // Function: tst1._closed_19
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_19:
  // load global constant _l_tst1___closed__18
  adrp x19, _l_tst1___closed__18@PAGE
  ldr x19, [x19, _l_tst1___closed__18@PAGEOFF]
  // call Float.ofInt with 1 runtime args
  mov x0, x19
  bl _l_Float_ofInt
  fmov d8, d0
  // return
  fmov d0, d8
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__18
  .align 2
__init_l_tst1___closed__18:
  // Function: tst1._closed_18
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_tst1__closed_18:
  // load global constant _l_tst1___closed__16
  adrp x19, _l_tst1___closed__16@PAGE
  ldr x19, [x19, _l_tst1___closed__16@PAGEOFF]
  // call Int.neg with 1 runtime args
  mov x0, x19
  bl _lean_int_neg
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__17
  .align 2
__init_l_tst1___closed__17:
  // Function: tst1._closed_17
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_17:
  // load global constant _l_tst1___closed__16
  adrp x19, _l_tst1___closed__16@PAGE
  ldr x19, [x19, _l_tst1___closed__16@PAGEOFF]
  // call Float.ofInt with 1 runtime args
  mov x0, x19
  bl _l_Float_ofInt
  fmov d8, d0
  // return
  fmov d0, d8
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__16
  .align 2
__init_l_tst1___closed__16:
  // Function: tst1._closed_16
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_tst1__closed_16:
  // lit nat 42
  movz x19, #85, lsl #0
  // call Int.ofNat with 1 runtime args
  mov x0, x19
  bl _lean_nat_to_int
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__15
  .align 2
__init_l_tst1___closed__15:
  // Function: tst1._closed_15
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_15:
  // load global constant _l_IO_println___at___00tst1_spec__7___closed__3
  adrp x19, _l_IO_println___at___00tst1_spec__7___closed__3@PAGE
  ldr x19, [x19, _l_IO_println___at___00tst1_spec__7___closed__3@PAGEOFF]
  // call Float.ofInt with 1 runtime args
  mov x0, x19
  bl _l_Float_ofInt
  fmov d8, d0
  // return
  fmov d0, d8
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__14
  .align 2
__init_l_tst1___closed__14:
  // Function: tst1._closed_14
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_14:
  // load global constant _l_tst1___closed__8
  adrp x16, _l_tst1___closed__8@PAGE
  add x16, x16, _l_tst1___closed__8@PAGEOFF
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.decLe with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_decLe
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__13
  .align 2
__init_l_tst1___closed__13:
  // Function: tst1._closed_13
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_13:
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.decLe with 2 runtime args
  fmov d0, d8
  fmov d1, d8
  bl _lean_float_decLe
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__12
  .align 2
__init_l_tst1___closed__12:
  // Function: tst1._closed_12
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_12:
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.decLe with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_decLe
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__11
  .align 2
__init_l_tst1___closed__11:
  // Function: tst1._closed_11
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_11:
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // call Float.beq with 2 runtime args
  fmov d0, d8
  fmov d1, d8
  bl _lean_float_beq
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__10
  .align 2
__init_l_tst1___closed__10:
  // Function: tst1._closed_10
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_10:
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.beq with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_beq
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__9
  .align 2
__init_l_tst1___closed__9:
  // Function: tst1._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_9:
  // load global constant _l_tst1___closed__8
  adrp x16, _l_tst1___closed__8@PAGE
  add x16, x16, _l_tst1___closed__8@PAGEOFF
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.decLt with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_decLt
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__8
  .align 2
__init_l_tst1___closed__8:
  // Function: tst1._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_8:
  // lit nat 4
  movz x19, #9, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_tst1___closed__7
  .align 2
__init_l_tst1___closed__7:
  // Function: tst1._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_7:
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.decLt with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_decLt
  and x19, x0, #255
  // return
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__6
  .align 2
__init_l_tst1___closed__6:
  // Function: tst1._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_6:
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.div with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_div
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__5
  .align 2
__init_l_tst1___closed__5:
  // Function: tst1._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_5:
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // call Float.mul with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_mul
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__4
  .align 2
__init_l_tst1___closed__4:
  // Function: tst1._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_4:
  // load global constant _l_tst1___closed__3
  adrp x16, _l_tst1___closed__3@PAGE
  add x16, x16, _l_tst1___closed__3@PAGEOFF
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // call Float.sub with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_sub
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__3
  .align 2
__init_l_tst1___closed__3:
  // Function: tst1._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_3:
  // lit nat 3
  movz x19, #7, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_tst1___closed__2
  .align 2
__init_l_tst1___closed__2:
  // Function: tst1._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp d8, d9, [sp, #-16]!
  stp d10, d11, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 0/5, fp 2/4)
.Lfn_start_tst1__closed_2:
  // load global constant _l_tst1___closed__1
  adrp x16, _l_tst1___closed__1@PAGE
  add x16, x16, _l_tst1___closed__1@PAGEOFF
  // load global constant _l_tst1___closed__0
  adrp x16, _l_tst1___closed__0@PAGE
  add x16, x16, _l_tst1___closed__0@PAGEOFF
  // call Float.add with 2 runtime args
  fmov d0, d9
  fmov d1, d8
  bl _lean_float_add
  fmov d10, d0
  // return
  fmov d0, d10
  add sp, sp, #16
  ldp d10, d11, [sp], #16
  ldp d8, d9, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__1
  .align 2
__init_l_tst1___closed__1:
  // Function: tst1._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_1:
  // lit nat 2
  movz x19, #5, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl __init_l_tst1___closed__0
  .align 2
__init_l_tst1___closed__0:
  // Function: tst1._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 1/5, fp 1/4)
.Lfn_start_tst1__closed_0:
  // lit nat 1
  movz x19, #3, lsl #0
  // general tail call to Float.ofNat with 1 runtime args
  mov x0, x19
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _lean_float_of_nat

  .globl _l_IO_println___at___00tst1_spec__7
  .align 2
_l_IO_println___at___00tst1_spec__7:
  // Function: IO.println._at_.tst1.spec_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #192
  // Stack frame: 192 spill + 96 saved regs (gp 5/5, fp 1/4)
.Lfn_start_IO_println__at__tst1_spec_7:
  mov x19, x0
  // proj field 1
  ldr x21, [x19, #16]
  // proj field 0
  ldr x8, [x19, #8]
  str x8, [sp, #144]
  // proj field 0
  ldr x8, [x21, #8]
  str x8, [sp, #64]
  // proj field 1
  ldr x8, [x21, #16]
  str x8, [sp, #56]
  // load global constant _l_IO_println___at___00tst1_spec__7___closed__0
  adrp x9, _l_IO_println___at___00tst1_spec__7___closed__0@PAGE
  ldr x9, [x9, _l_IO_println___at___00tst1_spec__7___closed__0@PAGEOFF]
  str x9, [sp, #8]
  ldr x8, [sp, #144]
  // unbox
  mov x0, x8
  bl _lean_unbox_float
  fmov d9, d0
  // call Float.toString with 1 runtime args
  fmov d0, d9
  bl _lean_float_to_string
  mov x26, x0
  // call String.Internal.append with 2 runtime args
  ldr x9, [sp, #8]
  mov x0, x9
  mov x1, x26
  bl _lean_string_append
  mov x8, x0
  str x8, [sp, #96]
  // dec 1
  mov x0, x26
  bl _lean_dec_ref
  // load global constant _l_IO_println___at___00tst1_spec__7___closed__1
  adrp x9, _l_IO_println___at___00tst1_spec__7___closed__1@PAGE
  ldr x9, [x9, _l_IO_println___at___00tst1_spec__7___closed__1@PAGEOFF]
  str x9, [sp]
  // call String.Internal.append with 2 runtime args
  ldr x9, [sp, #96]
  mov x0, x9
  ldr x9, [sp]
  mov x1, x9
  bl _lean_string_append
  mov x8, x0
  str x8, [sp, #72]
  ldr x8, [sp, #64]
  // unbox
  asr x25, x8, #1
  // case
  mov x8, x25
  cmp x8, #0
  b.eq .case_ctor_IO_println__at__tst1_spec_7_1
  cmp x8, #1
  b.eq .case_ctor_IO_println__at__tst1_spec_7_2
  b .case_end_IO_println__at__tst1_spec_7_0
.case_ctor_IO_println__at__tst1_spec_7_1:
  // load global constant _l_IO_println___at___00tst1_spec__1___closed__0
  adrp x27, _l_IO_println___at___00tst1_spec__1___closed__0@PAGE
  ldr x27, [x27, _l_IO_println___at___00tst1_spec__1___closed__0@PAGEOFF]
  // jump to JP76
  str x27, [sp, #104]
  b .JP_IO_println__at__tst1_spec_7_3
  b .case_end_IO_println__at__tst1_spec_7_0
.case_ctor_IO_println__at__tst1_spec_7_2:
  // load global constant _l_IO_println___at___00tst1_spec__1___closed__1
  adrp x20, _l_IO_println___at___00tst1_spec__1___closed__1@PAGE
  ldr x20, [x20, _l_IO_println___at___00tst1_spec__1___closed__1@PAGEOFF]
  // jump to JP76
  str x20, [sp, #104]
  b .JP_IO_println__at__tst1_spec_7_3
  b .case_end_IO_println__at__tst1_spec_7_0
.case_end_IO_println__at__tst1_spec_7_0:
  add sp, sp, #192
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_IO_println__at__tst1_spec_7_3:
  ldr x8, [sp, #56]
  // proj field 0
  ldr x9, [x8, #8]
  str x9, [sp, #128]
  ldr x8, [sp, #56]
  // proj field 1
  ldr x9, [x8, #16]
  str x9, [sp, #160]
  // call String.Internal.append with 2 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  ldr x8, [sp, #104]
  mov x1, x8
  bl _lean_string_append
  mov x19, x0
  // dec 1
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  mov x0, x19
  ldr x8, [sp]
  mov x1, x8
  bl _lean_string_append
  mov x21, x0
  ldr x8, [sp, #128]
  // unbox
  asr x9, x8, #1
  str x9, [sp, #112]
  ldr x8, [sp, #112]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor_IO_println__at__tst1_spec_7_5
  cmp x9, #1
  b.eq .case_ctor_IO_println__at__tst1_spec_7_6
  b .case_end_IO_println__at__tst1_spec_7_4
.case_ctor_IO_println__at__tst1_spec_7_5:
  // load global constant _l_IO_println___at___00tst1_spec__1___closed__0
  adrp x9, _l_IO_println___at___00tst1_spec__1___closed__0@PAGE
  ldr x9, [x9, _l_IO_println___at___00tst1_spec__1___closed__0@PAGEOFF]
  str x9, [sp, #128]
  // jump to JP67
  ldr x20, [sp, #160]
  str x21, [sp, #80]
  ldr x8, [sp, #128]
  str x8, [sp, #112]
  b .JP_IO_println__at__tst1_spec_7_7
  b .case_end_IO_println__at__tst1_spec_7_4
.case_ctor_IO_println__at__tst1_spec_7_6:
  // load global constant _l_IO_println___at___00tst1_spec__1___closed__1
  adrp x22, _l_IO_println___at___00tst1_spec__1___closed__1@PAGE
  ldr x22, [x22, _l_IO_println___at___00tst1_spec__1___closed__1@PAGEOFF]
  // jump to JP67
  ldr x20, [sp, #160]
  str x21, [sp, #80]
  str x22, [sp, #112]
  b .JP_IO_println__at__tst1_spec_7_7
  b .case_end_IO_println__at__tst1_spec_7_4
.case_end_IO_println__at__tst1_spec_7_4:
  add sp, sp, #192
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_IO_println__at__tst1_spec_7_7:
  // proj field 0
  ldr x8, [x20, #8]
  str x8, [sp, #120]
  // proj field 1
  ldr x8, [x20, #16]
  str x8, [sp, #136]
  // call String.Internal.append with 2 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  ldr x8, [sp, #112]
  mov x1, x8
  bl _lean_string_append
  mov x25, x0
  // dec 1
  ldr x8, [sp, #112]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  mov x0, x25
  ldr x8, [sp]
  mov x1, x8
  bl _lean_string_append
  mov x24, x0
  ldr x8, [sp, #120]
  // unbox
  asr x9, x8, #1
  str x9, [sp, #104]
  ldr x8, [sp, #104]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor_IO_println__at__tst1_spec_7_9
  cmp x9, #1
  b.eq .case_ctor_IO_println__at__tst1_spec_7_10
  b .case_end_IO_println__at__tst1_spec_7_8
.case_ctor_IO_println__at__tst1_spec_7_9:
  // load global constant _l_IO_println___at___00tst1_spec__1___closed__0
  adrp x19, _l_IO_println___at___00tst1_spec__1___closed__0@PAGE
  ldr x19, [x19, _l_IO_println___at___00tst1_spec__1___closed__0@PAGEOFF]
  // jump to JP56
  ldr x11, [sp, #136]
  ldr x8, [sp, #80]
  str x8, [sp, #32]
  str x24, [sp, #24]
  mov x21, x19
  b .JP_IO_println__at__tst1_spec_7_11
  b .case_end_IO_println__at__tst1_spec_7_8
.case_ctor_IO_println__at__tst1_spec_7_10:
  // load global constant _l_IO_println___at___00tst1_spec__1___closed__1
  adrp x25, _l_IO_println___at___00tst1_spec__1___closed__1@PAGE
  ldr x25, [x25, _l_IO_println___at___00tst1_spec__1___closed__1@PAGEOFF]
  // jump to JP56
  ldr x11, [sp, #136]
  ldr x8, [sp, #80]
  str x8, [sp, #32]
  str x24, [sp, #24]
  mov x21, x25
  b .JP_IO_println__at__tst1_spec_7_11
  b .case_end_IO_println__at__tst1_spec_7_8
.case_end_IO_println__at__tst1_spec_7_8:
  add sp, sp, #192
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_IO_println__at__tst1_spec_7_11:
  // proj field 0
  ldr x23, [x11, #8]
  // proj field 1
  ldr x8, [x11, #16]
  str x8, [sp, #88]
  // call String.Internal.append with 2 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  mov x1, x21
  bl _lean_string_append
  mov x26, x0
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  mov x0, x26
  ldr x9, [sp]
  mov x1, x9
  bl _lean_string_append
  mov x8, x0
  str x8, [sp, #16]
  // unbox
  mov x0, x23
  bl _lean_unbox_float
  fmov d8, d0
  // call Float.toString with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_string
  mov x21, x0
  // call String.Internal.append with 2 runtime args
  ldr x8, [sp, #8]
  mov x0, x8
  mov x1, x21
  bl _lean_string_append
  mov x20, x0
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  mov x0, x20
  ldr x9, [sp]
  mov x1, x9
  bl _lean_string_append
  mov x8, x0
  str x8, [sp, #40]
  // load global constant _l_IO_println___at___00tst1_spec__7___closed__3
  adrp x26, _l_IO_println___at___00tst1_spec__7___closed__3@PAGE
  ldr x26, [x26, _l_IO_println___at___00tst1_spec__7___closed__3@PAGEOFF]
  // call Int.decLt with 2 runtime args
  ldr x9, [sp, #88]
  mov x0, x9
  mov x1, x26
  bl _lean_int_dec_lt
  and x8, x0, #255
  str x8, [sp, #48]
  ldr x8, [sp, #48]
  // case
  mov x9, x8
  cmp x9, #0
  b.eq .case_ctor_IO_println__at__tst1_spec_7_13
  cmp x9, #1
  b.eq .case_ctor_IO_println__at__tst1_spec_7_14
  b .case_end_IO_println__at__tst1_spec_7_12
.case_ctor_IO_println__at__tst1_spec_7_13:
  // call Int.natAbs with 1 runtime args
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_nat_abs
  mov x23, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x23
  bl _l_Nat_reprFast
  mov x8, x0
  str x8, [sp, #120]
  // jump to JP32
  ldr x27, [sp, #16]
  ldr x25, [sp, #32]
  ldr x28, [sp, #24]
  ldr x23, [sp, #40]
  ldr x26, [sp, #120]
  b .JP_IO_println__at__tst1_spec_7_15
  b .case_end_IO_println__at__tst1_spec_7_12
.case_ctor_IO_println__at__tst1_spec_7_14:
  // call Int.natAbs with 1 runtime args
  ldr x8, [sp, #88]
  mov x0, x8
  bl _lean_nat_abs
  mov x22, x0
  // lit nat 1
  movz x23, #3, lsl #0
  // call Nat.sub with 2 runtime args
  mov x0, x22
  mov x1, x23
  bl _lean_nat_sub
  mov x24, x0
  // dec 1
  mov x0, x22
  bl _lean_dec
  // load global constant _l_IO_println___at___00tst1_spec__7___closed__4
  adrp x9, _l_IO_println___at___00tst1_spec__7___closed__4@PAGE
  ldr x9, [x9, _l_IO_println___at___00tst1_spec__7___closed__4@PAGEOFF]
  str x9, [sp, #152]
  // call Nat.add with 2 runtime args
  mov x0, x24
  mov x1, x23
  bl _lean_nat_add
  mov x26, x0
  // dec 1
  mov x0, x24
  bl _lean_dec
  // call Nat.reprFast with 1 runtime args
  mov x0, x26
  bl _l_Nat_reprFast
  mov x20, x0
  // call String.Internal.append with 2 runtime args
  ldr x8, [sp, #152]
  mov x0, x8
  mov x1, x20
  bl _lean_string_append
  mov x28, x0
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // jump to JP32
  ldr x27, [sp, #16]
  ldr x25, [sp, #32]
  ldr x23, [sp, #40]
  mov x26, x28
  ldr x28, [sp, #24]
  b .JP_IO_println__at__tst1_spec_7_15
  b .case_end_IO_println__at__tst1_spec_7_12
.case_end_IO_println__at__tst1_spec_7_12:
  add sp, sp, #192
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_IO_println__at__tst1_spec_7_15:
  // call String.Internal.append with 2 runtime args
  mov x0, x23
  mov x1, x26
  bl _lean_string_append
  mov x22, x0
  // dec 1
  mov x0, x26
  bl _lean_dec_ref
  // load global constant _l_IO_println___at___00tst1_spec__7___closed__2
  adrp x9, _l_IO_println___at___00tst1_spec__7___closed__2@PAGE
  ldr x9, [x9, _l_IO_println___at___00tst1_spec__7___closed__2@PAGEOFF]
  str x9, [sp, #96]
  // call String.Internal.append with 2 runtime args
  mov x0, x22
  ldr x8, [sp, #96]
  mov x1, x8
  bl _lean_string_append
  mov x23, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x27
  mov x1, x23
  bl _lean_string_append
  mov x20, x0
  // dec 1
  mov x0, x23
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  mov x0, x20
  ldr x8, [sp, #96]
  mov x1, x8
  bl _lean_string_append
  mov x27, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x28
  mov x1, x27
  bl _lean_string_append
  mov x26, x0
  // dec 1
  mov x0, x27
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  mov x0, x26
  ldr x8, [sp, #96]
  mov x1, x8
  bl _lean_string_append
  mov x28, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x25
  mov x1, x28
  bl _lean_string_append
  mov x27, x0
  // dec 1
  mov x0, x28
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  mov x0, x27
  ldr x8, [sp, #96]
  mov x1, x8
  bl _lean_string_append
  mov x22, x0
  // call String.Internal.append with 2 runtime args
  ldr x8, [sp, #72]
  mov x0, x8
  mov x1, x22
  bl _lean_string_append
  mov x23, x0
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  mov x0, x23
  ldr x8, [sp, #96]
  mov x1, x8
  bl _lean_string_append
  mov x27, x0
  movz x20, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _lean_string_push
  mov x28, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x28
  add sp, sp, #192
  ldp d8, d9, [sp], #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl __init_l_IO_println___at___00tst1_spec__7___closed__4
  .align 2
__init_l_IO_println___at___00tst1_spec__7___closed__4:
  // Function: IO.println._at_.tst1.spec_7._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_7__closed_4:
  // lit string "-"
  adrp x0, _str_IO_println__at__tst1_spec_7__closed_4_0_data@PAGE
  add x0, x0, _str_IO_println__at__tst1_spec_7__closed_4_0_data@PAGEOFF
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
_str_IO_println__at__tst1_spec_7__closed_4_0_data:
  .byte 0x2D, 0x00  // null terminator
  .text

  .globl __init_l_IO_println___at___00tst1_spec__7___closed__3
  .align 2
__init_l_IO_println___at___00tst1_spec__7___closed__3:
  // Function: IO.println._at_.tst1.spec_7._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_7__closed_3:
  // lit nat 0
  movz x19, #1, lsl #0
  // call Int.ofNat with 1 runtime args
  mov x0, x19
  bl _lean_nat_to_int
  mov x20, x0
  // return
  mov x0, x20
  add sp, sp, #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_IO_println___at___00tst1_spec__7___closed__2
  .align 2
__init_l_IO_println___at___00tst1_spec__7___closed__2:
  // Function: IO.println._at_.tst1.spec_7._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_7__closed_2:
  // lit string ")"
  adrp x0, _str_IO_println__at__tst1_spec_7__closed_2_0_data@PAGE
  add x0, x0, _str_IO_println__at__tst1_spec_7__closed_2_0_data@PAGEOFF
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
_str_IO_println__at__tst1_spec_7__closed_2_0_data:
  .byte 0x29, 0x00  // null terminator
  .text

  .globl __init_l_IO_println___at___00tst1_spec__7___closed__1
  .align 2
__init_l_IO_println___at___00tst1_spec__7___closed__1:
  // Function: IO.println._at_.tst1.spec_7._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_7__closed_1:
  // lit string ", "
  adrp x0, _str_IO_println__at__tst1_spec_7__closed_1_0_data@PAGE
  add x0, x0, _str_IO_println__at__tst1_spec_7__closed_1_0_data@PAGEOFF
  movz x1, #2, lsl #0
  movz x2, #2, lsl #0
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
_str_IO_println__at__tst1_spec_7__closed_1_0_data:
  .byte 0x2C, 0x20, 0x00  // null terminator
  .text

  .globl __init_l_IO_println___at___00tst1_spec__7___closed__0
  .align 2
__init_l_IO_println___at___00tst1_spec__7___closed__0:
  // Function: IO.println._at_.tst1.spec_7._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_7__closed_0:
  // lit string "("
  adrp x0, _str_IO_println__at__tst1_spec_7__closed_0_0_data@PAGE
  add x0, x0, _str_IO_println__at__tst1_spec_7__closed_0_0_data@PAGEOFF
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
_str_IO_println__at__tst1_spec_7__closed_0_0_data:
  .byte 0x28, 0x00  // null terminator
  .text

  .globl _l_IO_println___at___00tst1_spec__1
  .align 2
_l_IO_println___at___00tst1_spec__1:
  // Function: IO.println._at_.tst1.spec_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 64 saved regs (gp 4/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_1:
  mov x19, x0
  // case
  mov x8, x19
  cmp x8, #0
  b.eq .case_ctor_IO_println__at__tst1_spec_1_1
  cmp x8, #1
  b.eq .case_ctor_IO_println__at__tst1_spec_1_2
  b .case_end_IO_println__at__tst1_spec_1_0
.case_ctor_IO_println__at__tst1_spec_1_1:
  // load global constant _l_IO_println___at___00tst1_spec__1___closed__0
  adrp x25, _l_IO_println___at___00tst1_spec__1___closed__0@PAGE
  ldr x25, [x25, _l_IO_println___at___00tst1_spec__1___closed__0@PAGEOFF]
  // jump to JP7
  mov x20, x25
  b .JP_IO_println__at__tst1_spec_1_3
  b .case_end_IO_println__at__tst1_spec_1_0
.case_ctor_IO_println__at__tst1_spec_1_2:
  // load global constant _l_IO_println___at___00tst1_spec__1___closed__1
  adrp x24, _l_IO_println___at___00tst1_spec__1___closed__1@PAGE
  ldr x24, [x24, _l_IO_println___at___00tst1_spec__1___closed__1@PAGEOFF]
  // jump to JP7
  mov x20, x24
  b .JP_IO_println__at__tst1_spec_1_3
  b .case_end_IO_println__at__tst1_spec_1_0
.case_end_IO_println__at__tst1_spec_1_0:
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  bl _lean_internal_panic_unreachable
  ret
.JP_IO_println__at__tst1_spec_1_3:
  movz x21, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x20
  mov x1, x21
  bl _lean_string_push
  mov x22, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x22
  add sp, sp, #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl __init_l_IO_println___at___00tst1_spec__1___closed__1
  .align 2
__init_l_IO_println___at___00tst1_spec__1___closed__1:
  // Function: IO.println._at_.tst1.spec_1._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_1__closed_1:
  // lit string "true"
  adrp x0, _str_IO_println__at__tst1_spec_1__closed_1_0_data@PAGE
  add x0, x0, _str_IO_println__at__tst1_spec_1__closed_1_0_data@PAGEOFF
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
_str_IO_println__at__tst1_spec_1__closed_1_0_data:
  .byte 0x74, 0x72, 0x75, 0x65, 0x00  // null terminator
  .text

  .globl __init_l_IO_println___at___00tst1_spec__1___closed__0
  .align 2
__init_l_IO_println___at___00tst1_spec__1___closed__0:
  // Function: IO.println._at_.tst1.spec_1._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 16 saved regs (gp 1/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_1__closed_0:
  // lit string "false"
  adrp x0, _str_IO_println__at__tst1_spec_1__closed_0_0_data@PAGE
  add x0, x0, _str_IO_println__at__tst1_spec_1__closed_0_0_data@PAGEOFF
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
_str_IO_println__at__tst1_spec_1__closed_0_0_data:
  .byte 0x66, 0x61, 0x6C, 0x73, 0x65, 0x00  // null terminator
  .text

  .globl _l_IO_println___at___00tst1_spec__6
  .align 2
_l_IO_println___at___00tst1_spec__6:
  // Function: IO.println._at_.tst1.spec_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 3/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_6:
  mov x19, x0
  // call USize.toNat with 1 runtime args
  mov x0, x19
  bl _lean_usize_to_nat
  mov x20, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x20
  bl _l_Nat_reprFast
  mov x21, x0
  movz x22, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_string_push
  mov x23, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x23
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl _l_IO_println___at___00tst1_spec__5
  .align 2
_l_IO_println___at___00tst1_spec__5:
  // Function: IO.println._at_.tst1.spec_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 3/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_5:
  mov x19, x0
  // call UInt64.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint64_to_nat
  mov x20, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x20
  bl _l_Nat_reprFast
  mov x21, x0
  movz x22, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_string_push
  mov x23, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x23
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl _l_IO_println___at___00tst1_spec__4
  .align 2
_l_IO_println___at___00tst1_spec__4:
  // Function: IO.println._at_.tst1.spec_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 3/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_4:
  mov x19, x0
  // call UInt32.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint32_to_nat
  mov x20, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x20
  bl _l_Nat_reprFast
  mov x21, x0
  movz x22, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_string_push
  mov x23, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x23
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl _l_IO_println___at___00tst1_spec__3
  .align 2
_l_IO_println___at___00tst1_spec__3:
  // Function: IO.println._at_.tst1.spec_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 3/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_3:
  mov x19, x0
  // call UInt16.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint16_to_nat
  mov x20, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x20
  bl _l_Nat_reprFast
  mov x21, x0
  movz x22, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_string_push
  mov x23, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x23
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl _l_IO_println___at___00tst1_spec__2
  .align 2
_l_IO_println___at___00tst1_spec__2:
  // Function: IO.println._at_.tst1.spec_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 3/5, fp 0/4)
.Lfn_start_IO_println__at__tst1_spec_2:
  mov x19, x0
  // call UInt8.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint8_to_nat
  mov x20, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x20
  bl _l_Nat_reprFast
  mov x21, x0
  movz x22, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x21
  mov x1, x22
  bl _lean_string_push
  mov x23, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x23
  add sp, sp, #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl _l_IO_println___at___00tst1_spec__0
  .align 2
_l_IO_println___at___00tst1_spec__0:
  // Function: IO.println._at_.tst1.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp d8, d9, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 48 saved regs (gp 2/5, fp 1/4)
.Lfn_start_IO_println__at__tst1_spec_0:
  fmov d8, d0
  // call Float.toString with 1 runtime args
  fmov d0, d8
  bl _lean_float_to_string
  mov x19, x0
  movz x20, #10, lsl #0
  // call String.push with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _lean_string_push
  mov x21, x0
  // general tail call to IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 1 runtime args
  mov x0, x21
  add sp, sp, #16
  ldp d8, d9, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  b _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0

  .globl _l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0
  .align 2
_l_IO_print___at___00IO_println___at___00tst1_spec__0_spec__0:
  // Function: IO.print._at_.IO.println._at_.tst1.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 spill + 32 saved regs (gp 2/5, fp 0/4)
.Lfn_start_IO_print__at__IO_println__at__tst1_spec_0_spec_0:
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

  // Module initialization function
  .extern _initialize_Init
  .globl _initialize_tests_compiler_float
  .align 2
_initialize_tests_compiler_float:
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

  // Initialize all declarations
  // Initialize _l_IO_println___at___00tst1_spec__1___closed__0
  bl __init_l_IO_println___at___00tst1_spec__1___closed__0
  adrp x8, _l_IO_println___at___00tst1_spec__1___closed__0@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__1___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___00tst1_spec__1___closed__0@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__1___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___00tst1_spec__1___closed__1
  bl __init_l_IO_println___at___00tst1_spec__1___closed__1
  adrp x8, _l_IO_println___at___00tst1_spec__1___closed__1@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__1___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___00tst1_spec__1___closed__1@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__1___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___00tst1_spec__7___closed__0
  bl __init_l_IO_println___at___00tst1_spec__7___closed__0
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__0@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__0@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___00tst1_spec__7___closed__1
  bl __init_l_IO_println___at___00tst1_spec__7___closed__1
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__1@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__1@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___00tst1_spec__7___closed__2
  bl __init_l_IO_println___at___00tst1_spec__7___closed__2
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__2@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__2@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___00tst1_spec__7___closed__3
  bl __init_l_IO_println___at___00tst1_spec__7___closed__3
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__3@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__3@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__3@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__3@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___00tst1_spec__7___closed__4
  bl __init_l_IO_println___at___00tst1_spec__7___closed__4
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__4@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__4@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_IO_println___at___00tst1_spec__7___closed__4@PAGE
  add x8, x8, _l_IO_println___at___00tst1_spec__7___closed__4@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__0
  bl __init_l_tst1___closed__0
  adrp x8, _l_tst1___closed__0@PAGE
  add x8, x8, _l_tst1___closed__0@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__1
  bl __init_l_tst1___closed__1
  adrp x8, _l_tst1___closed__1@PAGE
  add x8, x8, _l_tst1___closed__1@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__2
  bl __init_l_tst1___closed__2
  adrp x8, _l_tst1___closed__2@PAGE
  add x8, x8, _l_tst1___closed__2@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__3
  bl __init_l_tst1___closed__3
  adrp x8, _l_tst1___closed__3@PAGE
  add x8, x8, _l_tst1___closed__3@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__4
  bl __init_l_tst1___closed__4
  adrp x8, _l_tst1___closed__4@PAGE
  add x8, x8, _l_tst1___closed__4@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__5
  bl __init_l_tst1___closed__5
  adrp x8, _l_tst1___closed__5@PAGE
  add x8, x8, _l_tst1___closed__5@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__6
  bl __init_l_tst1___closed__6
  adrp x8, _l_tst1___closed__6@PAGE
  add x8, x8, _l_tst1___closed__6@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__7
  bl __init_l_tst1___closed__7
  adrp x8, _l_tst1___closed__7@PAGE
  add x8, x8, _l_tst1___closed__7@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__8
  bl __init_l_tst1___closed__8
  adrp x8, _l_tst1___closed__8@PAGE
  add x8, x8, _l_tst1___closed__8@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__9
  bl __init_l_tst1___closed__9
  adrp x8, _l_tst1___closed__9@PAGE
  add x8, x8, _l_tst1___closed__9@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__10
  bl __init_l_tst1___closed__10
  adrp x8, _l_tst1___closed__10@PAGE
  add x8, x8, _l_tst1___closed__10@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__11
  bl __init_l_tst1___closed__11
  adrp x8, _l_tst1___closed__11@PAGE
  add x8, x8, _l_tst1___closed__11@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__12
  bl __init_l_tst1___closed__12
  adrp x8, _l_tst1___closed__12@PAGE
  add x8, x8, _l_tst1___closed__12@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__13
  bl __init_l_tst1___closed__13
  adrp x8, _l_tst1___closed__13@PAGE
  add x8, x8, _l_tst1___closed__13@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__14
  bl __init_l_tst1___closed__14
  adrp x8, _l_tst1___closed__14@PAGE
  add x8, x8, _l_tst1___closed__14@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__15
  bl __init_l_tst1___closed__15
  adrp x8, _l_tst1___closed__15@PAGE
  add x8, x8, _l_tst1___closed__15@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__16
  bl __init_l_tst1___closed__16
  adrp x8, _l_tst1___closed__16@PAGE
  add x8, x8, _l_tst1___closed__16@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__16@PAGE
  add x8, x8, _l_tst1___closed__16@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__17
  bl __init_l_tst1___closed__17
  adrp x8, _l_tst1___closed__17@PAGE
  add x8, x8, _l_tst1___closed__17@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__18
  bl __init_l_tst1___closed__18
  adrp x8, _l_tst1___closed__18@PAGE
  add x8, x8, _l_tst1___closed__18@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__18@PAGE
  add x8, x8, _l_tst1___closed__18@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__19
  bl __init_l_tst1___closed__19
  adrp x8, _l_tst1___closed__19@PAGE
  add x8, x8, _l_tst1___closed__19@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__20
  bl __init_l_tst1___closed__20
  adrp x8, _l_tst1___closed__20@PAGE
  add x8, x8, _l_tst1___closed__20@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__21
  bl __init_l_tst1___closed__21
  adrp x8, _l_tst1___closed__21@PAGE
  add x8, x8, _l_tst1___closed__21@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__22
  bl __init_l_tst1___closed__22
  adrp x8, _l_tst1___closed__22@PAGE
  add x8, x8, _l_tst1___closed__22@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__23
  bl __init_l_tst1___closed__23
  adrp x8, _l_tst1___closed__23@PAGE
  add x8, x8, _l_tst1___closed__23@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__24
  bl __init_l_tst1___closed__24
  adrp x8, _l_tst1___closed__24@PAGE
  add x8, x8, _l_tst1___closed__24@PAGEOFF
  strh w0, [x8]

  // Initialize _l_tst1___closed__25
  bl __init_l_tst1___closed__25
  adrp x8, _l_tst1___closed__25@PAGE
  add x8, x8, _l_tst1___closed__25@PAGEOFF
  str w0, [x8]

  // Initialize _l_tst1___closed__26
  bl __init_l_tst1___closed__26
  adrp x8, _l_tst1___closed__26@PAGE
  add x8, x8, _l_tst1___closed__26@PAGEOFF
  str x0, [x8]

  // Initialize _l_tst1___closed__27
  bl __init_l_tst1___closed__27
  adrp x8, _l_tst1___closed__27@PAGE
  add x8, x8, _l_tst1___closed__27@PAGEOFF
  str x0, [x8]

  // Initialize _l_tst1___closed__28
  bl __init_l_tst1___closed__28
  adrp x8, _l_tst1___closed__28@PAGE
  add x8, x8, _l_tst1___closed__28@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__29
  bl __init_l_tst1___closed__29
  adrp x8, _l_tst1___closed__29@PAGE
  add x8, x8, _l_tst1___closed__29@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__30
  bl __init_l_tst1___closed__30
  adrp x8, _l_tst1___closed__30@PAGE
  add x8, x8, _l_tst1___closed__30@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__31
  bl __init_l_tst1___closed__31
  adrp x8, _l_tst1___closed__31@PAGE
  add x8, x8, _l_tst1___closed__31@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__32
  bl __init_l_tst1___closed__32
  adrp x8, _l_tst1___closed__32@PAGE
  add x8, x8, _l_tst1___closed__32@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__33
  bl __init_l_tst1___closed__33
  adrp x8, _l_tst1___closed__33@PAGE
  add x8, x8, _l_tst1___closed__33@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__34
  bl __init_l_tst1___closed__34
  adrp x8, _l_tst1___closed__34@PAGE
  add x8, x8, _l_tst1___closed__34@PAGEOFF
  strh w0, [x8]

  // Initialize _l_tst1___closed__35
  bl __init_l_tst1___closed__35
  adrp x8, _l_tst1___closed__35@PAGE
  add x8, x8, _l_tst1___closed__35@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__36
  bl __init_l_tst1___closed__36
  adrp x8, _l_tst1___closed__36@PAGE
  add x8, x8, _l_tst1___closed__36@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__37
  bl __init_l_tst1___closed__37
  adrp x8, _l_tst1___closed__37@PAGE
  add x8, x8, _l_tst1___closed__37@PAGEOFF
  strh w0, [x8]

  // Initialize _l_tst1___closed__38
  bl __init_l_tst1___closed__38
  adrp x8, _l_tst1___closed__38@PAGE
  add x8, x8, _l_tst1___closed__38@PAGEOFF
  strh w0, [x8]

  // Initialize _l_tst1___closed__39
  bl __init_l_tst1___closed__39
  adrp x8, _l_tst1___closed__39@PAGE
  add x8, x8, _l_tst1___closed__39@PAGEOFF
  str w0, [x8]

  // Initialize _l_tst1___closed__40
  bl __init_l_tst1___closed__40
  adrp x8, _l_tst1___closed__40@PAGE
  add x8, x8, _l_tst1___closed__40@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__41
  bl __init_l_tst1___closed__41
  adrp x8, _l_tst1___closed__41@PAGE
  add x8, x8, _l_tst1___closed__41@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__42
  bl __init_l_tst1___closed__42
  adrp x8, _l_tst1___closed__42@PAGE
  add x8, x8, _l_tst1___closed__42@PAGEOFF
  str w0, [x8]

  // Initialize _l_tst1___closed__43
  bl __init_l_tst1___closed__43
  adrp x8, _l_tst1___closed__43@PAGE
  add x8, x8, _l_tst1___closed__43@PAGEOFF
  str w0, [x8]

  // Initialize _l_tst1___closed__44
  bl __init_l_tst1___closed__44
  adrp x8, _l_tst1___closed__44@PAGE
  add x8, x8, _l_tst1___closed__44@PAGEOFF
  str x0, [x8]

  // Initialize _l_tst1___closed__45
  bl __init_l_tst1___closed__45
  adrp x8, _l_tst1___closed__45@PAGE
  add x8, x8, _l_tst1___closed__45@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__46
  bl __init_l_tst1___closed__46
  adrp x8, _l_tst1___closed__46@PAGE
  add x8, x8, _l_tst1___closed__46@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__47
  bl __init_l_tst1___closed__47
  adrp x8, _l_tst1___closed__47@PAGE
  add x8, x8, _l_tst1___closed__47@PAGEOFF
  str x0, [x8]

  // Initialize _l_tst1___closed__48
  bl __init_l_tst1___closed__48
  adrp x8, _l_tst1___closed__48@PAGE
  add x8, x8, _l_tst1___closed__48@PAGEOFF
  str x0, [x8]

  // Initialize _l_tst1___closed__49
  bl __init_l_tst1___closed__49
  adrp x8, _l_tst1___closed__49@PAGE
  add x8, x8, _l_tst1___closed__49@PAGEOFF
  str x0, [x8]

  // Initialize _l_tst1___closed__50
  bl __init_l_tst1___closed__50
  adrp x8, _l_tst1___closed__50@PAGE
  add x8, x8, _l_tst1___closed__50@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__50@PAGE
  add x8, x8, _l_tst1___closed__50@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__51
  bl __init_l_tst1___closed__51
  adrp x8, _l_tst1___closed__51@PAGE
  add x8, x8, _l_tst1___closed__51@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__51@PAGE
  add x8, x8, _l_tst1___closed__51@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__52
  bl __init_l_tst1___closed__52
  adrp x8, _l_tst1___closed__52@PAGE
  add x8, x8, _l_tst1___closed__52@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__53
  bl __init_l_tst1___closed__53
  adrp x8, _l_tst1___closed__53@PAGE
  add x8, x8, _l_tst1___closed__53@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__54
  bl __init_l_tst1___closed__54
  adrp x8, _l_tst1___closed__54@PAGE
  add x8, x8, _l_tst1___closed__54@PAGEOFF
  str x0, [x8]

  // Initialize _l_tst1___closed__55
  bl __init_l_tst1___closed__55
  adrp x8, _l_tst1___closed__55@PAGE
  add x8, x8, _l_tst1___closed__55@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__55@PAGE
  add x8, x8, _l_tst1___closed__55@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__56
  bl __init_l_tst1___closed__56
  adrp x8, _l_tst1___closed__56@PAGE
  add x8, x8, _l_tst1___closed__56@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__56@PAGE
  add x8, x8, _l_tst1___closed__56@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__57
  bl __init_l_tst1___closed__57
  adrp x8, _l_tst1___closed__57@PAGE
  add x8, x8, _l_tst1___closed__57@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__58
  bl __init_l_tst1___closed__58
  adrp x8, _l_tst1___closed__58@PAGE
  add x8, x8, _l_tst1___closed__58@PAGEOFF
  str x0, [x8]

  // Initialize _l_tst1___closed__59
  bl __init_l_tst1___closed__59
  adrp x8, _l_tst1___closed__59@PAGE
  add x8, x8, _l_tst1___closed__59@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__59@PAGE
  add x8, x8, _l_tst1___closed__59@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__60
  bl __init_l_tst1___closed__60
  adrp x8, _l_tst1___closed__60@PAGE
  add x8, x8, _l_tst1___closed__60@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__61
  bl __init_l_tst1___closed__61
  adrp x8, _l_tst1___closed__61@PAGE
  add x8, x8, _l_tst1___closed__61@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__62
  bl __init_l_tst1___closed__62
  adrp x8, _l_tst1___closed__62@PAGE
  add x8, x8, _l_tst1___closed__62@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__63
  bl __init_l_tst1___closed__63
  adrp x8, _l_tst1___closed__63@PAGE
  add x8, x8, _l_tst1___closed__63@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__64
  bl __init_l_tst1___closed__64
  adrp x8, _l_tst1___closed__64@PAGE
  add x8, x8, _l_tst1___closed__64@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__65
  bl __init_l_tst1___closed__65
  adrp x8, _l_tst1___closed__65@PAGE
  add x8, x8, _l_tst1___closed__65@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__65@PAGE
  add x8, x8, _l_tst1___closed__65@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__66
  bl __init_l_tst1___closed__66
  adrp x8, _l_tst1___closed__66@PAGE
  add x8, x8, _l_tst1___closed__66@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__66@PAGE
  add x8, x8, _l_tst1___closed__66@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__67
  bl __init_l_tst1___closed__67
  adrp x8, _l_tst1___closed__67@PAGE
  add x8, x8, _l_tst1___closed__67@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__67@PAGE
  add x8, x8, _l_tst1___closed__67@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__68
  bl __init_l_tst1___closed__68
  adrp x8, _l_tst1___closed__68@PAGE
  add x8, x8, _l_tst1___closed__68@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__68@PAGE
  add x8, x8, _l_tst1___closed__68@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__69___boxed__const__1
  bl __init_l_tst1___closed__69___boxed__const__1
  adrp x8, _l_tst1___closed__69___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__69___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__69___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__69___boxed__const__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__69
  bl __init_l_tst1___closed__69
  adrp x8, _l_tst1___closed__69@PAGE
  add x8, x8, _l_tst1___closed__69@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__69@PAGE
  add x8, x8, _l_tst1___closed__69@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__70
  bl __init_l_tst1___closed__70
  adrp x8, _l_tst1___closed__70@PAGE
  add x8, x8, _l_tst1___closed__70@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__71
  bl __init_l_tst1___closed__71
  adrp x8, _l_tst1___closed__71@PAGE
  add x8, x8, _l_tst1___closed__71@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__72
  bl __init_l_tst1___closed__72
  adrp x8, _l_tst1___closed__72@PAGE
  add x8, x8, _l_tst1___closed__72@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__73
  bl __init_l_tst1___closed__73
  adrp x8, _l_tst1___closed__73@PAGE
  add x8, x8, _l_tst1___closed__73@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__73@PAGE
  add x8, x8, _l_tst1___closed__73@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__74
  bl __init_l_tst1___closed__74
  adrp x8, _l_tst1___closed__74@PAGE
  add x8, x8, _l_tst1___closed__74@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__74@PAGE
  add x8, x8, _l_tst1___closed__74@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__75
  bl __init_l_tst1___closed__75
  adrp x8, _l_tst1___closed__75@PAGE
  add x8, x8, _l_tst1___closed__75@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__75@PAGE
  add x8, x8, _l_tst1___closed__75@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__76
  bl __init_l_tst1___closed__76
  adrp x8, _l_tst1___closed__76@PAGE
  add x8, x8, _l_tst1___closed__76@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__76@PAGE
  add x8, x8, _l_tst1___closed__76@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__77___boxed__const__1
  bl __init_l_tst1___closed__77___boxed__const__1
  adrp x8, _l_tst1___closed__77___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__77___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__77___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__77___boxed__const__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__77
  bl __init_l_tst1___closed__77
  adrp x8, _l_tst1___closed__77@PAGE
  add x8, x8, _l_tst1___closed__77@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__77@PAGE
  add x8, x8, _l_tst1___closed__77@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__78
  bl __init_l_tst1___closed__78
  adrp x8, _l_tst1___closed__78@PAGE
  add x8, x8, _l_tst1___closed__78@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__79
  bl __init_l_tst1___closed__79
  adrp x8, _l_tst1___closed__79@PAGE
  add x8, x8, _l_tst1___closed__79@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__80
  bl __init_l_tst1___closed__80
  adrp x8, _l_tst1___closed__80@PAGE
  add x8, x8, _l_tst1___closed__80@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__81
  bl __init_l_tst1___closed__81
  adrp x8, _l_tst1___closed__81@PAGE
  add x8, x8, _l_tst1___closed__81@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__82
  bl __init_l_tst1___closed__82
  adrp x8, _l_tst1___closed__82@PAGE
  add x8, x8, _l_tst1___closed__82@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__83
  bl __init_l_tst1___closed__83
  adrp x8, _l_tst1___closed__83@PAGE
  add x8, x8, _l_tst1___closed__83@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__83@PAGE
  add x8, x8, _l_tst1___closed__83@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__84
  bl __init_l_tst1___closed__84
  adrp x8, _l_tst1___closed__84@PAGE
  add x8, x8, _l_tst1___closed__84@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__84@PAGE
  add x8, x8, _l_tst1___closed__84@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__85
  bl __init_l_tst1___closed__85
  adrp x8, _l_tst1___closed__85@PAGE
  add x8, x8, _l_tst1___closed__85@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__85@PAGE
  add x8, x8, _l_tst1___closed__85@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__86
  bl __init_l_tst1___closed__86
  adrp x8, _l_tst1___closed__86@PAGE
  add x8, x8, _l_tst1___closed__86@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__86@PAGE
  add x8, x8, _l_tst1___closed__86@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__87___boxed__const__1
  bl __init_l_tst1___closed__87___boxed__const__1
  adrp x8, _l_tst1___closed__87___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__87___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__87___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__87___boxed__const__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__87
  bl __init_l_tst1___closed__87
  adrp x8, _l_tst1___closed__87@PAGE
  add x8, x8, _l_tst1___closed__87@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__87@PAGE
  add x8, x8, _l_tst1___closed__87@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__88
  bl __init_l_tst1___closed__88
  adrp x8, _l_tst1___closed__88@PAGE
  add x8, x8, _l_tst1___closed__88@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__89
  bl __init_l_tst1___closed__89
  adrp x8, _l_tst1___closed__89@PAGE
  add x8, x8, _l_tst1___closed__89@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__90
  bl __init_l_tst1___closed__90
  adrp x8, _l_tst1___closed__90@PAGE
  add x8, x8, _l_tst1___closed__90@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__91
  bl __init_l_tst1___closed__91
  adrp x8, _l_tst1___closed__91@PAGE
  add x8, x8, _l_tst1___closed__91@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__91@PAGE
  add x8, x8, _l_tst1___closed__91@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__92
  bl __init_l_tst1___closed__92
  adrp x8, _l_tst1___closed__92@PAGE
  add x8, x8, _l_tst1___closed__92@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__92@PAGE
  add x8, x8, _l_tst1___closed__92@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__93
  bl __init_l_tst1___closed__93
  adrp x8, _l_tst1___closed__93@PAGE
  add x8, x8, _l_tst1___closed__93@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__93@PAGE
  add x8, x8, _l_tst1___closed__93@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__94
  bl __init_l_tst1___closed__94
  adrp x8, _l_tst1___closed__94@PAGE
  add x8, x8, _l_tst1___closed__94@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__94@PAGE
  add x8, x8, _l_tst1___closed__94@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__95___boxed__const__1
  bl __init_l_tst1___closed__95___boxed__const__1
  adrp x8, _l_tst1___closed__95___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__95___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__95___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__95___boxed__const__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__95
  bl __init_l_tst1___closed__95
  adrp x8, _l_tst1___closed__95@PAGE
  add x8, x8, _l_tst1___closed__95@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__95@PAGE
  add x8, x8, _l_tst1___closed__95@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__96
  bl __init_l_tst1___closed__96
  adrp x8, _l_tst1___closed__96@PAGE
  add x8, x8, _l_tst1___closed__96@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__97
  bl __init_l_tst1___closed__97
  adrp x8, _l_tst1___closed__97@PAGE
  add x8, x8, _l_tst1___closed__97@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__98
  bl __init_l_tst1___closed__98
  adrp x8, _l_tst1___closed__98@PAGE
  add x8, x8, _l_tst1___closed__98@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__99
  bl __init_l_tst1___closed__99
  adrp x8, _l_tst1___closed__99@PAGE
  add x8, x8, _l_tst1___closed__99@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__100
  bl __init_l_tst1___closed__100
  adrp x8, _l_tst1___closed__100@PAGE
  add x8, x8, _l_tst1___closed__100@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__100@PAGE
  add x8, x8, _l_tst1___closed__100@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__101
  bl __init_l_tst1___closed__101
  adrp x8, _l_tst1___closed__101@PAGE
  add x8, x8, _l_tst1___closed__101@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__101@PAGE
  add x8, x8, _l_tst1___closed__101@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__102
  bl __init_l_tst1___closed__102
  adrp x8, _l_tst1___closed__102@PAGE
  add x8, x8, _l_tst1___closed__102@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__102@PAGE
  add x8, x8, _l_tst1___closed__102@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__103
  bl __init_l_tst1___closed__103
  adrp x8, _l_tst1___closed__103@PAGE
  add x8, x8, _l_tst1___closed__103@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__103@PAGE
  add x8, x8, _l_tst1___closed__103@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__104___boxed__const__1
  bl __init_l_tst1___closed__104___boxed__const__1
  adrp x8, _l_tst1___closed__104___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__104___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__104___boxed__const__1@PAGE
  add x8, x8, _l_tst1___closed__104___boxed__const__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__104
  bl __init_l_tst1___closed__104
  adrp x8, _l_tst1___closed__104@PAGE
  add x8, x8, _l_tst1___closed__104@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst1___closed__104@PAGE
  add x8, x8, _l_tst1___closed__104@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__105
  bl __init_l_tst1___closed__105
  adrp x8, _l_tst1___closed__105@PAGE
  add x8, x8, _l_tst1___closed__105@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__106
  bl __init_l_tst1___closed__106
  adrp x8, _l_tst1___closed__106@PAGE
  add x8, x8, _l_tst1___closed__106@PAGEOFF
  str d0, [x8]

  // Initialize _l_tst1___closed__107
  bl __init_l_tst1___closed__107
  adrp x8, _l_tst1___closed__107@PAGE
  add x8, x8, _l_tst1___closed__107@PAGEOFF
  str d0, [x8]

  // Initialize _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0
  bl __init_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0
  adrp x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0@PAGE
  add x8, x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0@PAGE
  add x8, x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__0@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1
  bl __init_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1
  adrp x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1@PAGE
  add x8, x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1@PAGE
  add x8, x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2
  bl __init_l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2
  adrp x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2@PAGE
  add x8, x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2@PAGE
  add x8, x8, _l_List_toString___at___00IO_println___at___00tst3_spec__0_spec__0___closed__2@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_tst4___closed__0
  bl __init_l_tst4___closed__0
  adrp x8, _l_tst4___closed__0@PAGE
  add x8, x8, _l_tst4___closed__0@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_tst4___closed__0@PAGE
  add x8, x8, _l_tst4___closed__0@PAGEOFF
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
  str d0, [x8]

  // Initialize _l_main___closed__2
  bl __init_l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  add x8, x8, _l_main___closed__2@PAGEOFF
  str d0, [x8]

  // Initialize _l_main___closed__3
  bl __init_l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  add x8, x8, _l_main___closed__3@PAGEOFF
  str d0, [x8]

  // Initialize _l_main___closed__4
  bl __init_l_main___closed__4
  adrp x8, _l_main___closed__4@PAGE
  add x8, x8, _l_main___closed__4@PAGEOFF
  str d0, [x8]

  // Initialize _l_main___closed__5___boxed__const__1
  bl __init_l_main___closed__5___boxed__const__1
  adrp x8, _l_main___closed__5___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__5___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__5___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__5___boxed__const__1@PAGEOFF
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

  // Initialize _l_main___closed__6___boxed__const__1
  bl __init_l_main___closed__6___boxed__const__1
  adrp x8, _l_main___closed__6___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__6___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__6___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__6___boxed__const__1@PAGEOFF
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

  // Initialize _l_main___closed__7___boxed__const__1
  bl __init_l_main___closed__7___boxed__const__1
  adrp x8, _l_main___closed__7___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__7___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__7___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__7___boxed__const__1@PAGEOFF
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

  // Initialize _l_main___closed__8___boxed__const__1
  bl __init_l_main___closed__8___boxed__const__1
  adrp x8, _l_main___closed__8___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__8___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__8___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__8___boxed__const__1@PAGEOFF
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

  // Initialize _l_main___closed__9___boxed__const__1
  bl __init_l_main___closed__9___boxed__const__1
  adrp x8, _l_main___closed__9___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__9___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__9___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__9___boxed__const__1@PAGEOFF
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

  // Initialize _l_main___closed__10___boxed__const__1
  bl __init_l_main___closed__10___boxed__const__1
  adrp x8, _l_main___closed__10___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__10___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__10___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__10___boxed__const__1@PAGEOFF
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
  str d0, [x8]

  // Initialize _l_main___closed__12___boxed__const__1
  bl __init_l_main___closed__12___boxed__const__1
  adrp x8, _l_main___closed__12___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__12___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__12___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__12___boxed__const__1@PAGEOFF
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

  // Initialize _l_main___closed__13___boxed__const__1
  bl __init_l_main___closed__13___boxed__const__1
  adrp x8, _l_main___closed__13___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__13___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__13___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__13___boxed__const__1@PAGEOFF
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

  // Initialize _l_main___closed__14___boxed__const__1
  bl __init_l_main___closed__14___boxed__const__1
  adrp x8, _l_main___closed__14___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__14___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__14___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__14___boxed__const__1@PAGEOFF
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

  // Initialize _l_main___closed__15___boxed__const__1
  bl __init_l_main___closed__15___boxed__const__1
  adrp x8, _l_main___closed__15___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__15___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__15___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__15___boxed__const__1@PAGEOFF
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

  // Initialize _l_main___closed__16___boxed__const__1
  bl __init_l_main___closed__16___boxed__const__1
  adrp x8, _l_main___closed__16___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__16___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__16___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__16___boxed__const__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__16
  bl __init_l_main___closed__16
  adrp x8, _l_main___closed__16@PAGE
  add x8, x8, _l_main___closed__16@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__16@PAGE
  add x8, x8, _l_main___closed__16@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__17___boxed__const__1
  bl __init_l_main___closed__17___boxed__const__1
  adrp x8, _l_main___closed__17___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__17___boxed__const__1@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__17___boxed__const__1@PAGE
  add x8, x8, _l_main___closed__17___boxed__const__1@PAGEOFF
  ldr x0, [x8]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__17
  bl __init_l_main___closed__17
  adrp x8, _l_main___closed__17@PAGE
  add x8, x8, _l_main___closed__17@PAGEOFF
  str x0, [x8]
  // Mark persistent
  adrp x8, _l_main___closed__17@PAGE
  add x8, x8, _l_main___closed__17@PAGEOFF
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
