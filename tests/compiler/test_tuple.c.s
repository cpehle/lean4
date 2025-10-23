	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 99, 0	sdk_version 15, 5
	.private_extern	_l_IO_print___at___IO_println___at___main_spec__0_spec__0 ; -- Begin function l_IO_print___at___IO_println___at___main_spec__0_spec__0
	.globl	_l_IO_print___at___IO_println___at___main_spec__0_spec__0
	.p2align	2
_l_IO_print___at___IO_println___at___main_spec__0_spec__0: ; @l_IO_print___at___IO_println___at___main_spec__0_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	b	LBB0_1
LBB0_1:
	ldur	x0, [x29, #-16]
	bl	_lean_get_stdout
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	bl	_lean_inc
	ldur	x0, [x29, #-24]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldr	x0, [sp, #32]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc_ref
	ldr	x0, [sp, #32]
	bl	_lean_dec
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #24]
	bl	_lean_apply_2
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ctor_get
_lean_ctor_get:                         ; @lean_ctor_get
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        ; 4-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	_lean_ctor_num_objs
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, hs
	tbz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #623                        ; =0x26f
	adrp	x2, l_.str.1@PAGE
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_lean_notify_assert
	b	LBB1_2
LBB1_2:
	ldr	x0, [sp, #8]
	bl	_lean_ctor_obj_cptr
	ldr	w8, [sp, #4]
                                        ; kill: def $x8 killed $w8
	ldr	x0, [x0, x8, lsl #3]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_inc
_lean_inc:                              ; @lean_inc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_is_scalar
	tbnz	w0, #0, LBB2_2
	b	LBB2_1
LBB2_1:
	ldr	x0, [sp, #8]
	bl	_lean_inc_ref
	b	LBB2_2
LBB2_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_dec_ref
_lean_dec_ref:                          ; @lean_dec_ref
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	cset	w8, gt
	tbz	w8, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	b	LBB3_5
LBB3_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbz	w8, LBB3_4
	b	LBB3_3
LBB3_3:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref_cold
	b	LBB3_4
LBB3_4:
	b	LBB3_5
LBB3_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_inc_ref
_lean_inc_ref:                          ; @lean_inc_ref
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	x1, #1                          ; =0x1
	bl	_lean_inc_ref_n
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_dec
_lean_dec:                              ; @lean_dec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_is_scalar
	tbnz	w0, #0, LBB5_2
	b	LBB5_1
LBB5_1:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	b	LBB5_2
LBB5_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___main_spec__0 ; -- Begin function l_IO_println___at___main_spec__0
	.globl	_l_IO_println___at___main_spec__0
	.p2align	2
_l_IO_println___at___main_spec__0:      ; @l_IO_println___at___main_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	b	LBB6_1
LBB6_1:
	ldur	x0, [x29, #-8]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-32]
	adrp	x8, _l_IO_println___at___main_spec__0___closed__0@PAGE
	ldr	x8, [x8, _l_IO_println___at___main_spec__0___closed__0@PAGEOFF]
	stur	x8, [x29, #-40]
	ldur	x0, [x29, #-24]
	bl	_lean_unbox_float
	stur	d0, [x29, #-48]
	ldur	d0, [x29, #-48]
	bl	_lean_float_to_string
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-56]
	bl	_lean_string_append
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-56]
	bl	_lean_dec_ref
	adrp	x8, _l_IO_println___at___main_spec__0___closed__1@PAGE
	ldr	x8, [x8, _l_IO_println___at___main_spec__0___closed__1@PAGEOFF]
	str	x8, [sp, #72]
	ldur	x0, [x29, #-64]
	ldr	x1, [sp, #72]
	bl	_lean_string_append
	str	x0, [sp, #64]
	ldur	x0, [x29, #-32]
	bl	_lean_unbox_float
	str	d0, [sp, #56]
	ldr	d0, [sp, #56]
	bl	_lean_float_to_string
	str	x0, [sp, #48]
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #48]
	bl	_lean_string_append
	str	x0, [sp, #40]
	ldr	x0, [sp, #48]
	bl	_lean_dec_ref
	adrp	x8, _l_IO_println___at___main_spec__0___closed__2@PAGE
	ldr	x8, [x8, _l_IO_println___at___main_spec__0___closed__2@PAGEOFF]
	str	x8, [sp, #32]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #32]
	bl	_lean_string_append
	str	x0, [sp, #24]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #20]
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	_lean_string_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___main_spec__0_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_unbox_float
_lean_unbox_float:                      ; @lean_unbox_float
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get_float
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__lean_main             ; -- Begin function _lean_main
	.globl	__lean_main
	.p2align	2
__lean_main:                            ; @_lean_main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	b	LBB8_1
LBB8_1:
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_IO_println___at___main_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___main_spec__0___boxed ; -- Begin function l_IO_println___at___main_spec__0___boxed
	.globl	_l_IO_println___at___main_spec__0___boxed
	.p2align	2
_l_IO_println___at___main_spec__0___boxed: ; @l_IO_println___at___main_spec__0___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	b	LBB9_1
LBB9_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___main_spec__0
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_initialize_test__tuple ; -- Begin function initialize_test__tuple
	.globl	_initialize_test__tuple
	.p2align	2
_initialize_test__tuple:                ; @initialize_test__tuple
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-9]
	str	x1, [sp, #24]
	adrp	x8, __G_initialized@PAGE
	ldrb	w8, [x8, __G_initialized@PAGEOFF]
	tbz	w8, #0, LBB10_2
	b	LBB10_1
LBB10_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB10_5
LBB10_2:
	mov	w8, #1                          ; =0x1
	adrp	x9, __G_initialized@PAGE
	strb	w8, [x9, __G_initialized@PAGEOFF]
	ldurb	w8, [x29, #-9]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_io_mk_world
	mov	x1, x0
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	bl	_initialize_Init
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_error
	tbz	w0, #0, LBB10_4
	b	LBB10_3
LBB10_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB10_5
LBB10_4:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	__init_l_IO_println___at___main_spec__0___closed__0
	adrp	x8, _l_IO_println___at___main_spec__0___closed__0@PAGE
	str	x0, [x8, _l_IO_println___at___main_spec__0___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___main_spec__0___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___main_spec__0___closed__1
	adrp	x8, _l_IO_println___at___main_spec__0___closed__1@PAGE
	str	x0, [x8, _l_IO_println___at___main_spec__0___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___main_spec__0___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___main_spec__0___closed__2
	adrp	x8, _l_IO_println___at___main_spec__0___closed__2@PAGE
	str	x0, [x8, _l_IO_println___at___main_spec__0___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___main_spec__0___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__0
	adrp	x8, _l_main___closed__0@PAGE
	str	d0, [x8, _l_main___closed__0@PAGEOFF]
	bl	__init_l_main___closed__1___boxed__const__1
	adrp	x8, _l_main___closed__1___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__1___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__1___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__1
	adrp	x8, _l_main___closed__1@PAGE
	str	x0, [x8, _l_main___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB10_5
LBB10_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_io_result_mk_ok
_lean_io_result_mk_ok:                  ; @lean_io_result_mk_ok
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_box
_lean_box:                              ; @lean_box
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	lsl	x8, x8, #1
	orr	x0, x8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_io_result_is_error
_lean_io_result_is_error:               ; @lean_io_result_is_error
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_ptr_tag
	subs	w8, w0, #1
	cset	w0, eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_main                   ; -- Begin function main
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	w0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	_lean_setup_args
	stur	x0, [x29, #-16]
	bl	_lean_initialize_runtime_module
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mk_world
	mov	x1, x0
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	bl	_initialize_test__tuple
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	and	w0, w8, #0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mark_end_initialization
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB14_2
	b	LBB14_1
LBB14_1:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	_lean_init_task_manager
	bl	_lean_io_mk_world
	bl	__lean_main
	str	x0, [sp, #16]
	b	LBB14_2
LBB14_2:
	bl	_lean_finalize_task_manager
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB14_4
	b	LBB14_3
LBB14_3:
	str	wzr, [sp, #12]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB14_5
LBB14_4:
	ldr	x0, [sp, #16]
	bl	_lean_io_result_show_error
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB14_5
LBB14_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_io_result_is_ok
_lean_io_result_is_ok:                  ; @lean_io_result_is_ok
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_ptr_tag
	subs	w8, w0, #0
	cset	w0, eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ctor_num_objs
_lean_ctor_num_objs:                    ; @lean_ctor_num_objs
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_is_ctor
	tbnz	w0, #0, LBB16_2
	b	LBB16_1
LBB16_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #596                        ; =0x254
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB16_2
LBB16_2:
	ldr	x0, [sp, #8]
	bl	_lean_ptr_other
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ctor_obj_cptr
_lean_ctor_obj_cptr:                    ; @lean_ctor_obj_cptr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_is_ctor
	tbnz	w0, #0, LBB17_2
	b	LBB17_1
LBB17_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #601                        ; =0x259
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB17_2
LBB17_2:
	ldr	x0, [sp, #8]
	bl	_lean_to_ctor
	add	x0, x0, #8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_is_ctor
_lean_is_ctor:                          ; @lean_is_ctor
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_ptr_tag
	subs	w8, w0, #243
	cset	w0, le
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ptr_other
_lean_ptr_other:                        ; @lean_ptr_other
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	lsr	w8, w8, #16
	and	w0, w8, #0xff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ptr_tag
_lean_ptr_tag:                          ; @lean_ptr_tag
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	lsr	w0, w8, #24
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_to_ctor
_lean_to_ctor:                          ; @lean_to_ctor
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_is_ctor
	tbnz	w0, #0, LBB21_2
	b	LBB21_1
LBB21_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #532                        ; =0x214
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB21_2
LBB21_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_is_scalar
_lean_is_scalar:                        ; @lean_is_scalar
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	and	x8, x8, #0x1
	subs	x8, x8, #1
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_inc_ref_n
_lean_inc_ref_n:                        ; @lean_inc_ref_n
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	_lean_is_st
	tbz	w0, #0, LBB23_2
	b	LBB23_1
LBB23_1:
	ldr	x10, [sp, #16]
	ldur	x9, [x29, #-8]
	ldrsw	x8, [x9]
	add	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	b	LBB23_5
LBB23_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	cbz	w8, LBB23_4
	b	LBB23_3
LBB23_3:
	ldur	x0, [x29, #-8]
	bl	_lean_get_rc_mt_addr
	ldr	x8, [sp, #16]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	neg	w8, w8
	ldadd	w8, w8, [x0]
	str	w8, [sp, #8]
	b	LBB23_4
LBB23_4:
	b	LBB23_5
LBB23_5:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_is_st
_lean_is_st:                            ; @lean_is_st
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w0, gt
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_get_rc_mt_addr
_lean_get_rc_mt_addr:                   ; @lean_get_rc_mt_addr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ctor_get_float
_lean_ctor_get_float:                   ; @lean_ctor_get_float
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w8, [x29, #-12]
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_num_objs
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, w0, uxtw #3
	cset	w8, lo
	tbz	w8, #0, LBB26_2
	b	LBB26_1
LBB26_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #675                        ; =0x2a3
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB26_2
LBB26_2:
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_obj_cptr
	ldur	w8, [x29, #-12]
                                        ; kill: def $x8 killed $w8
	ldr	d0, [x0, x8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_alloc_ctor
_lean_alloc_ctor:                       ; @lean_alloc_ctor
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	ldur	w9, [x29, #-4]
	mov	w8, #0                          ; =0x0
	subs	w9, w9, #243
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b.hi	LBB27_3
	b	LBB27_1
LBB27_1:
	ldur	w9, [x29, #-8]
	mov	w8, #0                          ; =0x0
	subs	w9, w9, #256
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b.hs	LBB27_3
	b	LBB27_2
LBB27_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1024
	cset	w8, lo
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB27_3
LBB27_3:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbnz	w8, #0, LBB27_5
	b	LBB27_4
LBB27_4:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #616                        ; =0x268
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB27_5
LBB27_5:
	ldur	w8, [x29, #-8]
	mov	x9, x8
	mov	x8, #8                          ; =0x8
	mul	x8, x8, x9
	add	x8, x8, #8
	ldur	w9, [x29, #-12]
                                        ; kill: def $x9 killed $w9
	add	x8, x8, x9
	mov	x0, x8
	bl	_lean_alloc_ctor_memory
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-8]
	bl	_lean_set_st_header
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ctor_set
_lean_ctor_set:                         ; @lean_ctor_set
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_num_objs
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, hs
	tbz	w8, #0, LBB28_2
	b	LBB28_1
LBB28_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #633                        ; =0x279
	adrp	x2, l_.str.1@PAGE
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_lean_notify_assert
	b	LBB28_2
LBB28_2:
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_obj_cptr
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	w9, [x29, #-12]
                                        ; kill: def $x9 killed $w9
	str	x8, [x0, x9, lsl #3]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_alloc_ctor_memory
_lean_alloc_ctor_memory:                ; @lean_alloc_ctor_memory
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	mov	x0, x8
	mov	x1, #8                          ; =0x8
	bl	_lean_align
	mov	x8, x0
	stur	w8, [x29, #-8]
	ldur	w0, [x29, #-4]
	bl	_lean_alloc_small_object
	str	x0, [sp, #16]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ls	LBB29_2
	b	LBB29_1
LBB29_1:
	ldr	x8, [sp, #16]
	ldur	w9, [x29, #-8]
                                        ; kill: def $x9 killed $w9
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	stur	xzr, [x8, #-8]
	b	LBB29_2
LBB29_2:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_set_st_header
_lean_set_st_header:                    ; @lean_set_st_header
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	x9, [sp, #8]
	mov	w8, #1                          ; =0x1
	str	w8, [x9]
	ldrb	w10, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #4]
	bfi	w8, w10, #24, #8
	str	w8, [x9, #4]
	ldrb	w10, [sp]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #4]
	and	w8, w8, #0xff00ffff
	orr	w8, w8, w10, lsl #16
	str	w8, [x9, #4]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_align
_lean_align:                            ; @lean_align
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	udiv	x8, x8, x9
	ldr	x9, [sp]
	mul	x8, x8, x9
	ldr	x9, [sp]
	ldr	x10, [sp, #8]
	ldr	x12, [sp]
	udiv	x11, x10, x12
	mul	x11, x11, x12
	subs	x10, x10, x11
	subs	x10, x10, #0
	cset	w11, ne
                                        ; implicit-def: $x10
	mov	x10, x11
	and	x10, x10, #0x1
	mul	x9, x9, x10
	add	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_alloc_small_object
_lean_alloc_small_object:               ; @lean_alloc_small_object
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	bl	_lean_inc_heartbeat
	ldur	w8, [x29, #-4]
	mov	x0, x8
	mov	x1, #8                          ; =0x8
	bl	_lean_align
	mov	x8, x0
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-4]
	mov	x0, x8
	bl	_mi_malloc_small
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, LBB32_2
	b	LBB32_1
LBB32_1:
	bl	_lean_internal_panic_out_of_memory
LBB32_2:
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldurh	w10, [x29, #-4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #4]
	and	w8, w8, #0xffff0000
	orr	w8, w8, w10
	str	w8, [x9, #4]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_io_mk_world
_lean_io_mk_world:                      ; @lean_io_mk_world
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___main_spec__0___closed__0
__init_l_IO_println___at___main_spec__0___closed__0: ; @_init_l_IO_println___at___main_spec__0___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB34_1
LBB34_1:
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	mov	x2, #1                          ; =0x1
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___main_spec__0___closed__1
__init_l_IO_println___at___main_spec__0___closed__1: ; @_init_l_IO_println___at___main_spec__0___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB35_1
LBB35_1:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	mov	x2, #2                          ; =0x2
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___main_spec__0___closed__2
__init_l_IO_println___at___main_spec__0___closed__2: ; @_init_l_IO_println___at___main_spec__0___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB36_1
LBB36_1:
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	mov	x2, #1                          ; =0x1
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__0
__init_l_main___closed__0:              ; @_init_l_main___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB37_1
LBB37_1:
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	mov	w8, #1                          ; =0x1
	sturb	w8, [x29, #-9]
	mov	w0, #14                         ; =0xe
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldurb	w1, [x29, #-9]
	ldur	x2, [x29, #-8]
	bl	_l_Float_ofScientific
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_unsigned_to_nat
_lean_unsigned_to_nat:                  ; @lean_unsigned_to_nat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	mov	x0, x8
	bl	_lean_usize_to_nat
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_usize_to_nat
_lean_usize_to_nat:                     ; @lean_usize_to_nat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x8, [sp]
	mov	x9, #9223372036854775807        ; =0x7fffffffffffffff
	subs	x8, x8, x9
	cset	w8, ls
	tbz	w8, #0, LBB39_2
	b	LBB39_1
LBB39_1:
	ldr	x0, [sp]
	bl	_lean_box
	str	x0, [sp, #8]
	b	LBB39_3
LBB39_2:
	ldr	x0, [sp]
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #8]
	b	LBB39_3
LBB39_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__1___boxed__const__1
__init_l_main___closed__1___boxed__const__1: ; @_init_l_main___closed__1___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB40_1
LBB40_1:
	adrp	x8, _l_main___closed__0@PAGE
	ldr	d0, [x8, _l_main___closed__0@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_box_float
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_box_float
_lean_box_float:                        ; @lean_box_float
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	d0, [x29, #-8]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x1
	mov	w2, #8                          ; =0x8
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	d0, [x29, #-8]
	bl	_lean_ctor_set_float
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ctor_set_float
_lean_ctor_set_float:                   ; @lean_ctor_set_float
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	d0, [sp, #24]
	ldur	w8, [x29, #-12]
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_num_objs
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, w0, uxtw #3
	cset	w8, lo
	tbz	w8, #0, LBB42_2
	b	LBB42_1
LBB42_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #710                        ; =0x2c6
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB42_2
LBB42_2:
	ldr	d0, [sp, #24]
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_obj_cptr
	ldr	d0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	w8, [x29, #-12]
                                        ; kill: def $x8 killed $w8
	str	d0, [x0, x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__1
__init_l_main___closed__1:              ; @_init_l_main___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB43_1
LBB43_1:
	adrp	x8, _l_main___closed__1___boxed__const__1@PAGE
	ldr	x9, [x8, _l_main___closed__1___boxed__const__1@PAGEOFF]
	stur	x9, [x29, #-8]
	ldr	x8, [x8, _l_main___closed__1___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_l_IO_println___at___main_spec__0___closed__0,8,3 ; @l_IO_println___at___main_spec__0___closed__0
.zerofill __DATA,__bss,_l_IO_println___at___main_spec__0___closed__1,8,3 ; @l_IO_println___at___main_spec__0___closed__1
.zerofill __DATA,__bss,_l_IO_println___at___main_spec__0___closed__2,8,3 ; @l_IO_println___at___main_spec__0___closed__2
.zerofill __DATA,__bss,_l_main___closed__1,8,3 ; @l_main___closed__1
.zerofill __DATA,__bss,__G_initialized,1,0 ; @_G_initialized
.zerofill __DATA,__bss,_l_main___closed__0,8,3 ; @l_main___closed__0
	.private_extern	_l_main___closed__1___boxed__const__1 ; @l_main___closed__1___boxed__const__1
	.comm	_l_main___closed__1___boxed__const__1,8,3
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/Users/pehle/dev/lean4/build/release/stage1/include/lean/lean.h"

l_.str.1:                               ; @.str.1
	.asciz	"i < lean_ctor_num_objs(o)"

l_.str.2:                               ; @.str.2
	.asciz	"lean_is_ctor(o)"

l_.str.3:                               ; @.str.3
	.asciz	"offset >= lean_ctor_num_objs(o) * sizeof(void*)"

l_.str.4:                               ; @.str.4
	.asciz	"tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE"

l_.str.5:                               ; @.str.5
	.asciz	"("

l_.str.6:                               ; @.str.6
	.asciz	", "

l_.str.7:                               ; @.str.7
	.asciz	")"

.subsections_via_symbols
