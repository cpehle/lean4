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
  .globl _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2
_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0
_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0:
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
  .globl _l_IO_println___at___tst1_spec__8___closed__4
_l_IO_println___at___tst1_spec__8___closed__4:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___tst1_spec__8___closed__3
_l_IO_println___at___tst1_spec__8___closed__3:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___tst1_spec__8___closed__2
_l_IO_println___at___tst1_spec__8___closed__2:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___tst1_spec__8___closed__1
_l_IO_println___at___tst1_spec__8___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___tst1_spec__8___closed__0
_l_IO_println___at___tst1_spec__8___closed__0:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___tst1_spec__2___closed__1
_l_IO_println___at___tst1_spec__2___closed__1:
  .quad 0  // Object initialized at startup
  .align 3  // doubleword alignment
  .globl _l_IO_println___at___tst1_spec__2___closed__0
_l_IO_println___at___tst1_spec__2___closed__0:
  .quad 0  // Object initialized at startup

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
  sub sp, sp, #96
  // Stack frame: 96 bytes (11 spilled vars)
.Lfn_start_main:
  mov x19, x0
  // call tst1 with 1 runtime args
  mov x0, x19
  bl _l_tst1
  mov x23, x0
  // case
  // runtime scalar check
  tst x23, #1
  b.ne .Lscalar_tag0_fn771961157887135399
  ldrb w8, [x23, #7]
  b .Lcompare_tag1_fn771961157887135399
.Lscalar_tag0_fn771961157887135399:
  lsr x8, x23, #1
.Lcompare_tag1_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor4_fn771961157887135399
  b .Lcase_end2_fn771961157887135399
.Lcase_ctor3_fn771961157887135399:
  // proj field 1
  ldr x24, [x23, #16]
  // inc 1
  mov x0, x24
  bl _lean_inc
  // dec 1
  mov x0, x23
  bl _lean_dec_ref
  // load global constant _l_main___closed__0
  adrp x22, _l_main___closed__0@PAGE
  ldr x22, [x22, _l_main___closed__0@PAGEOFF]
  // call IO.println._at_.main.spec_0 with 2 runtime args
  mov x0, x22
  mov x1, x24
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
  // store result to spilled vreg21
  // store to stack slot 0
  str x8, [sp]
  // inc 1
  // load spilled vreg21 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  movz x0, #7, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg22
  // store to stack slot 2
  str x8, [sp, #16]
  // call tst2 with 2 runtime args
  // load spilled vreg22 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg21 from stack slot 0
  ldr x8, [sp]
  mov x1, x8
  bl _l_tst2
  mov x8, x0
  // store result to spilled vreg23
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg23 from stack slot 3
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
  // load spilled vreg23 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg24
  // store to stack slot 4
  str x8, [sp, #32]
  // inc 1
  // load spilled vreg24 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg23 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_main___closed__10
  adrp x8, _l_main___closed__10@PAGE
  ldr x8, [x8, _l_main___closed__10@PAGEOFF]
  // store result to spilled vreg25
  // store to stack slot 5
  str x8, [sp, #40]
  // load global constant _l_tst1___closed__1
  adrp x8, _l_tst1___closed__1@PAGE
  ldr x8, [x8, _l_tst1___closed__1@PAGEOFF]
  // store result to spilled vreg26
  // store to stack slot 6
  str x8, [sp, #48]
  // call tst3 with 3 runtime args
  // load spilled vreg25 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg26 from stack slot 6
  ldr x8, [sp, #48]
  mov x1, x8
  // load spilled vreg24 from stack slot 4
  ldr x8, [sp, #32]
  mov x2, x8
  bl _l_tst3
  mov x8, x0
  // store result to spilled vreg27
  // store to stack slot 7
  str x8, [sp, #56]
  // load spilled vreg27 from stack slot 7
  ldr x8, [sp, #56]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag15_fn771961157887135399
  ldrb w8, [x8, #7]
  b .Lcompare_tag16_fn771961157887135399
.Lscalar_tag15_fn771961157887135399:
  lsr x8, x8, #1
.Lcompare_tag16_fn771961157887135399:
  cmp x8, #0
  b.eq .Lcase_ctor18_fn771961157887135399
  cmp x8, #1
  b.eq .Lcase_ctor19_fn771961157887135399
  b .Lcase_end17_fn771961157887135399
.Lcase_ctor18_fn771961157887135399:
  // load spilled vreg27 from stack slot 7
  ldr x8, [sp, #56]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg28
  // store to stack slot 8
  str x8, [sp, #64]
  // inc 1
  // load spilled vreg28 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg27 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_main___closed__17
  adrp x8, _l_main___closed__17@PAGE
  ldr x8, [x8, _l_main___closed__17@PAGEOFF]
  // store result to spilled vreg29
  // store to stack slot 9
  str x8, [sp, #72]
  // call tst4 with 2 runtime args
  // load spilled vreg29 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  // load spilled vreg28 from stack slot 8
  ldr x8, [sp, #64]
  mov x1, x8
  bl _l_tst4
  mov x8, x0
  // store result to spilled vreg30
  // store to stack slot 10
  str x8, [sp, #80]
  // return
  // load spilled vreg30 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end17_fn771961157887135399
.Lcase_ctor19_fn771961157887135399:
  // return
  // load spilled vreg27 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end17_fn771961157887135399
.Lcase_end17_fn771961157887135399:
  b .Lcase_end12_fn771961157887135399
.Lcase_ctor14_fn771961157887135399:
  // return
  // load spilled vreg23 from stack slot 3
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
  b .Lcase_end12_fn771961157887135399
.Lcase_end12_fn771961157887135399:
  b .Lcase_end7_fn771961157887135399
.Lcase_ctor9_fn771961157887135399:
  // return
  mov x0, x20
  add sp, sp, #96
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
  mov x0, x23
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn771961157887135399
.Lcase_end2_fn771961157887135399:

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
.Lfn_start_main._closed_17:
  // load global constant _l_main___closed__16
  adrp x27, _l_main___closed__16@PAGE
  ldr x27, [x27, _l_main___closed__16@PAGEOFF]
  // load global constant _l_main___closed__17___boxed__const__1
  adrp x26, _l_main___closed__17___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__17___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__17___boxed__const__1
  .align 2
__init_l_main___closed__17___boxed__const__1:
  // Function: main._closed_17._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_17._boxed_const_1:
  // load global constant _l_tst1___closed__3
  adrp x27, _l_tst1___closed__3@PAGE
  ldr x27, [x27, _l_tst1___closed__3@PAGEOFF]
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
  adrp x27, _l_main___closed__15@PAGE
  ldr x27, [x27, _l_main___closed__15@PAGEOFF]
  // load global constant _l_main___closed__16___boxed__const__1
  adrp x26, _l_main___closed__16___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__16___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__16___boxed__const__1
  .align 2
__init_l_main___closed__16___boxed__const__1:
  // Function: main._closed_16._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_16._boxed_const_1:
  // load global constant _l_main___closed__11
  adrp x27, _l_main___closed__11@PAGE
  ldr x27, [x27, _l_main___closed__11@PAGEOFF]
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
  // load global constant _l_main___closed__14
  adrp x27, _l_main___closed__14@PAGE
  ldr x27, [x27, _l_main___closed__14@PAGEOFF]
  // load global constant _l_main___closed__15___boxed__const__1
  adrp x26, _l_main___closed__15___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__15___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__15___boxed__const__1
  .align 2
__init_l_main___closed__15___boxed__const__1:
  // Function: main._closed_15._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_15._boxed_const_1:
  // load global constant _l_tst1___closed__21
  adrp x27, _l_tst1___closed__21@PAGE
  ldr x27, [x27, _l_tst1___closed__21@PAGEOFF]
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
  // load global constant _l_main___closed__13
  adrp x27, _l_main___closed__13@PAGE
  ldr x27, [x27, _l_main___closed__13@PAGEOFF]
  // load global constant _l_main___closed__14___boxed__const__1
  adrp x26, _l_main___closed__14___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__14___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__14___boxed__const__1
  .align 2
__init_l_main___closed__14___boxed__const__1:
  // Function: main._closed_14._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_14._boxed_const_1:
  // load global constant _l_tst1___closed__78
  adrp x27, _l_tst1___closed__78@PAGE
  ldr x27, [x27, _l_tst1___closed__78@PAGEOFF]
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
  // load global constant _l_main___closed__12
  adrp x27, _l_main___closed__12@PAGE
  ldr x27, [x27, _l_main___closed__12@PAGEOFF]
  // load global constant _l_main___closed__13___boxed__const__1
  adrp x26, _l_main___closed__13___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__13___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__13___boxed__const__1
  .align 2
__init_l_main___closed__13___boxed__const__1:
  // Function: main._closed_13._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_13._boxed_const_1:
  // load global constant _l_tst1___closed__96
  adrp x27, _l_tst1___closed__96@PAGE
  ldr x27, [x27, _l_tst1___closed__96@PAGEOFF]
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
  // ctor List.nil (tag=0, objs=0, scalar=0)
  mov x27, #1
  // load global constant _l_main___closed__12___boxed__const__1
  adrp x26, _l_main___closed__12___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__12___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__12___boxed__const__1
  .align 2
__init_l_main___closed__12___boxed__const__1:
  // Function: main._closed_12._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_12._boxed_const_1:
  // load global constant _l_tst1___closed__79
  adrp x27, _l_tst1___closed__79@PAGE
  ldr x27, [x27, _l_tst1___closed__79@PAGEOFF]
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
  // load global constant _l_tst1___closed__3
  adrp x27, _l_tst1___closed__3@PAGE
  ldr x27, [x27, _l_tst1___closed__3@PAGEOFF]
  // call Float.neg with 1 runtime args
  fmov d0, x27
  bl _lean_float_negate
  fmov x26, d0
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
  // load global constant _l_main___closed__9
  adrp x27, _l_main___closed__9@PAGE
  ldr x27, [x27, _l_main___closed__9@PAGEOFF]
  // load global constant _l_main___closed__10___boxed__const__1
  adrp x26, _l_main___closed__10___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__10___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__10___boxed__const__1
  .align 2
__init_l_main___closed__10___boxed__const__1:
  // Function: main._closed_10._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_10._boxed_const_1:
  // load global constant _l_tst1___closed__3
  adrp x27, _l_tst1___closed__3@PAGE
  ldr x27, [x27, _l_tst1___closed__3@PAGEOFF]
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
  // load global constant _l_main___closed__9___boxed__const__1
  adrp x26, _l_main___closed__9___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__9___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__9___boxed__const__1
  .align 2
__init_l_main___closed__9___boxed__const__1:
  // Function: main._closed_9._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_9._boxed_const_1:
  // load global constant _l_tst1___closed__8
  adrp x27, _l_tst1___closed__8@PAGE
  ldr x27, [x27, _l_tst1___closed__8@PAGEOFF]
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
  // load global constant _l_main___closed__7
  adrp x27, _l_main___closed__7@PAGE
  ldr x27, [x27, _l_main___closed__7@PAGEOFF]
  // load global constant _l_main___closed__8___boxed__const__1
  adrp x26, _l_main___closed__8___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__8___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__8___boxed__const__1
  .align 2
__init_l_main___closed__8___boxed__const__1:
  // Function: main._closed_8._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_8._boxed_const_1:
  // load global constant _l_main___closed__1
  adrp x27, _l_main___closed__1@PAGE
  ldr x27, [x27, _l_main___closed__1@PAGEOFF]
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
  // load global constant _l_main___closed__7___boxed__const__1
  adrp x26, _l_main___closed__7___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__7___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__7___boxed__const__1
  .align 2
__init_l_main___closed__7___boxed__const__1:
  // Function: main._closed_7._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_7._boxed_const_1:
  // load global constant _l_main___closed__2
  adrp x27, _l_main___closed__2@PAGE
  ldr x27, [x27, _l_main___closed__2@PAGEOFF]
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
  // load global constant _l_main___closed__5
  adrp x27, _l_main___closed__5@PAGE
  ldr x27, [x27, _l_main___closed__5@PAGEOFF]
  // load global constant _l_main___closed__6___boxed__const__1
  adrp x26, _l_main___closed__6___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__6___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__6___boxed__const__1
  .align 2
__init_l_main___closed__6___boxed__const__1:
  // Function: main._closed_6._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_6._boxed_const_1:
  // load global constant _l_main___closed__3
  adrp x27, _l_main___closed__3@PAGE
  ldr x27, [x27, _l_main___closed__3@PAGEOFF]
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
  // ctor List.nil (tag=0, objs=0, scalar=0)
  mov x27, #1
  // load global constant _l_main___closed__5___boxed__const__1
  adrp x26, _l_main___closed__5___boxed__const__1@PAGE
  ldr x26, [x26, _l_main___closed__5___boxed__const__1@PAGEOFF]
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

  .globl __init_l_main___closed__5___boxed__const__1
  .align 2
__init_l_main___closed__5___boxed__const__1:
  // Function: main._closed_5._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_main._closed_5._boxed_const_1:
  // load global constant _l_main___closed__4
  adrp x27, _l_main___closed__4@PAGE
  ldr x27, [x27, _l_main___closed__4@PAGEOFF]
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
  movz x0, #11, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
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
  movz x0, #9, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
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
  movz x0, #8, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
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
.Lfn_start_main._closed_1:
  movz x0, #7, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
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
.Lfn_start_main._closed_0:
  // string literal: -----
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
  .asciz "-----"
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
.Lfn_start_IO.println._at_.main.spec_0:
  mov x19, x0
  mov x20, x1
  mov x27, #10
  // call String.push with 2 runtime args
  mov x0, x19
  mov x1, x27
  bl _lean_string_push
  mov x26, x0
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  mov x0, x26
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
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

  .globl _l_tst4___lam__0___boxed
  .align 2
_l_tst4___lam__0___boxed:
  // Function: tst4._lam_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst4._lam_0._boxed:
  mov x19, x0
  // unbox
  asr x27, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // call tst4._lam_0 with 1 runtime args
  mov x0, x27
  bl _l_tst4___lam__0
  fmov x26, d0
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_tst4
  .align 2
_l_tst4:
  // Function: tst4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst4:
  mov x19, x0
  mov x20, x1
  // partial application tst4._lam_0._boxed with 0 args
  adrp x0, _l_tst4___lam__0___boxed@PAGE
  add x0, x0, _l_tst4___lam__0___boxed@PAGEOFF
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_closure
  mov x27, x0
  // call fMap with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_fMap
  mov x24, x0
  // call IO.println._at_.tst3.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_IO_println___at___tst3_spec__0
  mov x25, x0
  // dec 1
  mov x0, x24
  bl _lean_dec
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_tst4___lam__0
  .align 2
_l_tst4___lam__0:
  // Function: tst4._lam_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst4._lam_0:
  mov x19, x0
  // call Float.abs with 1 runtime args
  fmov d0, x19
  bl _fabs
  fmov x27, d0
  // return
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst3._boxed:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // unbox
  asr x27, x20, #1
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // call tst3 with 3 runtime args
  mov x0, x19
  mov x1, x27
  mov x2, x21
  bl _l_tst3
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

  .globl _l_tst3___lam__0___boxed
  .align 2
_l_tst3___lam__0___boxed:
  // Function: tst3._lam_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst3._lam_0._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // unbox
  asr x26, x20, #1
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // call tst3._lam_0 with 2 runtime args
  mov x0, x27
  mov x1, x26
  bl _l_tst3___lam__0
  fmov x25, d0
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

  .globl _l_IO_println___at___tst3_spec__0___boxed
  .align 2
_l_IO_println___at___tst3_spec__0___boxed:
  // Function: IO.println._at_.tst3.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst3.spec_0._boxed:
  mov x19, x0
  mov x20, x1
  // call IO.println._at_.tst3.spec_0 with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_IO_println___at___tst3_spec__0
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

  .globl _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___boxed
  .align 2
_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___boxed:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._boxed:
  mov x19, x0
  // call List.toString._at_.IO.println._at_.tst3.spec_0.spec_0 with 1 runtime args
  mov x0, x19
  bl _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0
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

  .globl _l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0___boxed
  .align 2
_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0___boxed:
  // Function: List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_0._boxed:
  mov x19, x0
  mov x20, x1
  // call List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_0 with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0
  mov x27, x0
  // dec 1
  mov x0, x20
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

  .globl _l_tst3
  .align 2
_l_tst3:
  // Function: tst3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst3:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // box
  lsl x27, x20, #1
  orr x27, x27, #1
  // partial application tst3._lam_0._boxed with 1 args
  adrp x0, _l_tst3___lam__0___boxed@PAGE
  add x0, x0, _l_tst3___lam__0___boxed@PAGEOFF
  mov x1, #2
  mov x2, #1
  bl _lean_alloc_closure
  mov x1, #0
  mov x2, x27
  bl _lean_closure_set
  mov x26, x0
  // call fMap with 2 runtime args
  mov x0, x26
  mov x1, x19
  bl _l_fMap
  mov x23, x0
  // call IO.println._at_.tst3.spec_0 with 2 runtime args
  mov x0, x23
  mov x1, x21
  bl _l_IO_println___at___tst3_spec__0
  mov x24, x0
  // dec 1
  mov x0, x23
  bl _lean_dec
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst3._lam_0:
  mov x19, x0
  mov x20, x1
  // call Float.div with 2 runtime args
  fmov d0, x20
  fmov d1, x19
  bl _lean_float_div
  fmov x27, d0
  // return
  mov x0, x27
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___tst3_spec__0
  .align 2
_l_IO_println___at___tst3_spec__0:
  // Function: IO.println._at_.tst3.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst3.spec_0:
  mov x19, x0
  mov x20, x1
  // call List.toString._at_.IO.println._at_.tst3.spec_0.spec_0 with 1 runtime args
  mov x0, x19
  bl _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0
  mov x27, x0
  mov x26, #10
  // call String.push with 2 runtime args
  mov x0, x27
  mov x1, x26
  bl _lean_string_push
  mov x25, x0
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  mov x0, x25
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
  mov x24, x0
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0
  .align 2
_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #96
  // Stack frame: 96 bytes (12 spilled vars)
.Lfn_start_List.toString._at_.IO.println._at_.tst3.spec_0.spec_0:
  mov x19, x0
  // case
  // runtime scalar check
  tst x19, #1
  b.ne .Lscalar_tag0_fn11434589077015883596
  ldrb w8, [x19, #7]
  b .Lcompare_tag1_fn11434589077015883596
.Lscalar_tag0_fn11434589077015883596:
  lsr x8, x19, #1
.Lcompare_tag1_fn11434589077015883596:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn11434589077015883596
  cmp x8, #1
  b.eq .Lcase_ctor4_fn11434589077015883596
  b .Lcase_end2_fn11434589077015883596
.Lcase_ctor3_fn11434589077015883596:
  // load global constant _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0
  adrp x26, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGE
  ldr x26, [x26, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGEOFF]
  // return
  mov x0, x26
  add sp, sp, #96
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn11434589077015883596
.Lcase_ctor4_fn11434589077015883596:
  // proj field 1
  ldr x24, [x19, #16]
  // case
  // runtime scalar check
  tst x24, #1
  b.ne .Lscalar_tag5_fn11434589077015883596
  ldrb w8, [x24, #7]
  b .Lcompare_tag6_fn11434589077015883596
.Lscalar_tag5_fn11434589077015883596:
  lsr x8, x24, #1
.Lcompare_tag6_fn11434589077015883596:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn11434589077015883596
  cmp x8, #1
  b.eq .Lcase_ctor9_fn11434589077015883596
  b .Lcase_end7_fn11434589077015883596
.Lcase_ctor8_fn11434589077015883596:
  // proj field 0
  ldr x23, [x19, #8]
  // load global constant _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
  adrp x22, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGE
  ldr x22, [x22, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGEOFF]
  // unbox
  asr x21, x23, #1
  // call Float.toString with 1 runtime args
  fmov d0, x21
  bl _lean_float_to_string
  mov x20, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x22
  mov x1, x20
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg26
  // store to stack slot 0
  str x8, [sp]
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2
  adrp x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGE
  ldr x8, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGEOFF]
  // store result to spilled vreg27
  // store to stack slot 2
  str x8, [sp, #16]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg26 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  // load spilled vreg27 from stack slot 2
  ldr x8, [sp, #16]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 3
  str x8, [sp, #24]
  // dec 1
  // return
  // load spilled vreg28 from stack slot 3
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
  b .Lcase_end7_fn11434589077015883596
.Lcase_ctor9_fn11434589077015883596:
  // proj field 0
  ldr x8, [x19, #8]
  // store result to spilled vreg29
  // store to stack slot 4
  str x8, [sp, #32]
  // load global constant _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
  adrp x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGE
  ldr x8, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGEOFF]
  // store result to spilled vreg30
  // store to stack slot 5
  str x8, [sp, #40]
  // load spilled vreg29 from stack slot 4
  ldr x8, [sp, #32]
  // unbox
  asr x8, x8, #1
  // store result to spilled vreg31
  // store to stack slot 6
  str x8, [sp, #48]
  // call Float.toString with 1 runtime args
  // load spilled vreg31 from stack slot 6
  ldr x8, [sp, #48]
  fmov d0, x8
  bl _lean_float_to_string
  mov x8, x0
  // store result to spilled vreg32
  // store to stack slot 7
  str x8, [sp, #56]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg30 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg32 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg33
  // store to stack slot 8
  str x8, [sp, #64]
  // dec 1
  // load spilled vreg32 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_dec_ref
  // call List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_0 with 2 runtime args
  // load spilled vreg33 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  mov x1, x24
  bl _l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0
  mov x8, x0
  // store result to spilled vreg34
  // store to stack slot 9
  str x8, [sp, #72]
  mov x8, #93
  // store result to spilled vreg35
  // store to stack slot 10
  str x8, [sp, #80]
  // call String.push with 2 runtime args
  // load spilled vreg34 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  // load spilled vreg35 from stack slot 10
  ldr x8, [sp, #80]
  mov x1, x8
  bl _lean_string_push
  mov x28, x0
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
  b .Lcase_end7_fn11434589077015883596
.Lcase_end7_fn11434589077015883596:
  b .Lcase_end2_fn11434589077015883596
.Lcase_end2_fn11434589077015883596:

  .globl __init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2
  .align 2
__init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._closed_2:
  // string literal: ]
  adrp x0, .Lstrptr_10131178209625765970_0@PAGE
  ldr x0, [x0, .Lstrptr_10131178209625765970_0@PAGEOFF]
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
.Lstrptr_10131178209625765970_0:
  .quad .Lstr_10131178209625765970_0
.Lstr_10131178209625765970_0:
  .asciz "]"
  .text

  .globl __init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
  .align 2
__init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._closed_1:
  // string literal: [
  adrp x0, .Lstrptr_1344517757162970137_0@PAGE
  ldr x0, [x0, .Lstrptr_1344517757162970137_0@PAGEOFF]
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
.Lstrptr_1344517757162970137_0:
  .quad .Lstr_1344517757162970137_0
.Lstr_1344517757162970137_0:
  .asciz "["
  .text

  .globl __init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0
  .align 2
__init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0:
  // Function: List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_List.toString._at_.IO.println._at_.tst3.spec_0.spec_0._closed_0:
  // string literal: []
  adrp x0, .Lstrptr_8407851684091091537_0@PAGE
  ldr x0, [x0, .Lstrptr_8407851684091091537_0@PAGEOFF]
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
.Lstrptr_8407851684091091537_0:
  .quad .Lstr_8407851684091091537_0
.Lstr_8407851684091091537_0:
  .asciz "[]"
  .text

  .globl _l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0
  .align 2
_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0:
  // Function: List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #32
  // Stack frame: 32 bytes (3 spilled vars)
.Lfn_start_List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_0:
  mov x19, x0
  mov x20, x1
  // case
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn9444850555647315940
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn9444850555647315940
.Lscalar_tag0_fn9444850555647315940:
  lsr x8, x20, #1
.Lcompare_tag1_fn9444850555647315940:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn9444850555647315940
  cmp x8, #1
  b.eq .Lcase_ctor4_fn9444850555647315940
  b .Lcase_end2_fn9444850555647315940
.Lcase_ctor3_fn9444850555647315940:
  // return
  mov x0, x19
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn9444850555647315940
.Lcase_ctor4_fn9444850555647315940:
  // proj field 0
  ldr x27, [x20, #8]
  // proj field 1
  ldr x26, [x20, #16]
  // load global constant _l_IO_println___at___tst1_spec__8___closed__1
  adrp x23, _l_IO_println___at___tst1_spec__8___closed__1@PAGE
  ldr x23, [x23, _l_IO_println___at___tst1_spec__8___closed__1@PAGEOFF]
  // call String.Internal.append with 2 runtime args
  mov x0, x19
  mov x1, x23
  bl _lean_string_append
  mov x24, x0
  // dec 1
  // unbox
  asr x22, x27, #1
  // call Float.toString with 1 runtime args
  fmov d0, x22
  bl _lean_float_to_string
  mov x21, x0
  // call String.Internal.append with 2 runtime args
  mov x0, x24
  mov x1, x21
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg19
  // store to stack slot 0
  str x8, [sp]
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // tail call to List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_0
  // load spilled vreg19 from stack slot 0
  ldr x8, [sp]
  mov x0, x8
  mov x1, x26
  b .Lfn_start_List.foldl._at_.List.toString._at_.IO.println._at_.tst3.spec_0.spec_0.spec_0
  b .Lcase_end2_fn9444850555647315940
.Lcase_end2_fn9444850555647315940:

  .globl _l_fMap
  .align 2
_l_fMap:
  // Function: fMap
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_fMap:
  mov x19, x0
  mov x20, x1
  // ctor List.nil (tag=0, objs=0, scalar=0)
  mov x27, #1
  // call List.mapTR.loop._at_.fMap.spec_0 with 3 runtime args
  mov x0, x19
  mov x1, x20
  mov x2, x27
  bl _l_List_mapTR_loop___at___fMap_spec__0
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

  .globl _l_List_mapTR_loop___at___fMap_spec__0
  .align 2
_l_List_mapTR_loop___at___fMap_spec__0:
  // Function: List.mapTR.loop._at_.fMap.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #80
  // Stack frame: 80 bytes (9 spilled vars)
.Lfn_start_List.mapTR.loop._at_.fMap.spec_0:
  mov x19, x0
  mov x20, x1
  mov x21, x2
  // case
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag0_fn7002005852911027059
  ldrb w8, [x20, #7]
  b .Lcompare_tag1_fn7002005852911027059
.Lscalar_tag0_fn7002005852911027059:
  lsr x8, x20, #1
.Lcompare_tag1_fn7002005852911027059:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn7002005852911027059
  cmp x8, #1
  b.eq .Lcase_ctor4_fn7002005852911027059
  b .Lcase_end2_fn7002005852911027059
.Lcase_ctor3_fn7002005852911027059:
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // call List.reverse._redArg with 1 runtime args
  mov x0, x21
  bl _l_List_reverse___redArg
  mov x26, x0
  // return
  mov x0, x26
  add sp, sp, #80
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn7002005852911027059
.Lcase_ctor4_fn7002005852911027059:
  // isShared
  ldr x24, [x20]
  cmp x24, #1
  mov x8, #1
  csel x24, x8, xzr, gt
  // case
  mov x8, x24
  cmp x8, #0
  b.eq .Lcase_ctor6_fn7002005852911027059
  cmp x8, #1
  b.eq .Lcase_ctor7_fn7002005852911027059
  b .Lcase_end5_fn7002005852911027059
.Lcase_ctor6_fn7002005852911027059:
  // proj field 0
  ldr x23, [x20, #8]
  // proj field 1
  ldr x22, [x20, #16]
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // application with 1 args
  mov x0, x19
  mov x1, x23
  bl _lean_apply_1
  mov x8, x0
  // store result to spilled vreg22
  // store to stack slot 0
  str x8, [sp]
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg23 into stack slot 1
  str x0, [sp, #8]
  ldr x0, [sp, #8]
  mov x1, #0
  mov x2, x20
  bl _lean_ctor_set
  ldr x0, [sp, #8]
  mov x1, #1
  mov x2, x21
  bl _lean_ctor_set
  // ctor update (tag=0, objs=1, scalar=0)
  mov x0, #0
  mov x1, #1
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg24 into stack slot 2
  str x0, [sp, #16]
  // load spilled vreg23 from stack slot 1
  ldr x8, [sp, #8]
  ldr x0, [sp, #16]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  // load spilled vreg22 from stack slot 0
  ldr x8, [sp]
  ldr x0, [sp, #16]
  mov x1, #1
  mov x2, x8
  bl _lean_ctor_set
  // tail call to List.mapTR.loop._at_.fMap.spec_0
  mov x0, x19
  mov x1, x22
  // load spilled vreg24 from stack slot 2
  ldr x8, [sp, #16]
  mov x2, x8
  b .Lfn_start_List.mapTR.loop._at_.fMap.spec_0
  b .Lcase_end5_fn7002005852911027059
.Lcase_ctor7_fn7002005852911027059:
  // proj field 0
  ldr x8, [x20, #8]
  // store result to spilled vreg26
  // store to stack slot 4
  str x8, [sp, #32]
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg27
  // store to stack slot 5
  str x8, [sp, #40]
  // inc 1
  // load spilled vreg27 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  bl _lean_inc
  // inc 1
  // load spilled vreg26 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec
  // inc 1
  mov x0, x19
  bl _lean_inc_ref
  // application with 1 args
  mov x0, x19
  // load spilled vreg26 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _lean_apply_1
  mov x8, x0
  // store result to spilled vreg28
  // store to stack slot 6
  str x8, [sp, #48]
  // ctor List.cons (tag=1, objs=2, scalar=0)
  mov x0, #1
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg29 into stack slot 7
  str x0, [sp, #56]
  // load spilled vreg28 from stack slot 6
  ldr x8, [sp, #48]
  ldr x0, [sp, #56]
  mov x1, #0
  mov x2, x8
  bl _lean_ctor_set
  ldr x0, [sp, #56]
  mov x1, #1
  mov x2, x21
  bl _lean_ctor_set
  // tail call to List.mapTR.loop._at_.fMap.spec_0
  mov x0, x19
  // load spilled vreg27 from stack slot 5
  ldr x8, [sp, #40]
  mov x1, x8
  // load spilled vreg29 from stack slot 7
  ldr x8, [sp, #56]
  mov x2, x8
  b .Lfn_start_List.mapTR.loop._at_.fMap.spec_0
  b .Lcase_end5_fn7002005852911027059
.Lcase_end5_fn7002005852911027059:
  b .Lcase_end2_fn7002005852911027059
.Lcase_end2_fn7002005852911027059:

  .globl _l_tst2
  .align 2
_l_tst2:
  // Function: tst2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #32
  // Stack frame: 32 bytes (3 spilled vars)
.Lfn_start_tst2:
  mov x19, x0
  mov x20, x1
  // call mkFoo with 1 runtime args
  mov x0, x19
  bl _l_mkFoo
  mov x24, x0
  ldr x26, [x24, #16]
  ldr x25, [x24, #24]
  // dec 1
  mov x0, x24
  bl _lean_dec_ref
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  mov x0, x26
  mov x1, x20
  bl _l_IO_println___at___tst1_spec__0
  mov x22, x0
  // case
  // runtime scalar check
  tst x22, #1
  b.ne .Lscalar_tag0_fn18108318007890719699
  ldrb w8, [x22, #7]
  b .Lcompare_tag1_fn18108318007890719699
.Lscalar_tag0_fn18108318007890719699:
  lsr x8, x22, #1
.Lcompare_tag1_fn18108318007890719699:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn18108318007890719699
  cmp x8, #1
  b.eq .Lcase_ctor4_fn18108318007890719699
  b .Lcase_end2_fn18108318007890719699
.Lcase_ctor3_fn18108318007890719699:
  // proj field 1
  ldr x21, [x22, #16]
  // inc 1
  mov x0, x21
  bl _lean_inc
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  mov x0, x25
  mov x1, x21
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg16
  // store to stack slot 2
  str x8, [sp, #16]
  // return
  // load spilled vreg16 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn18108318007890719699
.Lcase_ctor4_fn18108318007890719699:
  // return
  mov x0, x22
  add sp, sp, #32
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn18108318007890719699
.Lcase_end2_fn18108318007890719699:

  .globl _l_mkFoo
  .align 2
_l_mkFoo:
  // Function: mkFoo
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #16
  // Stack frame: 16 bytes (2 spilled vars)
.Lfn_start_mkFoo:
  mov x19, x0
  // call UInt64.ofNat with 1 runtime args
  mov x0, x19
  bl _lean_uint64_of_nat
  mov x27, x0
  // inc 1
  mov x0, x19
  bl _lean_inc
  // call Float.ofNat with 1 runtime args
  mov x0, x19
  bl _lean_float_of_nat
  fmov x26, d0
  // load global constant _l_tst1___closed__3
  adrp x25, _l_tst1___closed__3@PAGE
  ldr x25, [x25, _l_tst1___closed__3@PAGEOFF]
  // call Float.div with 2 runtime args
  fmov d0, x26
  fmov d1, x25
  bl _lean_float_div
  fmov x24, d0
  // load global constant _l_tst1___closed__1
  adrp x23, _l_tst1___closed__1@PAGE
  ldr x23, [x23, _l_tst1___closed__1@PAGEOFF]
  // call Float.div with 2 runtime args
  fmov d0, x26
  fmov d1, x23
  bl _lean_float_div
  fmov x22, d0
  // ctor Foo.mk (tag=0, objs=1, scalar=24)
  mov x0, #0
  mov x1, #1
  mov x2, #24
  bl _lean_alloc_ctor
  mov x21, x0
  mov x0, x21
  mov x1, #0
  mov x2, x19
  bl _lean_ctor_set
  // ctor sset (tag=0, objs=1, scalar=8)
  mov x0, #0
  mov x1, #1
  mov x2, #8
  bl _lean_alloc_ctor
  mov x20, x0
  mov x0, x20
  mov x1, #0
  mov x2, x21
  bl _lean_ctor_set
  mov x0, x20
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // ctor sset (tag=0, objs=1, scalar=8)
  mov x0, #0
  mov x1, #1
  mov x2, #8
  bl _lean_alloc_ctor
  // store constructor for spilled dst vreg18 into stack slot 0
  str x0, [sp]
  ldr x0, [sp]
  mov x1, #0
  mov x2, x20
  bl _lean_ctor_set
  ldr x0, [sp]
  mov x1, #1
  mov x2, x24
  bl _lean_ctor_set
  // ctor sset (tag=0, objs=1, scalar=8)
  // load spilled vreg18 from stack slot 0
  ldr x8, [sp]
  mov x0, #0
  mov x1, #1
  mov x2, #8
  bl _lean_alloc_ctor
  mov x28, x0
  // load spilled vreg18 from stack slot 0
  ldr x8, [sp]
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
  add sp, sp, #16
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_Foo_ctorIdx___boxed
  .align 2
_l_Foo_ctorIdx___boxed:
  // Function: Foo.ctorIdx._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_Foo.ctorIdx._boxed:
  mov x19, x0
  // call Foo.ctorIdx with 1 runtime args
  mov x0, x19
  bl _l_Foo_ctorIdx
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

  .globl _l_Foo_ctorIdx
  .align 2
_l_Foo_ctorIdx:
  // Function: Foo.ctorIdx
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_Foo.ctorIdx:
  mov x19, x0
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
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

  .globl _l_IO_println___at___tst1_spec__8___boxed
  .align 2
_l_IO_println___at___tst1_spec__8___boxed:
  // Function: IO.println._at_.tst1.spec_8._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_8._boxed:
  mov x19, x0
  mov x20, x1
  // call IO.println._at_.tst1.spec_8 with 2 runtime args
  mov x0, x19
  mov x1, x20
  bl _l_IO_println___at___tst1_spec__8
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

  .globl _l_IO_println___at___tst1_spec__7___boxed
  .align 2
_l_IO_println___at___tst1_spec__7___boxed:
  // Function: IO.println._at_.tst1.spec_7._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_7._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec
  // call IO.println._at_.tst1.spec_7 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___tst1_spec__7
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

  .globl _l_IO_println___at___tst1_spec__6___boxed
  .align 2
_l_IO_println___at___tst1_spec__6___boxed:
  // Function: IO.println._at_.tst1.spec_6._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_6._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec
  // call IO.println._at_.tst1.spec_6 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___tst1_spec__6
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

  .globl _l_IO_println___at___tst1_spec__5___boxed
  .align 2
_l_IO_println___at___tst1_spec__5___boxed:
  // Function: IO.println._at_.tst1.spec_5._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_5._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec
  // call IO.println._at_.tst1.spec_5 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___tst1_spec__5
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

  .globl _l_IO_println___at___tst1_spec__4___boxed
  .align 2
_l_IO_println___at___tst1_spec__4___boxed:
  // Function: IO.println._at_.tst1.spec_4._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_4._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // call IO.println._at_.tst1.spec_4 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___tst1_spec__4
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

  .globl _l_IO_println___at___tst1_spec__3___boxed
  .align 2
_l_IO_println___at___tst1_spec__3___boxed:
  // Function: IO.println._at_.tst1.spec_3._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_3._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // call IO.println._at_.tst1.spec_3 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___tst1_spec__3
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

  .globl _l_IO_println___at___tst1_spec__2___boxed
  .align 2
_l_IO_println___at___tst1_spec__2___boxed:
  // Function: IO.println._at_.tst1.spec_2._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_2._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___tst1_spec__2
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

  .globl _l_IO_println___at___tst1_spec__0___boxed
  .align 2
_l_IO_println___at___tst1_spec__0___boxed:
  // Function: IO.println._at_.tst1.spec_0._boxed
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_0._boxed:
  mov x19, x0
  mov x20, x1
  // unbox
  asr x27, x19, #1
  // dec 1
  mov x0, x19
  bl _lean_dec_ref
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  mov x0, x27
  mov x1, x20
  bl _l_IO_println___at___tst1_spec__0
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
  sub sp, sp, #992
  // Stack frame: 992 bytes (124 spilled vars)
.Lfn_start_tst1:
  mov x19, x0
  // load global constant _l_tst1___closed__0
  adrp x27, _l_tst1___closed__0@PAGE
  ldr x27, [x27, _l_tst1___closed__0@PAGEOFF]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  mov x0, x27
  mov x1, x19
  bl _l_IO_println___at___tst1_spec__0
  mov x22, x0
  // case
  // runtime scalar check
  tst x22, #1
  b.ne .Lscalar_tag0_fn2118847436182466659
  ldrb w8, [x22, #7]
  b .Lcompare_tag1_fn2118847436182466659
.Lscalar_tag0_fn2118847436182466659:
  lsr x8, x22, #1
.Lcompare_tag1_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor3_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor4_fn2118847436182466659
  b .Lcase_end2_fn2118847436182466659
.Lcase_ctor3_fn2118847436182466659:
  // proj field 1
  ldr x23, [x22, #16]
  // inc 1
  mov x0, x23
  bl _lean_inc
  // dec 1
  mov x0, x22
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__2
  adrp x21, _l_tst1___closed__2@PAGE
  ldr x21, [x21, _l_tst1___closed__2@PAGEOFF]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  mov x0, x21
  mov x1, x23
  bl _l_IO_println___at___tst1_spec__0
  mov x20, x0
  // case
  // runtime scalar check
  tst x20, #1
  b.ne .Lscalar_tag5_fn2118847436182466659
  ldrb w8, [x20, #7]
  b .Lcompare_tag6_fn2118847436182466659
.Lscalar_tag5_fn2118847436182466659:
  lsr x8, x20, #1
.Lcompare_tag6_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor8_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor9_fn2118847436182466659
  b .Lcase_end7_fn2118847436182466659
.Lcase_ctor8_fn2118847436182466659:
  // proj field 1
  ldr x8, [x20, #16]
  // store result to spilled vreg136
  // store to stack slot 1
  str x8, [sp, #8]
  // inc 1
  // load spilled vreg136 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  bl _lean_inc
  // dec 1
  mov x0, x20
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__4
  adrp x8, _l_tst1___closed__4@PAGE
  ldr x8, [x8, _l_tst1___closed__4@PAGEOFF]
  // store result to spilled vreg137
  // store to stack slot 2
  str x8, [sp, #16]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  // load spilled vreg137 from stack slot 2
  ldr x8, [sp, #16]
  mov x0, x8
  // load spilled vreg136 from stack slot 1
  ldr x8, [sp, #8]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg138
  // store to stack slot 3
  str x8, [sp, #24]
  // load spilled vreg138 from stack slot 3
  ldr x8, [sp, #24]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag10_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag11_fn2118847436182466659
.Lscalar_tag10_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag11_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor13_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor14_fn2118847436182466659
  b .Lcase_end12_fn2118847436182466659
.Lcase_ctor13_fn2118847436182466659:
  // load spilled vreg138 from stack slot 3
  ldr x8, [sp, #24]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg139
  // store to stack slot 4
  str x8, [sp, #32]
  // inc 1
  // load spilled vreg139 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg138 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__5
  adrp x8, _l_tst1___closed__5@PAGE
  ldr x8, [x8, _l_tst1___closed__5@PAGEOFF]
  // store result to spilled vreg140
  // store to stack slot 5
  str x8, [sp, #40]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  // load spilled vreg140 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg139 from stack slot 4
  ldr x8, [sp, #32]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg141
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg141 from stack slot 6
  ldr x8, [sp, #48]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag15_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag16_fn2118847436182466659
.Lscalar_tag15_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag16_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor18_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor19_fn2118847436182466659
  b .Lcase_end17_fn2118847436182466659
.Lcase_ctor18_fn2118847436182466659:
  // load spilled vreg141 from stack slot 6
  ldr x8, [sp, #48]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg142
  // store to stack slot 7
  str x8, [sp, #56]
  // inc 1
  // load spilled vreg142 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg141 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__6
  adrp x8, _l_tst1___closed__6@PAGE
  ldr x8, [x8, _l_tst1___closed__6@PAGEOFF]
  // store result to spilled vreg143
  // store to stack slot 8
  str x8, [sp, #64]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  // load spilled vreg143 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  // load spilled vreg142 from stack slot 7
  ldr x8, [sp, #56]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg144
  // store to stack slot 9
  str x8, [sp, #72]
  // load spilled vreg144 from stack slot 9
  ldr x8, [sp, #72]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag20_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag21_fn2118847436182466659
.Lscalar_tag20_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag21_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor23_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor24_fn2118847436182466659
  b .Lcase_end22_fn2118847436182466659
.Lcase_ctor23_fn2118847436182466659:
  // load spilled vreg144 from stack slot 9
  ldr x8, [sp, #72]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg145
  // store to stack slot 10
  str x8, [sp, #80]
  // inc 1
  // load spilled vreg145 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg144 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__7
  adrp x8, _l_tst1___closed__7@PAGE
  add x8, x8, _l_tst1___closed__7@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg146
  // store to stack slot 11
  str x8, [sp, #88]
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  // load spilled vreg146 from stack slot 11
  ldr x8, [sp, #88]
  mov x0, x8
  // load spilled vreg145 from stack slot 10
  ldr x8, [sp, #80]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__2
  mov x8, x0
  // store result to spilled vreg147
  // store to stack slot 12
  str x8, [sp, #96]
  // load spilled vreg147 from stack slot 12
  ldr x8, [sp, #96]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag25_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag26_fn2118847436182466659
.Lscalar_tag25_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag26_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor28_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor29_fn2118847436182466659
  b .Lcase_end27_fn2118847436182466659
.Lcase_ctor28_fn2118847436182466659:
  // load spilled vreg147 from stack slot 12
  ldr x8, [sp, #96]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg148
  // store to stack slot 13
  str x8, [sp, #104]
  // inc 1
  // load spilled vreg148 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg147 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__9
  adrp x8, _l_tst1___closed__9@PAGE
  add x8, x8, _l_tst1___closed__9@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg149
  // store to stack slot 14
  str x8, [sp, #112]
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  // load spilled vreg149 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  // load spilled vreg148 from stack slot 13
  ldr x8, [sp, #104]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__2
  mov x8, x0
  // store result to spilled vreg150
  // store to stack slot 15
  str x8, [sp, #120]
  // load spilled vreg150 from stack slot 15
  ldr x8, [sp, #120]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag30_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag31_fn2118847436182466659
.Lscalar_tag30_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag31_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor33_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor34_fn2118847436182466659
  b .Lcase_end32_fn2118847436182466659
.Lcase_ctor33_fn2118847436182466659:
  // load spilled vreg150 from stack slot 15
  ldr x8, [sp, #120]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg151
  // store to stack slot 16
  str x8, [sp, #128]
  // inc 1
  // load spilled vreg151 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg150 from stack slot 15
  ldr x8, [sp, #120]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__10
  adrp x8, _l_tst1___closed__10@PAGE
  add x8, x8, _l_tst1___closed__10@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg152
  // store to stack slot 17
  str x8, [sp, #136]
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  // load spilled vreg152 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  // load spilled vreg151 from stack slot 16
  ldr x8, [sp, #128]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__2
  mov x8, x0
  // store result to spilled vreg153
  // store to stack slot 18
  str x8, [sp, #144]
  // load spilled vreg153 from stack slot 18
  ldr x8, [sp, #144]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag35_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag36_fn2118847436182466659
.Lscalar_tag35_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag36_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor38_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor39_fn2118847436182466659
  b .Lcase_end37_fn2118847436182466659
.Lcase_ctor38_fn2118847436182466659:
  // load spilled vreg153 from stack slot 18
  ldr x8, [sp, #144]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg154
  // store to stack slot 19
  str x8, [sp, #152]
  // inc 1
  // load spilled vreg154 from stack slot 19
  ldr x8, [sp, #152]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg153 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__11
  adrp x8, _l_tst1___closed__11@PAGE
  add x8, x8, _l_tst1___closed__11@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg155
  // store to stack slot 20
  str x8, [sp, #160]
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  // load spilled vreg155 from stack slot 20
  ldr x8, [sp, #160]
  mov x0, x8
  // load spilled vreg154 from stack slot 19
  ldr x8, [sp, #152]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__2
  mov x8, x0
  // store result to spilled vreg156
  // store to stack slot 21
  str x8, [sp, #168]
  // load spilled vreg156 from stack slot 21
  ldr x8, [sp, #168]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag40_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag41_fn2118847436182466659
.Lscalar_tag40_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag41_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor43_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor44_fn2118847436182466659
  b .Lcase_end42_fn2118847436182466659
.Lcase_ctor43_fn2118847436182466659:
  // load spilled vreg156 from stack slot 21
  ldr x8, [sp, #168]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg157
  // store to stack slot 22
  str x8, [sp, #176]
  // inc 1
  // load spilled vreg157 from stack slot 22
  ldr x8, [sp, #176]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg156 from stack slot 21
  ldr x8, [sp, #168]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__12
  adrp x8, _l_tst1___closed__12@PAGE
  add x8, x8, _l_tst1___closed__12@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg158
  // store to stack slot 23
  str x8, [sp, #184]
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  // load spilled vreg158 from stack slot 23
  ldr x8, [sp, #184]
  mov x0, x8
  // load spilled vreg157 from stack slot 22
  ldr x8, [sp, #176]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__2
  mov x8, x0
  // store result to spilled vreg159
  // store to stack slot 24
  str x8, [sp, #192]
  // load spilled vreg159 from stack slot 24
  ldr x8, [sp, #192]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag45_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag46_fn2118847436182466659
.Lscalar_tag45_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag46_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor48_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor49_fn2118847436182466659
  b .Lcase_end47_fn2118847436182466659
.Lcase_ctor48_fn2118847436182466659:
  // load spilled vreg159 from stack slot 24
  ldr x8, [sp, #192]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg160
  // store to stack slot 25
  str x8, [sp, #200]
  // inc 1
  // load spilled vreg160 from stack slot 25
  ldr x8, [sp, #200]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg159 from stack slot 24
  ldr x8, [sp, #192]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__13
  adrp x8, _l_tst1___closed__13@PAGE
  add x8, x8, _l_tst1___closed__13@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg161
  // store to stack slot 26
  str x8, [sp, #208]
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  // load spilled vreg161 from stack slot 26
  ldr x8, [sp, #208]
  mov x0, x8
  // load spilled vreg160 from stack slot 25
  ldr x8, [sp, #200]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__2
  mov x8, x0
  // store result to spilled vreg162
  // store to stack slot 27
  str x8, [sp, #216]
  // load spilled vreg162 from stack slot 27
  ldr x8, [sp, #216]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag50_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag51_fn2118847436182466659
.Lscalar_tag50_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag51_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor53_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor54_fn2118847436182466659
  b .Lcase_end52_fn2118847436182466659
.Lcase_ctor53_fn2118847436182466659:
  // load spilled vreg162 from stack slot 27
  ldr x8, [sp, #216]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg163
  // store to stack slot 28
  str x8, [sp, #224]
  // inc 1
  // load spilled vreg163 from stack slot 28
  ldr x8, [sp, #224]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg162 from stack slot 27
  ldr x8, [sp, #216]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__14
  adrp x8, _l_tst1___closed__14@PAGE
  add x8, x8, _l_tst1___closed__14@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg164
  // store to stack slot 29
  str x8, [sp, #232]
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  // load spilled vreg164 from stack slot 29
  ldr x8, [sp, #232]
  mov x0, x8
  // load spilled vreg163 from stack slot 28
  ldr x8, [sp, #224]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__2
  mov x8, x0
  // store result to spilled vreg165
  // store to stack slot 30
  str x8, [sp, #240]
  // load spilled vreg165 from stack slot 30
  ldr x8, [sp, #240]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag55_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag56_fn2118847436182466659
.Lscalar_tag55_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag56_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor58_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor59_fn2118847436182466659
  b .Lcase_end57_fn2118847436182466659
.Lcase_ctor58_fn2118847436182466659:
  // load spilled vreg165 from stack slot 30
  ldr x8, [sp, #240]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg166
  // store to stack slot 31
  str x8, [sp, #248]
  // inc 1
  // load spilled vreg166 from stack slot 31
  ldr x8, [sp, #248]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg165 from stack slot 30
  ldr x8, [sp, #240]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__15
  adrp x8, _l_tst1___closed__15@PAGE
  ldr x8, [x8, _l_tst1___closed__15@PAGEOFF]
  // store result to spilled vreg167
  // store to stack slot 32
  str x8, [sp, #256]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  // load spilled vreg167 from stack slot 32
  ldr x8, [sp, #256]
  mov x0, x8
  // load spilled vreg166 from stack slot 31
  ldr x8, [sp, #248]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg168
  // store to stack slot 33
  str x8, [sp, #264]
  // load spilled vreg168 from stack slot 33
  ldr x8, [sp, #264]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag60_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag61_fn2118847436182466659
.Lscalar_tag60_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag61_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor63_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor64_fn2118847436182466659
  b .Lcase_end62_fn2118847436182466659
.Lcase_ctor63_fn2118847436182466659:
  // load spilled vreg168 from stack slot 33
  ldr x8, [sp, #264]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg169
  // store to stack slot 34
  str x8, [sp, #272]
  // inc 1
  // load spilled vreg169 from stack slot 34
  ldr x8, [sp, #272]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg168 from stack slot 33
  ldr x8, [sp, #264]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__17
  adrp x8, _l_tst1___closed__17@PAGE
  ldr x8, [x8, _l_tst1___closed__17@PAGEOFF]
  // store result to spilled vreg170
  // store to stack slot 35
  str x8, [sp, #280]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  // load spilled vreg170 from stack slot 35
  ldr x8, [sp, #280]
  mov x0, x8
  // load spilled vreg169 from stack slot 34
  ldr x8, [sp, #272]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg171
  // store to stack slot 36
  str x8, [sp, #288]
  // load spilled vreg171 from stack slot 36
  ldr x8, [sp, #288]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag65_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag66_fn2118847436182466659
.Lscalar_tag65_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag66_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor68_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor69_fn2118847436182466659
  b .Lcase_end67_fn2118847436182466659
.Lcase_ctor68_fn2118847436182466659:
  // load spilled vreg171 from stack slot 36
  ldr x8, [sp, #288]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg172
  // store to stack slot 37
  str x8, [sp, #296]
  // inc 1
  // load spilled vreg172 from stack slot 37
  ldr x8, [sp, #296]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg171 from stack slot 36
  ldr x8, [sp, #288]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__19
  adrp x8, _l_tst1___closed__19@PAGE
  ldr x8, [x8, _l_tst1___closed__19@PAGEOFF]
  // store result to spilled vreg173
  // store to stack slot 38
  str x8, [sp, #304]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  // load spilled vreg173 from stack slot 38
  ldr x8, [sp, #304]
  mov x0, x8
  // load spilled vreg172 from stack slot 37
  ldr x8, [sp, #296]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg174
  // store to stack slot 39
  str x8, [sp, #312]
  // load spilled vreg174 from stack slot 39
  ldr x8, [sp, #312]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag70_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag71_fn2118847436182466659
.Lscalar_tag70_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag71_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor73_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor74_fn2118847436182466659
  b .Lcase_end72_fn2118847436182466659
.Lcase_ctor73_fn2118847436182466659:
  // load spilled vreg174 from stack slot 39
  ldr x8, [sp, #312]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg175
  // store to stack slot 40
  str x8, [sp, #320]
  // inc 1
  // load spilled vreg175 from stack slot 40
  ldr x8, [sp, #320]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg174 from stack slot 39
  ldr x8, [sp, #312]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__20
  adrp x8, _l_tst1___closed__20@PAGE
  ldr x8, [x8, _l_tst1___closed__20@PAGEOFF]
  // store result to spilled vreg176
  // store to stack slot 41
  str x8, [sp, #328]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  // load spilled vreg176 from stack slot 41
  ldr x8, [sp, #328]
  mov x0, x8
  // load spilled vreg175 from stack slot 40
  ldr x8, [sp, #320]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg177
  // store to stack slot 42
  str x8, [sp, #336]
  // load spilled vreg177 from stack slot 42
  ldr x8, [sp, #336]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag75_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag76_fn2118847436182466659
.Lscalar_tag75_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag76_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor78_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor79_fn2118847436182466659
  b .Lcase_end77_fn2118847436182466659
.Lcase_ctor78_fn2118847436182466659:
  // load spilled vreg177 from stack slot 42
  ldr x8, [sp, #336]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg178
  // store to stack slot 43
  str x8, [sp, #344]
  // inc 1
  // load spilled vreg178 from stack slot 43
  ldr x8, [sp, #344]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg177 from stack slot 42
  ldr x8, [sp, #336]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__23
  adrp x8, _l_tst1___closed__23@PAGE
  add x8, x8, _l_tst1___closed__23@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg179
  // store to stack slot 44
  str x8, [sp, #352]
  // call IO.println._at_.tst1.spec_3 with 2 runtime args
  // load spilled vreg179 from stack slot 44
  ldr x8, [sp, #352]
  mov x0, x8
  // load spilled vreg178 from stack slot 43
  ldr x8, [sp, #344]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__3
  mov x8, x0
  // store result to spilled vreg180
  // store to stack slot 45
  str x8, [sp, #360]
  // load spilled vreg180 from stack slot 45
  ldr x8, [sp, #360]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag80_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag81_fn2118847436182466659
.Lscalar_tag80_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag81_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor83_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor84_fn2118847436182466659
  b .Lcase_end82_fn2118847436182466659
.Lcase_ctor83_fn2118847436182466659:
  // load spilled vreg180 from stack slot 45
  ldr x8, [sp, #360]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg181
  // store to stack slot 46
  str x8, [sp, #368]
  // inc 1
  // load spilled vreg181 from stack slot 46
  ldr x8, [sp, #368]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg180 from stack slot 45
  ldr x8, [sp, #360]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__24
  adrp x8, _l_tst1___closed__24@PAGE
  add x8, x8, _l_tst1___closed__24@PAGEOFF
  ldrh w8, [x8]
  // store result to spilled vreg182
  // store to stack slot 47
  str x8, [sp, #376]
  // call IO.println._at_.tst1.spec_4 with 2 runtime args
  // load spilled vreg182 from stack slot 47
  ldr x8, [sp, #376]
  mov x0, x8
  // load spilled vreg181 from stack slot 46
  ldr x8, [sp, #368]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__4
  mov x8, x0
  // store result to spilled vreg183
  // store to stack slot 48
  str x8, [sp, #384]
  // load spilled vreg183 from stack slot 48
  ldr x8, [sp, #384]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag85_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag86_fn2118847436182466659
.Lscalar_tag85_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag86_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor88_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor89_fn2118847436182466659
  b .Lcase_end87_fn2118847436182466659
.Lcase_ctor88_fn2118847436182466659:
  // load spilled vreg183 from stack slot 48
  ldr x8, [sp, #384]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg184
  // store to stack slot 49
  str x8, [sp, #392]
  // inc 1
  // load spilled vreg184 from stack slot 49
  ldr x8, [sp, #392]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg183 from stack slot 48
  ldr x8, [sp, #384]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__25
  adrp x8, _l_tst1___closed__25@PAGE
  ldr x8, [x8, _l_tst1___closed__25@PAGEOFF]
  // store result to spilled vreg185
  // store to stack slot 50
  str x8, [sp, #400]
  // call IO.println._at_.tst1.spec_5 with 2 runtime args
  // load spilled vreg185 from stack slot 50
  ldr x8, [sp, #400]
  mov x0, x8
  // load spilled vreg184 from stack slot 49
  ldr x8, [sp, #392]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__5
  mov x8, x0
  // store result to spilled vreg186
  // store to stack slot 51
  str x8, [sp, #408]
  // load spilled vreg186 from stack slot 51
  ldr x8, [sp, #408]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag90_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag91_fn2118847436182466659
.Lscalar_tag90_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag91_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor93_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor94_fn2118847436182466659
  b .Lcase_end92_fn2118847436182466659
.Lcase_ctor93_fn2118847436182466659:
  // load spilled vreg186 from stack slot 51
  ldr x8, [sp, #408]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg187
  // store to stack slot 52
  str x8, [sp, #416]
  // inc 1
  // load spilled vreg187 from stack slot 52
  ldr x8, [sp, #416]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg186 from stack slot 51
  ldr x8, [sp, #408]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__26
  adrp x8, _l_tst1___closed__26@PAGE
  ldr x8, [x8, _l_tst1___closed__26@PAGEOFF]
  // store result to spilled vreg188
  // store to stack slot 53
  str x8, [sp, #424]
  // call IO.println._at_.tst1.spec_6 with 2 runtime args
  // load spilled vreg188 from stack slot 53
  ldr x8, [sp, #424]
  mov x0, x8
  // load spilled vreg187 from stack slot 52
  ldr x8, [sp, #416]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__6
  mov x8, x0
  // store result to spilled vreg189
  // store to stack slot 54
  str x8, [sp, #432]
  // load spilled vreg189 from stack slot 54
  ldr x8, [sp, #432]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag95_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag96_fn2118847436182466659
.Lscalar_tag95_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag96_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor98_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor99_fn2118847436182466659
  b .Lcase_end97_fn2118847436182466659
.Lcase_ctor98_fn2118847436182466659:
  // load spilled vreg189 from stack slot 54
  ldr x8, [sp, #432]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg190
  // store to stack slot 55
  str x8, [sp, #440]
  // inc 1
  // load spilled vreg190 from stack slot 55
  ldr x8, [sp, #440]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg189 from stack slot 54
  ldr x8, [sp, #432]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__27
  adrp x8, _l_tst1___closed__27@PAGE
  ldr x8, [x8, _l_tst1___closed__27@PAGEOFF]
  // store result to spilled vreg191
  // store to stack slot 56
  str x8, [sp, #448]
  // call IO.println._at_.tst1.spec_7 with 2 runtime args
  // load spilled vreg191 from stack slot 56
  ldr x8, [sp, #448]
  mov x0, x8
  // load spilled vreg190 from stack slot 55
  ldr x8, [sp, #440]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__7
  mov x8, x0
  // store result to spilled vreg192
  // store to stack slot 57
  str x8, [sp, #456]
  // load spilled vreg192 from stack slot 57
  ldr x8, [sp, #456]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag100_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag101_fn2118847436182466659
.Lscalar_tag100_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag101_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor103_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor104_fn2118847436182466659
  b .Lcase_end102_fn2118847436182466659
.Lcase_ctor103_fn2118847436182466659:
  // load spilled vreg192 from stack slot 57
  ldr x8, [sp, #456]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg193
  // store to stack slot 58
  str x8, [sp, #464]
  // inc 1
  // load spilled vreg193 from stack slot 58
  ldr x8, [sp, #464]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg192 from stack slot 57
  ldr x8, [sp, #456]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__29
  adrp x8, _l_tst1___closed__29@PAGE
  add x8, x8, _l_tst1___closed__29@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg194
  // store to stack slot 59
  str x8, [sp, #472]
  // call IO.println._at_.tst1.spec_3 with 2 runtime args
  // load spilled vreg194 from stack slot 59
  ldr x8, [sp, #472]
  mov x0, x8
  // load spilled vreg193 from stack slot 58
  ldr x8, [sp, #464]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__3
  mov x8, x0
  // store result to spilled vreg195
  // store to stack slot 60
  str x8, [sp, #480]
  // load spilled vreg195 from stack slot 60
  ldr x8, [sp, #480]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag105_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag106_fn2118847436182466659
.Lscalar_tag105_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag106_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor108_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor109_fn2118847436182466659
  b .Lcase_end107_fn2118847436182466659
.Lcase_ctor108_fn2118847436182466659:
  // load spilled vreg195 from stack slot 60
  ldr x8, [sp, #480]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg196
  // store to stack slot 61
  str x8, [sp, #488]
  // inc 1
  // load spilled vreg196 from stack slot 61
  ldr x8, [sp, #488]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg195 from stack slot 60
  ldr x8, [sp, #480]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__31
  adrp x8, _l_tst1___closed__31@PAGE
  add x8, x8, _l_tst1___closed__31@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg197
  // store to stack slot 62
  str x8, [sp, #496]
  // call IO.println._at_.tst1.spec_3 with 2 runtime args
  // load spilled vreg197 from stack slot 62
  ldr x8, [sp, #496]
  mov x0, x8
  // load spilled vreg196 from stack slot 61
  ldr x8, [sp, #488]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__3
  mov x8, x0
  // store result to spilled vreg198
  // store to stack slot 63
  str x8, [sp, #504]
  // load spilled vreg198 from stack slot 63
  ldr x8, [sp, #504]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag110_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag111_fn2118847436182466659
.Lscalar_tag110_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag111_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor113_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor114_fn2118847436182466659
  b .Lcase_end112_fn2118847436182466659
.Lcase_ctor113_fn2118847436182466659:
  // load spilled vreg198 from stack slot 63
  ldr x8, [sp, #504]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg199
  // store to stack slot 64
  str x8, [sp, #512]
  // inc 1
  // load spilled vreg199 from stack slot 64
  ldr x8, [sp, #512]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg198 from stack slot 63
  ldr x8, [sp, #504]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__33
  adrp x8, _l_tst1___closed__33@PAGE
  add x8, x8, _l_tst1___closed__33@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg200
  // store to stack slot 65
  str x8, [sp, #520]
  // call IO.println._at_.tst1.spec_3 with 2 runtime args
  // load spilled vreg200 from stack slot 65
  ldr x8, [sp, #520]
  mov x0, x8
  // load spilled vreg199 from stack slot 64
  ldr x8, [sp, #512]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__3
  mov x8, x0
  // store result to spilled vreg201
  // store to stack slot 66
  str x8, [sp, #528]
  // load spilled vreg201 from stack slot 66
  ldr x8, [sp, #528]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag115_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag116_fn2118847436182466659
.Lscalar_tag115_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag116_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor118_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor119_fn2118847436182466659
  b .Lcase_end117_fn2118847436182466659
.Lcase_ctor118_fn2118847436182466659:
  // load spilled vreg201 from stack slot 66
  ldr x8, [sp, #528]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg202
  // store to stack slot 67
  str x8, [sp, #536]
  // inc 1
  // load spilled vreg202 from stack slot 67
  ldr x8, [sp, #536]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg201 from stack slot 66
  ldr x8, [sp, #528]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__34
  adrp x8, _l_tst1___closed__34@PAGE
  add x8, x8, _l_tst1___closed__34@PAGEOFF
  ldrh w8, [x8]
  // store result to spilled vreg203
  // store to stack slot 68
  str x8, [sp, #544]
  // call IO.println._at_.tst1.spec_4 with 2 runtime args
  // load spilled vreg203 from stack slot 68
  ldr x8, [sp, #544]
  mov x0, x8
  // load spilled vreg202 from stack slot 67
  ldr x8, [sp, #536]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__4
  mov x8, x0
  // store result to spilled vreg204
  // store to stack slot 69
  str x8, [sp, #552]
  // load spilled vreg204 from stack slot 69
  ldr x8, [sp, #552]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag120_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag121_fn2118847436182466659
.Lscalar_tag120_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag121_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor123_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor124_fn2118847436182466659
  b .Lcase_end122_fn2118847436182466659
.Lcase_ctor123_fn2118847436182466659:
  // load spilled vreg204 from stack slot 69
  ldr x8, [sp, #552]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg205
  // store to stack slot 70
  str x8, [sp, #560]
  // inc 1
  // load spilled vreg205 from stack slot 70
  ldr x8, [sp, #560]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg204 from stack slot 69
  ldr x8, [sp, #552]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__37
  adrp x8, _l_tst1___closed__37@PAGE
  add x8, x8, _l_tst1___closed__37@PAGEOFF
  ldrh w8, [x8]
  // store result to spilled vreg206
  // store to stack slot 71
  str x8, [sp, #568]
  // call IO.println._at_.tst1.spec_4 with 2 runtime args
  // load spilled vreg206 from stack slot 71
  ldr x8, [sp, #568]
  mov x0, x8
  // load spilled vreg205 from stack slot 70
  ldr x8, [sp, #560]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__4
  mov x8, x0
  // store result to spilled vreg207
  // store to stack slot 72
  str x8, [sp, #576]
  // load spilled vreg207 from stack slot 72
  ldr x8, [sp, #576]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag125_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag126_fn2118847436182466659
.Lscalar_tag125_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag126_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor128_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor129_fn2118847436182466659
  b .Lcase_end127_fn2118847436182466659
.Lcase_ctor128_fn2118847436182466659:
  // load spilled vreg207 from stack slot 72
  ldr x8, [sp, #576]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg208
  // store to stack slot 73
  str x8, [sp, #584]
  // inc 1
  // load spilled vreg208 from stack slot 73
  ldr x8, [sp, #584]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg207 from stack slot 72
  ldr x8, [sp, #576]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__38
  adrp x8, _l_tst1___closed__38@PAGE
  add x8, x8, _l_tst1___closed__38@PAGEOFF
  ldrh w8, [x8]
  // store result to spilled vreg209
  // store to stack slot 74
  str x8, [sp, #592]
  // call IO.println._at_.tst1.spec_4 with 2 runtime args
  // load spilled vreg209 from stack slot 74
  ldr x8, [sp, #592]
  mov x0, x8
  // load spilled vreg208 from stack slot 73
  ldr x8, [sp, #584]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__4
  mov x8, x0
  // store result to spilled vreg210
  // store to stack slot 75
  str x8, [sp, #600]
  // load spilled vreg210 from stack slot 75
  ldr x8, [sp, #600]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag130_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag131_fn2118847436182466659
.Lscalar_tag130_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag131_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor133_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor134_fn2118847436182466659
  b .Lcase_end132_fn2118847436182466659
.Lcase_ctor133_fn2118847436182466659:
  // load spilled vreg210 from stack slot 75
  ldr x8, [sp, #600]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg211
  // store to stack slot 76
  str x8, [sp, #608]
  // inc 1
  // load spilled vreg211 from stack slot 76
  ldr x8, [sp, #608]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg210 from stack slot 75
  ldr x8, [sp, #600]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__39
  adrp x8, _l_tst1___closed__39@PAGE
  ldr x8, [x8, _l_tst1___closed__39@PAGEOFF]
  // store result to spilled vreg212
  // store to stack slot 77
  str x8, [sp, #616]
  // call IO.println._at_.tst1.spec_5 with 2 runtime args
  // load spilled vreg212 from stack slot 77
  ldr x8, [sp, #616]
  mov x0, x8
  // load spilled vreg211 from stack slot 76
  ldr x8, [sp, #608]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__5
  mov x8, x0
  // store result to spilled vreg213
  // store to stack slot 78
  str x8, [sp, #624]
  // load spilled vreg213 from stack slot 78
  ldr x8, [sp, #624]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag135_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag136_fn2118847436182466659
.Lscalar_tag135_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag136_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor138_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor139_fn2118847436182466659
  b .Lcase_end137_fn2118847436182466659
.Lcase_ctor138_fn2118847436182466659:
  // load spilled vreg213 from stack slot 78
  ldr x8, [sp, #624]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg214
  // store to stack slot 79
  str x8, [sp, #632]
  // inc 1
  // load spilled vreg214 from stack slot 79
  ldr x8, [sp, #632]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg213 from stack slot 78
  ldr x8, [sp, #624]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__42
  adrp x8, _l_tst1___closed__42@PAGE
  ldr x8, [x8, _l_tst1___closed__42@PAGEOFF]
  // store result to spilled vreg215
  // store to stack slot 80
  str x8, [sp, #640]
  // call IO.println._at_.tst1.spec_5 with 2 runtime args
  // load spilled vreg215 from stack slot 80
  ldr x8, [sp, #640]
  mov x0, x8
  // load spilled vreg214 from stack slot 79
  ldr x8, [sp, #632]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__5
  mov x8, x0
  // store result to spilled vreg216
  // store to stack slot 81
  str x8, [sp, #648]
  // load spilled vreg216 from stack slot 81
  ldr x8, [sp, #648]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag140_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag141_fn2118847436182466659
.Lscalar_tag140_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag141_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor143_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor144_fn2118847436182466659
  b .Lcase_end142_fn2118847436182466659
.Lcase_ctor143_fn2118847436182466659:
  // load spilled vreg216 from stack slot 81
  ldr x8, [sp, #648]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg217
  // store to stack slot 82
  str x8, [sp, #656]
  // inc 1
  // load spilled vreg217 from stack slot 82
  ldr x8, [sp, #656]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg216 from stack slot 81
  ldr x8, [sp, #648]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__43
  adrp x8, _l_tst1___closed__43@PAGE
  ldr x8, [x8, _l_tst1___closed__43@PAGEOFF]
  // store result to spilled vreg218
  // store to stack slot 83
  str x8, [sp, #664]
  // call IO.println._at_.tst1.spec_5 with 2 runtime args
  // load spilled vreg218 from stack slot 83
  ldr x8, [sp, #664]
  mov x0, x8
  // load spilled vreg217 from stack slot 82
  ldr x8, [sp, #656]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__5
  mov x8, x0
  // store result to spilled vreg219
  // store to stack slot 84
  str x8, [sp, #672]
  // load spilled vreg219 from stack slot 84
  ldr x8, [sp, #672]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag145_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag146_fn2118847436182466659
.Lscalar_tag145_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag146_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor148_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor149_fn2118847436182466659
  b .Lcase_end147_fn2118847436182466659
.Lcase_ctor148_fn2118847436182466659:
  // load spilled vreg219 from stack slot 84
  ldr x8, [sp, #672]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg220
  // store to stack slot 85
  str x8, [sp, #680]
  // inc 1
  // load spilled vreg220 from stack slot 85
  ldr x8, [sp, #680]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg219 from stack slot 84
  ldr x8, [sp, #672]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__44
  adrp x8, _l_tst1___closed__44@PAGE
  ldr x8, [x8, _l_tst1___closed__44@PAGEOFF]
  // store result to spilled vreg221
  // store to stack slot 86
  str x8, [sp, #688]
  // call IO.println._at_.tst1.spec_6 with 2 runtime args
  // load spilled vreg221 from stack slot 86
  ldr x8, [sp, #688]
  mov x0, x8
  // load spilled vreg220 from stack slot 85
  ldr x8, [sp, #680]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__6
  mov x8, x0
  // store result to spilled vreg222
  // store to stack slot 87
  str x8, [sp, #696]
  // load spilled vreg222 from stack slot 87
  ldr x8, [sp, #696]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag150_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag151_fn2118847436182466659
.Lscalar_tag150_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag151_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor153_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor154_fn2118847436182466659
  b .Lcase_end152_fn2118847436182466659
.Lcase_ctor153_fn2118847436182466659:
  // load spilled vreg222 from stack slot 87
  ldr x8, [sp, #696]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg223
  // store to stack slot 88
  str x8, [sp, #704]
  // inc 1
  // load spilled vreg223 from stack slot 88
  ldr x8, [sp, #704]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg222 from stack slot 87
  ldr x8, [sp, #696]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__47
  adrp x8, _l_tst1___closed__47@PAGE
  ldr x8, [x8, _l_tst1___closed__47@PAGEOFF]
  // store result to spilled vreg224
  // store to stack slot 89
  str x8, [sp, #712]
  // call IO.println._at_.tst1.spec_6 with 2 runtime args
  // load spilled vreg224 from stack slot 89
  ldr x8, [sp, #712]
  mov x0, x8
  // load spilled vreg223 from stack slot 88
  ldr x8, [sp, #704]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__6
  mov x8, x0
  // store result to spilled vreg225
  // store to stack slot 90
  str x8, [sp, #720]
  // load spilled vreg225 from stack slot 90
  ldr x8, [sp, #720]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag155_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag156_fn2118847436182466659
.Lscalar_tag155_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag156_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor158_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor159_fn2118847436182466659
  b .Lcase_end157_fn2118847436182466659
.Lcase_ctor158_fn2118847436182466659:
  // load spilled vreg225 from stack slot 90
  ldr x8, [sp, #720]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg226
  // store to stack slot 91
  str x8, [sp, #728]
  // inc 1
  // load spilled vreg226 from stack slot 91
  ldr x8, [sp, #728]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg225 from stack slot 90
  ldr x8, [sp, #720]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__48
  adrp x8, _l_tst1___closed__48@PAGE
  ldr x8, [x8, _l_tst1___closed__48@PAGEOFF]
  // store result to spilled vreg227
  // store to stack slot 92
  str x8, [sp, #736]
  // call IO.println._at_.tst1.spec_6 with 2 runtime args
  // load spilled vreg227 from stack slot 92
  ldr x8, [sp, #736]
  mov x0, x8
  // load spilled vreg226 from stack slot 91
  ldr x8, [sp, #728]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__6
  mov x8, x0
  // store result to spilled vreg228
  // store to stack slot 93
  str x8, [sp, #744]
  // load spilled vreg228 from stack slot 93
  ldr x8, [sp, #744]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag160_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag161_fn2118847436182466659
.Lscalar_tag160_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag161_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor163_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor164_fn2118847436182466659
  b .Lcase_end162_fn2118847436182466659
.Lcase_ctor163_fn2118847436182466659:
  // load spilled vreg228 from stack slot 93
  ldr x8, [sp, #744]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg229
  // store to stack slot 94
  str x8, [sp, #752]
  // inc 1
  // load spilled vreg229 from stack slot 94
  ldr x8, [sp, #752]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg228 from stack slot 93
  ldr x8, [sp, #744]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__49
  adrp x8, _l_tst1___closed__49@PAGE
  ldr x8, [x8, _l_tst1___closed__49@PAGEOFF]
  // store result to spilled vreg230
  // store to stack slot 95
  str x8, [sp, #760]
  // call IO.println._at_.tst1.spec_7 with 2 runtime args
  // load spilled vreg230 from stack slot 95
  ldr x8, [sp, #760]
  mov x0, x8
  // load spilled vreg229 from stack slot 94
  ldr x8, [sp, #752]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__7
  mov x8, x0
  // store result to spilled vreg231
  // store to stack slot 96
  str x8, [sp, #768]
  // load spilled vreg231 from stack slot 96
  ldr x8, [sp, #768]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag165_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag166_fn2118847436182466659
.Lscalar_tag165_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag166_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor168_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor169_fn2118847436182466659
  b .Lcase_end167_fn2118847436182466659
.Lcase_ctor168_fn2118847436182466659:
  // load spilled vreg231 from stack slot 96
  ldr x8, [sp, #768]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg232
  // store to stack slot 97
  str x8, [sp, #776]
  // inc 1
  // load spilled vreg232 from stack slot 97
  ldr x8, [sp, #776]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg231 from stack slot 96
  ldr x8, [sp, #768]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__57
  adrp x8, _l_tst1___closed__57@PAGE
  add x8, x8, _l_tst1___closed__57@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg233
  // store to stack slot 98
  str x8, [sp, #784]
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  // load spilled vreg233 from stack slot 98
  ldr x8, [sp, #784]
  mov x0, x8
  // load spilled vreg232 from stack slot 97
  ldr x8, [sp, #776]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__2
  mov x8, x0
  // store result to spilled vreg234
  // store to stack slot 99
  str x8, [sp, #792]
  // load spilled vreg234 from stack slot 99
  ldr x8, [sp, #792]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag170_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag171_fn2118847436182466659
.Lscalar_tag170_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag171_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor173_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor174_fn2118847436182466659
  b .Lcase_end172_fn2118847436182466659
.Lcase_ctor173_fn2118847436182466659:
  // load spilled vreg234 from stack slot 99
  ldr x8, [sp, #792]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg235
  // store to stack slot 100
  str x8, [sp, #800]
  // inc 1
  // load spilled vreg235 from stack slot 100
  ldr x8, [sp, #800]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg234 from stack slot 99
  ldr x8, [sp, #792]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__60
  adrp x8, _l_tst1___closed__60@PAGE
  add x8, x8, _l_tst1___closed__60@PAGEOFF
  ldrb w8, [x8]
  // store result to spilled vreg236
  // store to stack slot 101
  str x8, [sp, #808]
  // call IO.println._at_.tst1.spec_2 with 2 runtime args
  // load spilled vreg236 from stack slot 101
  ldr x8, [sp, #808]
  mov x0, x8
  // load spilled vreg235 from stack slot 100
  ldr x8, [sp, #800]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__2
  mov x8, x0
  // store result to spilled vreg237
  // store to stack slot 102
  str x8, [sp, #816]
  // load spilled vreg237 from stack slot 102
  ldr x8, [sp, #816]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag175_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag176_fn2118847436182466659
.Lscalar_tag175_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag176_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor178_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor179_fn2118847436182466659
  b .Lcase_end177_fn2118847436182466659
.Lcase_ctor178_fn2118847436182466659:
  // load spilled vreg237 from stack slot 102
  ldr x8, [sp, #816]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg238
  // store to stack slot 103
  str x8, [sp, #824]
  // inc 1
  // load spilled vreg238 from stack slot 103
  ldr x8, [sp, #824]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg237 from stack slot 102
  ldr x8, [sp, #816]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__69
  adrp x8, _l_tst1___closed__69@PAGE
  ldr x8, [x8, _l_tst1___closed__69@PAGEOFF]
  // store result to spilled vreg239
  // store to stack slot 104
  str x8, [sp, #832]
  // call IO.println._at_.tst1.spec_8 with 2 runtime args
  // load spilled vreg239 from stack slot 104
  ldr x8, [sp, #832]
  mov x0, x8
  // load spilled vreg238 from stack slot 103
  ldr x8, [sp, #824]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__8
  mov x8, x0
  // store result to spilled vreg240
  // store to stack slot 105
  str x8, [sp, #840]
  // dec 1
  // load spilled vreg240 from stack slot 105
  ldr x8, [sp, #840]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag180_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag181_fn2118847436182466659
.Lscalar_tag180_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag181_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor183_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor184_fn2118847436182466659
  b .Lcase_end182_fn2118847436182466659
.Lcase_ctor183_fn2118847436182466659:
  // load spilled vreg240 from stack slot 105
  ldr x8, [sp, #840]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg241
  // store to stack slot 106
  str x8, [sp, #848]
  // inc 1
  // load spilled vreg241 from stack slot 106
  ldr x8, [sp, #848]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg240 from stack slot 105
  ldr x8, [sp, #840]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__77
  adrp x8, _l_tst1___closed__77@PAGE
  ldr x8, [x8, _l_tst1___closed__77@PAGEOFF]
  // store result to spilled vreg242
  // store to stack slot 107
  str x8, [sp, #856]
  // call IO.println._at_.tst1.spec_8 with 2 runtime args
  // load spilled vreg242 from stack slot 107
  ldr x8, [sp, #856]
  mov x0, x8
  // load spilled vreg241 from stack slot 106
  ldr x8, [sp, #848]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__8
  mov x8, x0
  // store result to spilled vreg243
  // store to stack slot 108
  str x8, [sp, #864]
  // dec 1
  // load spilled vreg243 from stack slot 108
  ldr x8, [sp, #864]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag185_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag186_fn2118847436182466659
.Lscalar_tag185_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag186_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor188_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor189_fn2118847436182466659
  b .Lcase_end187_fn2118847436182466659
.Lcase_ctor188_fn2118847436182466659:
  // load spilled vreg243 from stack slot 108
  ldr x8, [sp, #864]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg244
  // store to stack slot 109
  str x8, [sp, #872]
  // inc 1
  // load spilled vreg244 from stack slot 109
  ldr x8, [sp, #872]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg243 from stack slot 108
  ldr x8, [sp, #864]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__87
  adrp x8, _l_tst1___closed__87@PAGE
  ldr x8, [x8, _l_tst1___closed__87@PAGEOFF]
  // store result to spilled vreg245
  // store to stack slot 110
  str x8, [sp, #880]
  // call IO.println._at_.tst1.spec_8 with 2 runtime args
  // load spilled vreg245 from stack slot 110
  ldr x8, [sp, #880]
  mov x0, x8
  // load spilled vreg244 from stack slot 109
  ldr x8, [sp, #872]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__8
  mov x8, x0
  // store result to spilled vreg246
  // store to stack slot 111
  str x8, [sp, #888]
  // dec 1
  // load spilled vreg246 from stack slot 111
  ldr x8, [sp, #888]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag190_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag191_fn2118847436182466659
.Lscalar_tag190_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag191_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor193_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor194_fn2118847436182466659
  b .Lcase_end192_fn2118847436182466659
.Lcase_ctor193_fn2118847436182466659:
  // load spilled vreg246 from stack slot 111
  ldr x8, [sp, #888]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg247
  // store to stack slot 112
  str x8, [sp, #896]
  // inc 1
  // load spilled vreg247 from stack slot 112
  ldr x8, [sp, #896]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg246 from stack slot 111
  ldr x8, [sp, #888]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__95
  adrp x8, _l_tst1___closed__95@PAGE
  ldr x8, [x8, _l_tst1___closed__95@PAGEOFF]
  // store result to spilled vreg248
  // store to stack slot 113
  str x8, [sp, #904]
  // call IO.println._at_.tst1.spec_8 with 2 runtime args
  // load spilled vreg248 from stack slot 113
  ldr x8, [sp, #904]
  mov x0, x8
  // load spilled vreg247 from stack slot 112
  ldr x8, [sp, #896]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__8
  mov x8, x0
  // store result to spilled vreg249
  // store to stack slot 114
  str x8, [sp, #912]
  // dec 1
  // load spilled vreg249 from stack slot 114
  ldr x8, [sp, #912]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag195_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag196_fn2118847436182466659
.Lscalar_tag195_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag196_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor198_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor199_fn2118847436182466659
  b .Lcase_end197_fn2118847436182466659
.Lcase_ctor198_fn2118847436182466659:
  // load spilled vreg249 from stack slot 114
  ldr x8, [sp, #912]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg250
  // store to stack slot 115
  str x8, [sp, #920]
  // inc 1
  // load spilled vreg250 from stack slot 115
  ldr x8, [sp, #920]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg249 from stack slot 114
  ldr x8, [sp, #912]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__104
  adrp x8, _l_tst1___closed__104@PAGE
  ldr x8, [x8, _l_tst1___closed__104@PAGEOFF]
  // store result to spilled vreg251
  // store to stack slot 116
  str x8, [sp, #928]
  // call IO.println._at_.tst1.spec_8 with 2 runtime args
  // load spilled vreg251 from stack slot 116
  ldr x8, [sp, #928]
  mov x0, x8
  // load spilled vreg250 from stack slot 115
  ldr x8, [sp, #920]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__8
  mov x8, x0
  // store result to spilled vreg252
  // store to stack slot 117
  str x8, [sp, #936]
  // dec 1
  // load spilled vreg252 from stack slot 117
  ldr x8, [sp, #936]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag200_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag201_fn2118847436182466659
.Lscalar_tag200_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag201_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor203_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor204_fn2118847436182466659
  b .Lcase_end202_fn2118847436182466659
.Lcase_ctor203_fn2118847436182466659:
  // load spilled vreg252 from stack slot 117
  ldr x8, [sp, #936]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg253
  // store to stack slot 118
  str x8, [sp, #944]
  // inc 1
  // load spilled vreg253 from stack slot 118
  ldr x8, [sp, #944]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg252 from stack slot 117
  ldr x8, [sp, #936]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__105
  adrp x8, _l_tst1___closed__105@PAGE
  ldr x8, [x8, _l_tst1___closed__105@PAGEOFF]
  // store result to spilled vreg254
  // store to stack slot 119
  str x8, [sp, #952]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  // load spilled vreg254 from stack slot 119
  ldr x8, [sp, #952]
  mov x0, x8
  // load spilled vreg253 from stack slot 118
  ldr x8, [sp, #944]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg255
  // store to stack slot 120
  str x8, [sp, #960]
  // load spilled vreg255 from stack slot 120
  ldr x8, [sp, #960]
  // case
  // runtime scalar check
  tst x8, #1
  b.ne .Lscalar_tag205_fn2118847436182466659
  ldrb w8, [x8, #7]
  b .Lcompare_tag206_fn2118847436182466659
.Lscalar_tag205_fn2118847436182466659:
  lsr x8, x8, #1
.Lcompare_tag206_fn2118847436182466659:
  cmp x8, #0
  b.eq .Lcase_ctor208_fn2118847436182466659
  cmp x8, #1
  b.eq .Lcase_ctor209_fn2118847436182466659
  b .Lcase_end207_fn2118847436182466659
.Lcase_ctor208_fn2118847436182466659:
  // load spilled vreg255 from stack slot 120
  ldr x8, [sp, #960]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg256
  // store to stack slot 121
  str x8, [sp, #968]
  // inc 1
  // load spilled vreg256 from stack slot 121
  ldr x8, [sp, #968]
  mov x0, x8
  bl _lean_inc
  // dec 1
  // load spilled vreg255 from stack slot 120
  ldr x8, [sp, #960]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_tst1___closed__107
  adrp x8, _l_tst1___closed__107@PAGE
  ldr x8, [x8, _l_tst1___closed__107@PAGEOFF]
  // store result to spilled vreg257
  // store to stack slot 122
  str x8, [sp, #976]
  // call IO.println._at_.tst1.spec_0 with 2 runtime args
  // load spilled vreg257 from stack slot 122
  ldr x8, [sp, #976]
  mov x0, x8
  // load spilled vreg256 from stack slot 121
  ldr x8, [sp, #968]
  mov x1, x8
  bl _l_IO_println___at___tst1_spec__0
  mov x8, x0
  // store result to spilled vreg258
  // store to stack slot 123
  str x8, [sp, #984]
  // return
  // load spilled vreg258 from stack slot 123
  ldr x8, [sp, #984]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end207_fn2118847436182466659
.Lcase_ctor209_fn2118847436182466659:
  // return
  // load spilled vreg255 from stack slot 120
  ldr x8, [sp, #960]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end207_fn2118847436182466659
.Lcase_end207_fn2118847436182466659:
  b .Lcase_end202_fn2118847436182466659
.Lcase_ctor204_fn2118847436182466659:
  // return
  // load spilled vreg252 from stack slot 117
  ldr x8, [sp, #936]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end202_fn2118847436182466659
.Lcase_end202_fn2118847436182466659:
  b .Lcase_end197_fn2118847436182466659
.Lcase_ctor199_fn2118847436182466659:
  // return
  // load spilled vreg249 from stack slot 114
  ldr x8, [sp, #912]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end197_fn2118847436182466659
.Lcase_end197_fn2118847436182466659:
  b .Lcase_end192_fn2118847436182466659
.Lcase_ctor194_fn2118847436182466659:
  // return
  // load spilled vreg246 from stack slot 111
  ldr x8, [sp, #888]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end192_fn2118847436182466659
.Lcase_end192_fn2118847436182466659:
  b .Lcase_end187_fn2118847436182466659
.Lcase_ctor189_fn2118847436182466659:
  // return
  // load spilled vreg243 from stack slot 108
  ldr x8, [sp, #864]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end187_fn2118847436182466659
.Lcase_end187_fn2118847436182466659:
  b .Lcase_end182_fn2118847436182466659
.Lcase_ctor184_fn2118847436182466659:
  // return
  // load spilled vreg240 from stack slot 105
  ldr x8, [sp, #840]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end182_fn2118847436182466659
.Lcase_end182_fn2118847436182466659:
  b .Lcase_end177_fn2118847436182466659
.Lcase_ctor179_fn2118847436182466659:
  // return
  // load spilled vreg237 from stack slot 102
  ldr x8, [sp, #816]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end177_fn2118847436182466659
.Lcase_end177_fn2118847436182466659:
  b .Lcase_end172_fn2118847436182466659
.Lcase_ctor174_fn2118847436182466659:
  // return
  // load spilled vreg234 from stack slot 99
  ldr x8, [sp, #792]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end172_fn2118847436182466659
.Lcase_end172_fn2118847436182466659:
  b .Lcase_end167_fn2118847436182466659
.Lcase_ctor169_fn2118847436182466659:
  // return
  // load spilled vreg231 from stack slot 96
  ldr x8, [sp, #768]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end167_fn2118847436182466659
.Lcase_end167_fn2118847436182466659:
  b .Lcase_end162_fn2118847436182466659
.Lcase_ctor164_fn2118847436182466659:
  // return
  // load spilled vreg228 from stack slot 93
  ldr x8, [sp, #744]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end162_fn2118847436182466659
.Lcase_end162_fn2118847436182466659:
  b .Lcase_end157_fn2118847436182466659
.Lcase_ctor159_fn2118847436182466659:
  // return
  // load spilled vreg225 from stack slot 90
  ldr x8, [sp, #720]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end157_fn2118847436182466659
.Lcase_end157_fn2118847436182466659:
  b .Lcase_end152_fn2118847436182466659
.Lcase_ctor154_fn2118847436182466659:
  // return
  // load spilled vreg222 from stack slot 87
  ldr x8, [sp, #696]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end152_fn2118847436182466659
.Lcase_end152_fn2118847436182466659:
  b .Lcase_end147_fn2118847436182466659
.Lcase_ctor149_fn2118847436182466659:
  // return
  // load spilled vreg219 from stack slot 84
  ldr x8, [sp, #672]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end147_fn2118847436182466659
.Lcase_end147_fn2118847436182466659:
  b .Lcase_end142_fn2118847436182466659
.Lcase_ctor144_fn2118847436182466659:
  // return
  // load spilled vreg216 from stack slot 81
  ldr x8, [sp, #648]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end142_fn2118847436182466659
.Lcase_end142_fn2118847436182466659:
  b .Lcase_end137_fn2118847436182466659
.Lcase_ctor139_fn2118847436182466659:
  // return
  // load spilled vreg213 from stack slot 78
  ldr x8, [sp, #624]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end137_fn2118847436182466659
.Lcase_end137_fn2118847436182466659:
  b .Lcase_end132_fn2118847436182466659
.Lcase_ctor134_fn2118847436182466659:
  // return
  // load spilled vreg210 from stack slot 75
  ldr x8, [sp, #600]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end132_fn2118847436182466659
.Lcase_end132_fn2118847436182466659:
  b .Lcase_end127_fn2118847436182466659
.Lcase_ctor129_fn2118847436182466659:
  // return
  // load spilled vreg207 from stack slot 72
  ldr x8, [sp, #576]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end127_fn2118847436182466659
.Lcase_end127_fn2118847436182466659:
  b .Lcase_end122_fn2118847436182466659
.Lcase_ctor124_fn2118847436182466659:
  // return
  // load spilled vreg204 from stack slot 69
  ldr x8, [sp, #552]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end122_fn2118847436182466659
.Lcase_end122_fn2118847436182466659:
  b .Lcase_end117_fn2118847436182466659
.Lcase_ctor119_fn2118847436182466659:
  // return
  // load spilled vreg201 from stack slot 66
  ldr x8, [sp, #528]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end117_fn2118847436182466659
.Lcase_end117_fn2118847436182466659:
  b .Lcase_end112_fn2118847436182466659
.Lcase_ctor114_fn2118847436182466659:
  // return
  // load spilled vreg198 from stack slot 63
  ldr x8, [sp, #504]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end112_fn2118847436182466659
.Lcase_end112_fn2118847436182466659:
  b .Lcase_end107_fn2118847436182466659
.Lcase_ctor109_fn2118847436182466659:
  // return
  // load spilled vreg195 from stack slot 60
  ldr x8, [sp, #480]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end107_fn2118847436182466659
.Lcase_end107_fn2118847436182466659:
  b .Lcase_end102_fn2118847436182466659
.Lcase_ctor104_fn2118847436182466659:
  // return
  // load spilled vreg192 from stack slot 57
  ldr x8, [sp, #456]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end102_fn2118847436182466659
.Lcase_end102_fn2118847436182466659:
  b .Lcase_end97_fn2118847436182466659
.Lcase_ctor99_fn2118847436182466659:
  // return
  // load spilled vreg189 from stack slot 54
  ldr x8, [sp, #432]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end97_fn2118847436182466659
.Lcase_end97_fn2118847436182466659:
  b .Lcase_end92_fn2118847436182466659
.Lcase_ctor94_fn2118847436182466659:
  // return
  // load spilled vreg186 from stack slot 51
  ldr x8, [sp, #408]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end92_fn2118847436182466659
.Lcase_end92_fn2118847436182466659:
  b .Lcase_end87_fn2118847436182466659
.Lcase_ctor89_fn2118847436182466659:
  // return
  // load spilled vreg183 from stack slot 48
  ldr x8, [sp, #384]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end87_fn2118847436182466659
.Lcase_end87_fn2118847436182466659:
  b .Lcase_end82_fn2118847436182466659
.Lcase_ctor84_fn2118847436182466659:
  // return
  // load spilled vreg180 from stack slot 45
  ldr x8, [sp, #360]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end82_fn2118847436182466659
.Lcase_end82_fn2118847436182466659:
  b .Lcase_end77_fn2118847436182466659
.Lcase_ctor79_fn2118847436182466659:
  // return
  // load spilled vreg177 from stack slot 42
  ldr x8, [sp, #336]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end77_fn2118847436182466659
.Lcase_end77_fn2118847436182466659:
  b .Lcase_end72_fn2118847436182466659
.Lcase_ctor74_fn2118847436182466659:
  // return
  // load spilled vreg174 from stack slot 39
  ldr x8, [sp, #312]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end72_fn2118847436182466659
.Lcase_end72_fn2118847436182466659:
  b .Lcase_end67_fn2118847436182466659
.Lcase_ctor69_fn2118847436182466659:
  // return
  // load spilled vreg171 from stack slot 36
  ldr x8, [sp, #288]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end67_fn2118847436182466659
.Lcase_end67_fn2118847436182466659:
  b .Lcase_end62_fn2118847436182466659
.Lcase_ctor64_fn2118847436182466659:
  // return
  // load spilled vreg168 from stack slot 33
  ldr x8, [sp, #264]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end62_fn2118847436182466659
.Lcase_end62_fn2118847436182466659:
  b .Lcase_end57_fn2118847436182466659
.Lcase_ctor59_fn2118847436182466659:
  // return
  // load spilled vreg165 from stack slot 30
  ldr x8, [sp, #240]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end57_fn2118847436182466659
.Lcase_end57_fn2118847436182466659:
  b .Lcase_end52_fn2118847436182466659
.Lcase_ctor54_fn2118847436182466659:
  // return
  // load spilled vreg162 from stack slot 27
  ldr x8, [sp, #216]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end52_fn2118847436182466659
.Lcase_end52_fn2118847436182466659:
  b .Lcase_end47_fn2118847436182466659
.Lcase_ctor49_fn2118847436182466659:
  // return
  // load spilled vreg159 from stack slot 24
  ldr x8, [sp, #192]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end47_fn2118847436182466659
.Lcase_end47_fn2118847436182466659:
  b .Lcase_end42_fn2118847436182466659
.Lcase_ctor44_fn2118847436182466659:
  // return
  // load spilled vreg156 from stack slot 21
  ldr x8, [sp, #168]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end42_fn2118847436182466659
.Lcase_end42_fn2118847436182466659:
  b .Lcase_end37_fn2118847436182466659
.Lcase_ctor39_fn2118847436182466659:
  // return
  // load spilled vreg153 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end37_fn2118847436182466659
.Lcase_end37_fn2118847436182466659:
  b .Lcase_end32_fn2118847436182466659
.Lcase_ctor34_fn2118847436182466659:
  // return
  // load spilled vreg150 from stack slot 15
  ldr x8, [sp, #120]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end32_fn2118847436182466659
.Lcase_end32_fn2118847436182466659:
  b .Lcase_end27_fn2118847436182466659
.Lcase_ctor29_fn2118847436182466659:
  // return
  // load spilled vreg147 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end27_fn2118847436182466659
.Lcase_end27_fn2118847436182466659:
  b .Lcase_end22_fn2118847436182466659
.Lcase_ctor24_fn2118847436182466659:
  // return
  // load spilled vreg144 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end22_fn2118847436182466659
.Lcase_end22_fn2118847436182466659:
  b .Lcase_end17_fn2118847436182466659
.Lcase_ctor19_fn2118847436182466659:
  // return
  // load spilled vreg141 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end17_fn2118847436182466659
.Lcase_end17_fn2118847436182466659:
  b .Lcase_end12_fn2118847436182466659
.Lcase_ctor14_fn2118847436182466659:
  // return
  // load spilled vreg138 from stack slot 3
  ldr x8, [sp, #24]
  mov x0, x8
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end12_fn2118847436182466659
.Lcase_end12_fn2118847436182466659:
  b .Lcase_end7_fn2118847436182466659
.Lcase_ctor9_fn2118847436182466659:
  // return
  mov x0, x20
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end7_fn2118847436182466659
.Lcase_end7_fn2118847436182466659:
  b .Lcase_end2_fn2118847436182466659
.Lcase_ctor4_fn2118847436182466659:
  // return
  mov x0, x22
  add sp, sp, #992
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret
  b .Lcase_end2_fn2118847436182466659
.Lcase_end2_fn2118847436182466659:

  .globl __init_l_tst1___closed__107
  .align 2
__init_l_tst1___closed__107:
  // Function: tst1._closed_107
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_107:
  // load global constant _l_tst1___closed__106
  adrp x27, _l_tst1___closed__106@PAGE
  ldr x27, [x27, _l_tst1___closed__106@PAGEOFF]
  // call Float.pow with 2 runtime args
  fmov d0, x27
  fmov d1, x27
  bl _pow
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_106:
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  mov x26, #1
  movz x0, #22, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // call Float.ofScientific with 3 runtime args
  mov x0, x25
  mov x1, x26
  mov x2, x27
  bl _l_Float_ofScientific
  fmov x24, d0
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__105
  .align 2
__init_l_tst1___closed__105:
  // Function: tst1._closed_105
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_105:
  // load global constant _l_tst1___closed__28
  adrp x27, _l_tst1___closed__28@PAGE
  ldr x27, [x27, _l_tst1___closed__28@PAGEOFF]
  // load global constant _l_tst1___closed__1
  adrp x26, _l_tst1___closed__1@PAGE
  ldr x26, [x26, _l_tst1___closed__1@PAGEOFF]
  // call Float.pow with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _pow
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_104:
  // load global constant _l_tst1___closed__103
  adrp x27, _l_tst1___closed__103@PAGE
  ldr x27, [x27, _l_tst1___closed__103@PAGEOFF]
  // load global constant _l_tst1___closed__104___boxed__const__1
  adrp x26, _l_tst1___closed__104___boxed__const__1@PAGE
  ldr x26, [x26, _l_tst1___closed__104___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__104___boxed__const__1
  .align 2
__init_l_tst1___closed__104___boxed__const__1:
  // Function: tst1._closed_104._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_104._boxed_const_1:
  // load global constant _l_tst1___closed__96
  adrp x27, _l_tst1___closed__96@PAGE
  ldr x27, [x27, _l_tst1___closed__96@PAGEOFF]
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

  .globl __init_l_tst1___closed__103
  .align 2
__init_l_tst1___closed__103:
  // Function: tst1._closed_103
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_103:
  // load global constant _l_tst1___closed__102
  adrp x27, _l_tst1___closed__102@PAGE
  ldr x27, [x27, _l_tst1___closed__102@PAGEOFF]
  // load global constant _l_tst1___closed__97
  adrp x26, _l_tst1___closed__97@PAGE
  add x26, x26, _l_tst1___closed__97@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_102:
  // load global constant _l_tst1___closed__101
  adrp x27, _l_tst1___closed__101@PAGE
  ldr x27, [x27, _l_tst1___closed__101@PAGEOFF]
  // load global constant _l_tst1___closed__98
  adrp x26, _l_tst1___closed__98@PAGE
  add x26, x26, _l_tst1___closed__98@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_101:
  // load global constant _l_tst1___closed__100
  adrp x27, _l_tst1___closed__100@PAGE
  ldr x27, [x27, _l_tst1___closed__100@PAGEOFF]
  // load global constant _l_tst1___closed__99
  adrp x26, _l_tst1___closed__99@PAGE
  add x26, x26, _l_tst1___closed__99@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_100:
  // load global constant _l_tst1___closed__96
  adrp x27, _l_tst1___closed__96@PAGE
  ldr x27, [x27, _l_tst1___closed__96@PAGEOFF]
  // call Float.frExp with 1 runtime args
  fmov d0, x27
  bl _lean_float_frexp
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

  .globl __init_l_tst1___closed__99
  .align 2
__init_l_tst1___closed__99:
  // Function: tst1._closed_99
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_99:
  // load global constant _l_tst1___closed__96
  adrp x27, _l_tst1___closed__96@PAGE
  ldr x27, [x27, _l_tst1___closed__96@PAGEOFF]
  // call Float.isFinite with 1 runtime args
  fmov d0, x27
  bl _lean_float_isfinite
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

  .globl __init_l_tst1___closed__98
  .align 2
__init_l_tst1___closed__98:
  // Function: tst1._closed_98
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_98:
  // load global constant _l_tst1___closed__96
  adrp x27, _l_tst1___closed__96@PAGE
  ldr x27, [x27, _l_tst1___closed__96@PAGEOFF]
  // call Float.isInf with 1 runtime args
  fmov d0, x27
  bl _lean_float_isinf
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

  .globl __init_l_tst1___closed__97
  .align 2
__init_l_tst1___closed__97:
  // Function: tst1._closed_97
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_97:
  // load global constant _l_tst1___closed__96
  adrp x27, _l_tst1___closed__96@PAGE
  ldr x27, [x27, _l_tst1___closed__96@PAGEOFF]
  // call Float.isNaN with 1 runtime args
  fmov d0, x27
  bl _lean_float_isnan
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

  .globl __init_l_tst1___closed__96
  .align 2
__init_l_tst1___closed__96:
  // Function: tst1._closed_96
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_96:
  // load global constant _l_tst1___closed__21
  adrp x27, _l_tst1___closed__21@PAGE
  ldr x27, [x27, _l_tst1___closed__21@PAGEOFF]
  // load global constant _l_tst1___closed__28
  adrp x26, _l_tst1___closed__28@PAGE
  ldr x26, [x26, _l_tst1___closed__28@PAGEOFF]
  // call Float.div with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_div
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_95:
  // load global constant _l_tst1___closed__94
  adrp x27, _l_tst1___closed__94@PAGE
  ldr x27, [x27, _l_tst1___closed__94@PAGEOFF]
  // load global constant _l_tst1___closed__95___boxed__const__1
  adrp x26, _l_tst1___closed__95___boxed__const__1@PAGE
  ldr x26, [x26, _l_tst1___closed__95___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__95___boxed__const__1
  .align 2
__init_l_tst1___closed__95___boxed__const__1:
  // Function: tst1._closed_95._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_95._boxed_const_1:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
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

  .globl __init_l_tst1___closed__94
  .align 2
__init_l_tst1___closed__94:
  // Function: tst1._closed_94
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_94:
  // load global constant _l_tst1___closed__93
  adrp x27, _l_tst1___closed__93@PAGE
  ldr x27, [x27, _l_tst1___closed__93@PAGEOFF]
  // load global constant _l_tst1___closed__88
  adrp x26, _l_tst1___closed__88@PAGE
  add x26, x26, _l_tst1___closed__88@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_93:
  // load global constant _l_tst1___closed__92
  adrp x27, _l_tst1___closed__92@PAGE
  ldr x27, [x27, _l_tst1___closed__92@PAGEOFF]
  // load global constant _l_tst1___closed__89
  adrp x26, _l_tst1___closed__89@PAGE
  add x26, x26, _l_tst1___closed__89@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_92:
  // load global constant _l_tst1___closed__91
  adrp x27, _l_tst1___closed__91@PAGE
  ldr x27, [x27, _l_tst1___closed__91@PAGEOFF]
  // load global constant _l_tst1___closed__90
  adrp x26, _l_tst1___closed__90@PAGE
  add x26, x26, _l_tst1___closed__90@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_91:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
  // call Float.frExp with 1 runtime args
  fmov d0, x27
  bl _lean_float_frexp
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

  .globl __init_l_tst1___closed__90
  .align 2
__init_l_tst1___closed__90:
  // Function: tst1._closed_90
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_90:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
  // call Float.isFinite with 1 runtime args
  fmov d0, x27
  bl _lean_float_isfinite
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

  .globl __init_l_tst1___closed__89
  .align 2
__init_l_tst1___closed__89:
  // Function: tst1._closed_89
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_89:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
  // call Float.isInf with 1 runtime args
  fmov d0, x27
  bl _lean_float_isinf
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

  .globl __init_l_tst1___closed__88
  .align 2
__init_l_tst1___closed__88:
  // Function: tst1._closed_88
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_88:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
  // call Float.isNaN with 1 runtime args
  fmov d0, x27
  bl _lean_float_isnan
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

  .globl __init_l_tst1___closed__87
  .align 2
__init_l_tst1___closed__87:
  // Function: tst1._closed_87
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_87:
  // load global constant _l_tst1___closed__86
  adrp x27, _l_tst1___closed__86@PAGE
  ldr x27, [x27, _l_tst1___closed__86@PAGEOFF]
  // load global constant _l_tst1___closed__87___boxed__const__1
  adrp x26, _l_tst1___closed__87___boxed__const__1@PAGE
  ldr x26, [x26, _l_tst1___closed__87___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__87___boxed__const__1
  .align 2
__init_l_tst1___closed__87___boxed__const__1:
  // Function: tst1._closed_87._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_87._boxed_const_1:
  // load global constant _l_tst1___closed__79
  adrp x27, _l_tst1___closed__79@PAGE
  ldr x27, [x27, _l_tst1___closed__79@PAGEOFF]
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

  .globl __init_l_tst1___closed__86
  .align 2
__init_l_tst1___closed__86:
  // Function: tst1._closed_86
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_86:
  // load global constant _l_tst1___closed__85
  adrp x27, _l_tst1___closed__85@PAGE
  ldr x27, [x27, _l_tst1___closed__85@PAGEOFF]
  // load global constant _l_tst1___closed__80
  adrp x26, _l_tst1___closed__80@PAGE
  add x26, x26, _l_tst1___closed__80@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_85:
  // load global constant _l_tst1___closed__84
  adrp x27, _l_tst1___closed__84@PAGE
  ldr x27, [x27, _l_tst1___closed__84@PAGEOFF]
  // load global constant _l_tst1___closed__81
  adrp x26, _l_tst1___closed__81@PAGE
  add x26, x26, _l_tst1___closed__81@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_84:
  // load global constant _l_tst1___closed__83
  adrp x27, _l_tst1___closed__83@PAGE
  ldr x27, [x27, _l_tst1___closed__83@PAGEOFF]
  // load global constant _l_tst1___closed__82
  adrp x26, _l_tst1___closed__82@PAGE
  add x26, x26, _l_tst1___closed__82@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_83:
  // load global constant _l_tst1___closed__79
  adrp x27, _l_tst1___closed__79@PAGE
  ldr x27, [x27, _l_tst1___closed__79@PAGEOFF]
  // call Float.frExp with 1 runtime args
  fmov d0, x27
  bl _lean_float_frexp
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

  .globl __init_l_tst1___closed__82
  .align 2
__init_l_tst1___closed__82:
  // Function: tst1._closed_82
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_82:
  // load global constant _l_tst1___closed__79
  adrp x27, _l_tst1___closed__79@PAGE
  ldr x27, [x27, _l_tst1___closed__79@PAGEOFF]
  // call Float.isFinite with 1 runtime args
  fmov d0, x27
  bl _lean_float_isfinite
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

  .globl __init_l_tst1___closed__81
  .align 2
__init_l_tst1___closed__81:
  // Function: tst1._closed_81
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_81:
  // load global constant _l_tst1___closed__79
  adrp x27, _l_tst1___closed__79@PAGE
  ldr x27, [x27, _l_tst1___closed__79@PAGEOFF]
  // call Float.isInf with 1 runtime args
  fmov d0, x27
  bl _lean_float_isinf
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

  .globl __init_l_tst1___closed__80
  .align 2
__init_l_tst1___closed__80:
  // Function: tst1._closed_80
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_80:
  // load global constant _l_tst1___closed__79
  adrp x27, _l_tst1___closed__79@PAGE
  ldr x27, [x27, _l_tst1___closed__79@PAGEOFF]
  // call Float.isNaN with 1 runtime args
  fmov d0, x27
  bl _lean_float_isnan
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

  .globl __init_l_tst1___closed__79
  .align 2
__init_l_tst1___closed__79:
  // Function: tst1._closed_79
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_79:
  // load global constant _l_tst1___closed__21
  adrp x27, _l_tst1___closed__21@PAGE
  ldr x27, [x27, _l_tst1___closed__21@PAGEOFF]
  // load global constant _l_tst1___closed__78
  adrp x26, _l_tst1___closed__78@PAGE
  ldr x26, [x26, _l_tst1___closed__78@PAGEOFF]
  // call Float.div with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_div
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__78
  .align 2
__init_l_tst1___closed__78:
  // Function: tst1._closed_78
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_78:
  // load global constant _l_tst1___closed__21
  adrp x27, _l_tst1___closed__21@PAGE
  ldr x27, [x27, _l_tst1___closed__21@PAGEOFF]
  // call Float.neg with 1 runtime args
  fmov d0, x27
  bl _lean_float_negate
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_77:
  // load global constant _l_tst1___closed__76
  adrp x27, _l_tst1___closed__76@PAGE
  ldr x27, [x27, _l_tst1___closed__76@PAGEOFF]
  // load global constant _l_tst1___closed__77___boxed__const__1
  adrp x26, _l_tst1___closed__77___boxed__const__1@PAGE
  ldr x26, [x26, _l_tst1___closed__77___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__77___boxed__const__1
  .align 2
__init_l_tst1___closed__77___boxed__const__1:
  // Function: tst1._closed_77._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_77._boxed_const_1:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
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

  .globl __init_l_tst1___closed__76
  .align 2
__init_l_tst1___closed__76:
  // Function: tst1._closed_76
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_76:
  // load global constant _l_tst1___closed__75
  adrp x27, _l_tst1___closed__75@PAGE
  ldr x27, [x27, _l_tst1___closed__75@PAGEOFF]
  // load global constant _l_tst1___closed__70
  adrp x26, _l_tst1___closed__70@PAGE
  add x26, x26, _l_tst1___closed__70@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_75:
  // load global constant _l_tst1___closed__74
  adrp x27, _l_tst1___closed__74@PAGE
  ldr x27, [x27, _l_tst1___closed__74@PAGEOFF]
  // load global constant _l_tst1___closed__71
  adrp x26, _l_tst1___closed__71@PAGE
  add x26, x26, _l_tst1___closed__71@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_74:
  // load global constant _l_tst1___closed__73
  adrp x27, _l_tst1___closed__73@PAGE
  ldr x27, [x27, _l_tst1___closed__73@PAGEOFF]
  // load global constant _l_tst1___closed__72
  adrp x26, _l_tst1___closed__72@PAGE
  add x26, x26, _l_tst1___closed__72@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_73:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
  // call Float.frExp with 1 runtime args
  fmov d0, x27
  bl _lean_float_frexp
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

  .globl __init_l_tst1___closed__72
  .align 2
__init_l_tst1___closed__72:
  // Function: tst1._closed_72
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_72:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
  // call Float.isFinite with 1 runtime args
  fmov d0, x27
  bl _lean_float_isfinite
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

  .globl __init_l_tst1___closed__71
  .align 2
__init_l_tst1___closed__71:
  // Function: tst1._closed_71
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_71:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
  // call Float.isInf with 1 runtime args
  fmov d0, x27
  bl _lean_float_isinf
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

  .globl __init_l_tst1___closed__70
  .align 2
__init_l_tst1___closed__70:
  // Function: tst1._closed_70
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_70:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
  // call Float.isNaN with 1 runtime args
  fmov d0, x27
  bl _lean_float_isnan
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

  .globl __init_l_tst1___closed__69
  .align 2
__init_l_tst1___closed__69:
  // Function: tst1._closed_69
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_69:
  // load global constant _l_tst1___closed__68
  adrp x27, _l_tst1___closed__68@PAGE
  ldr x27, [x27, _l_tst1___closed__68@PAGEOFF]
  // load global constant _l_tst1___closed__69___boxed__const__1
  adrp x26, _l_tst1___closed__69___boxed__const__1@PAGE
  ldr x26, [x26, _l_tst1___closed__69___boxed__const__1@PAGEOFF]
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

  .globl __init_l_tst1___closed__69___boxed__const__1
  .align 2
__init_l_tst1___closed__69___boxed__const__1:
  // Function: tst1._closed_69._boxed_const_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_69._boxed_const_1:
  // load global constant _l_tst1___closed__61
  adrp x27, _l_tst1___closed__61@PAGE
  ldr x27, [x27, _l_tst1___closed__61@PAGEOFF]
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

  .globl __init_l_tst1___closed__68
  .align 2
__init_l_tst1___closed__68:
  // Function: tst1._closed_68
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_68:
  // load global constant _l_tst1___closed__67
  adrp x27, _l_tst1___closed__67@PAGE
  ldr x27, [x27, _l_tst1___closed__67@PAGEOFF]
  // load global constant _l_tst1___closed__62
  adrp x26, _l_tst1___closed__62@PAGE
  add x26, x26, _l_tst1___closed__62@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_67:
  // load global constant _l_tst1___closed__66
  adrp x27, _l_tst1___closed__66@PAGE
  ldr x27, [x27, _l_tst1___closed__66@PAGEOFF]
  // load global constant _l_tst1___closed__63
  adrp x26, _l_tst1___closed__63@PAGE
  add x26, x26, _l_tst1___closed__63@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_66:
  // load global constant _l_tst1___closed__65
  adrp x27, _l_tst1___closed__65@PAGE
  ldr x27, [x27, _l_tst1___closed__65@PAGEOFF]
  // load global constant _l_tst1___closed__64
  adrp x26, _l_tst1___closed__64@PAGE
  add x26, x26, _l_tst1___closed__64@PAGEOFF
  ldrb w26, [x26]
  // box
  lsl x25, x26, #1
  orr x25, x25, #1
  // ctor Prod.mk (tag=0, objs=2, scalar=0)
  mov x0, #0
  mov x1, #2
  mov x2, #0
  bl _lean_alloc_ctor
  mov x24, x0
  mov x0, x24
  mov x1, #0
  mov x2, x25
  bl _lean_ctor_set
  mov x0, x24
  mov x1, #1
  mov x2, x27
  bl _lean_ctor_set
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
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
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_65:
  // load global constant _l_tst1___closed__61
  adrp x27, _l_tst1___closed__61@PAGE
  ldr x27, [x27, _l_tst1___closed__61@PAGEOFF]
  // call Float.frExp with 1 runtime args
  fmov d0, x27
  bl _lean_float_frexp
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

  .globl __init_l_tst1___closed__64
  .align 2
__init_l_tst1___closed__64:
  // Function: tst1._closed_64
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_64:
  // load global constant _l_tst1___closed__61
  adrp x27, _l_tst1___closed__61@PAGE
  ldr x27, [x27, _l_tst1___closed__61@PAGEOFF]
  // call Float.isFinite with 1 runtime args
  fmov d0, x27
  bl _lean_float_isfinite
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

  .globl __init_l_tst1___closed__63
  .align 2
__init_l_tst1___closed__63:
  // Function: tst1._closed_63
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_63:
  // load global constant _l_tst1___closed__61
  adrp x27, _l_tst1___closed__61@PAGE
  ldr x27, [x27, _l_tst1___closed__61@PAGEOFF]
  // call Float.isInf with 1 runtime args
  fmov d0, x27
  bl _lean_float_isinf
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

  .globl __init_l_tst1___closed__62
  .align 2
__init_l_tst1___closed__62:
  // Function: tst1._closed_62
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_62:
  // load global constant _l_tst1___closed__61
  adrp x27, _l_tst1___closed__61@PAGE
  ldr x27, [x27, _l_tst1___closed__61@PAGEOFF]
  // call Float.isNaN with 1 runtime args
  fmov d0, x27
  bl _lean_float_isnan
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

  .globl __init_l_tst1___closed__61
  .align 2
__init_l_tst1___closed__61:
  // Function: tst1._closed_61
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_61:
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  mov x26, #1
  movz x0, #14, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x25, x0
  // call Float.ofScientific with 3 runtime args
  mov x0, x25
  mov x1, x26
  mov x2, x27
  bl _l_Float_ofScientific
  fmov x24, d0
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__60
  .align 2
__init_l_tst1___closed__60:
  // Function: tst1._closed_60
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_60:
  // load global constant _l_tst1___closed__56
  adrp x24, _l_tst1___closed__56@PAGE
  ldr x24, [x24, _l_tst1___closed__56@PAGEOFF]
  // load global constant _l_tst1___closed__59
  adrp x23, _l_tst1___closed__59@PAGE
  ldr x23, [x23, _l_tst1___closed__59@PAGEOFF]
  // call Nat.decEq with 2 runtime args
  mov x0, x23
  mov x1, x24
  bl _lean_nat_dec_eq
  mov x25, x0
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

  .globl __init_l_tst1___closed__59
  .align 2
__init_l_tst1___closed__59:
  // Function: tst1._closed_59
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_59:
  // load global constant _l_tst1___closed__58
  adrp x27, _l_tst1___closed__58@PAGE
  ldr x27, [x27, _l_tst1___closed__58@PAGEOFF]
  // call USize.toNat with 1 runtime args
  mov x0, x27
  bl _lean_usize_to_nat
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

  .globl __init_l_tst1___closed__58
  .align 2
__init_l_tst1___closed__58:
  // Function: tst1._closed_58
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_58:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
  // call Float.toUSize with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_usize
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

  .globl __init_l_tst1___closed__57
  .align 2
__init_l_tst1___closed__57:
  // Function: tst1._closed_57
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_57:
  // load global constant _l_tst1___closed__56
  adrp x24, _l_tst1___closed__56@PAGE
  ldr x24, [x24, _l_tst1___closed__56@PAGEOFF]
  // load global constant _l_tst1___closed__55
  adrp x23, _l_tst1___closed__55@PAGE
  ldr x23, [x23, _l_tst1___closed__55@PAGEOFF]
  // call Nat.decEq with 2 runtime args
  mov x0, x23
  mov x1, x24
  bl _lean_nat_dec_eq
  mov x25, x0
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

  .globl __init_l_tst1___closed__56
  .align 2
__init_l_tst1___closed__56:
  // Function: tst1._closed_56
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_56:
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // load global constant _l_tst1___closed__50
  adrp x24, _l_tst1___closed__50@PAGE
  ldr x24, [x24, _l_tst1___closed__50@PAGEOFF]
  // call Nat.sub with 2 runtime args
  mov x0, x24
  mov x1, x27
  bl _lean_nat_sub
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

  .globl __init_l_tst1___closed__55
  .align 2
__init_l_tst1___closed__55:
  // Function: tst1._closed_55
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_55:
  // load global constant _l_tst1___closed__54
  adrp x27, _l_tst1___closed__54@PAGE
  ldr x27, [x27, _l_tst1___closed__54@PAGEOFF]
  // call USize.toNat with 1 runtime args
  mov x0, x27
  bl _lean_usize_to_nat
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

  .globl __init_l_tst1___closed__54
  .align 2
__init_l_tst1___closed__54:
  // Function: tst1._closed_54
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_54:
  // load global constant _l_tst1___closed__53
  adrp x27, _l_tst1___closed__53@PAGE
  ldr x27, [x27, _l_tst1___closed__53@PAGEOFF]
  // call Float.toUSize with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_usize
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

  .globl __init_l_tst1___closed__53
  .align 2
__init_l_tst1___closed__53:
  // Function: tst1._closed_53
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_53:
  // load global constant _l_tst1___closed__52
  adrp x27, _l_tst1___closed__52@PAGE
  ldr x27, [x27, _l_tst1___closed__52@PAGEOFF]
  // load global constant _l_tst1___closed__1
  adrp x26, _l_tst1___closed__1@PAGE
  ldr x26, [x26, _l_tst1___closed__1@PAGEOFF]
  // call Float.pow with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _pow
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__52
  .align 2
__init_l_tst1___closed__52:
  // Function: tst1._closed_52
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_52:
  // load global constant _l_tst1___closed__51
  adrp x27, _l_tst1___closed__51@PAGE
  ldr x27, [x27, _l_tst1___closed__51@PAGEOFF]
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__51
  .align 2
__init_l_tst1___closed__51:
  // Function: tst1._closed_51
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_51:
  // load global constant _l_tst1___closed__50
  adrp x25, _l_tst1___closed__50@PAGE
  ldr x25, [x25, _l_tst1___closed__50@PAGEOFF]
  // call Nat.log2 with 1 runtime args
  mov x0, x25
  bl _lean_nat_log2
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

  .globl __init_l_tst1___closed__50
  .align 2
__init_l_tst1___closed__50:
  // Function: tst1._closed_50
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_50:
  // load global constant _l_System_Platform_numBits
  adrp x24, _l_System_Platform_numBits@PAGE
  ldr x24, [x24, _l_System_Platform_numBits@PAGEOFF]
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x26, x0
  // call Nat.pow with 2 runtime args
  mov x0, x26
  mov x1, x24
  bl _lean_nat_pow
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

  .globl __init_l_tst1___closed__49
  .align 2
__init_l_tst1___closed__49:
  // Function: tst1._closed_49
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_49:
  // load global constant _l_tst1___closed__28
  adrp x27, _l_tst1___closed__28@PAGE
  ldr x27, [x27, _l_tst1___closed__28@PAGEOFF]
  // call Float.toUSize with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_usize
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

  .globl __init_l_tst1___closed__48
  .align 2
__init_l_tst1___closed__48:
  // Function: tst1._closed_48
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_48:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
  // call Float.toUInt64 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint64
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

  .globl __init_l_tst1___closed__47
  .align 2
__init_l_tst1___closed__47:
  // Function: tst1._closed_47
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_47:
  // load global constant _l_tst1___closed__46
  adrp x27, _l_tst1___closed__46@PAGE
  ldr x27, [x27, _l_tst1___closed__46@PAGEOFF]
  // call Float.toUInt64 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint64
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

  .globl __init_l_tst1___closed__46
  .align 2
__init_l_tst1___closed__46:
  // Function: tst1._closed_46
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_46:
  // load global constant _l_tst1___closed__45
  adrp x27, _l_tst1___closed__45@PAGE
  ldr x27, [x27, _l_tst1___closed__45@PAGEOFF]
  // load global constant _l_tst1___closed__1
  adrp x26, _l_tst1___closed__1@PAGE
  ldr x26, [x26, _l_tst1___closed__1@PAGEOFF]
  // call Float.pow with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _pow
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__45
  .align 2
__init_l_tst1___closed__45:
  // Function: tst1._closed_45
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_45:
  movz x0, #64, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__44
  .align 2
__init_l_tst1___closed__44:
  // Function: tst1._closed_44
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_44:
  // load global constant _l_tst1___closed__28
  adrp x27, _l_tst1___closed__28@PAGE
  ldr x27, [x27, _l_tst1___closed__28@PAGEOFF]
  // call Float.toUInt64 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint64
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

  .globl __init_l_tst1___closed__43
  .align 2
__init_l_tst1___closed__43:
  // Function: tst1._closed_43
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_43:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
  // call Float.toUInt32 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint32
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

  .globl __init_l_tst1___closed__42
  .align 2
__init_l_tst1___closed__42:
  // Function: tst1._closed_42
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_42:
  // load global constant _l_tst1___closed__41
  adrp x27, _l_tst1___closed__41@PAGE
  ldr x27, [x27, _l_tst1___closed__41@PAGEOFF]
  // call Float.toUInt32 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint32
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

  .globl __init_l_tst1___closed__41
  .align 2
__init_l_tst1___closed__41:
  // Function: tst1._closed_41
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_41:
  // load global constant _l_tst1___closed__40
  adrp x27, _l_tst1___closed__40@PAGE
  ldr x27, [x27, _l_tst1___closed__40@PAGEOFF]
  // load global constant _l_tst1___closed__1
  adrp x26, _l_tst1___closed__1@PAGE
  ldr x26, [x26, _l_tst1___closed__1@PAGEOFF]
  // call Float.pow with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _pow
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__40
  .align 2
__init_l_tst1___closed__40:
  // Function: tst1._closed_40
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_40:
  movz x0, #32, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__39
  .align 2
__init_l_tst1___closed__39:
  // Function: tst1._closed_39
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_39:
  // load global constant _l_tst1___closed__28
  adrp x27, _l_tst1___closed__28@PAGE
  ldr x27, [x27, _l_tst1___closed__28@PAGEOFF]
  // call Float.toUInt32 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint32
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

  .globl __init_l_tst1___closed__38
  .align 2
__init_l_tst1___closed__38:
  // Function: tst1._closed_38
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_38:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
  // call Float.toUInt16 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint16
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

  .globl __init_l_tst1___closed__37
  .align 2
__init_l_tst1___closed__37:
  // Function: tst1._closed_37
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_37:
  // load global constant _l_tst1___closed__36
  adrp x27, _l_tst1___closed__36@PAGE
  ldr x27, [x27, _l_tst1___closed__36@PAGEOFF]
  // call Float.toUInt16 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint16
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

  .globl __init_l_tst1___closed__36
  .align 2
__init_l_tst1___closed__36:
  // Function: tst1._closed_36
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_36:
  // load global constant _l_tst1___closed__35
  adrp x27, _l_tst1___closed__35@PAGE
  ldr x27, [x27, _l_tst1___closed__35@PAGEOFF]
  // load global constant _l_tst1___closed__1
  adrp x26, _l_tst1___closed__1@PAGE
  ldr x26, [x26, _l_tst1___closed__1@PAGEOFF]
  // call Float.pow with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _pow
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__35
  .align 2
__init_l_tst1___closed__35:
  // Function: tst1._closed_35
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_35:
  movz x0, #16, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__34
  .align 2
__init_l_tst1___closed__34:
  // Function: tst1._closed_34
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_34:
  // load global constant _l_tst1___closed__28
  adrp x27, _l_tst1___closed__28@PAGE
  ldr x27, [x27, _l_tst1___closed__28@PAGEOFF]
  // call Float.toUInt16 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint16
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

  .globl __init_l_tst1___closed__33
  .align 2
__init_l_tst1___closed__33:
  // Function: tst1._closed_33
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_33:
  // load global constant _l_tst1___closed__32
  adrp x27, _l_tst1___closed__32@PAGE
  ldr x27, [x27, _l_tst1___closed__32@PAGEOFF]
  // call Float.toUInt8 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint8
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

  .globl __init_l_tst1___closed__32
  .align 2
__init_l_tst1___closed__32:
  // Function: tst1._closed_32
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_32:
  // load global constant _l_tst1___closed__21
  adrp x27, _l_tst1___closed__21@PAGE
  ldr x27, [x27, _l_tst1___closed__21@PAGEOFF]
  // load global constant _l_tst1___closed__0
  adrp x26, _l_tst1___closed__0@PAGE
  ldr x26, [x26, _l_tst1___closed__0@PAGEOFF]
  // call Float.div with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_div
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__31
  .align 2
__init_l_tst1___closed__31:
  // Function: tst1._closed_31
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_31:
  // load global constant _l_tst1___closed__30
  adrp x27, _l_tst1___closed__30@PAGE
  ldr x27, [x27, _l_tst1___closed__30@PAGEOFF]
  // call Float.toUInt8 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint8
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

  .globl __init_l_tst1___closed__30
  .align 2
__init_l_tst1___closed__30:
  // Function: tst1._closed_30
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_30:
  movz x0, #256, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__29
  .align 2
__init_l_tst1___closed__29:
  // Function: tst1._closed_29
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_29:
  // load global constant _l_tst1___closed__28
  adrp x27, _l_tst1___closed__28@PAGE
  ldr x27, [x27, _l_tst1___closed__28@PAGEOFF]
  // call Float.toUInt8 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint8
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

  .globl __init_l_tst1___closed__28
  .align 2
__init_l_tst1___closed__28:
  // Function: tst1._closed_28
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_28:
  // load global constant _l_tst1___closed__0
  adrp x27, _l_tst1___closed__0@PAGE
  ldr x27, [x27, _l_tst1___closed__0@PAGEOFF]
  // call Float.neg with 1 runtime args
  fmov d0, x27
  bl _lean_float_negate
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__27
  .align 2
__init_l_tst1___closed__27:
  // Function: tst1._closed_27
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_27:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
  // call Float.toUSize with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_usize
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

  .globl __init_l_tst1___closed__26
  .align 2
__init_l_tst1___closed__26:
  // Function: tst1._closed_26
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_26:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
  // call Float.toUInt64 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint64
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

  .globl __init_l_tst1___closed__25
  .align 2
__init_l_tst1___closed__25:
  // Function: tst1._closed_25
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_25:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
  // call Float.toUInt32 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint32
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

  .globl __init_l_tst1___closed__24
  .align 2
__init_l_tst1___closed__24:
  // Function: tst1._closed_24
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_24:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
  // call Float.toUInt16 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint16
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

  .globl __init_l_tst1___closed__23
  .align 2
__init_l_tst1___closed__23:
  // Function: tst1._closed_23
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_23:
  // load global constant _l_tst1___closed__22
  adrp x27, _l_tst1___closed__22@PAGE
  ldr x27, [x27, _l_tst1___closed__22@PAGEOFF]
  // call Float.toUInt8 with 1 runtime args
  fmov d0, x27
  bl _lean_float_to_uint8
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

  .globl __init_l_tst1___closed__22
  .align 2
__init_l_tst1___closed__22:
  // Function: tst1._closed_22
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_22:
  // load global constant _l_tst1___closed__21
  adrp x27, _l_tst1___closed__21@PAGE
  ldr x27, [x27, _l_tst1___closed__21@PAGEOFF]
  // call Float.div with 2 runtime args
  fmov d0, x27
  fmov d1, x27
  bl _lean_float_div
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__21
  .align 2
__init_l_tst1___closed__21:
  // Function: tst1._closed_21
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_21:
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__20
  .align 2
__init_l_tst1___closed__20:
  // Function: tst1._closed_20
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_20:
  mov x27, #0
  // call UInt64.toFloat with 1 runtime args
  mov x0, x27
  bl _lean_uint64_to_float
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
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
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_19:
  // load global constant _l_tst1___closed__18
  adrp x25, _l_tst1___closed__18@PAGE
  ldr x25, [x25, _l_tst1___closed__18@PAGEOFF]
  // call Float.ofInt with 1 runtime args
  mov x0, x25
  bl _l_Float_ofInt
  fmov x26, d0
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

  .globl __init_l_tst1___closed__18
  .align 2
__init_l_tst1___closed__18:
  // Function: tst1._closed_18
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_18:
  // load global constant _l_tst1___closed__16
  adrp x25, _l_tst1___closed__16@PAGE
  ldr x25, [x25, _l_tst1___closed__16@PAGEOFF]
  // call Int.neg with 1 runtime args
  mov x0, x25
  bl _lean_int_neg
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

  .globl __init_l_tst1___closed__17
  .align 2
__init_l_tst1___closed__17:
  // Function: tst1._closed_17
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_17:
  // load global constant _l_tst1___closed__16
  adrp x25, _l_tst1___closed__16@PAGE
  ldr x25, [x25, _l_tst1___closed__16@PAGEOFF]
  // call Float.ofInt with 1 runtime args
  mov x0, x25
  bl _l_Float_ofInt
  fmov x26, d0
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

  .globl __init_l_tst1___closed__16
  .align 2
__init_l_tst1___closed__16:
  // Function: tst1._closed_16
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_16:
  movz x0, #42, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Int.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_nat_to_int
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

  .globl __init_l_tst1___closed__15
  .align 2
__init_l_tst1___closed__15:
  // Function: tst1._closed_15
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_15:
  // load global constant _l_IO_println___at___tst1_spec__8___closed__3
  adrp x25, _l_IO_println___at___tst1_spec__8___closed__3@PAGE
  ldr x25, [x25, _l_IO_println___at___tst1_spec__8___closed__3@PAGEOFF]
  // call Float.ofInt with 1 runtime args
  mov x0, x25
  bl _l_Float_ofInt
  fmov x26, d0
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

  .globl __init_l_tst1___closed__14
  .align 2
__init_l_tst1___closed__14:
  // Function: tst1._closed_14
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_14:
  // load global constant _l_tst1___closed__8
  adrp x27, _l_tst1___closed__8@PAGE
  ldr x27, [x27, _l_tst1___closed__8@PAGEOFF]
  // load global constant _l_tst1___closed__3
  adrp x26, _l_tst1___closed__3@PAGE
  ldr x26, [x26, _l_tst1___closed__3@PAGEOFF]
  // call Float.decLe with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_decLe
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

  .globl __init_l_tst1___closed__13
  .align 2
__init_l_tst1___closed__13:
  // Function: tst1._closed_13
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_13:
  // load global constant _l_tst1___closed__3
  adrp x27, _l_tst1___closed__3@PAGE
  ldr x27, [x27, _l_tst1___closed__3@PAGEOFF]
  // call Float.decLe with 2 runtime args
  fmov d0, x27
  fmov d1, x27
  bl _lean_float_decLe
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

  .globl __init_l_tst1___closed__12
  .align 2
__init_l_tst1___closed__12:
  // Function: tst1._closed_12
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_12:
  // load global constant _l_tst1___closed__1
  adrp x27, _l_tst1___closed__1@PAGE
  ldr x27, [x27, _l_tst1___closed__1@PAGEOFF]
  // load global constant _l_tst1___closed__3
  adrp x26, _l_tst1___closed__3@PAGE
  ldr x26, [x26, _l_tst1___closed__3@PAGEOFF]
  // call Float.decLe with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_decLe
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

  .globl __init_l_tst1___closed__11
  .align 2
__init_l_tst1___closed__11:
  // Function: tst1._closed_11
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_11:
  // load global constant _l_tst1___closed__1
  adrp x27, _l_tst1___closed__1@PAGE
  ldr x27, [x27, _l_tst1___closed__1@PAGEOFF]
  // call Float.beq with 2 runtime args
  fmov d0, x27
  fmov d1, x27
  bl _lean_float_beq
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

  .globl __init_l_tst1___closed__10
  .align 2
__init_l_tst1___closed__10:
  // Function: tst1._closed_10
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_10:
  // load global constant _l_tst1___closed__1
  adrp x27, _l_tst1___closed__1@PAGE
  ldr x27, [x27, _l_tst1___closed__1@PAGEOFF]
  // load global constant _l_tst1___closed__3
  adrp x26, _l_tst1___closed__3@PAGE
  ldr x26, [x26, _l_tst1___closed__3@PAGEOFF]
  // call Float.beq with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_beq
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

  .globl __init_l_tst1___closed__9
  .align 2
__init_l_tst1___closed__9:
  // Function: tst1._closed_9
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_9:
  // load global constant _l_tst1___closed__8
  adrp x27, _l_tst1___closed__8@PAGE
  ldr x27, [x27, _l_tst1___closed__8@PAGEOFF]
  // load global constant _l_tst1___closed__3
  adrp x26, _l_tst1___closed__3@PAGE
  ldr x26, [x26, _l_tst1___closed__3@PAGEOFF]
  // call Float.decLt with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_decLt
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

  .globl __init_l_tst1___closed__8
  .align 2
__init_l_tst1___closed__8:
  // Function: tst1._closed_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_8:
  movz x0, #4, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__7
  .align 2
__init_l_tst1___closed__7:
  // Function: tst1._closed_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_7:
  // load global constant _l_tst1___closed__1
  adrp x27, _l_tst1___closed__1@PAGE
  ldr x27, [x27, _l_tst1___closed__1@PAGEOFF]
  // load global constant _l_tst1___closed__3
  adrp x26, _l_tst1___closed__3@PAGE
  ldr x26, [x26, _l_tst1___closed__3@PAGEOFF]
  // call Float.decLt with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_decLt
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

  .globl __init_l_tst1___closed__6
  .align 2
__init_l_tst1___closed__6:
  // Function: tst1._closed_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_6:
  // load global constant _l_tst1___closed__1
  adrp x27, _l_tst1___closed__1@PAGE
  ldr x27, [x27, _l_tst1___closed__1@PAGEOFF]
  // load global constant _l_tst1___closed__3
  adrp x26, _l_tst1___closed__3@PAGE
  ldr x26, [x26, _l_tst1___closed__3@PAGEOFF]
  // call Float.div with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_div
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__5
  .align 2
__init_l_tst1___closed__5:
  // Function: tst1._closed_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_5:
  // load global constant _l_tst1___closed__1
  adrp x27, _l_tst1___closed__1@PAGE
  ldr x27, [x27, _l_tst1___closed__1@PAGEOFF]
  // load global constant _l_tst1___closed__3
  adrp x26, _l_tst1___closed__3@PAGE
  ldr x26, [x26, _l_tst1___closed__3@PAGEOFF]
  // call Float.mul with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_mul
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__4
  .align 2
__init_l_tst1___closed__4:
  // Function: tst1._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_4:
  // load global constant _l_tst1___closed__3
  adrp x27, _l_tst1___closed__3@PAGE
  ldr x27, [x27, _l_tst1___closed__3@PAGEOFF]
  // load global constant _l_tst1___closed__1
  adrp x26, _l_tst1___closed__1@PAGE
  ldr x26, [x26, _l_tst1___closed__1@PAGEOFF]
  // call Float.sub with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_sub
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__3
  .align 2
__init_l_tst1___closed__3:
  // Function: tst1._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_3:
  movz x0, #3, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__2
  .align 2
__init_l_tst1___closed__2:
  // Function: tst1._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_2:
  // load global constant _l_tst1___closed__1
  adrp x27, _l_tst1___closed__1@PAGE
  ldr x27, [x27, _l_tst1___closed__1@PAGEOFF]
  // load global constant _l_tst1___closed__0
  adrp x26, _l_tst1___closed__0@PAGE
  ldr x26, [x26, _l_tst1___closed__0@PAGEOFF]
  // call Float.add with 2 runtime args
  fmov d0, x26
  fmov d1, x27
  bl _lean_float_add
  fmov x25, d0
  // return
  mov x0, x25
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__1
  .align 2
__init_l_tst1___closed__1:
  // Function: tst1._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_1:
  movz x0, #2, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_tst1___closed__0
  .align 2
__init_l_tst1___closed__0:
  // Function: tst1._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_tst1._closed_0:
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Float.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_float_of_nat
  fmov x26, d0
  // return
  mov x0, x26
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_println___at___tst1_spec__8
  .align 2
_l_IO_println___at___tst1_spec__8:
  // Function: IO.println._at_.tst1.spec_8
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #544
  // Stack frame: 544 bytes (67 spilled vars)
.Lfn_start_IO.println._at_.tst1.spec_8:
  mov x19, x0
  mov x20, x1
  // proj field 1
  ldr x27, [x19, #16]
  // proj field 0
  ldr x26, [x19, #8]
  // proj field 0
  ldr x25, [x27, #8]
  // proj field 1
  ldr x24, [x27, #16]
  // load global constant _l_IO_println___at___tst1_spec__8___closed__0
  adrp x23, _l_IO_println___at___tst1_spec__8___closed__0@PAGE
  ldr x23, [x23, _l_IO_println___at___tst1_spec__8___closed__0@PAGEOFF]
  // unbox
  asr x22, x26, #1
  // call Float.toString with 1 runtime args
  fmov d0, x22
  bl _lean_float_to_string
  mov x21, x0
  // inc 1
  // call String.Internal.append with 2 runtime args
  mov x0, x23
  mov x1, x21
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg89
  // store to stack slot 1
  str x8, [sp, #8]
  // dec 1
  mov x0, x21
  bl _lean_dec_ref
  // load global constant _l_IO_println___at___tst1_spec__8___closed__1
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGE
  ldr x8, [x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGEOFF]
  // store result to spilled vreg90
  // store to stack slot 3
  str x8, [sp, #24]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg89 from stack slot 1
  ldr x8, [sp, #8]
  mov x0, x8
  // load spilled vreg90 from stack slot 3
  ldr x8, [sp, #24]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg91
  // store to stack slot 4
  str x8, [sp, #32]
  // unbox
  asr x8, x25, #1
  // store result to spilled vreg152
  // store to stack slot 65
  str x8, [sp, #520]
  // load spilled vreg152 from stack slot 65
  ldr x8, [sp, #520]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor5_fn905580609808025026
  cmp x8, #1
  b.eq .Lcase_ctor6_fn905580609808025026
  b .Lcase_end4_fn905580609808025026
.Lcase_ctor5_fn905580609808025026:
  // load global constant _l_IO_println___at___tst1_spec__2___closed__0
  adrp x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
  ldr x8, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
  // store result to spilled vreg153
  // store to stack slot 66
  str x8, [sp, #528]
  // jump to JP76
  // load spilled vreg153 from stack slot 66
  ldr x8, [sp, #528]
  // store to stack slot 57
  str x8, [sp, #456]
  b .LJP3_fn905580609808025026
  b .Lcase_end4_fn905580609808025026
.Lcase_ctor6_fn905580609808025026:
  // load global constant _l_IO_println___at___tst1_spec__2___closed__1
  adrp x28, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
  ldr x28, [x28, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
  // jump to JP76
  // store to stack slot 57
  str x28, [sp, #456]
  b .LJP3_fn905580609808025026
  b .Lcase_end4_fn905580609808025026
.Lcase_end4_fn905580609808025026:
.LJP3_fn905580609808025026:
  // proj field 0
  ldr x8, [x24, #8]
  // store result to spilled vreg145
  // store to stack slot 58
  str x8, [sp, #464]
  // proj field 1
  ldr x8, [x24, #16]
  // store result to spilled vreg146
  // store to stack slot 59
  str x8, [sp, #472]
  // inc 1
  // call String.Internal.append with 2 runtime args
  mov x0, x23
  // load spilled vreg144 from stack slot 57
  ldr x8, [sp, #456]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg147
  // store to stack slot 60
  str x8, [sp, #480]
  // dec 1
  // load spilled vreg144 from stack slot 57
  ldr x8, [sp, #456]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  // load spilled vreg147 from stack slot 60
  ldr x8, [sp, #480]
  mov x0, x8
  // load spilled vreg90 from stack slot 3
  ldr x8, [sp, #24]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg148
  // store to stack slot 61
  str x8, [sp, #488]
  // load spilled vreg145 from stack slot 58
  ldr x8, [sp, #464]
  // unbox
  asr x8, x8, #1
  // store result to spilled vreg149
  // store to stack slot 62
  str x8, [sp, #496]
  // load spilled vreg149 from stack slot 62
  ldr x8, [sp, #496]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor8_fn905580609808025026
  cmp x8, #1
  b.eq .Lcase_ctor9_fn905580609808025026
  b .Lcase_end7_fn905580609808025026
.Lcase_ctor8_fn905580609808025026:
  // load global constant _l_IO_println___at___tst1_spec__2___closed__0
  adrp x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
  ldr x8, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
  // store result to spilled vreg150
  // store to stack slot 63
  str x8, [sp, #504]
  // jump to JP67
  // load spilled vreg146 from stack slot 59
  ldr x8, [sp, #472]
  // store to stack slot 47
  str x8, [sp, #376]
  // load spilled vreg148 from stack slot 61
  ldr x8, [sp, #488]
  // store to stack slot 48
  str x8, [sp, #384]
  // load spilled vreg150 from stack slot 63
  ldr x8, [sp, #504]
  // store to stack slot 49
  str x8, [sp, #392]
  b .LJP2_fn905580609808025026
  b .Lcase_end7_fn905580609808025026
.Lcase_ctor9_fn905580609808025026:
  // load global constant _l_IO_println___at___tst1_spec__2___closed__1
  adrp x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
  ldr x8, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
  // store result to spilled vreg151
  // store to stack slot 64
  str x8, [sp, #512]
  // jump to JP67
  // load spilled vreg146 from stack slot 59
  ldr x8, [sp, #472]
  // store to stack slot 47
  str x8, [sp, #376]
  // load spilled vreg148 from stack slot 61
  ldr x8, [sp, #488]
  // store to stack slot 48
  str x8, [sp, #384]
  // load spilled vreg151 from stack slot 64
  ldr x8, [sp, #512]
  // store to stack slot 49
  str x8, [sp, #392]
  b .LJP2_fn905580609808025026
  b .Lcase_end7_fn905580609808025026
.Lcase_end7_fn905580609808025026:
.LJP2_fn905580609808025026:
  // load spilled vreg134 from stack slot 47
  ldr x8, [sp, #376]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg137
  // store to stack slot 50
  str x8, [sp, #400]
  // load spilled vreg134 from stack slot 47
  ldr x8, [sp, #376]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg138
  // store to stack slot 51
  str x8, [sp, #408]
  // inc 1
  // call String.Internal.append with 2 runtime args
  mov x0, x23
  // load spilled vreg136 from stack slot 49
  ldr x8, [sp, #392]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg139
  // store to stack slot 52
  str x8, [sp, #416]
  // dec 1
  // load spilled vreg136 from stack slot 49
  ldr x8, [sp, #392]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  // load spilled vreg139 from stack slot 52
  ldr x8, [sp, #416]
  mov x0, x8
  // load spilled vreg90 from stack slot 3
  ldr x8, [sp, #24]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg140
  // store to stack slot 53
  str x8, [sp, #424]
  // load spilled vreg137 from stack slot 50
  ldr x8, [sp, #400]
  // unbox
  asr x8, x8, #1
  // store result to spilled vreg141
  // store to stack slot 54
  str x8, [sp, #432]
  // load spilled vreg141 from stack slot 54
  ldr x8, [sp, #432]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor11_fn905580609808025026
  cmp x8, #1
  b.eq .Lcase_ctor12_fn905580609808025026
  b .Lcase_end10_fn905580609808025026
.Lcase_ctor11_fn905580609808025026:
  // load global constant _l_IO_println___at___tst1_spec__2___closed__0
  adrp x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
  ldr x8, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
  // store result to spilled vreg142
  // store to stack slot 55
  str x8, [sp, #440]
  // jump to JP56
  // load spilled vreg138 from stack slot 51
  ldr x8, [sp, #408]
  // store to stack slot 24
  str x8, [sp, #192]
  // load spilled vreg140 from stack slot 53
  ldr x8, [sp, #424]
  // store to stack slot 25
  str x8, [sp, #200]
  // load spilled vreg135 from stack slot 48
  ldr x8, [sp, #384]
  // store to stack slot 26
  str x8, [sp, #208]
  // load spilled vreg142 from stack slot 55
  ldr x8, [sp, #440]
  // store to stack slot 27
  str x8, [sp, #216]
  b .LJP1_fn905580609808025026
  b .Lcase_end10_fn905580609808025026
.Lcase_ctor12_fn905580609808025026:
  // load global constant _l_IO_println___at___tst1_spec__2___closed__1
  adrp x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
  ldr x8, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
  // store result to spilled vreg143
  // store to stack slot 56
  str x8, [sp, #448]
  // jump to JP56
  // load spilled vreg138 from stack slot 51
  ldr x8, [sp, #408]
  // store to stack slot 24
  str x8, [sp, #192]
  // load spilled vreg140 from stack slot 53
  ldr x8, [sp, #424]
  // store to stack slot 25
  str x8, [sp, #200]
  // load spilled vreg135 from stack slot 48
  ldr x8, [sp, #384]
  // store to stack slot 26
  str x8, [sp, #208]
  // load spilled vreg143 from stack slot 56
  ldr x8, [sp, #448]
  // store to stack slot 27
  str x8, [sp, #216]
  b .LJP1_fn905580609808025026
  b .Lcase_end10_fn905580609808025026
.Lcase_end10_fn905580609808025026:
.LJP1_fn905580609808025026:
  // load spilled vreg111 from stack slot 24
  ldr x8, [sp, #192]
  // proj field 0
  ldr x8, [x8, #8]
  // store result to spilled vreg115
  // store to stack slot 28
  str x8, [sp, #224]
  // load spilled vreg111 from stack slot 24
  ldr x8, [sp, #192]
  // proj field 1
  ldr x8, [x8, #16]
  // store result to spilled vreg116
  // store to stack slot 29
  str x8, [sp, #232]
  // inc 1
  // call String.Internal.append with 2 runtime args
  mov x0, x23
  // load spilled vreg114 from stack slot 27
  ldr x8, [sp, #216]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg117
  // store to stack slot 30
  str x8, [sp, #240]
  // dec 1
  // load spilled vreg114 from stack slot 27
  ldr x8, [sp, #216]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  // load spilled vreg117 from stack slot 30
  ldr x8, [sp, #240]
  mov x0, x8
  // load spilled vreg90 from stack slot 3
  ldr x8, [sp, #24]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg118
  // store to stack slot 31
  str x8, [sp, #248]
  // load spilled vreg115 from stack slot 28
  ldr x8, [sp, #224]
  // unbox
  asr x8, x8, #1
  // store result to spilled vreg119
  // store to stack slot 32
  str x8, [sp, #256]
  // call Float.toString with 1 runtime args
  // load spilled vreg119 from stack slot 32
  ldr x8, [sp, #256]
  fmov d0, x8
  bl _lean_float_to_string
  mov x8, x0
  // store result to spilled vreg120
  // store to stack slot 33
  str x8, [sp, #264]
  // call String.Internal.append with 2 runtime args
  mov x0, x23
  // load spilled vreg120 from stack slot 33
  ldr x8, [sp, #264]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg121
  // store to stack slot 34
  str x8, [sp, #272]
  // dec 1
  // load spilled vreg120 from stack slot 33
  ldr x8, [sp, #264]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  // load spilled vreg121 from stack slot 34
  ldr x8, [sp, #272]
  mov x0, x8
  // load spilled vreg90 from stack slot 3
  ldr x8, [sp, #24]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg122
  // store to stack slot 35
  str x8, [sp, #280]
  // dec 1
  // load global constant _l_IO_println___at___tst1_spec__8___closed__3
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGE
  ldr x8, [x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGEOFF]
  // store result to spilled vreg123
  // store to stack slot 36
  str x8, [sp, #288]
  // call Int.decLt with 2 runtime args
  // load spilled vreg116 from stack slot 29
  ldr x8, [sp, #232]
  mov x0, x8
  // load spilled vreg123 from stack slot 36
  ldr x8, [sp, #288]
  mov x1, x8
  bl _lean_int_dec_lt
  mov x8, x0
  // store result to spilled vreg124
  // store to stack slot 37
  str x8, [sp, #296]
  // dec 1
  // load spilled vreg124 from stack slot 37
  ldr x8, [sp, #296]
  // case
  mov x8, x8
  cmp x8, #0
  b.eq .Lcase_ctor14_fn905580609808025026
  cmp x8, #1
  b.eq .Lcase_ctor15_fn905580609808025026
  b .Lcase_end13_fn905580609808025026
.Lcase_ctor14_fn905580609808025026:
  // call Int.natAbs with 1 runtime args
  // load spilled vreg116 from stack slot 29
  ldr x8, [sp, #232]
  mov x0, x8
  bl _lean_nat_abs
  mov x8, x0
  // store result to spilled vreg125
  // store to stack slot 38
  str x8, [sp, #304]
  // call Nat.reprFast with 1 runtime args
  // load spilled vreg125 from stack slot 38
  ldr x8, [sp, #304]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg126
  // store to stack slot 39
  str x8, [sp, #312]
  // jump to JP32
  // load spilled vreg112 from stack slot 25
  ldr x8, [sp, #200]
  // store to stack slot 5
  str x8, [sp, #40]
  // load spilled vreg113 from stack slot 26
  ldr x8, [sp, #208]
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg118 from stack slot 31
  ldr x8, [sp, #248]
  // store to stack slot 7
  str x8, [sp, #56]
  // load spilled vreg122 from stack slot 35
  ldr x8, [sp, #280]
  // store to stack slot 8
  str x8, [sp, #64]
  // load spilled vreg126 from stack slot 39
  ldr x8, [sp, #312]
  // store to stack slot 9
  str x8, [sp, #72]
  b .LJP0_fn905580609808025026
  b .Lcase_end13_fn905580609808025026
.Lcase_ctor15_fn905580609808025026:
  // call Int.natAbs with 1 runtime args
  // load spilled vreg116 from stack slot 29
  ldr x8, [sp, #232]
  mov x0, x8
  bl _lean_nat_abs
  mov x8, x0
  // store result to spilled vreg127
  // store to stack slot 40
  str x8, [sp, #320]
  movz x0, #1, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x8, x0
  // store result to spilled vreg128
  // store to stack slot 41
  str x8, [sp, #328]
  // call Nat.sub with 2 runtime args
  // load spilled vreg127 from stack slot 40
  ldr x8, [sp, #320]
  mov x0, x8
  // load spilled vreg128 from stack slot 41
  ldr x8, [sp, #328]
  mov x1, x8
  bl _lean_nat_sub
  mov x8, x0
  // store result to spilled vreg129
  // store to stack slot 42
  str x8, [sp, #336]
  // dec 1
  // load spilled vreg127 from stack slot 40
  ldr x8, [sp, #320]
  mov x0, x8
  bl _lean_dec
  // load global constant _l_IO_println___at___tst1_spec__8___closed__4
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGE
  ldr x8, [x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGEOFF]
  // store result to spilled vreg130
  // store to stack slot 43
  str x8, [sp, #344]
  // call Nat.add with 2 runtime args
  // load spilled vreg129 from stack slot 42
  ldr x8, [sp, #336]
  mov x0, x8
  // load spilled vreg128 from stack slot 41
  ldr x8, [sp, #328]
  mov x1, x8
  bl _lean_nat_add
  mov x8, x0
  // store result to spilled vreg131
  // store to stack slot 44
  str x8, [sp, #352]
  // dec 1
  // load spilled vreg129 from stack slot 42
  ldr x8, [sp, #336]
  mov x0, x8
  bl _lean_dec
  // call Nat.reprFast with 1 runtime args
  // load spilled vreg131 from stack slot 44
  ldr x8, [sp, #352]
  mov x0, x8
  bl _l_Nat_reprFast
  mov x8, x0
  // store result to spilled vreg132
  // store to stack slot 45
  str x8, [sp, #360]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg130 from stack slot 43
  ldr x8, [sp, #344]
  mov x0, x8
  // load spilled vreg132 from stack slot 45
  ldr x8, [sp, #360]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg133
  // store to stack slot 46
  str x8, [sp, #368]
  // dec 1
  // load spilled vreg132 from stack slot 45
  ldr x8, [sp, #360]
  mov x0, x8
  bl _lean_dec_ref
  // jump to JP32
  // load spilled vreg112 from stack slot 25
  ldr x8, [sp, #200]
  // store to stack slot 5
  str x8, [sp, #40]
  // load spilled vreg113 from stack slot 26
  ldr x8, [sp, #208]
  // store to stack slot 6
  str x8, [sp, #48]
  // load spilled vreg118 from stack slot 31
  ldr x8, [sp, #248]
  // store to stack slot 7
  str x8, [sp, #56]
  // load spilled vreg122 from stack slot 35
  ldr x8, [sp, #280]
  // store to stack slot 8
  str x8, [sp, #64]
  // load spilled vreg133 from stack slot 46
  ldr x8, [sp, #368]
  // store to stack slot 9
  str x8, [sp, #72]
  b .LJP0_fn905580609808025026
  b .Lcase_end13_fn905580609808025026
.Lcase_end13_fn905580609808025026:
.LJP0_fn905580609808025026:
  // call String.Internal.append with 2 runtime args
  // load spilled vreg95 from stack slot 8
  ldr x8, [sp, #64]
  mov x0, x8
  // load spilled vreg96 from stack slot 9
  ldr x8, [sp, #72]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg97
  // store to stack slot 10
  str x8, [sp, #80]
  // dec 1
  // load spilled vreg96 from stack slot 9
  ldr x8, [sp, #72]
  mov x0, x8
  bl _lean_dec_ref
  // load global constant _l_IO_println___at___tst1_spec__8___closed__2
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGE
  ldr x8, [x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGEOFF]
  // store result to spilled vreg98
  // store to stack slot 11
  str x8, [sp, #88]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg97 from stack slot 10
  ldr x8, [sp, #80]
  mov x0, x8
  // load spilled vreg98 from stack slot 11
  ldr x8, [sp, #88]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg99
  // store to stack slot 12
  str x8, [sp, #96]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg94 from stack slot 7
  ldr x8, [sp, #56]
  mov x0, x8
  // load spilled vreg99 from stack slot 12
  ldr x8, [sp, #96]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg100
  // store to stack slot 13
  str x8, [sp, #104]
  // dec 1
  // load spilled vreg99 from stack slot 12
  ldr x8, [sp, #96]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  // load spilled vreg100 from stack slot 13
  ldr x8, [sp, #104]
  mov x0, x8
  // load spilled vreg98 from stack slot 11
  ldr x8, [sp, #88]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg101
  // store to stack slot 14
  str x8, [sp, #112]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg92 from stack slot 5
  ldr x8, [sp, #40]
  mov x0, x8
  // load spilled vreg101 from stack slot 14
  ldr x8, [sp, #112]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg102
  // store to stack slot 15
  str x8, [sp, #120]
  // dec 1
  // load spilled vreg101 from stack slot 14
  ldr x8, [sp, #112]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  // load spilled vreg102 from stack slot 15
  ldr x8, [sp, #120]
  mov x0, x8
  // load spilled vreg98 from stack slot 11
  ldr x8, [sp, #88]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg103
  // store to stack slot 16
  str x8, [sp, #128]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg93 from stack slot 6
  ldr x8, [sp, #48]
  mov x0, x8
  // load spilled vreg103 from stack slot 16
  ldr x8, [sp, #128]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg104
  // store to stack slot 17
  str x8, [sp, #136]
  // dec 1
  // load spilled vreg103 from stack slot 16
  ldr x8, [sp, #128]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  // load spilled vreg104 from stack slot 17
  ldr x8, [sp, #136]
  mov x0, x8
  // load spilled vreg98 from stack slot 11
  ldr x8, [sp, #88]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg105
  // store to stack slot 18
  str x8, [sp, #144]
  // call String.Internal.append with 2 runtime args
  // load spilled vreg91 from stack slot 4
  ldr x8, [sp, #32]
  mov x0, x8
  // load spilled vreg105 from stack slot 18
  ldr x8, [sp, #144]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg106
  // store to stack slot 19
  str x8, [sp, #152]
  // dec 1
  // load spilled vreg105 from stack slot 18
  ldr x8, [sp, #144]
  mov x0, x8
  bl _lean_dec_ref
  // call String.Internal.append with 2 runtime args
  // load spilled vreg106 from stack slot 19
  ldr x8, [sp, #152]
  mov x0, x8
  // load spilled vreg98 from stack slot 11
  ldr x8, [sp, #88]
  mov x1, x8
  bl _lean_string_append
  mov x8, x0
  // store result to spilled vreg107
  // store to stack slot 20
  str x8, [sp, #160]
  // dec 1
  mov x8, #10
  // store result to spilled vreg108
  // store to stack slot 21
  str x8, [sp, #168]
  // call String.push with 2 runtime args
  // load spilled vreg107 from stack slot 20
  ldr x8, [sp, #160]
  mov x0, x8
  // load spilled vreg108 from stack slot 21
  ldr x8, [sp, #168]
  mov x1, x8
  bl _lean_string_push
  mov x8, x0
  // store result to spilled vreg109
  // store to stack slot 22
  str x8, [sp, #176]
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  // load spilled vreg109 from stack slot 22
  ldr x8, [sp, #176]
  mov x0, x8
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
  mov x8, x0
  // store result to spilled vreg110
  // store to stack slot 23
  str x8, [sp, #184]
  // return
  // load spilled vreg110 from stack slot 23
  ldr x8, [sp, #184]
  mov x0, x8
  add sp, sp, #544
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl __init_l_IO_println___at___tst1_spec__8___closed__4
  .align 2
__init_l_IO_println___at___tst1_spec__8___closed__4:
  // Function: IO.println._at_.tst1.spec_8._closed_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_8._closed_4:
  // string literal: -
  adrp x0, .Lstrptr_17949990980696107190_0@PAGE
  ldr x0, [x0, .Lstrptr_17949990980696107190_0@PAGEOFF]
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
.Lstrptr_17949990980696107190_0:
  .quad .Lstr_17949990980696107190_0
.Lstr_17949990980696107190_0:
  .asciz "-"
  .text

  .globl __init_l_IO_println___at___tst1_spec__8___closed__3
  .align 2
__init_l_IO_println___at___tst1_spec__8___closed__3:
  // Function: IO.println._at_.tst1.spec_8._closed_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_8._closed_3:
  movz x0, #0, lsl #0
  bl _lean_unsigned_to_nat_export
  mov x27, x0
  // call Int.ofNat with 1 runtime args
  mov x0, x27
  bl _lean_nat_to_int
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

  .globl __init_l_IO_println___at___tst1_spec__8___closed__2
  .align 2
__init_l_IO_println___at___tst1_spec__8___closed__2:
  // Function: IO.println._at_.tst1.spec_8._closed_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_8._closed_2:
  // string literal: )
  adrp x0, .Lstrptr_14685911570933666388_0@PAGE
  ldr x0, [x0, .Lstrptr_14685911570933666388_0@PAGEOFF]
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
.Lstrptr_14685911570933666388_0:
  .quad .Lstr_14685911570933666388_0
.Lstr_14685911570933666388_0:
  .asciz ")"
  .text

  .globl __init_l_IO_println___at___tst1_spec__8___closed__1
  .align 2
__init_l_IO_println___at___tst1_spec__8___closed__1:
  // Function: IO.println._at_.tst1.spec_8._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_8._closed_1:
  // string literal: , 
  adrp x0, .Lstrptr_9204396724239085079_0@PAGE
  ldr x0, [x0, .Lstrptr_9204396724239085079_0@PAGEOFF]
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
.Lstrptr_9204396724239085079_0:
  .quad .Lstr_9204396724239085079_0
.Lstr_9204396724239085079_0:
  .asciz ", "
  .text

  .globl __init_l_IO_println___at___tst1_spec__8___closed__0
  .align 2
__init_l_IO_println___at___tst1_spec__8___closed__0:
  // Function: IO.println._at_.tst1.spec_8._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_8._closed_0:
  // string literal: (
  adrp x0, .Lstrptr_10320695237504437759_0@PAGE
  ldr x0, [x0, .Lstrptr_10320695237504437759_0@PAGEOFF]
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
.Lstrptr_10320695237504437759_0:
  .quad .Lstr_10320695237504437759_0
.Lstr_10320695237504437759_0:
  .asciz "("
  .text

  .globl _l_IO_println___at___tst1_spec__7
  .align 2
_l_IO_println___at___tst1_spec__7:
  // Function: IO.println._at_.tst1.spec_7
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_7:
  mov x19, x0
  mov x20, x1
  // call USize.toNat with 1 runtime args
  mov x0, x19
  bl _lean_usize_to_nat
  mov x27, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  mov x25, #10
  // call String.push with 2 runtime args
  mov x0, x26
  mov x1, x25
  bl _lean_string_push
  mov x24, x0
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
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

  .globl _l_IO_println___at___tst1_spec__6
  .align 2
_l_IO_println___at___tst1_spec__6:
  // Function: IO.println._at_.tst1.spec_6
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_6:
  mov x19, x0
  mov x20, x1
  // call UInt64.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint64_to_nat
  mov x27, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  mov x25, #10
  // call String.push with 2 runtime args
  mov x0, x26
  mov x1, x25
  bl _lean_string_push
  mov x24, x0
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
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

  .globl _l_IO_println___at___tst1_spec__5
  .align 2
_l_IO_println___at___tst1_spec__5:
  // Function: IO.println._at_.tst1.spec_5
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_5:
  mov x19, x0
  mov x20, x1
  // call UInt32.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint32_to_nat
  mov x27, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  mov x25, #10
  // call String.push with 2 runtime args
  mov x0, x26
  mov x1, x25
  bl _lean_string_push
  mov x24, x0
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
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

  .globl _l_IO_println___at___tst1_spec__4
  .align 2
_l_IO_println___at___tst1_spec__4:
  // Function: IO.println._at_.tst1.spec_4
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_4:
  mov x19, x0
  mov x20, x1
  // call UInt16.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint16_to_nat
  mov x27, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  mov x25, #10
  // call String.push with 2 runtime args
  mov x0, x26
  mov x1, x25
  bl _lean_string_push
  mov x24, x0
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
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

  .globl _l_IO_println___at___tst1_spec__3
  .align 2
_l_IO_println___at___tst1_spec__3:
  // Function: IO.println._at_.tst1.spec_3
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_3:
  mov x19, x0
  mov x20, x1
  // call UInt8.toNat with 1 runtime args
  mov x0, x19
  bl _lean_uint8_to_nat
  mov x27, x0
  // call Nat.reprFast with 1 runtime args
  mov x0, x27
  bl _l_Nat_reprFast
  mov x26, x0
  mov x25, #10
  // call String.push with 2 runtime args
  mov x0, x26
  mov x1, x25
  bl _lean_string_push
  mov x24, x0
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  mov x0, x24
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
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

  .globl _l_IO_println___at___tst1_spec__2
  .align 2
_l_IO_println___at___tst1_spec__2:
  // Function: IO.println._at_.tst1.spec_2
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_2:
  mov x19, x0
  mov x20, x1
  // case
  mov x8, x19
  cmp x8, #0
  b.eq .Lcase_ctor2_fn10795199323714988302
  cmp x8, #1
  b.eq .Lcase_ctor3_fn10795199323714988302
  b .Lcase_end1_fn10795199323714988302
.Lcase_ctor2_fn10795199323714988302:
  // load global constant _l_IO_println___at___tst1_spec__2___closed__0
  adrp x22, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
  ldr x22, [x22, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
  // jump to JP7
  mov x27, x22
  b .LJP0_fn10795199323714988302
  b .Lcase_end1_fn10795199323714988302
.Lcase_ctor3_fn10795199323714988302:
  // load global constant _l_IO_println___at___tst1_spec__2___closed__1
  adrp x28, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
  ldr x28, [x28, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
  // jump to JP7
  mov x27, x28
  b .LJP0_fn10795199323714988302
  b .Lcase_end1_fn10795199323714988302
.Lcase_end1_fn10795199323714988302:
.LJP0_fn10795199323714988302:
  mov x26, #10
  // call String.push with 2 runtime args
  mov x0, x27
  mov x1, x26
  bl _lean_string_push
  mov x25, x0
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  mov x0, x25
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
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

  .globl __init_l_IO_println___at___tst1_spec__2___closed__1
  .align 2
__init_l_IO_println___at___tst1_spec__2___closed__1:
  // Function: IO.println._at_.tst1.spec_2._closed_1
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_2._closed_1:
  // string literal: true
  adrp x0, .Lstrptr_13101294212554427395_0@PAGE
  ldr x0, [x0, .Lstrptr_13101294212554427395_0@PAGEOFF]
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
.Lstrptr_13101294212554427395_0:
  .quad .Lstr_13101294212554427395_0
.Lstr_13101294212554427395_0:
  .asciz "true"
  .text

  .globl __init_l_IO_println___at___tst1_spec__2___closed__0
  .align 2
__init_l_IO_println___at___tst1_spec__2___closed__0:
  // Function: IO.println._at_.tst1.spec_2._closed_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_2._closed_0:
  // string literal: false
  adrp x0, .Lstrptr_3368892393893038651_0@PAGE
  ldr x0, [x0, .Lstrptr_3368892393893038651_0@PAGEOFF]
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
.Lstrptr_3368892393893038651_0:
  .quad .Lstr_3368892393893038651_0
.Lstr_3368892393893038651_0:
  .asciz "false"
  .text

  .globl _l_IO_println___at___tst1_spec__0
  .align 2
_l_IO_println___at___tst1_spec__0:
  // Function: IO.println._at_.tst1.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
.Lfn_start_IO.println._at_.tst1.spec_0:
  mov x19, x0
  mov x20, x1
  // call Float.toString with 1 runtime args
  fmov d0, x19
  bl _lean_float_to_string
  mov x27, x0
  mov x26, #10
  // call String.push with 2 runtime args
  mov x0, x27
  mov x1, x26
  bl _lean_string_push
  mov x25, x0
  // call IO.print._at_.IO.println._at_.tst1.spec_0.spec_0 with 2 runtime args
  mov x0, x25
  mov x1, x20
  bl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
  mov x24, x0
  // return
  mov x0, x24
  ldp x27, x28, [sp], #16
  ldp x25, x26, [sp], #16
  ldp x23, x24, [sp], #16
  ldp x21, x22, [sp], #16
  ldp x19, x20, [sp], #16
  ldp x29, x30, [sp], #16
  ret

  .globl _l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
  .align 2
_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0:
  // Function: IO.print._at_.IO.println._at_.tst1.spec_0.spec_0
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  stp x19, x20, [sp, #-16]!
  stp x21, x22, [sp, #-16]!
  stp x23, x24, [sp, #-16]!
  stp x25, x26, [sp, #-16]!
  stp x27, x28, [sp, #-16]!
  sub sp, sp, #32
  // Stack frame: 32 bytes (3 spilled vars)
.Lfn_start_IO.print._at_.IO.println._at_.tst1.spec_0.spec_0:
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
  .globl _initialize_float
  .align 2
_initialize_float:
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

  // Initialize closed constants and 0-param defs
  // Initialize _l_IO_println___at___tst1_spec__2___closed__0
  bl __init_l_IO_println___at___tst1_spec__2___closed__0
  adrp x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
  str x0, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
  ldr x0, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___tst1_spec__2___closed__1
  bl __init_l_IO_println___at___tst1_spec__2___closed__1
  adrp x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
  str x0, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
  ldr x0, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___tst1_spec__8___closed__0
  bl __init_l_IO_println___at___tst1_spec__8___closed__0
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__0@PAGE
  str x0, [x8, _l_IO_println___at___tst1_spec__8___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__0@PAGE
  ldr x0, [x8, _l_IO_println___at___tst1_spec__8___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___tst1_spec__8___closed__1
  bl __init_l_IO_println___at___tst1_spec__8___closed__1
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGE
  str x0, [x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGE
  ldr x0, [x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___tst1_spec__8___closed__2
  bl __init_l_IO_println___at___tst1_spec__8___closed__2
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGE
  str x0, [x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGE
  ldr x0, [x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___tst1_spec__8___closed__3
  bl __init_l_IO_println___at___tst1_spec__8___closed__3
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGE
  str x0, [x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGEOFF]
  // Mark persistent
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGE
  ldr x0, [x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_IO_println___at___tst1_spec__8___closed__4
  bl __init_l_IO_println___at___tst1_spec__8___closed__4
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGE
  str x0, [x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGEOFF]
  // Mark persistent
  adrp x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGE
  ldr x0, [x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__0
  bl __init_l_tst1___closed__0
  adrp x8, _l_tst1___closed__0@PAGE
  str x0, [x8, _l_tst1___closed__0@PAGEOFF]

  // Initialize _l_tst1___closed__1
  bl __init_l_tst1___closed__1
  adrp x8, _l_tst1___closed__1@PAGE
  str x0, [x8, _l_tst1___closed__1@PAGEOFF]

  // Initialize _l_tst1___closed__2
  bl __init_l_tst1___closed__2
  adrp x8, _l_tst1___closed__2@PAGE
  str x0, [x8, _l_tst1___closed__2@PAGEOFF]

  // Initialize _l_tst1___closed__3
  bl __init_l_tst1___closed__3
  adrp x8, _l_tst1___closed__3@PAGE
  str x0, [x8, _l_tst1___closed__3@PAGEOFF]

  // Initialize _l_tst1___closed__4
  bl __init_l_tst1___closed__4
  adrp x8, _l_tst1___closed__4@PAGE
  str x0, [x8, _l_tst1___closed__4@PAGEOFF]

  // Initialize _l_tst1___closed__5
  bl __init_l_tst1___closed__5
  adrp x8, _l_tst1___closed__5@PAGE
  str x0, [x8, _l_tst1___closed__5@PAGEOFF]

  // Initialize _l_tst1___closed__6
  bl __init_l_tst1___closed__6
  adrp x8, _l_tst1___closed__6@PAGE
  str x0, [x8, _l_tst1___closed__6@PAGEOFF]

  // Initialize _l_tst1___closed__7
  bl __init_l_tst1___closed__7
  adrp x8, _l_tst1___closed__7@PAGE
  add x8, x8, _l_tst1___closed__7@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__8
  bl __init_l_tst1___closed__8
  adrp x8, _l_tst1___closed__8@PAGE
  str x0, [x8, _l_tst1___closed__8@PAGEOFF]

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
  str x0, [x8, _l_tst1___closed__15@PAGEOFF]

  // Initialize _l_tst1___closed__16
  bl __init_l_tst1___closed__16
  adrp x8, _l_tst1___closed__16@PAGE
  str x0, [x8, _l_tst1___closed__16@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__16@PAGE
  ldr x0, [x8, _l_tst1___closed__16@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__17
  bl __init_l_tst1___closed__17
  adrp x8, _l_tst1___closed__17@PAGE
  str x0, [x8, _l_tst1___closed__17@PAGEOFF]

  // Initialize _l_tst1___closed__18
  bl __init_l_tst1___closed__18
  adrp x8, _l_tst1___closed__18@PAGE
  str x0, [x8, _l_tst1___closed__18@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__18@PAGE
  ldr x0, [x8, _l_tst1___closed__18@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__19
  bl __init_l_tst1___closed__19
  adrp x8, _l_tst1___closed__19@PAGE
  str x0, [x8, _l_tst1___closed__19@PAGEOFF]

  // Initialize _l_tst1___closed__20
  bl __init_l_tst1___closed__20
  adrp x8, _l_tst1___closed__20@PAGE
  str x0, [x8, _l_tst1___closed__20@PAGEOFF]

  // Initialize _l_tst1___closed__21
  bl __init_l_tst1___closed__21
  adrp x8, _l_tst1___closed__21@PAGE
  str x0, [x8, _l_tst1___closed__21@PAGEOFF]

  // Initialize _l_tst1___closed__22
  bl __init_l_tst1___closed__22
  adrp x8, _l_tst1___closed__22@PAGE
  str x0, [x8, _l_tst1___closed__22@PAGEOFF]

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
  str w0, [x8, _l_tst1___closed__25@PAGEOFF]

  // Initialize _l_tst1___closed__26
  bl __init_l_tst1___closed__26
  adrp x8, _l_tst1___closed__26@PAGE
  str x0, [x8, _l_tst1___closed__26@PAGEOFF]

  // Initialize _l_tst1___closed__27
  bl __init_l_tst1___closed__27
  adrp x8, _l_tst1___closed__27@PAGE
  str x0, [x8, _l_tst1___closed__27@PAGEOFF]

  // Initialize _l_tst1___closed__28
  bl __init_l_tst1___closed__28
  adrp x8, _l_tst1___closed__28@PAGE
  str x0, [x8, _l_tst1___closed__28@PAGEOFF]

  // Initialize _l_tst1___closed__29
  bl __init_l_tst1___closed__29
  adrp x8, _l_tst1___closed__29@PAGE
  add x8, x8, _l_tst1___closed__29@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__30
  bl __init_l_tst1___closed__30
  adrp x8, _l_tst1___closed__30@PAGE
  str x0, [x8, _l_tst1___closed__30@PAGEOFF]

  // Initialize _l_tst1___closed__31
  bl __init_l_tst1___closed__31
  adrp x8, _l_tst1___closed__31@PAGE
  add x8, x8, _l_tst1___closed__31@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__32
  bl __init_l_tst1___closed__32
  adrp x8, _l_tst1___closed__32@PAGE
  str x0, [x8, _l_tst1___closed__32@PAGEOFF]

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
  str x0, [x8, _l_tst1___closed__35@PAGEOFF]

  // Initialize _l_tst1___closed__36
  bl __init_l_tst1___closed__36
  adrp x8, _l_tst1___closed__36@PAGE
  str x0, [x8, _l_tst1___closed__36@PAGEOFF]

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
  str w0, [x8, _l_tst1___closed__39@PAGEOFF]

  // Initialize _l_tst1___closed__40
  bl __init_l_tst1___closed__40
  adrp x8, _l_tst1___closed__40@PAGE
  str x0, [x8, _l_tst1___closed__40@PAGEOFF]

  // Initialize _l_tst1___closed__41
  bl __init_l_tst1___closed__41
  adrp x8, _l_tst1___closed__41@PAGE
  str x0, [x8, _l_tst1___closed__41@PAGEOFF]

  // Initialize _l_tst1___closed__42
  bl __init_l_tst1___closed__42
  adrp x8, _l_tst1___closed__42@PAGE
  str w0, [x8, _l_tst1___closed__42@PAGEOFF]

  // Initialize _l_tst1___closed__43
  bl __init_l_tst1___closed__43
  adrp x8, _l_tst1___closed__43@PAGE
  str w0, [x8, _l_tst1___closed__43@PAGEOFF]

  // Initialize _l_tst1___closed__44
  bl __init_l_tst1___closed__44
  adrp x8, _l_tst1___closed__44@PAGE
  str x0, [x8, _l_tst1___closed__44@PAGEOFF]

  // Initialize _l_tst1___closed__45
  bl __init_l_tst1___closed__45
  adrp x8, _l_tst1___closed__45@PAGE
  str x0, [x8, _l_tst1___closed__45@PAGEOFF]

  // Initialize _l_tst1___closed__46
  bl __init_l_tst1___closed__46
  adrp x8, _l_tst1___closed__46@PAGE
  str x0, [x8, _l_tst1___closed__46@PAGEOFF]

  // Initialize _l_tst1___closed__47
  bl __init_l_tst1___closed__47
  adrp x8, _l_tst1___closed__47@PAGE
  str x0, [x8, _l_tst1___closed__47@PAGEOFF]

  // Initialize _l_tst1___closed__48
  bl __init_l_tst1___closed__48
  adrp x8, _l_tst1___closed__48@PAGE
  str x0, [x8, _l_tst1___closed__48@PAGEOFF]

  // Initialize _l_tst1___closed__49
  bl __init_l_tst1___closed__49
  adrp x8, _l_tst1___closed__49@PAGE
  str x0, [x8, _l_tst1___closed__49@PAGEOFF]

  // Initialize _l_tst1___closed__50
  bl __init_l_tst1___closed__50
  adrp x8, _l_tst1___closed__50@PAGE
  str x0, [x8, _l_tst1___closed__50@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__50@PAGE
  ldr x0, [x8, _l_tst1___closed__50@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__51
  bl __init_l_tst1___closed__51
  adrp x8, _l_tst1___closed__51@PAGE
  str x0, [x8, _l_tst1___closed__51@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__51@PAGE
  ldr x0, [x8, _l_tst1___closed__51@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__52
  bl __init_l_tst1___closed__52
  adrp x8, _l_tst1___closed__52@PAGE
  str x0, [x8, _l_tst1___closed__52@PAGEOFF]

  // Initialize _l_tst1___closed__53
  bl __init_l_tst1___closed__53
  adrp x8, _l_tst1___closed__53@PAGE
  str x0, [x8, _l_tst1___closed__53@PAGEOFF]

  // Initialize _l_tst1___closed__54
  bl __init_l_tst1___closed__54
  adrp x8, _l_tst1___closed__54@PAGE
  str x0, [x8, _l_tst1___closed__54@PAGEOFF]

  // Initialize _l_tst1___closed__55
  bl __init_l_tst1___closed__55
  adrp x8, _l_tst1___closed__55@PAGE
  str x0, [x8, _l_tst1___closed__55@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__55@PAGE
  ldr x0, [x8, _l_tst1___closed__55@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__56
  bl __init_l_tst1___closed__56
  adrp x8, _l_tst1___closed__56@PAGE
  str x0, [x8, _l_tst1___closed__56@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__56@PAGE
  ldr x0, [x8, _l_tst1___closed__56@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__57
  bl __init_l_tst1___closed__57
  adrp x8, _l_tst1___closed__57@PAGE
  add x8, x8, _l_tst1___closed__57@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__58
  bl __init_l_tst1___closed__58
  adrp x8, _l_tst1___closed__58@PAGE
  str x0, [x8, _l_tst1___closed__58@PAGEOFF]

  // Initialize _l_tst1___closed__59
  bl __init_l_tst1___closed__59
  adrp x8, _l_tst1___closed__59@PAGE
  str x0, [x8, _l_tst1___closed__59@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__59@PAGE
  ldr x0, [x8, _l_tst1___closed__59@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__60
  bl __init_l_tst1___closed__60
  adrp x8, _l_tst1___closed__60@PAGE
  add x8, x8, _l_tst1___closed__60@PAGEOFF
  strb w0, [x8]

  // Initialize _l_tst1___closed__61
  bl __init_l_tst1___closed__61
  adrp x8, _l_tst1___closed__61@PAGE
  str x0, [x8, _l_tst1___closed__61@PAGEOFF]

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
  str x0, [x8, _l_tst1___closed__65@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__65@PAGE
  ldr x0, [x8, _l_tst1___closed__65@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__66
  bl __init_l_tst1___closed__66
  adrp x8, _l_tst1___closed__66@PAGE
  str x0, [x8, _l_tst1___closed__66@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__66@PAGE
  ldr x0, [x8, _l_tst1___closed__66@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__67
  bl __init_l_tst1___closed__67
  adrp x8, _l_tst1___closed__67@PAGE
  str x0, [x8, _l_tst1___closed__67@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__67@PAGE
  ldr x0, [x8, _l_tst1___closed__67@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__68
  bl __init_l_tst1___closed__68
  adrp x8, _l_tst1___closed__68@PAGE
  str x0, [x8, _l_tst1___closed__68@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__68@PAGE
  ldr x0, [x8, _l_tst1___closed__68@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__69___boxed__const__1
  bl __init_l_tst1___closed__69___boxed__const__1
  adrp x8, _l_tst1___closed__69___boxed__const__1@PAGE
  str x0, [x8, _l_tst1___closed__69___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__69___boxed__const__1@PAGE
  ldr x0, [x8, _l_tst1___closed__69___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__69
  bl __init_l_tst1___closed__69
  adrp x8, _l_tst1___closed__69@PAGE
  str x0, [x8, _l_tst1___closed__69@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__69@PAGE
  ldr x0, [x8, _l_tst1___closed__69@PAGEOFF]
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
  str x0, [x8, _l_tst1___closed__73@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__73@PAGE
  ldr x0, [x8, _l_tst1___closed__73@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__74
  bl __init_l_tst1___closed__74
  adrp x8, _l_tst1___closed__74@PAGE
  str x0, [x8, _l_tst1___closed__74@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__74@PAGE
  ldr x0, [x8, _l_tst1___closed__74@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__75
  bl __init_l_tst1___closed__75
  adrp x8, _l_tst1___closed__75@PAGE
  str x0, [x8, _l_tst1___closed__75@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__75@PAGE
  ldr x0, [x8, _l_tst1___closed__75@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__76
  bl __init_l_tst1___closed__76
  adrp x8, _l_tst1___closed__76@PAGE
  str x0, [x8, _l_tst1___closed__76@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__76@PAGE
  ldr x0, [x8, _l_tst1___closed__76@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__77___boxed__const__1
  bl __init_l_tst1___closed__77___boxed__const__1
  adrp x8, _l_tst1___closed__77___boxed__const__1@PAGE
  str x0, [x8, _l_tst1___closed__77___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__77___boxed__const__1@PAGE
  ldr x0, [x8, _l_tst1___closed__77___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__77
  bl __init_l_tst1___closed__77
  adrp x8, _l_tst1___closed__77@PAGE
  str x0, [x8, _l_tst1___closed__77@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__77@PAGE
  ldr x0, [x8, _l_tst1___closed__77@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__78
  bl __init_l_tst1___closed__78
  adrp x8, _l_tst1___closed__78@PAGE
  str x0, [x8, _l_tst1___closed__78@PAGEOFF]

  // Initialize _l_tst1___closed__79
  bl __init_l_tst1___closed__79
  adrp x8, _l_tst1___closed__79@PAGE
  str x0, [x8, _l_tst1___closed__79@PAGEOFF]

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
  str x0, [x8, _l_tst1___closed__83@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__83@PAGE
  ldr x0, [x8, _l_tst1___closed__83@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__84
  bl __init_l_tst1___closed__84
  adrp x8, _l_tst1___closed__84@PAGE
  str x0, [x8, _l_tst1___closed__84@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__84@PAGE
  ldr x0, [x8, _l_tst1___closed__84@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__85
  bl __init_l_tst1___closed__85
  adrp x8, _l_tst1___closed__85@PAGE
  str x0, [x8, _l_tst1___closed__85@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__85@PAGE
  ldr x0, [x8, _l_tst1___closed__85@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__86
  bl __init_l_tst1___closed__86
  adrp x8, _l_tst1___closed__86@PAGE
  str x0, [x8, _l_tst1___closed__86@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__86@PAGE
  ldr x0, [x8, _l_tst1___closed__86@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__87___boxed__const__1
  bl __init_l_tst1___closed__87___boxed__const__1
  adrp x8, _l_tst1___closed__87___boxed__const__1@PAGE
  str x0, [x8, _l_tst1___closed__87___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__87___boxed__const__1@PAGE
  ldr x0, [x8, _l_tst1___closed__87___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__87
  bl __init_l_tst1___closed__87
  adrp x8, _l_tst1___closed__87@PAGE
  str x0, [x8, _l_tst1___closed__87@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__87@PAGE
  ldr x0, [x8, _l_tst1___closed__87@PAGEOFF]
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
  str x0, [x8, _l_tst1___closed__91@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__91@PAGE
  ldr x0, [x8, _l_tst1___closed__91@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__92
  bl __init_l_tst1___closed__92
  adrp x8, _l_tst1___closed__92@PAGE
  str x0, [x8, _l_tst1___closed__92@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__92@PAGE
  ldr x0, [x8, _l_tst1___closed__92@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__93
  bl __init_l_tst1___closed__93
  adrp x8, _l_tst1___closed__93@PAGE
  str x0, [x8, _l_tst1___closed__93@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__93@PAGE
  ldr x0, [x8, _l_tst1___closed__93@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__94
  bl __init_l_tst1___closed__94
  adrp x8, _l_tst1___closed__94@PAGE
  str x0, [x8, _l_tst1___closed__94@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__94@PAGE
  ldr x0, [x8, _l_tst1___closed__94@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__95___boxed__const__1
  bl __init_l_tst1___closed__95___boxed__const__1
  adrp x8, _l_tst1___closed__95___boxed__const__1@PAGE
  str x0, [x8, _l_tst1___closed__95___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__95___boxed__const__1@PAGE
  ldr x0, [x8, _l_tst1___closed__95___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__95
  bl __init_l_tst1___closed__95
  adrp x8, _l_tst1___closed__95@PAGE
  str x0, [x8, _l_tst1___closed__95@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__95@PAGE
  ldr x0, [x8, _l_tst1___closed__95@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__96
  bl __init_l_tst1___closed__96
  adrp x8, _l_tst1___closed__96@PAGE
  str x0, [x8, _l_tst1___closed__96@PAGEOFF]

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
  str x0, [x8, _l_tst1___closed__100@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__100@PAGE
  ldr x0, [x8, _l_tst1___closed__100@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__101
  bl __init_l_tst1___closed__101
  adrp x8, _l_tst1___closed__101@PAGE
  str x0, [x8, _l_tst1___closed__101@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__101@PAGE
  ldr x0, [x8, _l_tst1___closed__101@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__102
  bl __init_l_tst1___closed__102
  adrp x8, _l_tst1___closed__102@PAGE
  str x0, [x8, _l_tst1___closed__102@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__102@PAGE
  ldr x0, [x8, _l_tst1___closed__102@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__103
  bl __init_l_tst1___closed__103
  adrp x8, _l_tst1___closed__103@PAGE
  str x0, [x8, _l_tst1___closed__103@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__103@PAGE
  ldr x0, [x8, _l_tst1___closed__103@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__104___boxed__const__1
  bl __init_l_tst1___closed__104___boxed__const__1
  adrp x8, _l_tst1___closed__104___boxed__const__1@PAGE
  str x0, [x8, _l_tst1___closed__104___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__104___boxed__const__1@PAGE
  ldr x0, [x8, _l_tst1___closed__104___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__104
  bl __init_l_tst1___closed__104
  adrp x8, _l_tst1___closed__104@PAGE
  str x0, [x8, _l_tst1___closed__104@PAGEOFF]
  // Mark persistent
  adrp x8, _l_tst1___closed__104@PAGE
  ldr x0, [x8, _l_tst1___closed__104@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_tst1___closed__105
  bl __init_l_tst1___closed__105
  adrp x8, _l_tst1___closed__105@PAGE
  str x0, [x8, _l_tst1___closed__105@PAGEOFF]

  // Initialize _l_tst1___closed__106
  bl __init_l_tst1___closed__106
  adrp x8, _l_tst1___closed__106@PAGE
  str x0, [x8, _l_tst1___closed__106@PAGEOFF]

  // Initialize _l_tst1___closed__107
  bl __init_l_tst1___closed__107
  adrp x8, _l_tst1___closed__107@PAGE
  str x0, [x8, _l_tst1___closed__107@PAGEOFF]

  // Initialize _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0
  bl __init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0
  adrp x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGE
  str x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGE
  ldr x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
  bl __init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
  adrp x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGE
  str x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGE
  ldr x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2
  bl __init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2
  adrp x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGE
  str x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGEOFF]
  // Mark persistent
  adrp x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGE
  ldr x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGEOFF]
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

  // Initialize _l_main___closed__2
  bl __init_l_main___closed__2
  adrp x8, _l_main___closed__2@PAGE
  str x0, [x8, _l_main___closed__2@PAGEOFF]

  // Initialize _l_main___closed__3
  bl __init_l_main___closed__3
  adrp x8, _l_main___closed__3@PAGE
  str x0, [x8, _l_main___closed__3@PAGEOFF]

  // Initialize _l_main___closed__4
  bl __init_l_main___closed__4
  adrp x8, _l_main___closed__4@PAGE
  str x0, [x8, _l_main___closed__4@PAGEOFF]

  // Initialize _l_main___closed__5___boxed__const__1
  bl __init_l_main___closed__5___boxed__const__1
  adrp x8, _l_main___closed__5___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__5___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__5___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__5___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__5
  bl __init_l_main___closed__5
  adrp x8, _l_main___closed__5@PAGE
  str x0, [x8, _l_main___closed__5@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__5@PAGE
  ldr x0, [x8, _l_main___closed__5@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__6___boxed__const__1
  bl __init_l_main___closed__6___boxed__const__1
  adrp x8, _l_main___closed__6___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__6___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__6___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__6___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__6
  bl __init_l_main___closed__6
  adrp x8, _l_main___closed__6@PAGE
  str x0, [x8, _l_main___closed__6@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__6@PAGE
  ldr x0, [x8, _l_main___closed__6@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__7___boxed__const__1
  bl __init_l_main___closed__7___boxed__const__1
  adrp x8, _l_main___closed__7___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__7___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__7___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__7___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__7
  bl __init_l_main___closed__7
  adrp x8, _l_main___closed__7@PAGE
  str x0, [x8, _l_main___closed__7@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__7@PAGE
  ldr x0, [x8, _l_main___closed__7@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__8___boxed__const__1
  bl __init_l_main___closed__8___boxed__const__1
  adrp x8, _l_main___closed__8___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__8___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__8___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__8___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__8
  bl __init_l_main___closed__8
  adrp x8, _l_main___closed__8@PAGE
  str x0, [x8, _l_main___closed__8@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__8@PAGE
  ldr x0, [x8, _l_main___closed__8@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__9___boxed__const__1
  bl __init_l_main___closed__9___boxed__const__1
  adrp x8, _l_main___closed__9___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__9___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__9___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__9___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__9
  bl __init_l_main___closed__9
  adrp x8, _l_main___closed__9@PAGE
  str x0, [x8, _l_main___closed__9@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__9@PAGE
  ldr x0, [x8, _l_main___closed__9@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__10___boxed__const__1
  bl __init_l_main___closed__10___boxed__const__1
  adrp x8, _l_main___closed__10___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__10___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__10___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__10___boxed__const__1@PAGEOFF]
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

  // Initialize _l_main___closed__12___boxed__const__1
  bl __init_l_main___closed__12___boxed__const__1
  adrp x8, _l_main___closed__12___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__12___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__12___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__12___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__12
  bl __init_l_main___closed__12
  adrp x8, _l_main___closed__12@PAGE
  str x0, [x8, _l_main___closed__12@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__12@PAGE
  ldr x0, [x8, _l_main___closed__12@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__13___boxed__const__1
  bl __init_l_main___closed__13___boxed__const__1
  adrp x8, _l_main___closed__13___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__13___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__13___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__13___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__13
  bl __init_l_main___closed__13
  adrp x8, _l_main___closed__13@PAGE
  str x0, [x8, _l_main___closed__13@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__13@PAGE
  ldr x0, [x8, _l_main___closed__13@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__14___boxed__const__1
  bl __init_l_main___closed__14___boxed__const__1
  adrp x8, _l_main___closed__14___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__14___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__14___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__14___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__14
  bl __init_l_main___closed__14
  adrp x8, _l_main___closed__14@PAGE
  str x0, [x8, _l_main___closed__14@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__14@PAGE
  ldr x0, [x8, _l_main___closed__14@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__15___boxed__const__1
  bl __init_l_main___closed__15___boxed__const__1
  adrp x8, _l_main___closed__15___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__15___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__15___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__15___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__15
  bl __init_l_main___closed__15
  adrp x8, _l_main___closed__15@PAGE
  str x0, [x8, _l_main___closed__15@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__15@PAGE
  ldr x0, [x8, _l_main___closed__15@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__16___boxed__const__1
  bl __init_l_main___closed__16___boxed__const__1
  adrp x8, _l_main___closed__16___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__16___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__16___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__16___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__16
  bl __init_l_main___closed__16
  adrp x8, _l_main___closed__16@PAGE
  str x0, [x8, _l_main___closed__16@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__16@PAGE
  ldr x0, [x8, _l_main___closed__16@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__17___boxed__const__1
  bl __init_l_main___closed__17___boxed__const__1
  adrp x8, _l_main___closed__17___boxed__const__1@PAGE
  str x0, [x8, _l_main___closed__17___boxed__const__1@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__17___boxed__const__1@PAGE
  ldr x0, [x8, _l_main___closed__17___boxed__const__1@PAGEOFF]
  bl _lean_mark_persistent

  // Initialize _l_main___closed__17
  bl __init_l_main___closed__17
  adrp x8, _l_main___closed__17@PAGE
  str x0, [x8, _l_main___closed__17@PAGEOFF]
  // Mark persistent
  adrp x8, _l_main___closed__17@PAGE
  ldr x0, [x8, _l_main___closed__17@PAGEOFF]
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
