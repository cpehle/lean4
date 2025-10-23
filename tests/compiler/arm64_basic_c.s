	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 99, 0	sdk_version 15, 5
	.p2align	2                               ; -- Begin function lean_mk_empty_array_with_capacity
_lean_mk_empty_array_with_capacity:     ; @lean_mk_empty_array_with_capacity
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
	tbnz	w0, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	bl	_lean_internal_panic_out_of_memory
LBB0_2:
	ldr	x0, [sp, #8]
	bl	_lean_unbox
	mov	x1, x0
	mov	x0, #0                          ; =0x0
	bl	_lean_alloc_array
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_emitAsm              ; -- Begin function l_emitAsm
	.globl	_l_emitAsm
	.p2align	2
_l_emitAsm:                             ; @l_emitAsm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	b	LBB1_1
LBB1_1:
	stur	wzr, [x29, #-28]
	ldur	w0, [x29, #-28]
	ldur	x1, [x29, #-24]
	bl	_lean_mk_empty_environment
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_obj_tag
	cbnz	w0, LBB1_5
	b	LBB1_2
LBB1_2:
	ldur	x0, [x29, #-40]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	sturb	w8, [x29, #-41]
	ldurb	w8, [x29, #-41]
	cbnz	w8, LBB1_4
	b	LBB1_3
LBB1_3:
	ldur	x0, [x29, #-40]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #28]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-16]
	bl	_l_Lean_Compiler_Backend_EmitARM64_emitDecl
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-40]
	ldur	x2, [x29, #-64]
	bl	_lean_ctor_set
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-8]
	b	LBB1_8
LBB1_4:
	ldur	x0, [x29, #-40]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #20]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-40]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #24]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #80]
	ldr	x0, [sp, #80]
	bl	_lean_inc
	ldur	x0, [x29, #-72]
	bl	_lean_inc
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	ldur	x0, [x29, #-72]
	ldur	x1, [x29, #-16]
	bl	_l_Lean_Compiler_Backend_EmitARM64_emitDecl
	ldr	w2, [sp, #20]                   ; 4-byte Folded Reload
	str	x0, [sp, #72]
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	ldr	x2, [sp, #72]
	bl	_lean_ctor_set
	ldr	w1, [sp, #24]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #64]
	ldr	x2, [sp, #80]
	bl	_lean_ctor_set
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB1_8
LBB1_5:
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-40]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #63]
	ldrb	w8, [sp, #63]
	cbnz	w8, LBB1_7
	b	LBB1_6
LBB1_6:
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-8]
	b	LBB1_8
LBB1_7:
	ldur	x0, [x29, #-40]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #48]
	ldur	x0, [x29, #-40]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #16]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	_lean_inc
	ldr	x0, [sp, #48]
	bl	_lean_inc
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	ldr	w2, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	x2, [sp, #48]
	bl	_lean_ctor_set
	ldr	w1, [sp, #16]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #32]
	ldr	x2, [sp, #40]
	bl	_lean_ctor_set
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB1_8
LBB1_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_obj_tag
_lean_obj_tag:                          ; @lean_obj_tag
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB2_2
	b	LBB2_1
LBB2_1:
	ldr	x0, [sp]
	bl	_lean_unbox
	mov	x8, x0
	stur	w8, [x29, #-4]
	b	LBB2_3
LBB2_2:
	ldr	x0, [sp]
	bl	_lean_ptr_tag
	stur	w0, [x29, #-4]
	b	LBB2_3
LBB2_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_is_exclusive
_lean_is_exclusive:                     ; @lean_is_exclusive
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	_lean_is_st
	tbz	w0, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	ldr	x8, [sp]
	ldr	w8, [x8]
	mov	w9, #1                          ; =0x1
	subs	w8, w8, #1
	cset	w8, eq
	and	w8, w8, w9
	sturb	w8, [x29, #-1]
	b	LBB3_3
LBB3_2:
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB3_3
LBB3_3:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	tbz	w8, #0, LBB4_2
	b	LBB4_1
LBB4_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #623                        ; =0x26f
	adrp	x2, l_.str.1@PAGE
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_lean_notify_assert
	b	LBB4_2
LBB4_2:
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
	tbz	w8, #0, LBB5_2
	b	LBB5_1
LBB5_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #633                        ; =0x279
	adrp	x2, l_.str.1@PAGE
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_lean_notify_assert
	b	LBB5_2
LBB5_2:
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
	tbnz	w0, #0, LBB6_2
	b	LBB6_1
LBB6_1:
	ldr	x0, [sp, #8]
	bl	_lean_inc_ref
	b	LBB6_2
LBB6_2:
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
	tbnz	w0, #0, LBB7_2
	b	LBB7_1
LBB7_1:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	b	LBB7_2
LBB7_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	b.hi	LBB8_3
	b	LBB8_1
LBB8_1:
	ldur	w9, [x29, #-8]
	mov	w8, #0                          ; =0x0
	subs	w9, w9, #256
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b.hs	LBB8_3
	b	LBB8_2
LBB8_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1024
	cset	w8, lo
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB8_3
LBB8_3:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbnz	w8, #0, LBB8_5
	b	LBB8_4
LBB8_4:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #616                        ; =0x268
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB8_5
LBB8_5:
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
	tbz	w8, #0, LBB9_2
	b	LBB9_1
LBB9_1:
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	b	LBB9_5
LBB9_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbz	w8, LBB9_4
	b	LBB9_3
LBB9_3:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref_cold
	b	LBB9_4
LBB9_4:
	b	LBB9_5
LBB9_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_testAdd              ; -- Begin function l_testAdd
	.globl	_l_testAdd
	.p2align	2
_l_testAdd:                             ; @l_testAdd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB10_1
LBB10_1:
	adrp	x8, _l_testAdd___closed__18@PAGE
	ldr	x8, [x8, _l_testAdd___closed__18@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_l_emitAsm
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB10_7
	b	LBB10_2
LBB10_2:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	adrp	x8, _l_testAdd___closed__19@PAGE
	ldr	x8, [x8, _l_testAdd___closed__19@PAGEOFF]
	stur	x8, [x29, #-56]
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-48]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	_lean_obj_tag
	cbnz	w0, LBB10_6
	b	LBB10_3
LBB10_3:
	ldur	x0, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_inc
	ldur	x0, [x29, #-64]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #72]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB10_5
	b	LBB10_4
LBB10_4:
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	adrp	x8, _l_testAdd___closed__20@PAGE
	ldr	x8, [x8, _l_testAdd___closed__20@PAGEOFF]
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB10_10
LBB10_5:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB10_10
LBB10_6:
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-8]
	b	LBB10_10
LBB10_7:
	ldur	x0, [x29, #-32]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #39]
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB10_9
	b	LBB10_8
LBB10_8:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	LBB10_10
LBB10_9:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB10_10
LBB10_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_testReturn           ; -- Begin function l_testReturn
	.globl	_l_testReturn
	.p2align	2
_l_testReturn:                          ; @l_testReturn
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB11_1
LBB11_1:
	adrp	x8, _l_testReturn___closed__5@PAGE
	ldr	x8, [x8, _l_testReturn___closed__5@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_l_emitAsm
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB11_7
	b	LBB11_2
LBB11_2:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	adrp	x8, _l_testReturn___closed__6@PAGE
	ldr	x8, [x8, _l_testReturn___closed__6@PAGEOFF]
	stur	x8, [x29, #-56]
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-48]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	_lean_obj_tag
	cbnz	w0, LBB11_6
	b	LBB11_3
LBB11_3:
	ldur	x0, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_inc
	ldur	x0, [x29, #-64]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #72]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB11_5
	b	LBB11_4
LBB11_4:
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	adrp	x8, _l_testAdd___closed__20@PAGE
	ldr	x8, [x8, _l_testAdd___closed__20@PAGEOFF]
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB11_10
LBB11_5:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB11_10
LBB11_6:
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-8]
	b	LBB11_10
LBB11_7:
	ldur	x0, [x29, #-32]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #39]
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB11_9
	b	LBB11_8
LBB11_8:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	LBB11_10
LBB11_9:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB11_10
LBB11_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_testCtor             ; -- Begin function l_testCtor
	.globl	_l_testCtor
	.p2align	2
_l_testCtor:                            ; @l_testCtor
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB12_1
LBB12_1:
	adrp	x8, _l_testCtor___closed__7@PAGE
	ldr	x8, [x8, _l_testCtor___closed__7@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_l_emitAsm
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB12_7
	b	LBB12_2
LBB12_2:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	adrp	x8, _l_testCtor___closed__8@PAGE
	ldr	x8, [x8, _l_testCtor___closed__8@PAGEOFF]
	stur	x8, [x29, #-56]
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-48]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	_lean_obj_tag
	cbnz	w0, LBB12_6
	b	LBB12_3
LBB12_3:
	ldur	x0, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_inc
	ldur	x0, [x29, #-64]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #72]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB12_5
	b	LBB12_4
LBB12_4:
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	adrp	x8, _l_testAdd___closed__20@PAGE
	ldr	x8, [x8, _l_testAdd___closed__20@PAGEOFF]
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB12_10
LBB12_5:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB12_10
LBB12_6:
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-8]
	b	LBB12_10
LBB12_7:
	ldur	x0, [x29, #-32]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #39]
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB12_9
	b	LBB12_8
LBB12_8:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	LBB12_10
LBB12_9:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB12_10
LBB12_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_testProj             ; -- Begin function l_testProj
	.globl	_l_testProj
	.p2align	2
_l_testProj:                            ; @l_testProj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB13_1
LBB13_1:
	adrp	x8, _l_testProj___closed__5@PAGE
	ldr	x8, [x8, _l_testProj___closed__5@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_l_emitAsm
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB13_7
	b	LBB13_2
LBB13_2:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	adrp	x8, _l_testProj___closed__6@PAGE
	ldr	x8, [x8, _l_testProj___closed__6@PAGEOFF]
	stur	x8, [x29, #-56]
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-48]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	_lean_obj_tag
	cbnz	w0, LBB13_6
	b	LBB13_3
LBB13_3:
	ldur	x0, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_inc
	ldur	x0, [x29, #-64]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #72]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB13_5
	b	LBB13_4
LBB13_4:
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	adrp	x8, _l_testAdd___closed__20@PAGE
	ldr	x8, [x8, _l_testAdd___closed__20@PAGEOFF]
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB13_10
LBB13_5:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB13_10
LBB13_6:
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-8]
	b	LBB13_10
LBB13_7:
	ldur	x0, [x29, #-32]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #39]
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB13_9
	b	LBB13_8
LBB13_8:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	LBB13_10
LBB13_9:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB13_10
LBB13_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_testCase             ; -- Begin function l_testCase
	.globl	_l_testCase
	.p2align	2
_l_testCase:                            ; @l_testCase
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB14_1
LBB14_1:
	adrp	x8, _l_testCase___closed__18@PAGE
	ldr	x8, [x8, _l_testCase___closed__18@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_l_emitAsm
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB14_7
	b	LBB14_2
LBB14_2:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	adrp	x8, _l_testCase___closed__19@PAGE
	ldr	x8, [x8, _l_testCase___closed__19@PAGEOFF]
	stur	x8, [x29, #-56]
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-48]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	_lean_obj_tag
	cbnz	w0, LBB14_6
	b	LBB14_3
LBB14_3:
	ldur	x0, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_inc
	ldur	x0, [x29, #-64]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #72]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB14_5
	b	LBB14_4
LBB14_4:
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	adrp	x8, _l_testAdd___closed__20@PAGE
	ldr	x8, [x8, _l_testAdd___closed__20@PAGEOFF]
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB14_10
LBB14_5:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB14_10
LBB14_6:
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-8]
	b	LBB14_10
LBB14_7:
	ldur	x0, [x29, #-32]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #39]
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB14_9
	b	LBB14_8
LBB14_8:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	LBB14_10
LBB14_9:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB14_10
LBB14_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_testLit              ; -- Begin function l_testLit
	.globl	_l_testLit
	.p2align	2
_l_testLit:                             ; @l_testLit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB15_1
LBB15_1:
	adrp	x8, _l_testLit___closed__6@PAGE
	ldr	x8, [x8, _l_testLit___closed__6@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_l_emitAsm
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB15_7
	b	LBB15_2
LBB15_2:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	adrp	x8, _l_testLit___closed__7@PAGE
	ldr	x8, [x8, _l_testLit___closed__7@PAGEOFF]
	stur	x8, [x29, #-56]
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-48]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	_lean_obj_tag
	cbnz	w0, LBB15_6
	b	LBB15_3
LBB15_3:
	ldur	x0, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_inc
	ldur	x0, [x29, #-64]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #72]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB15_5
	b	LBB15_4
LBB15_4:
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	adrp	x8, _l_testAdd___closed__20@PAGE
	ldr	x8, [x8, _l_testAdd___closed__20@PAGEOFF]
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB15_10
LBB15_5:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB15_10
LBB15_6:
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-8]
	b	LBB15_10
LBB15_7:
	ldur	x0, [x29, #-32]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #39]
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB15_9
	b	LBB15_8
LBB15_8:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	LBB15_10
LBB15_9:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB15_10
LBB15_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_testBox              ; -- Begin function l_testBox
	.globl	_l_testBox
	.p2align	2
_l_testBox:                             ; @l_testBox
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB16_1
LBB16_1:
	adrp	x8, _l_testBox___closed__6@PAGE
	ldr	x8, [x8, _l_testBox___closed__6@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_l_emitAsm
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB16_7
	b	LBB16_2
LBB16_2:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	adrp	x8, _l_testBox___closed__7@PAGE
	ldr	x8, [x8, _l_testBox___closed__7@PAGEOFF]
	stur	x8, [x29, #-56]
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-48]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	_lean_obj_tag
	cbnz	w0, LBB16_6
	b	LBB16_3
LBB16_3:
	ldur	x0, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_inc
	ldur	x0, [x29, #-64]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #72]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB16_5
	b	LBB16_4
LBB16_4:
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	adrp	x8, _l_testAdd___closed__20@PAGE
	ldr	x8, [x8, _l_testAdd___closed__20@PAGEOFF]
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB16_10
LBB16_5:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB16_10
LBB16_6:
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-8]
	b	LBB16_10
LBB16_7:
	ldur	x0, [x29, #-32]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #39]
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB16_9
	b	LBB16_8
LBB16_8:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	LBB16_10
LBB16_9:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB16_10
LBB16_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__lean_main             ; -- Begin function _lean_main
	.globl	__lean_main
	.p2align	2
__lean_main:                            ; @_lean_main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB17_1
LBB17_1:
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_21
	b	LBB17_2
LBB17_2:
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
	stur	x8, [x29, #-48]
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-40]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-56]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_20
	b	LBB17_3
LBB17_3:
	ldur	x0, [x29, #-56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	_lean_inc
	ldur	x0, [x29, #-56]
	bl	_lean_dec_ref
	adrp	x8, _l_testAdd___closed__20@PAGE
	ldr	x8, [x8, _l_testAdd___closed__20@PAGEOFF]
	stur	x8, [x29, #-72]
	ldur	x0, [x29, #-72]
	ldur	x1, [x29, #-64]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	stur	x0, [x29, #-80]
	ldur	x0, [x29, #-80]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_19
	b	LBB17_4
LBB17_4:
	ldur	x0, [x29, #-80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-88]
	ldur	x0, [x29, #-88]
	bl	_lean_inc
	ldur	x0, [x29, #-80]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-88]
	bl	_l_testAdd
	stur	x0, [x29, #-96]
	ldur	x0, [x29, #-96]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_18
	b	LBB17_5
LBB17_5:
	ldur	x0, [x29, #-96]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-104]
	bl	_lean_inc
	ldur	x0, [x29, #-96]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-104]
	bl	_l_testReturn
	str	x0, [sp, #112]
	ldr	x0, [sp, #112]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_17
	b	LBB17_6
LBB17_6:
	ldr	x0, [sp, #112]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #104]
	ldr	x0, [sp, #104]
	bl	_lean_inc
	ldr	x0, [sp, #112]
	bl	_lean_dec_ref
	ldr	x0, [sp, #104]
	bl	_l_testCtor
	str	x0, [sp, #96]
	ldr	x0, [sp, #96]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_16
	b	LBB17_7
LBB17_7:
	ldr	x0, [sp, #96]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #88]
	ldr	x0, [sp, #88]
	bl	_lean_inc
	ldr	x0, [sp, #96]
	bl	_lean_dec_ref
	ldr	x0, [sp, #88]
	bl	_l_testProj
	str	x0, [sp, #80]
	ldr	x0, [sp, #80]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_15
	b	LBB17_8
LBB17_8:
	ldr	x0, [sp, #80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_inc
	ldr	x0, [sp, #80]
	bl	_lean_dec_ref
	ldr	x0, [sp, #72]
	bl	_l_testCase
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_14
	b	LBB17_9
LBB17_9:
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	ldr	x0, [sp, #56]
	bl	_l_testLit
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_13
	b	LBB17_10
LBB17_10:
	ldr	x0, [sp, #48]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	_lean_inc
	ldr	x0, [sp, #48]
	bl	_lean_dec_ref
	ldr	x0, [sp, #40]
	bl	_l_testBox
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	bl	_lean_obj_tag
	cbnz	w0, LBB17_12
	b	LBB17_11
LBB17_11:
	ldr	x0, [sp, #32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldr	x0, [sp, #32]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__2@PAGE
	ldr	x8, [x8, _l_main___closed__2@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	_l_IO_println___at_____private_Lean_Language_Basic_0__Lean_Language_reportMessages_spec__3
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_12:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_13:
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_14:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_15:
	ldr	x8, [sp, #80]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_16:
	ldr	x8, [sp, #96]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_17:
	ldr	x8, [sp, #112]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_18:
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_19:
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_20:
	ldur	x8, [x29, #-56]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_21:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	LBB17_22
LBB17_22:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_initialize_arm64__basic ; -- Begin function initialize_arm64__basic
	.globl	_initialize_arm64__basic
	.p2align	2
_initialize_arm64__basic:               ; @initialize_arm64__basic
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
	tbz	w8, #0, LBB18_2
	b	LBB18_1
LBB18_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB18_11
LBB18_2:
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
	tbz	w0, #0, LBB18_4
	b	LBB18_3
LBB18_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB18_11
LBB18_4:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldurb	w8, [x29, #-9]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_io_mk_world
	mov	x1, x0
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	bl	_initialize_Lean_Compiler_Backend_EmitARM64
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_error
	tbz	w0, #0, LBB18_6
	b	LBB18_5
LBB18_5:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB18_11
LBB18_6:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldurb	w8, [x29, #-9]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_io_mk_world
	mov	x1, x0
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	bl	_initialize_Lean_Compiler_IR_Basic
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_error
	tbz	w0, #0, LBB18_8
	b	LBB18_7
LBB18_7:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB18_11
LBB18_8:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldurb	w8, [x29, #-9]
	str	w8, [sp]                        ; 4-byte Folded Spill
	bl	_lean_io_mk_world
	mov	x1, x0
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	bl	_initialize_Lean_Compiler_IR_SSA
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_error
	tbz	w0, #0, LBB18_10
	b	LBB18_9
LBB18_9:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB18_11
LBB18_10:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	__init_l_testAdd___closed__0
	adrp	x8, _l_testAdd___closed__0@PAGE
	str	x0, [x8, _l_testAdd___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__1
	adrp	x8, _l_testAdd___closed__1@PAGE
	str	x0, [x8, _l_testAdd___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__2
	adrp	x8, _l_testAdd___closed__2@PAGE
	str	x0, [x8, _l_testAdd___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__3
	adrp	x8, _l_testAdd___closed__3@PAGE
	str	x0, [x8, _l_testAdd___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__4
	adrp	x8, _l_testAdd___closed__4@PAGE
	str	x0, [x8, _l_testAdd___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__5
	adrp	x8, _l_testAdd___closed__5@PAGE
	str	x0, [x8, _l_testAdd___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__6
	adrp	x8, _l_testAdd___closed__6@PAGE
	str	x0, [x8, _l_testAdd___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__7
	adrp	x8, _l_testAdd___closed__7@PAGE
	str	x0, [x8, _l_testAdd___closed__7@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__7@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__8
	adrp	x8, _l_testAdd___closed__8@PAGE
	str	x0, [x8, _l_testAdd___closed__8@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__8@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__9
	adrp	x8, _l_testAdd___closed__9@PAGE
	str	x0, [x8, _l_testAdd___closed__9@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__9@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__10
	adrp	x8, _l_testAdd___closed__10@PAGE
	str	x0, [x8, _l_testAdd___closed__10@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__10@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__11
	adrp	x8, _l_testAdd___closed__11@PAGE
	str	x0, [x8, _l_testAdd___closed__11@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__11@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__12
	adrp	x8, _l_testAdd___closed__12@PAGE
	str	x0, [x8, _l_testAdd___closed__12@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__12@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__13
	adrp	x8, _l_testAdd___closed__13@PAGE
	str	x0, [x8, _l_testAdd___closed__13@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__13@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__14
	adrp	x8, _l_testAdd___closed__14@PAGE
	str	x0, [x8, _l_testAdd___closed__14@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__14@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__15
	adrp	x8, _l_testAdd___closed__15@PAGE
	str	x0, [x8, _l_testAdd___closed__15@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__15@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__16
	adrp	x8, _l_testAdd___closed__16@PAGE
	str	x0, [x8, _l_testAdd___closed__16@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__16@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__17
	adrp	x8, _l_testAdd___closed__17@PAGE
	str	x0, [x8, _l_testAdd___closed__17@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__17@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__18
	adrp	x8, _l_testAdd___closed__18@PAGE
	str	x0, [x8, _l_testAdd___closed__18@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__18@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__19
	adrp	x8, _l_testAdd___closed__19@PAGE
	str	x0, [x8, _l_testAdd___closed__19@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__19@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testAdd___closed__20
	adrp	x8, _l_testAdd___closed__20@PAGE
	str	x0, [x8, _l_testAdd___closed__20@PAGEOFF]
	ldr	x0, [x8, _l_testAdd___closed__20@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testReturn___closed__0
	adrp	x8, _l_testReturn___closed__0@PAGE
	str	x0, [x8, _l_testReturn___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_testReturn___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testReturn___closed__1
	adrp	x8, _l_testReturn___closed__1@PAGE
	str	x0, [x8, _l_testReturn___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_testReturn___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testReturn___closed__2
	adrp	x8, _l_testReturn___closed__2@PAGE
	str	x0, [x8, _l_testReturn___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_testReturn___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testReturn___closed__3
	adrp	x8, _l_testReturn___closed__3@PAGE
	str	x0, [x8, _l_testReturn___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_testReturn___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testReturn___closed__4
	adrp	x8, _l_testReturn___closed__4@PAGE
	str	x0, [x8, _l_testReturn___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_testReturn___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testReturn___closed__5
	adrp	x8, _l_testReturn___closed__5@PAGE
	str	x0, [x8, _l_testReturn___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_testReturn___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testReturn___closed__6
	adrp	x8, _l_testReturn___closed__6@PAGE
	str	x0, [x8, _l_testReturn___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_testReturn___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCtor___closed__0
	adrp	x8, _l_testCtor___closed__0@PAGE
	str	x0, [x8, _l_testCtor___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_testCtor___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCtor___closed__1
	adrp	x8, _l_testCtor___closed__1@PAGE
	str	x0, [x8, _l_testCtor___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_testCtor___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCtor___closed__2
	adrp	x8, _l_testCtor___closed__2@PAGE
	str	x0, [x8, _l_testCtor___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_testCtor___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCtor___closed__3
	adrp	x8, _l_testCtor___closed__3@PAGE
	str	x0, [x8, _l_testCtor___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_testCtor___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCtor___closed__4
	adrp	x8, _l_testCtor___closed__4@PAGE
	str	x0, [x8, _l_testCtor___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_testCtor___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCtor___closed__5
	adrp	x8, _l_testCtor___closed__5@PAGE
	str	x0, [x8, _l_testCtor___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_testCtor___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCtor___closed__6
	adrp	x8, _l_testCtor___closed__6@PAGE
	str	x0, [x8, _l_testCtor___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_testCtor___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCtor___closed__7
	adrp	x8, _l_testCtor___closed__7@PAGE
	str	x0, [x8, _l_testCtor___closed__7@PAGEOFF]
	ldr	x0, [x8, _l_testCtor___closed__7@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCtor___closed__8
	adrp	x8, _l_testCtor___closed__8@PAGE
	str	x0, [x8, _l_testCtor___closed__8@PAGEOFF]
	ldr	x0, [x8, _l_testCtor___closed__8@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testProj___closed__0
	adrp	x8, _l_testProj___closed__0@PAGE
	str	x0, [x8, _l_testProj___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_testProj___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testProj___closed__1
	adrp	x8, _l_testProj___closed__1@PAGE
	str	x0, [x8, _l_testProj___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_testProj___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testProj___closed__2
	adrp	x8, _l_testProj___closed__2@PAGE
	str	x0, [x8, _l_testProj___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_testProj___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testProj___closed__3
	adrp	x8, _l_testProj___closed__3@PAGE
	str	x0, [x8, _l_testProj___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_testProj___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testProj___closed__4
	adrp	x8, _l_testProj___closed__4@PAGE
	str	x0, [x8, _l_testProj___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_testProj___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testProj___closed__5
	adrp	x8, _l_testProj___closed__5@PAGE
	str	x0, [x8, _l_testProj___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_testProj___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testProj___closed__6
	adrp	x8, _l_testProj___closed__6@PAGE
	str	x0, [x8, _l_testProj___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_testProj___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__0
	adrp	x8, _l_testCase___closed__0@PAGE
	str	x0, [x8, _l_testCase___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__1
	adrp	x8, _l_testCase___closed__1@PAGE
	str	x0, [x8, _l_testCase___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__2
	adrp	x8, _l_testCase___closed__2@PAGE
	str	x0, [x8, _l_testCase___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__3
	adrp	x8, _l_testCase___closed__3@PAGE
	str	x0, [x8, _l_testCase___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__4
	adrp	x8, _l_testCase___closed__4@PAGE
	str	x0, [x8, _l_testCase___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__5
	adrp	x8, _l_testCase___closed__5@PAGE
	str	x0, [x8, _l_testCase___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__6
	adrp	x8, _l_testCase___closed__6@PAGE
	str	x0, [x8, _l_testCase___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__7
	adrp	x8, _l_testCase___closed__7@PAGE
	str	x0, [x8, _l_testCase___closed__7@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__7@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__8
	adrp	x8, _l_testCase___closed__8@PAGE
	str	x0, [x8, _l_testCase___closed__8@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__8@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__9
	adrp	x8, _l_testCase___closed__9@PAGE
	str	x0, [x8, _l_testCase___closed__9@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__9@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__10
	adrp	x8, _l_testCase___closed__10@PAGE
	str	x0, [x8, _l_testCase___closed__10@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__10@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__11
	adrp	x8, _l_testCase___closed__11@PAGE
	str	x0, [x8, _l_testCase___closed__11@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__11@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__12
	adrp	x8, _l_testCase___closed__12@PAGE
	str	x0, [x8, _l_testCase___closed__12@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__12@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__13
	adrp	x8, _l_testCase___closed__13@PAGE
	str	x0, [x8, _l_testCase___closed__13@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__13@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__14
	adrp	x8, _l_testCase___closed__14@PAGE
	str	x0, [x8, _l_testCase___closed__14@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__14@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__15
	adrp	x8, _l_testCase___closed__15@PAGE
	str	x0, [x8, _l_testCase___closed__15@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__15@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__16
	adrp	x8, _l_testCase___closed__16@PAGE
	str	x0, [x8, _l_testCase___closed__16@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__16@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__17
	adrp	x8, _l_testCase___closed__17@PAGE
	str	x0, [x8, _l_testCase___closed__17@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__17@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__18
	adrp	x8, _l_testCase___closed__18@PAGE
	str	x0, [x8, _l_testCase___closed__18@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__18@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testCase___closed__19
	adrp	x8, _l_testCase___closed__19@PAGE
	str	x0, [x8, _l_testCase___closed__19@PAGEOFF]
	ldr	x0, [x8, _l_testCase___closed__19@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testLit___closed__0
	adrp	x8, _l_testLit___closed__0@PAGE
	str	x0, [x8, _l_testLit___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_testLit___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testLit___closed__1
	adrp	x8, _l_testLit___closed__1@PAGE
	str	x0, [x8, _l_testLit___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_testLit___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testLit___closed__2
	adrp	x8, _l_testLit___closed__2@PAGE
	str	x0, [x8, _l_testLit___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_testLit___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testLit___closed__3
	adrp	x8, _l_testLit___closed__3@PAGE
	str	x0, [x8, _l_testLit___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_testLit___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testLit___closed__4
	adrp	x8, _l_testLit___closed__4@PAGE
	str	x0, [x8, _l_testLit___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_testLit___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testLit___closed__5
	adrp	x8, _l_testLit___closed__5@PAGE
	str	x0, [x8, _l_testLit___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_testLit___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testLit___closed__6
	adrp	x8, _l_testLit___closed__6@PAGE
	str	x0, [x8, _l_testLit___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_testLit___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testLit___closed__7
	adrp	x8, _l_testLit___closed__7@PAGE
	str	x0, [x8, _l_testLit___closed__7@PAGEOFF]
	ldr	x0, [x8, _l_testLit___closed__7@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testBox___closed__0
	adrp	x8, _l_testBox___closed__0@PAGE
	str	x0, [x8, _l_testBox___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_testBox___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testBox___closed__1
	adrp	x8, _l_testBox___closed__1@PAGE
	str	x0, [x8, _l_testBox___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_testBox___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testBox___closed__2
	adrp	x8, _l_testBox___closed__2@PAGE
	str	x0, [x8, _l_testBox___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_testBox___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testBox___closed__3
	adrp	x8, _l_testBox___closed__3@PAGE
	str	x0, [x8, _l_testBox___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_testBox___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testBox___closed__4
	adrp	x8, _l_testBox___closed__4@PAGE
	str	x0, [x8, _l_testBox___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_testBox___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testBox___closed__5
	adrp	x8, _l_testBox___closed__5@PAGE
	str	x0, [x8, _l_testBox___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_testBox___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testBox___closed__6
	adrp	x8, _l_testBox___closed__6@PAGE
	str	x0, [x8, _l_testBox___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_testBox___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_testBox___closed__7
	adrp	x8, _l_testBox___closed__7@PAGE
	str	x0, [x8, _l_testBox___closed__7@PAGEOFF]
	ldr	x0, [x8, _l_testBox___closed__7@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__0
	adrp	x8, _l_main___closed__0@PAGE
	str	x0, [x8, _l_main___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__1
	adrp	x8, _l_main___closed__1@PAGE
	str	x0, [x8, _l_main___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__2
	adrp	x8, _l_main___closed__2@PAGE
	str	x0, [x8, _l_main___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB18_11
LBB18_11:
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
	bl	_lean_initialize
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mk_world
	mov	x1, x0
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	bl	_initialize_arm64__basic
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	and	w0, w8, #0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mark_end_initialization
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB22_2
	b	LBB22_1
LBB22_1:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	_lean_init_task_manager
	bl	_lean_io_mk_world
	bl	__lean_main
	str	x0, [sp, #16]
	b	LBB22_2
LBB22_2:
	bl	_lean_finalize_task_manager
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB22_4
	b	LBB22_3
LBB22_3:
	str	wzr, [sp, #12]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB22_5
LBB22_4:
	ldr	x0, [sp, #16]
	bl	_lean_io_result_show_error
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB22_5
LBB22_5:
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
	.p2align	2                               ; -- Begin function lean_alloc_array
_lean_alloc_array:                      ; @lean_alloc_array
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
	ldr	x9, [sp, #16]
	mov	x8, #8                          ; =0x8
	mul	x8, x8, x9
	add	x0, x8, #24
	bl	_lean_alloc_object
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #246                        ; =0xf6
	mov	w2, #0                          ; =0x0
	bl	_lean_set_st_header
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_unbox
_lean_unbox:                            ; @lean_unbox
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	lsr	x0, x8, #1
	add	sp, sp, #16
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
	tbnz	w0, #0, LBB30_2
	b	LBB30_1
LBB30_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #596                        ; =0x254
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB30_2
LBB30_2:
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
	tbnz	w0, #0, LBB31_2
	b	LBB31_1
LBB31_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #601                        ; =0x259
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB31_2
LBB31_2:
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
	tbnz	w0, #0, LBB34_2
	b	LBB34_1
LBB34_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #532                        ; =0x214
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB34_2
LBB34_2:
	ldr	x0, [sp, #8]
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
	tbz	w0, #0, LBB36_2
	b	LBB36_1
LBB36_1:
	ldr	x10, [sp, #16]
	ldur	x9, [x29, #-8]
	ldrsw	x8, [x9]
	add	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	b	LBB36_5
LBB36_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	cbz	w8, LBB36_4
	b	LBB36_3
LBB36_3:
	ldur	x0, [x29, #-8]
	bl	_lean_get_rc_mt_addr
	ldr	x8, [sp, #16]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	neg	w8, w8
	ldadd	w8, w8, [x0]
	str	w8, [sp, #8]
	b	LBB36_4
LBB36_4:
	b	LBB36_5
LBB36_5:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	b.ls	LBB38_2
	b	LBB38_1
LBB38_1:
	ldr	x8, [sp, #16]
	ldur	w9, [x29, #-8]
                                        ; kill: def $x9 killed $w9
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	stur	xzr, [x8, #-8]
	b	LBB38_2
LBB38_2:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	cbnz	x8, LBB40_2
	b	LBB40_1
LBB40_1:
	bl	_lean_internal_panic_out_of_memory
LBB40_2:
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
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__0
__init_l_testAdd___closed__0:           ; @_init_l_testAdd___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB42_1
LBB42_1:
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	mov	x2, #3                          ; =0x3
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__1
__init_l_testAdd___closed__1:           ; @_init_l_testAdd___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB43_1
LBB43_1:
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	mov	x2, #3                          ; =0x3
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__2
__init_l_testAdd___closed__2:           ; @_init_l_testAdd___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB44_1
LBB44_1:
	adrp	x8, _l_testAdd___closed__1@PAGE
	ldr	x8, [x8, _l_testAdd___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testAdd___closed__0@PAGE
	ldr	x8, [x8, _l_testAdd___closed__0@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_Lean_Name_mkStr2
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__3
__init_l_testAdd___closed__3:           ; @_init_l_testAdd___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB45_1
LBB45_1:
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	ldr	w2, [sp, #12]                   ; 4-byte Folded Reload
	stur	x0, [x29, #-8]
	mov	x0, x2
	mov	w1, #1                          ; =0x1
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
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
	tbz	w8, #0, LBB47_2
	b	LBB47_1
LBB47_1:
	ldr	x0, [sp]
	bl	_lean_box
	str	x0, [sp, #8]
	b	LBB47_3
LBB47_2:
	ldr	x0, [sp]
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #8]
	b	LBB47_3
LBB47_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__4
__init_l_testAdd___closed__4:           ; @_init_l_testAdd___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB48_1
LBB48_1:
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	stur	x0, [x29, #-8]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__5
__init_l_testAdd___closed__5:           ; @_init_l_testAdd___closed__5
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB49_1
LBB49_1:
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_mk_empty_array_with_capacity
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__6
__init_l_testAdd___closed__6:           ; @_init_l_testAdd___closed__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB50_1
LBB50_1:
	adrp	x8, _l_testAdd___closed__3@PAGE
	ldr	x8, [x8, _l_testAdd___closed__3@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testAdd___closed__5@PAGE
	ldr	x8, [x8, _l_testAdd___closed__5@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__7
__init_l_testAdd___closed__7:           ; @_init_l_testAdd___closed__7
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB51_1
LBB51_1:
	adrp	x8, _l_testAdd___closed__4@PAGE
	ldr	x8, [x8, _l_testAdd___closed__4@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testAdd___closed__6@PAGE
	ldr	x8, [x8, _l_testAdd___closed__6@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__8
__init_l_testAdd___closed__8:           ; @_init_l_testAdd___closed__8
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB52_1
LBB52_1:
	adrp	x8, _l_testAdd___closed__7@PAGE
	ldr	x8, [x8, _l_testAdd___closed__7@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testAdd___closed__2@PAGE
	ldr	x8, [x8, _l_testAdd___closed__2@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #6                          ; =0x6
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__9
__init_l_testAdd___closed__9:           ; @_init_l_testAdd___closed__9
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB53_1
LBB53_1:
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #1                          ; =0x1
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__10
__init_l_testAdd___closed__10:          ; @_init_l_testAdd___closed__10
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB54_1
LBB54_1:
	adrp	x8, _l_testAdd___closed__9@PAGE
	ldr	x8, [x8, _l_testAdd___closed__9@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #10                         ; =0xa
	mov	w1, #1                          ; =0x1
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__11
__init_l_testAdd___closed__11:          ; @_init_l_testAdd___closed__11
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB55_1
LBB55_1:
	adrp	x8, _l_testAdd___closed__10@PAGE
	ldr	x8, [x8, _l_testAdd___closed__10@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testAdd___closed__8@PAGE
	ldr	x8, [x8, _l_testAdd___closed__8@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w0, #2                          ; =0x2
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #4                          ; =0x4
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__12
__init_l_testAdd___closed__12:          ; @_init_l_testAdd___closed__12
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB56_1
LBB56_1:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	mov	x2, #7                          ; =0x7
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__13
__init_l_testAdd___closed__13:          ; @_init_l_testAdd___closed__13
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB57_1
LBB57_1:
	adrp	x8, _l_testAdd___closed__12@PAGE
	ldr	x8, [x8, _l_testAdd___closed__12@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Lean_Name_mkStr1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__14
__init_l_testAdd___closed__14:          ; @_init_l_testAdd___closed__14
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB58_1
LBB58_1:
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	stur	x0, [x29, #-8]
	sturb	wzr, [x29, #-9]
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	mov	x8, x0
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	str	x8, [sp, #24]
	mov	w1, #2                          ; =0x2
	mov	w2, #1                          ; =0x1
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldurb	w2, [x29, #-9]
	mov	w1, #16                         ; =0x10
	bl	_lean_ctor_set_uint8
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ctor_set_uint8
_lean_ctor_set_uint8:                   ; @lean_ctor_set_uint8
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
	sturb	w2, [x29, #-13]
	ldur	w8, [x29, #-12]
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_num_objs
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, w0, uxtw #3
	cset	w8, lo
	tbz	w8, #0, LBB59_2
	b	LBB59_1
LBB59_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #690                        ; =0x2b2
	adrp	x2, l_.str.7@PAGE
	add	x2, x2, l_.str.7@PAGEOFF
	bl	_lean_notify_assert
	b	LBB59_2
LBB59_2:
	ldurb	w8, [x29, #-13]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_obj_cptr
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldur	w9, [x29, #-12]
                                        ; kill: def $x9 killed $w9
	add	x9, x0, x9
	strb	w8, [x9]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__15
__init_l_testAdd___closed__15:          ; @_init_l_testAdd___closed__15
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB60_1
LBB60_1:
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	stur	x0, [x29, #-8]
	sturb	wzr, [x29, #-9]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	ldr	w2, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #24]
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldurb	w2, [x29, #-9]
	mov	w1, #16                         ; =0x10
	bl	_lean_ctor_set_uint8
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__16
__init_l_testAdd___closed__16:          ; @_init_l_testAdd___closed__16
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB61_1
LBB61_1:
	adrp	x8, _l_testAdd___closed__14@PAGE
	ldr	x8, [x8, _l_testAdd___closed__14@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testAdd___closed__5@PAGE
	ldr	x8, [x8, _l_testAdd___closed__5@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__17
__init_l_testAdd___closed__17:          ; @_init_l_testAdd___closed__17
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB62_1
LBB62_1:
	adrp	x8, _l_testAdd___closed__15@PAGE
	ldr	x8, [x8, _l_testAdd___closed__15@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testAdd___closed__16@PAGE
	ldr	x8, [x8, _l_testAdd___closed__16@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__18
__init_l_testAdd___closed__18:          ; @_init_l_testAdd___closed__18
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB63_1
LBB63_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	adrp	x8, _l_testAdd___closed__11@PAGE
	ldr	x8, [x8, _l_testAdd___closed__11@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	stur	x0, [x29, #-24]
	adrp	x8, _l_testAdd___closed__17@PAGE
	ldr	x8, [x8, _l_testAdd___closed__17@PAGEOFF]
	str	x8, [sp, #32]
	adrp	x8, _l_testAdd___closed__13@PAGE
	ldr	x8, [x8, _l_testAdd___closed__13@PAGEOFF]
	str	x8, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-24]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__19
__init_l_testAdd___closed__19:          ; @_init_l_testAdd___closed__19
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB64_1
LBB64_1:
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	mov	x2, #16                         ; =0x10
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testAdd___closed__20
__init_l_testAdd___closed__20:          ; @_init_l_testAdd___closed__20
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB65_1
LBB65_1:
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	mov	x2, #0                          ; =0x0
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testReturn___closed__0
__init_l_testReturn___closed__0:        ; @_init_l_testReturn___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB66_1
LBB66_1:
	adrp	x8, _l_testAdd___closed__3@PAGE
	ldr	x8, [x8, _l_testAdd___closed__3@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #10                         ; =0xa
	mov	w1, #1                          ; =0x1
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testReturn___closed__1
__init_l_testReturn___closed__1:        ; @_init_l_testReturn___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB67_1
LBB67_1:
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	mov	x2, #6                          ; =0x6
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testReturn___closed__2
__init_l_testReturn___closed__2:        ; @_init_l_testReturn___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB68_1
LBB68_1:
	adrp	x8, _l_testReturn___closed__1@PAGE
	ldr	x8, [x8, _l_testReturn___closed__1@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Lean_Name_mkStr1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testReturn___closed__3
__init_l_testReturn___closed__3:        ; @_init_l_testReturn___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB69_1
LBB69_1:
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_mk_empty_array_with_capacity
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testReturn___closed__4
__init_l_testReturn___closed__4:        ; @_init_l_testReturn___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB70_1
LBB70_1:
	adrp	x8, _l_testAdd___closed__14@PAGE
	ldr	x8, [x8, _l_testAdd___closed__14@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testReturn___closed__3@PAGE
	ldr	x8, [x8, _l_testReturn___closed__3@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testReturn___closed__5
__init_l_testReturn___closed__5:        ; @_init_l_testReturn___closed__5
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB71_1
LBB71_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	adrp	x8, _l_testReturn___closed__0@PAGE
	ldr	x8, [x8, _l_testReturn___closed__0@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	stur	x0, [x29, #-24]
	adrp	x8, _l_testReturn___closed__4@PAGE
	ldr	x8, [x8, _l_testReturn___closed__4@PAGEOFF]
	str	x8, [sp, #32]
	adrp	x8, _l_testReturn___closed__2@PAGE
	ldr	x8, [x8, _l_testReturn___closed__2@PAGEOFF]
	str	x8, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-24]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testReturn___closed__6
__init_l_testReturn___closed__6:        ; @_init_l_testReturn___closed__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB72_1
LBB72_1:
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	mov	x2, #19                         ; =0x13
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCtor___closed__0
__init_l_testCtor___closed__0:          ; @_init_l_testCtor___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB73_1
LBB73_1:
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
	mov	x2, #4                          ; =0x4
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCtor___closed__1
__init_l_testCtor___closed__1:          ; @_init_l_testCtor___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB74_1
LBB74_1:
	adrp	x8, _l_testCtor___closed__0@PAGE
	ldr	x8, [x8, _l_testCtor___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Lean_Name_mkStr1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCtor___closed__2
__init_l_testCtor___closed__2:          ; @_init_l_testCtor___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB75_1
LBB75_1:
	mov	w0, #2                          ; =0x2
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	ldr	w2, [sp, #8]                    ; 4-byte Folded Reload
	stur	x0, [x29, #-16]
	adrp	x8, _l_testCtor___closed__1@PAGE
	ldr	x8, [x8, _l_testCtor___closed__1@PAGEOFF]
	str	x8, [sp, #24]
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCtor___closed__3
__init_l_testCtor___closed__3:          ; @_init_l_testCtor___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB76_1
LBB76_1:
	adrp	x8, _l_testAdd___closed__7@PAGE
	ldr	x8, [x8, _l_testAdd___closed__7@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testCtor___closed__2@PAGE
	ldr	x8, [x8, _l_testCtor___closed__2@PAGEOFF]
	str	x8, [sp, #16]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCtor___closed__4
__init_l_testCtor___closed__4:          ; @_init_l_testCtor___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB77_1
LBB77_1:
	adrp	x8, _l_testAdd___closed__10@PAGE
	ldr	x8, [x8, _l_testAdd___closed__10@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testCtor___closed__3@PAGE
	ldr	x8, [x8, _l_testCtor___closed__3@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w0, #2                          ; =0x2
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #4                          ; =0x4
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCtor___closed__5
__init_l_testCtor___closed__5:          ; @_init_l_testCtor___closed__5
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB78_1
LBB78_1:
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
	mov	x2, #6                          ; =0x6
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCtor___closed__6
__init_l_testCtor___closed__6:          ; @_init_l_testCtor___closed__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB79_1
LBB79_1:
	adrp	x8, _l_testCtor___closed__5@PAGE
	ldr	x8, [x8, _l_testCtor___closed__5@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Lean_Name_mkStr1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCtor___closed__7
__init_l_testCtor___closed__7:          ; @_init_l_testCtor___closed__7
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB80_1
LBB80_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	adrp	x8, _l_testCtor___closed__4@PAGE
	ldr	x8, [x8, _l_testCtor___closed__4@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	stur	x0, [x29, #-24]
	adrp	x8, _l_testAdd___closed__17@PAGE
	ldr	x8, [x8, _l_testAdd___closed__17@PAGEOFF]
	str	x8, [sp, #32]
	adrp	x8, _l_testCtor___closed__6@PAGE
	ldr	x8, [x8, _l_testCtor___closed__6@PAGEOFF]
	str	x8, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-24]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCtor___closed__8
__init_l_testCtor___closed__8:          ; @_init_l_testCtor___closed__8
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB81_1
LBB81_1:
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
	mov	x2, #24                         ; =0x18
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testProj___closed__0
__init_l_testProj___closed__0:          ; @_init_l_testProj___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB82_1
LBB82_1:
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	ldr	w2, [sp, #12]                   ; 4-byte Folded Reload
	stur	x0, [x29, #-8]
	mov	w0, #3                          ; =0x3
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testProj___closed__1
__init_l_testProj___closed__1:          ; @_init_l_testProj___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB83_1
LBB83_1:
	adrp	x8, _l_testAdd___closed__4@PAGE
	ldr	x8, [x8, _l_testAdd___closed__4@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #10                         ; =0xa
	mov	w1, #1                          ; =0x1
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testProj___closed__2
__init_l_testProj___closed__2:          ; @_init_l_testProj___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB84_1
LBB84_1:
	adrp	x8, _l_testProj___closed__1@PAGE
	ldr	x8, [x8, _l_testProj___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testProj___closed__0@PAGE
	ldr	x8, [x8, _l_testProj___closed__0@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #4                          ; =0x4
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-16]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testProj___closed__3
__init_l_testProj___closed__3:          ; @_init_l_testProj___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB85_1
LBB85_1:
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	mov	x2, #3                          ; =0x3
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testProj___closed__4
__init_l_testProj___closed__4:          ; @_init_l_testProj___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB86_1
LBB86_1:
	adrp	x8, _l_testProj___closed__3@PAGE
	ldr	x8, [x8, _l_testProj___closed__3@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Lean_Name_mkStr1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testProj___closed__5
__init_l_testProj___closed__5:          ; @_init_l_testProj___closed__5
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB87_1
LBB87_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	adrp	x8, _l_testProj___closed__2@PAGE
	ldr	x8, [x8, _l_testProj___closed__2@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	stur	x0, [x29, #-24]
	adrp	x8, _l_testReturn___closed__4@PAGE
	ldr	x8, [x8, _l_testReturn___closed__4@PAGEOFF]
	str	x8, [sp, #32]
	adrp	x8, _l_testProj___closed__4@PAGE
	ldr	x8, [x8, _l_testProj___closed__4@PAGEOFF]
	str	x8, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-24]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testProj___closed__6
__init_l_testProj___closed__6:          ; @_init_l_testProj___closed__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB88_1
LBB88_1:
	adrp	x0, l_.str.16@PAGE
	add	x0, x0, l_.str.16@PAGEOFF
	mov	x2, #23                         ; =0x17
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__0
__init_l_testCase___closed__0:          ; @_init_l_testCase___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB89_1
LBB89_1:
	adrp	x0, l_.str.17@PAGE
	add	x0, x0, l_.str.17@PAGEOFF
	mov	x2, #4                          ; =0x4
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__1
__init_l_testCase___closed__1:          ; @_init_l_testCase___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB90_1
LBB90_1:
	adrp	x0, l_.str.18@PAGE
	add	x0, x0, l_.str.18@PAGEOFF
	mov	x2, #4                          ; =0x4
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__2
__init_l_testCase___closed__2:          ; @_init_l_testCase___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB91_1
LBB91_1:
	adrp	x8, _l_testCase___closed__1@PAGE
	ldr	x8, [x8, _l_testCase___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testCase___closed__0@PAGE
	ldr	x8, [x8, _l_testCase___closed__0@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_Lean_Name_mkStr2
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__3
__init_l_testCase___closed__3:          ; @_init_l_testCase___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB92_1
LBB92_1:
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	ldr	w2, [sp, #4]                    ; 4-byte Folded Reload
	stur	x0, [x29, #-8]
	adrp	x8, _l_testCase___closed__2@PAGE
	ldr	x8, [x8, _l_testCase___closed__2@PAGEOFF]
	str	x8, [sp, #16]
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__4
__init_l_testCase___closed__4:          ; @_init_l_testCase___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB93_1
LBB93_1:
	adrp	x0, l_.str.19@PAGE
	add	x0, x0, l_.str.19@PAGEOFF
	mov	x2, #5                          ; =0x5
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__5
__init_l_testCase___closed__5:          ; @_init_l_testCase___closed__5
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB94_1
LBB94_1:
	adrp	x8, _l_testCase___closed__4@PAGE
	ldr	x8, [x8, _l_testCase___closed__4@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testCase___closed__0@PAGE
	ldr	x8, [x8, _l_testCase___closed__0@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_Lean_Name_mkStr2
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__6
__init_l_testCase___closed__6:          ; @_init_l_testCase___closed__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB95_1
LBB95_1:
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	ldr	w2, [sp, #8]                    ; 4-byte Folded Reload
	stur	x0, [x29, #-16]
	adrp	x8, _l_testCase___closed__5@PAGE
	ldr	x8, [x8, _l_testCase___closed__5@PAGEOFF]
	str	x8, [sp, #24]
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__7
__init_l_testCase___closed__7:          ; @_init_l_testCase___closed__7
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB96_1
LBB96_1:
	adrp	x8, _l_testCase___closed__0@PAGE
	ldr	x8, [x8, _l_testCase___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Lean_Name_mkStr1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__8
__init_l_testCase___closed__8:          ; @_init_l_testCase___closed__8
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB97_1
LBB97_1:
	adrp	x8, _l_testReturn___closed__0@PAGE
	ldr	x8, [x8, _l_testReturn___closed__0@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testCase___closed__3@PAGE
	ldr	x8, [x8, _l_testCase___closed__3@PAGEOFF]
	str	x8, [sp, #16]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__9
__init_l_testCase___closed__9:          ; @_init_l_testCase___closed__9
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB98_1
LBB98_1:
	adrp	x8, _l_testReturn___closed__0@PAGE
	ldr	x8, [x8, _l_testReturn___closed__0@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testCase___closed__6@PAGE
	ldr	x8, [x8, _l_testCase___closed__6@PAGEOFF]
	str	x8, [sp, #16]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__10
__init_l_testCase___closed__10:         ; @_init_l_testCase___closed__10
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB99_1
LBB99_1:
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_mk_empty_array_with_capacity
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__11
__init_l_testCase___closed__11:         ; @_init_l_testCase___closed__11
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB100_1
LBB100_1:
	adrp	x8, _l_testCase___closed__8@PAGE
	ldr	x8, [x8, _l_testCase___closed__8@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testCase___closed__10@PAGE
	ldr	x8, [x8, _l_testCase___closed__10@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__12
__init_l_testCase___closed__12:         ; @_init_l_testCase___closed__12
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB101_1
LBB101_1:
	adrp	x8, _l_testCase___closed__9@PAGE
	ldr	x8, [x8, _l_testCase___closed__9@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testCase___closed__11@PAGE
	ldr	x8, [x8, _l_testCase___closed__11@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__13
__init_l_testCase___closed__13:         ; @_init_l_testCase___closed__13
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB102_1
LBB102_1:
	adrp	x8, _l_testCase___closed__12@PAGE
	ldr	x8, [x8, _l_testCase___closed__12@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	x0, #12                         ; =0xc
	bl	_lean_box
	stur	x0, [x29, #-16]
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	ldr	w2, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #24]
	adrp	x8, _l_testCase___closed__7@PAGE
	ldr	x8, [x8, _l_testCase___closed__7@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #9                          ; =0x9
	mov	w1, #4                          ; =0x4
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-16]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__14
__init_l_testCase___closed__14:         ; @_init_l_testCase___closed__14
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB103_1
LBB103_1:
	adrp	x0, l_.str.20@PAGE
	add	x0, x0, l_.str.20@PAGEOFF
	mov	x2, #7                          ; =0x7
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__15
__init_l_testCase___closed__15:         ; @_init_l_testCase___closed__15
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB104_1
LBB104_1:
	adrp	x8, _l_testCase___closed__14@PAGE
	ldr	x8, [x8, _l_testCase___closed__14@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Lean_Name_mkStr1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__16
__init_l_testCase___closed__16:         ; @_init_l_testCase___closed__16
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB105_1
LBB105_1:
	mov	x0, #12                         ; =0xc
	bl	_lean_box
	stur	x0, [x29, #-8]
	sturb	wzr, [x29, #-9]
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	mov	x8, x0
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	str	x8, [sp, #24]
	mov	w1, #2                          ; =0x2
	mov	w2, #1                          ; =0x1
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldurb	w2, [x29, #-9]
	mov	w1, #16                         ; =0x10
	bl	_lean_ctor_set_uint8
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__17
__init_l_testCase___closed__17:         ; @_init_l_testCase___closed__17
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB106_1
LBB106_1:
	adrp	x8, _l_testCase___closed__16@PAGE
	ldr	x8, [x8, _l_testCase___closed__16@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testReturn___closed__3@PAGE
	ldr	x8, [x8, _l_testReturn___closed__3@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__18
__init_l_testCase___closed__18:         ; @_init_l_testCase___closed__18
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB107_1
LBB107_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	adrp	x8, _l_testCase___closed__13@PAGE
	ldr	x8, [x8, _l_testCase___closed__13@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #12                         ; =0xc
	bl	_lean_box
	stur	x0, [x29, #-24]
	adrp	x8, _l_testCase___closed__17@PAGE
	ldr	x8, [x8, _l_testCase___closed__17@PAGEOFF]
	str	x8, [sp, #32]
	adrp	x8, _l_testCase___closed__15@PAGE
	ldr	x8, [x8, _l_testCase___closed__15@PAGEOFF]
	str	x8, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-24]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testCase___closed__19
__init_l_testCase___closed__19:         ; @_init_l_testCase___closed__19
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB108_1
LBB108_1:
	adrp	x0, l_.str.21@PAGE
	add	x0, x0, l_.str.21@PAGEOFF
	mov	x2, #17                         ; =0x11
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testLit___closed__0
__init_l_testLit___closed__0:           ; @_init_l_testLit___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB109_1
LBB109_1:
	mov	w0, #42                         ; =0x2a
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #1                          ; =0x1
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testLit___closed__1
__init_l_testLit___closed__1:           ; @_init_l_testLit___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB110_1
LBB110_1:
	adrp	x8, _l_testLit___closed__0@PAGE
	ldr	x8, [x8, _l_testLit___closed__0@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #11                         ; =0xb
	mov	w1, #1                          ; =0x1
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testLit___closed__2
__init_l_testLit___closed__2:           ; @_init_l_testLit___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB111_1
LBB111_1:
	adrp	x8, _l_testReturn___closed__0@PAGE
	ldr	x8, [x8, _l_testReturn___closed__0@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testLit___closed__1@PAGE
	ldr	x8, [x8, _l_testLit___closed__1@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #5                          ; =0x5
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	ldr	w2, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	mov	x0, x2
	mov	w1, #4                          ; =0x4
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-16]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testLit___closed__3
__init_l_testLit___closed__3:           ; @_init_l_testLit___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB112_1
LBB112_1:
	adrp	x0, l_.str.22@PAGE
	add	x0, x0, l_.str.22@PAGEOFF
	mov	x2, #7                          ; =0x7
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testLit___closed__4
__init_l_testLit___closed__4:           ; @_init_l_testLit___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB113_1
LBB113_1:
	adrp	x8, _l_testLit___closed__3@PAGE
	ldr	x8, [x8, _l_testLit___closed__3@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Lean_Name_mkStr1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testLit___closed__5
__init_l_testLit___closed__5:           ; @_init_l_testLit___closed__5
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB114_1
LBB114_1:
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_mk_empty_array_with_capacity
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testLit___closed__6
__init_l_testLit___closed__6:           ; @_init_l_testLit___closed__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB115_1
LBB115_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	adrp	x8, _l_testLit___closed__2@PAGE
	ldr	x8, [x8, _l_testLit___closed__2@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #5                          ; =0x5
	bl	_lean_box
	stur	x0, [x29, #-24]
	adrp	x8, _l_testLit___closed__5@PAGE
	ldr	x8, [x8, _l_testLit___closed__5@PAGEOFF]
	str	x8, [sp, #32]
	adrp	x8, _l_testLit___closed__4@PAGE
	ldr	x8, [x8, _l_testLit___closed__4@PAGEOFF]
	str	x8, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-24]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testLit___closed__7
__init_l_testLit___closed__7:           ; @_init_l_testLit___closed__7
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB116_1
LBB116_1:
	adrp	x0, l_.str.23@PAGE
	add	x0, x0, l_.str.23@PAGEOFF
	mov	x2, #20                         ; =0x14
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testBox___closed__0
__init_l_testBox___closed__0:           ; @_init_l_testBox___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB117_1
LBB117_1:
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	mov	x0, #5                          ; =0x5
	bl	_lean_box
	ldr	w2, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	mov	w0, #9                          ; =0x9
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testBox___closed__1
__init_l_testBox___closed__1:           ; @_init_l_testBox___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB118_1
LBB118_1:
	adrp	x8, _l_testProj___closed__1@PAGE
	ldr	x8, [x8, _l_testProj___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testBox___closed__0@PAGE
	ldr	x8, [x8, _l_testBox___closed__0@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #4                          ; =0x4
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-16]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testBox___closed__2
__init_l_testBox___closed__2:           ; @_init_l_testBox___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB119_1
LBB119_1:
	adrp	x0, l_.str.24@PAGE
	add	x0, x0, l_.str.24@PAGEOFF
	mov	x2, #6                          ; =0x6
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testBox___closed__3
__init_l_testBox___closed__3:           ; @_init_l_testBox___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB120_1
LBB120_1:
	adrp	x8, _l_testBox___closed__2@PAGE
	ldr	x8, [x8, _l_testBox___closed__2@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Lean_Name_mkStr1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testBox___closed__4
__init_l_testBox___closed__4:           ; @_init_l_testBox___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB121_1
LBB121_1:
	mov	x0, #5                          ; =0x5
	bl	_lean_box
	stur	x0, [x29, #-8]
	sturb	wzr, [x29, #-9]
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_unsigned_to_nat
	mov	x8, x0
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	str	x8, [sp, #24]
	mov	w1, #2                          ; =0x2
	mov	w2, #1                          ; =0x1
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldurb	w2, [x29, #-9]
	mov	w1, #16                         ; =0x10
	bl	_lean_ctor_set_uint8
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testBox___closed__5
__init_l_testBox___closed__5:           ; @_init_l_testBox___closed__5
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB122_1
LBB122_1:
	adrp	x8, _l_testBox___closed__4@PAGE
	ldr	x8, [x8, _l_testBox___closed__4@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_testReturn___closed__3@PAGE
	ldr	x8, [x8, _l_testReturn___closed__3@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testBox___closed__6
__init_l_testBox___closed__6:           ; @_init_l_testBox___closed__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB123_1
LBB123_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	adrp	x8, _l_testBox___closed__1@PAGE
	ldr	x8, [x8, _l_testBox___closed__1@PAGEOFF]
	stur	x8, [x29, #-16]
	mov	x0, #7                          ; =0x7
	bl	_lean_box
	stur	x0, [x29, #-24]
	adrp	x8, _l_testBox___closed__5@PAGE
	ldr	x8, [x8, _l_testBox___closed__5@PAGEOFF]
	str	x8, [sp, #32]
	adrp	x8, _l_testBox___closed__3@PAGE
	ldr	x8, [x8, _l_testBox___closed__3@PAGEOFF]
	str	x8, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #5                          ; =0x5
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-24]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #3                          ; =0x3
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #4                          ; =0x4
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_testBox___closed__7
__init_l_testBox___closed__7:           ; @_init_l_testBox___closed__7
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB124_1
LBB124_1:
	adrp	x0, l_.str.25@PAGE
	add	x0, x0, l_.str.25@PAGEOFF
	mov	x2, #19                         ; =0x13
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
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB125_1
LBB125_1:
	adrp	x0, l_.str.26@PAGE
	add	x0, x0, l_.str.26@PAGEOFF
	mov	x2, #19                         ; =0x13
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__1
__init_l_main___closed__1:              ; @_init_l_main___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB126_1
LBB126_1:
	adrp	x0, l_.str.27@PAGE
	add	x0, x0, l_.str.27@PAGEOFF
	mov	x2, #20                         ; =0x14
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__2
__init_l_main___closed__2:              ; @_init_l_main___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB127_1
LBB127_1:
	adrp	x0, l_.str.28@PAGE
	add	x0, x0, l_.str.28@PAGEOFF
	mov	x2, #20                         ; =0x14
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_l_testAdd___closed__18,8,3 ; @l_testAdd___closed__18
.zerofill __DATA,__bss,_l_testAdd___closed__19,8,3 ; @l_testAdd___closed__19
.zerofill __DATA,__bss,_l_testAdd___closed__20,8,3 ; @l_testAdd___closed__20
.zerofill __DATA,__bss,_l_testReturn___closed__5,8,3 ; @l_testReturn___closed__5
.zerofill __DATA,__bss,_l_testReturn___closed__6,8,3 ; @l_testReturn___closed__6
.zerofill __DATA,__bss,_l_testCtor___closed__7,8,3 ; @l_testCtor___closed__7
.zerofill __DATA,__bss,_l_testCtor___closed__8,8,3 ; @l_testCtor___closed__8
.zerofill __DATA,__bss,_l_testProj___closed__5,8,3 ; @l_testProj___closed__5
.zerofill __DATA,__bss,_l_testProj___closed__6,8,3 ; @l_testProj___closed__6
.zerofill __DATA,__bss,_l_testCase___closed__18,8,3 ; @l_testCase___closed__18
.zerofill __DATA,__bss,_l_testCase___closed__19,8,3 ; @l_testCase___closed__19
.zerofill __DATA,__bss,_l_testLit___closed__6,8,3 ; @l_testLit___closed__6
.zerofill __DATA,__bss,_l_testLit___closed__7,8,3 ; @l_testLit___closed__7
.zerofill __DATA,__bss,_l_testBox___closed__6,8,3 ; @l_testBox___closed__6
.zerofill __DATA,__bss,_l_testBox___closed__7,8,3 ; @l_testBox___closed__7
.zerofill __DATA,__bss,_l_main___closed__0,8,3 ; @l_main___closed__0
.zerofill __DATA,__bss,_l_main___closed__1,8,3 ; @l_main___closed__1
.zerofill __DATA,__bss,_l_main___closed__2,8,3 ; @l_main___closed__2
.zerofill __DATA,__bss,__G_initialized,1,0 ; @_G_initialized
.zerofill __DATA,__bss,_l_testAdd___closed__0,8,3 ; @l_testAdd___closed__0
.zerofill __DATA,__bss,_l_testAdd___closed__1,8,3 ; @l_testAdd___closed__1
.zerofill __DATA,__bss,_l_testAdd___closed__2,8,3 ; @l_testAdd___closed__2
.zerofill __DATA,__bss,_l_testAdd___closed__3,8,3 ; @l_testAdd___closed__3
.zerofill __DATA,__bss,_l_testAdd___closed__4,8,3 ; @l_testAdd___closed__4
.zerofill __DATA,__bss,_l_testAdd___closed__5,8,3 ; @l_testAdd___closed__5
.zerofill __DATA,__bss,_l_testAdd___closed__6,8,3 ; @l_testAdd___closed__6
.zerofill __DATA,__bss,_l_testAdd___closed__7,8,3 ; @l_testAdd___closed__7
.zerofill __DATA,__bss,_l_testAdd___closed__8,8,3 ; @l_testAdd___closed__8
.zerofill __DATA,__bss,_l_testAdd___closed__9,8,3 ; @l_testAdd___closed__9
.zerofill __DATA,__bss,_l_testAdd___closed__10,8,3 ; @l_testAdd___closed__10
.zerofill __DATA,__bss,_l_testAdd___closed__11,8,3 ; @l_testAdd___closed__11
.zerofill __DATA,__bss,_l_testAdd___closed__12,8,3 ; @l_testAdd___closed__12
.zerofill __DATA,__bss,_l_testAdd___closed__13,8,3 ; @l_testAdd___closed__13
.zerofill __DATA,__bss,_l_testAdd___closed__14,8,3 ; @l_testAdd___closed__14
.zerofill __DATA,__bss,_l_testAdd___closed__15,8,3 ; @l_testAdd___closed__15
.zerofill __DATA,__bss,_l_testAdd___closed__16,8,3 ; @l_testAdd___closed__16
.zerofill __DATA,__bss,_l_testAdd___closed__17,8,3 ; @l_testAdd___closed__17
.zerofill __DATA,__bss,_l_testReturn___closed__0,8,3 ; @l_testReturn___closed__0
.zerofill __DATA,__bss,_l_testReturn___closed__1,8,3 ; @l_testReturn___closed__1
.zerofill __DATA,__bss,_l_testReturn___closed__2,8,3 ; @l_testReturn___closed__2
.zerofill __DATA,__bss,_l_testReturn___closed__3,8,3 ; @l_testReturn___closed__3
.zerofill __DATA,__bss,_l_testReturn___closed__4,8,3 ; @l_testReturn___closed__4
.zerofill __DATA,__bss,_l_testCtor___closed__0,8,3 ; @l_testCtor___closed__0
.zerofill __DATA,__bss,_l_testCtor___closed__1,8,3 ; @l_testCtor___closed__1
.zerofill __DATA,__bss,_l_testCtor___closed__2,8,3 ; @l_testCtor___closed__2
.zerofill __DATA,__bss,_l_testCtor___closed__3,8,3 ; @l_testCtor___closed__3
.zerofill __DATA,__bss,_l_testCtor___closed__4,8,3 ; @l_testCtor___closed__4
.zerofill __DATA,__bss,_l_testCtor___closed__5,8,3 ; @l_testCtor___closed__5
.zerofill __DATA,__bss,_l_testCtor___closed__6,8,3 ; @l_testCtor___closed__6
.zerofill __DATA,__bss,_l_testProj___closed__0,8,3 ; @l_testProj___closed__0
.zerofill __DATA,__bss,_l_testProj___closed__1,8,3 ; @l_testProj___closed__1
.zerofill __DATA,__bss,_l_testProj___closed__2,8,3 ; @l_testProj___closed__2
.zerofill __DATA,__bss,_l_testProj___closed__3,8,3 ; @l_testProj___closed__3
.zerofill __DATA,__bss,_l_testProj___closed__4,8,3 ; @l_testProj___closed__4
.zerofill __DATA,__bss,_l_testCase___closed__0,8,3 ; @l_testCase___closed__0
.zerofill __DATA,__bss,_l_testCase___closed__1,8,3 ; @l_testCase___closed__1
.zerofill __DATA,__bss,_l_testCase___closed__2,8,3 ; @l_testCase___closed__2
.zerofill __DATA,__bss,_l_testCase___closed__3,8,3 ; @l_testCase___closed__3
.zerofill __DATA,__bss,_l_testCase___closed__4,8,3 ; @l_testCase___closed__4
.zerofill __DATA,__bss,_l_testCase___closed__5,8,3 ; @l_testCase___closed__5
.zerofill __DATA,__bss,_l_testCase___closed__6,8,3 ; @l_testCase___closed__6
.zerofill __DATA,__bss,_l_testCase___closed__7,8,3 ; @l_testCase___closed__7
.zerofill __DATA,__bss,_l_testCase___closed__8,8,3 ; @l_testCase___closed__8
.zerofill __DATA,__bss,_l_testCase___closed__9,8,3 ; @l_testCase___closed__9
.zerofill __DATA,__bss,_l_testCase___closed__10,8,3 ; @l_testCase___closed__10
.zerofill __DATA,__bss,_l_testCase___closed__11,8,3 ; @l_testCase___closed__11
.zerofill __DATA,__bss,_l_testCase___closed__12,8,3 ; @l_testCase___closed__12
.zerofill __DATA,__bss,_l_testCase___closed__13,8,3 ; @l_testCase___closed__13
.zerofill __DATA,__bss,_l_testCase___closed__14,8,3 ; @l_testCase___closed__14
.zerofill __DATA,__bss,_l_testCase___closed__15,8,3 ; @l_testCase___closed__15
.zerofill __DATA,__bss,_l_testCase___closed__16,8,3 ; @l_testCase___closed__16
.zerofill __DATA,__bss,_l_testCase___closed__17,8,3 ; @l_testCase___closed__17
.zerofill __DATA,__bss,_l_testLit___closed__0,8,3 ; @l_testLit___closed__0
.zerofill __DATA,__bss,_l_testLit___closed__1,8,3 ; @l_testLit___closed__1
.zerofill __DATA,__bss,_l_testLit___closed__2,8,3 ; @l_testLit___closed__2
.zerofill __DATA,__bss,_l_testLit___closed__3,8,3 ; @l_testLit___closed__3
.zerofill __DATA,__bss,_l_testLit___closed__4,8,3 ; @l_testLit___closed__4
.zerofill __DATA,__bss,_l_testLit___closed__5,8,3 ; @l_testLit___closed__5
.zerofill __DATA,__bss,_l_testBox___closed__0,8,3 ; @l_testBox___closed__0
.zerofill __DATA,__bss,_l_testBox___closed__1,8,3 ; @l_testBox___closed__1
.zerofill __DATA,__bss,_l_testBox___closed__2,8,3 ; @l_testBox___closed__2
.zerofill __DATA,__bss,_l_testBox___closed__3,8,3 ; @l_testBox___closed__3
.zerofill __DATA,__bss,_l_testBox___closed__4,8,3 ; @l_testBox___closed__4
.zerofill __DATA,__bss,_l_testBox___closed__5,8,3 ; @l_testBox___closed__5
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/Users/pehle/dev/lean4/build/release/stage1/include/lean/lean.h"

l_.str.1:                               ; @.str.1
	.asciz	"i < lean_ctor_num_objs(o)"

l_.str.2:                               ; @.str.2
	.asciz	"lean_is_ctor(o)"

l_.str.3:                               ; @.str.3
	.asciz	"tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE"

l_.str.4:                               ; @.str.4
	.asciz	"Nat"

l_.str.5:                               ; @.str.5
	.asciz	"add"

l_.str.6:                               ; @.str.6
	.asciz	"testAdd"

l_.str.7:                               ; @.str.7
	.asciz	"offset >= lean_ctor_num_objs(o) * sizeof(void*)"

l_.str.8:                               ; @.str.8
	.asciz	"=== Test Add ==="

l_.str.9:                               ; @.str.9
	.space	1

l_.str.10:                              ; @.str.10
	.asciz	"testId"

l_.str.11:                              ; @.str.11
	.asciz	"=== Test Return ==="

l_.str.12:                              ; @.str.12
	.asciz	"Pair"

l_.str.13:                              ; @.str.13
	.asciz	"mkPair"

l_.str.14:                              ; @.str.14
	.asciz	"=== Test Constructor ==="

l_.str.15:                              ; @.str.15
	.asciz	"fst"

l_.str.16:                              ; @.str.16
	.asciz	"=== Test Projection ==="

l_.str.17:                              ; @.str.17
	.asciz	"Bool"

l_.str.18:                              ; @.str.18
	.asciz	"true"

l_.str.19:                              ; @.str.19
	.asciz	"false"

l_.str.20:                              ; @.str.20
	.asciz	"notBool"

l_.str.21:                              ; @.str.21
	.asciz	"=== Test Case ==="

l_.str.22:                              ; @.str.22
	.asciz	"const42"

l_.str.23:                              ; @.str.23
	.asciz	"=== Test Literal ==="

l_.str.24:                              ; @.str.24
	.asciz	"boxNat"

l_.str.25:                              ; @.str.25
	.asciz	"=== Test Boxing ==="

l_.str.26:                              ; @.str.26
	.asciz	"ARM64 Backend Tests"

l_.str.27:                              ; @.str.27
	.asciz	"===================="

l_.str.28:                              ; @.str.28
	.asciz	"All tests completed!"

.subsections_via_symbols
