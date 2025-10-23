	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 99, 0	sdk_version 15, 5
	.p2align	2                               ; -- Begin function lean_string_utf8_byte_size
_lean_string_utf8_byte_size:            ; @lean_string_utf8_byte_size
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
	bl	_lean_string_size
	subs	x0, x0, #1
	bl	_lean_box
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_string_utf8_at_end
_lean_string_utf8_at_end:               ; @lean_string_utf8_at_end
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
	ldr	x0, [sp, #16]
	bl	_lean_is_scalar
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	tbz	w0, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	ldr	x0, [sp, #16]
	bl	_lean_unbox
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_string_size
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, #1
	subs	x8, x0, x8
	cset	w8, hs
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB1_2
LBB1_2:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_nat_dec_eq
_lean_nat_dec_eq:                       ; @lean_nat_dec_eq
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	_lean_nat_eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_nat_sub
_lean_nat_sub:                          ; @lean_nat_sub
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	_lean_is_scalar
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	tbz	w0, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	ldr	x0, [sp, #24]
	bl	_lean_is_scalar
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB3_2
LBB3_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB3_6
	b	LBB3_3
LBB3_3:
	ldur	x0, [x29, #-16]
	bl	_lean_unbox
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	_lean_unbox
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.hs	LBB3_5
	b	LBB3_4
LBB3_4:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	b	LBB3_7
LBB3_5:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x0, x8, x9
	bl	_lean_box
	stur	x0, [x29, #-8]
	b	LBB3_7
LBB3_6:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_lean_nat_big_sub
	stur	x0, [x29, #-8]
	b	LBB3_7
LBB3_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_print___at___IO_println___at___showChars_spec__0_spec__0 ; -- Begin function l_IO_print___at___IO_println___at___showChars_spec__0_spec__0
	.globl	_l_IO_print___at___IO_println___at___showChars_spec__0_spec__0
	.p2align	2
_l_IO_print___at___IO_println___at___showChars_spec__0_spec__0: ; @l_IO_print___at___IO_println___at___showChars_spec__0_spec__0
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
	b	LBB4_1
LBB4_1:
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
	tbz	w8, #0, LBB5_2
	b	LBB5_1
LBB5_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #623                        ; =0x26f
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB5_2
LBB5_2:
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
	tbz	w8, #0, LBB7_2
	b	LBB7_1
LBB7_1:
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	b	LBB7_5
LBB7_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbz	w8, LBB7_4
	b	LBB7_3
LBB7_3:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref_cold
	b	LBB7_4
LBB7_4:
	b	LBB7_5
LBB7_5:
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
	tbnz	w0, #0, LBB9_2
	b	LBB9_1
LBB9_1:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	b	LBB9_2
LBB9_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___showChars_spec__0 ; -- Begin function l_IO_println___at___showChars_spec__0
	.globl	_l_IO_println___at___showChars_spec__0
	.p2align	2
_l_IO_println___at___showChars_spec__0: ; @l_IO_println___at___showChars_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	b	LBB10_1
LBB10_1:
	mov	w8, #10                         ; =0xa
	stur	w8, [x29, #-20]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-20]
	bl	_lean_string_push
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___showChars_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_showChars            ; -- Begin function l_showChars
	.globl	_l_showChars
	.p2align	2
_l_showChars:                           ; @l_showChars
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #208
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	b	LBB11_1
LBB11_1:                                ; =>This Inner Loop Header: Depth=1
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-48]
	bl	_lean_nat_dec_eq
	sturb	w0, [x29, #-49]
	ldurb	w8, [x29, #-49]
	subs	w8, w8, #1
	b.ne	LBB11_3
	b	LBB11_2
LBB11_2:
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldur	x0, [x29, #-16]
	bl	_lean_dec
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-64]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-72]
	ldur	x2, [x29, #-64]
	bl	_lean_ctor_set
	ldur	x0, [x29, #-72]
	ldur	x2, [x29, #-40]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-8]
	b	LBB11_8
LBB11_3:                                ;   in Loop: Header=BB11_1 Depth=1
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	_lean_string_utf8_at_end
	sturb	w0, [x29, #-73]
	ldurb	w8, [x29, #-73]
	cbnz	w8, LBB11_7
	b	LBB11_4
LBB11_4:                                ;   in Loop: Header=BB11_1 Depth=1
	adrp	x8, _l_showChars___closed__0@PAGE
	ldr	x8, [x8, _l_showChars___closed__0@PAGEOFF]
	stur	x8, [x29, #-88]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	_lean_string_utf8_get
	stur	w0, [x29, #-92]
	adrp	x8, _l_showChars___closed__1@PAGE
	ldr	x8, [x8, _l_showChars___closed__1@PAGEOFF]
	str	x8, [sp, #88]
	ldr	x0, [sp, #88]
	ldur	w1, [x29, #-92]
	bl	_lean_string_push
	str	x0, [sp, #80]
	ldur	x0, [x29, #-88]
	ldr	x1, [sp, #80]
	bl	_lean_string_append
	str	x0, [sp, #72]
	ldr	x0, [sp, #80]
	bl	_lean_dec_ref
	ldr	x0, [sp, #72]
	ldur	x1, [x29, #-40]
	bl	_l_IO_println___at___showChars_spec__0
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB11_6
	b	LBB11_5
LBB11_5:                                ;   in Loop: Header=BB11_1 Depth=1
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #48]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #48]
	bl	_lean_nat_sub
	str	x0, [sp, #40]
	ldur	x0, [x29, #-16]
	bl	_lean_dec
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	_lean_string_utf8_next
	str	x0, [sp, #32]
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-32]
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-40]
	b	LBB11_1
LBB11_6:
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldur	x0, [x29, #-16]
	bl	_lean_dec
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB11_8
LBB11_7:
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldur	x0, [x29, #-16]
	bl	_lean_dec
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-40]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB11_8
LBB11_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #208
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
	b.hi	LBB14_3
	b	LBB14_1
LBB14_1:
	ldur	w9, [x29, #-8]
	mov	w8, #0                          ; =0x0
	subs	w9, w9, #256
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b.hs	LBB14_3
	b	LBB14_2
LBB14_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1024
	cset	w8, lo
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB14_3
LBB14_3:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbnz	w8, #0, LBB14_5
	b	LBB14_4
LBB14_4:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #616                        ; =0x268
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB14_5
LBB14_5:
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
	tbz	w8, #0, LBB15_2
	b	LBB15_1
LBB15_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #633                        ; =0x279
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB15_2
LBB15_2:
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
	tbz	w0, #0, LBB16_2
	b	LBB16_1
LBB16_1:
	ldr	x0, [sp]
	bl	_lean_unbox
	mov	x8, x0
	stur	w8, [x29, #-4]
	b	LBB16_3
LBB16_2:
	ldr	x0, [sp]
	bl	_lean_ptr_tag
	stur	w0, [x29, #-4]
	b	LBB16_3
LBB16_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_showChars___boxed    ; -- Begin function l_showChars___boxed
	.globl	_l_showChars___boxed
	.p2align	2
_l_showChars___boxed:                   ; @l_showChars___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	b	LBB17_1
LBB17_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	_l_showChars
	str	x0, [sp, #8]
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___main_spec__0 ; -- Begin function l_IO_println___at___main_spec__0
	.globl	_l_IO_println___at___main_spec__0
	.p2align	2
_l_IO_println___at___main_spec__0:      ; @l_IO_println___at___main_spec__0
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
	b	LBB18_1
LBB18_1:
	mov	w0, #120                        ; =0x78
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-24]
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #32]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #32]
	ldr	x3, [sp, #32]
	bl	_lean_format_pretty
	str	x0, [sp, #24]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #20]
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	_lean_string_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___showChars_spec__0_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___main_spec__1 ; -- Begin function l_IO_println___at___main_spec__1
	.globl	_l_IO_println___at___main_spec__1
	.p2align	2
_l_IO_println___at___main_spec__1:      ; @l_IO_println___at___main_spec__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-1]
	stur	x1, [x29, #-16]
	b	LBB19_1
LBB19_1:
	ldurb	w8, [x29, #-1]
	cbnz	w8, LBB19_3
	b	LBB19_2
LBB19_2:
	adrp	x8, _l_IO_println___at___main_spec__1___closed__0@PAGE
	ldr	x8, [x8, _l_IO_println___at___main_spec__1___closed__0@PAGEOFF]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-24]
	b	LBB19_4
LBB19_3:
	adrp	x8, _l_IO_println___at___main_spec__1___closed__1@PAGE
	ldr	x8, [x8, _l_IO_println___at___main_spec__1___closed__1@PAGEOFF]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB19_4
LBB19_4:
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #20]
	ldur	x0, [x29, #-24]
	ldr	w1, [sp, #20]
	bl	_lean_string_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___showChars_spec__0_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___main_spec__2 ; -- Begin function l_IO_println___at___main_spec__2
	.globl	_l_IO_println___at___main_spec__2
	.p2align	2
_l_IO_println___at___main_spec__2:      ; @l_IO_println___at___main_spec__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	b	LBB20_1
LBB20_1:
	ldur	x0, [x29, #-8]
	bl	_l_Nat_reprFast
	str	x0, [sp, #24]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #20]
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	_lean_string_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___showChars_spec__0_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__lean_main             ; -- Begin function _lean_main
	.globl	__lean_main
	.p2align	2
__lean_main:                            ; @_lean_main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #1152
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	b	LBB21_1
LBB21_1:
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	stur	x8, [x29, #-40]
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-48]
	adrp	x8, _l_main___closed__32@PAGE
	ldr	x8, [x8, _l_main___closed__32@PAGEOFF]
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	ldur	x1, [x29, #-32]
	bl	_l_IO_println___at___showChars_spec__0
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-72]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_3
	b	LBB21_2
LBB21_2:
	ldur	x0, [x29, #-72]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-80]
	ldur	x0, [x29, #-80]
	bl	_lean_inc
	ldur	x0, [x29, #-72]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__33@PAGE
	ldr	x8, [x8, _l_main___closed__33@PAGEOFF]
	stur	x8, [x29, #-88]
	ldur	x0, [x29, #-88]
	ldur	x1, [x29, #-80]
	bl	_l_IO_println___at___showChars_spec__0
	stur	x0, [x29, #-96]
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-56]
	b	LBB21_4
LBB21_3:
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-56]
	b	LBB21_4
LBB21_4:
	ldur	x0, [x29, #-56]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_68
	b	LBB21_5
LBB21_5:
	ldur	x0, [x29, #-56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-104]
	bl	_lean_inc
	ldur	x0, [x29, #-56]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__5@PAGE
	ldr	x8, [x8, _l_main___closed__5@PAGEOFF]
	stur	x8, [x29, #-112]
	ldur	x0, [x29, #-112]
	ldur	x1, [x29, #-104]
	bl	_l_IO_println___at___showChars_spec__0
	stur	x0, [x29, #-120]
	ldur	x0, [x29, #-120]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_65
	b	LBB21_6
LBB21_6:
	ldur	x0, [x29, #-120]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-128]
	ldur	x0, [x29, #-128]
	bl	_lean_inc
	ldur	x0, [x29, #-120]
	bl	_lean_dec_ref
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-136]
	adrp	x8, _l_main___closed__7@PAGE
	ldr	x8, [x8, _l_main___closed__7@PAGEOFF]
	stur	x8, [x29, #-144]
	ldur	x0, [x29, #-144]
	ldur	x1, [x29, #-128]
	bl	_l_IO_println___at___showChars_spec__0
	stur	x0, [x29, #-152]
	ldur	x0, [x29, #-152]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_62
	b	LBB21_7
LBB21_7:
	ldur	x0, [x29, #-152]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-160]
	ldur	x0, [x29, #-160]
	bl	_lean_inc
	ldur	x0, [x29, #-152]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__8@PAGE
	ldr	x8, [x8, _l_main___closed__8@PAGEOFF]
	stur	x8, [x29, #-168]
	ldur	x0, [x29, #-168]
	ldur	x1, [x29, #-160]
	bl	_l_IO_println___at___showChars_spec__0
	stur	x0, [x29, #-176]
	ldur	x0, [x29, #-176]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_59
	b	LBB21_8
LBB21_8:
	ldur	x0, [x29, #-176]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-184]
	ldur	x0, [x29, #-184]
	bl	_lean_inc
	ldur	x0, [x29, #-176]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__9@PAGE
	ldr	x8, [x8, _l_main___closed__9@PAGEOFF]
	stur	x8, [x29, #-192]
	ldur	x0, [x29, #-192]
	ldur	x1, [x29, #-184]
	bl	_l_IO_println___at___showChars_spec__0
	stur	x0, [x29, #-200]
	ldur	x0, [x29, #-200]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_56
	b	LBB21_9
LBB21_9:
	ldur	x0, [x29, #-200]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-208]
	ldur	x0, [x29, #-208]
	bl	_lean_inc
	ldur	x0, [x29, #-200]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__10@PAGE
	ldr	x8, [x8, _l_main___closed__10@PAGEOFF]
	stur	x8, [x29, #-216]
	ldur	x0, [x29, #-216]
	ldur	x1, [x29, #-208]
	bl	_l_IO_println___at___showChars_spec__0
	stur	x0, [x29, #-224]
	ldur	x0, [x29, #-224]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_53
	b	LBB21_10
LBB21_10:
	ldur	x0, [x29, #-224]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-232]
	ldur	x0, [x29, #-232]
	bl	_lean_inc
	ldur	x0, [x29, #-224]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__17@PAGE
	ldr	x8, [x8, _l_main___closed__17@PAGEOFF]
	stur	x8, [x29, #-240]
	ldur	x0, [x29, #-240]
	ldur	x1, [x29, #-232]
	bl	_l_IO_println___at___main_spec__0
	stur	x0, [x29, #-248]
	ldur	x0, [x29, #-248]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_50
	b	LBB21_11
LBB21_11:
	ldur	x0, [x29, #-248]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-256]
	ldur	x0, [x29, #-256]
	bl	_lean_inc
	ldur	x0, [x29, #-248]
	bl	_lean_dec_ref
	mov	w0, #15                         ; =0xf
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #904]
	ldr	x0, [sp, #904]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	ldur	x3, [x29, #-256]
	bl	_l_showChars
	str	x0, [sp, #896]
	ldr	x0, [sp, #896]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_47
	b	LBB21_12
LBB21_12:
	ldr	x0, [sp, #896]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #888]
	ldr	x0, [sp, #888]
	bl	_lean_inc
	ldr	x0, [sp, #896]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__20@PAGE
	ldrb	w8, [x8, _l_main___closed__20@PAGEOFF]
	strb	w8, [sp, #887]
	ldrb	w0, [sp, #887]
	ldr	x1, [sp, #888]
	bl	_l_IO_println___at___main_spec__1
	str	x0, [sp, #872]
	ldr	x0, [sp, #872]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_44
	b	LBB21_13
LBB21_13:
	ldr	x0, [sp, #872]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #864]
	ldr	x0, [sp, #864]
	bl	_lean_inc
	ldr	x0, [sp, #872]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__21@PAGE
	ldrb	w8, [x8, _l_main___closed__21@PAGEOFF]
	strb	w8, [sp, #863]
	ldrb	w0, [sp, #863]
	ldr	x1, [sp, #864]
	bl	_l_IO_println___at___main_spec__1
	str	x0, [sp, #848]
	ldr	x0, [sp, #848]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_41
	b	LBB21_14
LBB21_14:
	ldr	x0, [sp, #848]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #840]
	ldr	x0, [sp, #840]
	bl	_lean_inc
	ldr	x0, [sp, #848]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__22@PAGE
	ldrb	w8, [x8, _l_main___closed__22@PAGEOFF]
	strb	w8, [sp, #839]
	ldrb	w0, [sp, #839]
	ldr	x1, [sp, #840]
	bl	_l_IO_println___at___main_spec__1
	str	x0, [sp, #824]
	ldr	x0, [sp, #824]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_38
	b	LBB21_15
LBB21_15:
	ldr	x0, [sp, #824]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #816]
	ldr	x0, [sp, #816]
	bl	_lean_inc
	ldr	x0, [sp, #824]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__23@PAGE
	ldrb	w8, [x8, _l_main___closed__23@PAGEOFF]
	strb	w8, [sp, #815]
	ldrb	w0, [sp, #815]
	ldr	x1, [sp, #816]
	bl	_l_IO_println___at___main_spec__1
	str	x0, [sp, #800]
	ldr	x0, [sp, #800]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_35
	b	LBB21_16
LBB21_16:
	ldr	x0, [sp, #800]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #792]
	ldr	x0, [sp, #792]
	bl	_lean_inc
	ldr	x0, [sp, #800]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__26@PAGE
	ldrb	w8, [x8, _l_main___closed__26@PAGEOFF]
	strb	w8, [sp, #791]
	ldrb	w0, [sp, #791]
	ldr	x1, [sp, #792]
	bl	_l_IO_println___at___main_spec__1
	str	x0, [sp, #776]
	ldr	x0, [sp, #776]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_32
	b	LBB21_17
LBB21_17:
	ldr	x0, [sp, #776]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #768]
	ldr	x0, [sp, #768]
	bl	_lean_inc
	ldr	x0, [sp, #776]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__28@PAGE
	ldrb	w8, [x8, _l_main___closed__28@PAGEOFF]
	strb	w8, [sp, #767]
	ldrb	w0, [sp, #767]
	ldr	x1, [sp, #768]
	bl	_l_IO_println___at___main_spec__1
	str	x0, [sp, #752]
	ldr	x0, [sp, #752]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_29
	b	LBB21_18
LBB21_18:
	ldr	x0, [sp, #752]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #744]
	ldr	x0, [sp, #744]
	bl	_lean_inc
	ldr	x0, [sp, #752]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__31@PAGE
	ldrb	w8, [x8, _l_main___closed__31@PAGEOFF]
	strb	w8, [sp, #743]
	ldrb	w0, [sp, #743]
	ldr	x1, [sp, #744]
	bl	_l_IO_println___at___main_spec__1
	str	x0, [sp, #728]
	ldr	x0, [sp, #728]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_26
	b	LBB21_19
LBB21_19:
	ldr	x0, [sp, #728]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #720]
	ldr	x0, [sp, #720]
	bl	_lean_inc
	ldr	x0, [sp, #728]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-136]
	ldr	x1, [sp, #720]
	bl	_l_IO_println___at___main_spec__2
	str	x0, [sp, #712]
	ldr	x0, [sp, #712]
	bl	_lean_obj_tag
	cbnz	w0, LBB21_23
	b	LBB21_20
LBB21_20:
	ldr	x0, [sp, #712]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #711]
	ldrb	w8, [sp, #711]
	cbnz	w8, LBB21_22
	b	LBB21_21
LBB21_21:
	ldr	x0, [sp, #712]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #148]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #696]
	ldr	x0, [sp, #696]
	bl	_lean_dec
	ldr	w1, [sp, #148]                  ; 4-byte Folded Reload
	adrp	x8, _l_main___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___boxed__const__1@PAGEOFF]
	str	x8, [sp, #688]
	ldr	x0, [sp, #712]
	ldr	x2, [sp, #688]
	bl	_lean_ctor_set
	ldr	x8, [sp, #712]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_22:
	ldr	x0, [sp, #712]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #144]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #680]
	ldr	x0, [sp, #680]
	bl	_lean_inc
	ldr	x0, [sp, #712]
	bl	_lean_dec
	adrp	x8, _l_main___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___boxed__const__1@PAGEOFF]
	str	x8, [sp, #672]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #140]                  ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #140]                  ; 4-byte Folded Reload
	str	x0, [sp, #664]
	ldr	x0, [sp, #664]
	ldr	x2, [sp, #672]
	bl	_lean_ctor_set
	ldr	w1, [sp, #144]                  ; 4-byte Folded Reload
	ldr	x0, [sp, #664]
	ldr	x2, [sp, #680]
	bl	_lean_ctor_set
	ldr	x8, [sp, #664]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_23:
	ldr	x0, [sp, #712]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #663]
	ldrb	w8, [sp, #663]
	cbnz	w8, LBB21_25
	b	LBB21_24
LBB21_24:
	ldr	x8, [sp, #712]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_25:
	ldr	x0, [sp, #712]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #132]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #648]
	ldr	x0, [sp, #712]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #136]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #640]
	ldr	x0, [sp, #640]
	bl	_lean_inc
	ldr	x0, [sp, #648]
	bl	_lean_inc
	ldr	x0, [sp, #712]
	bl	_lean_dec
	ldr	w2, [sp, #132]                  ; 4-byte Folded Reload
	ldr	w0, [sp, #136]                  ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #132]                  ; 4-byte Folded Reload
	str	x0, [sp, #632]
	ldr	x0, [sp, #632]
	ldr	x2, [sp, #648]
	bl	_lean_ctor_set
	ldr	w1, [sp, #136]                  ; 4-byte Folded Reload
	ldr	x0, [sp, #632]
	ldr	x2, [sp, #640]
	bl	_lean_ctor_set
	ldr	x8, [sp, #632]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_26:
	ldr	x0, [sp, #728]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #631]
	ldrb	w8, [sp, #631]
	cbnz	w8, LBB21_28
	b	LBB21_27
LBB21_27:
	ldr	x8, [sp, #728]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_28:
	ldr	x0, [sp, #728]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #124]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #616]
	ldr	x0, [sp, #728]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #128]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #608]
	ldr	x0, [sp, #608]
	bl	_lean_inc
	ldr	x0, [sp, #616]
	bl	_lean_inc
	ldr	x0, [sp, #728]
	bl	_lean_dec
	ldr	w2, [sp, #124]                  ; 4-byte Folded Reload
	ldr	w0, [sp, #128]                  ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #124]                  ; 4-byte Folded Reload
	str	x0, [sp, #600]
	ldr	x0, [sp, #600]
	ldr	x2, [sp, #616]
	bl	_lean_ctor_set
	ldr	w1, [sp, #128]                  ; 4-byte Folded Reload
	ldr	x0, [sp, #600]
	ldr	x2, [sp, #608]
	bl	_lean_ctor_set
	ldr	x8, [sp, #600]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_29:
	ldr	x0, [sp, #752]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #599]
	ldrb	w8, [sp, #599]
	cbnz	w8, LBB21_31
	b	LBB21_30
LBB21_30:
	ldr	x8, [sp, #752]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_31:
	ldr	x0, [sp, #752]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #116]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #584]
	ldr	x0, [sp, #752]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #120]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #576]
	ldr	x0, [sp, #576]
	bl	_lean_inc
	ldr	x0, [sp, #584]
	bl	_lean_inc
	ldr	x0, [sp, #752]
	bl	_lean_dec
	ldr	w2, [sp, #116]                  ; 4-byte Folded Reload
	ldr	w0, [sp, #120]                  ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #116]                  ; 4-byte Folded Reload
	str	x0, [sp, #568]
	ldr	x0, [sp, #568]
	ldr	x2, [sp, #584]
	bl	_lean_ctor_set
	ldr	w1, [sp, #120]                  ; 4-byte Folded Reload
	ldr	x0, [sp, #568]
	ldr	x2, [sp, #576]
	bl	_lean_ctor_set
	ldr	x8, [sp, #568]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_32:
	ldr	x0, [sp, #776]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #567]
	ldrb	w8, [sp, #567]
	cbnz	w8, LBB21_34
	b	LBB21_33
LBB21_33:
	ldr	x8, [sp, #776]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_34:
	ldr	x0, [sp, #776]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #108]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #552]
	ldr	x0, [sp, #776]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #112]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #544]
	ldr	x0, [sp, #544]
	bl	_lean_inc
	ldr	x0, [sp, #552]
	bl	_lean_inc
	ldr	x0, [sp, #776]
	bl	_lean_dec
	ldr	w2, [sp, #108]                  ; 4-byte Folded Reload
	ldr	w0, [sp, #112]                  ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #108]                  ; 4-byte Folded Reload
	str	x0, [sp, #536]
	ldr	x0, [sp, #536]
	ldr	x2, [sp, #552]
	bl	_lean_ctor_set
	ldr	w1, [sp, #112]                  ; 4-byte Folded Reload
	ldr	x0, [sp, #536]
	ldr	x2, [sp, #544]
	bl	_lean_ctor_set
	ldr	x8, [sp, #536]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_35:
	ldr	x0, [sp, #800]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #535]
	ldrb	w8, [sp, #535]
	cbnz	w8, LBB21_37
	b	LBB21_36
LBB21_36:
	ldr	x8, [sp, #800]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_37:
	ldr	x0, [sp, #800]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #100]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #520]
	ldr	x0, [sp, #800]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #104]                  ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #512]
	ldr	x0, [sp, #512]
	bl	_lean_inc
	ldr	x0, [sp, #520]
	bl	_lean_inc
	ldr	x0, [sp, #800]
	bl	_lean_dec
	ldr	w2, [sp, #100]                  ; 4-byte Folded Reload
	ldr	w0, [sp, #104]                  ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #100]                  ; 4-byte Folded Reload
	str	x0, [sp, #504]
	ldr	x0, [sp, #504]
	ldr	x2, [sp, #520]
	bl	_lean_ctor_set
	ldr	w1, [sp, #104]                  ; 4-byte Folded Reload
	ldr	x0, [sp, #504]
	ldr	x2, [sp, #512]
	bl	_lean_ctor_set
	ldr	x8, [sp, #504]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_38:
	ldr	x0, [sp, #824]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #503]
	ldrb	w8, [sp, #503]
	cbnz	w8, LBB21_40
	b	LBB21_39
LBB21_39:
	ldr	x8, [sp, #824]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_40:
	ldr	x0, [sp, #824]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #92]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #488]
	ldr	x0, [sp, #824]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #96]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #480]
	ldr	x0, [sp, #480]
	bl	_lean_inc
	ldr	x0, [sp, #488]
	bl	_lean_inc
	ldr	x0, [sp, #824]
	bl	_lean_dec
	ldr	w2, [sp, #92]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #96]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #92]                   ; 4-byte Folded Reload
	str	x0, [sp, #472]
	ldr	x0, [sp, #472]
	ldr	x2, [sp, #488]
	bl	_lean_ctor_set
	ldr	w1, [sp, #96]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #472]
	ldr	x2, [sp, #480]
	bl	_lean_ctor_set
	ldr	x8, [sp, #472]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_41:
	ldr	x0, [sp, #848]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #471]
	ldrb	w8, [sp, #471]
	cbnz	w8, LBB21_43
	b	LBB21_42
LBB21_42:
	ldr	x8, [sp, #848]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_43:
	ldr	x0, [sp, #848]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #84]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #456]
	ldr	x0, [sp, #848]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #88]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #448]
	ldr	x0, [sp, #448]
	bl	_lean_inc
	ldr	x0, [sp, #456]
	bl	_lean_inc
	ldr	x0, [sp, #848]
	bl	_lean_dec
	ldr	w2, [sp, #84]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #88]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #84]                   ; 4-byte Folded Reload
	str	x0, [sp, #440]
	ldr	x0, [sp, #440]
	ldr	x2, [sp, #456]
	bl	_lean_ctor_set
	ldr	w1, [sp, #88]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #440]
	ldr	x2, [sp, #448]
	bl	_lean_ctor_set
	ldr	x8, [sp, #440]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_44:
	ldr	x0, [sp, #872]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #439]
	ldrb	w8, [sp, #439]
	cbnz	w8, LBB21_46
	b	LBB21_45
LBB21_45:
	ldr	x8, [sp, #872]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_46:
	ldr	x0, [sp, #872]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #76]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #424]
	ldr	x0, [sp, #872]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #80]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #416]
	ldr	x0, [sp, #416]
	bl	_lean_inc
	ldr	x0, [sp, #424]
	bl	_lean_inc
	ldr	x0, [sp, #872]
	bl	_lean_dec
	ldr	w2, [sp, #76]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #80]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #76]                   ; 4-byte Folded Reload
	str	x0, [sp, #408]
	ldr	x0, [sp, #408]
	ldr	x2, [sp, #424]
	bl	_lean_ctor_set
	ldr	w1, [sp, #80]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #408]
	ldr	x2, [sp, #416]
	bl	_lean_ctor_set
	ldr	x8, [sp, #408]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_47:
	ldr	x0, [sp, #896]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #407]
	ldrb	w8, [sp, #407]
	cbnz	w8, LBB21_49
	b	LBB21_48
LBB21_48:
	ldr	x8, [sp, #896]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_49:
	ldr	x0, [sp, #896]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #68]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #392]
	ldr	x0, [sp, #896]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #72]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #384]
	ldr	x0, [sp, #384]
	bl	_lean_inc
	ldr	x0, [sp, #392]
	bl	_lean_inc
	ldr	x0, [sp, #896]
	bl	_lean_dec
	ldr	w2, [sp, #68]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #72]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #68]                   ; 4-byte Folded Reload
	str	x0, [sp, #376]
	ldr	x0, [sp, #376]
	ldr	x2, [sp, #392]
	bl	_lean_ctor_set
	ldr	w1, [sp, #72]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #376]
	ldr	x2, [sp, #384]
	bl	_lean_ctor_set
	ldr	x8, [sp, #376]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_50:
	ldur	x0, [x29, #-248]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #375]
	ldrb	w8, [sp, #375]
	cbnz	w8, LBB21_52
	b	LBB21_51
LBB21_51:
	ldur	x8, [x29, #-248]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_52:
	ldur	x0, [x29, #-248]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #60]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #360]
	ldur	x0, [x29, #-248]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #64]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #352]
	ldr	x0, [sp, #352]
	bl	_lean_inc
	ldr	x0, [sp, #360]
	bl	_lean_inc
	ldur	x0, [x29, #-248]
	bl	_lean_dec
	ldr	w2, [sp, #60]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #64]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #60]                   ; 4-byte Folded Reload
	str	x0, [sp, #344]
	ldr	x0, [sp, #344]
	ldr	x2, [sp, #360]
	bl	_lean_ctor_set
	ldr	w1, [sp, #64]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #344]
	ldr	x2, [sp, #352]
	bl	_lean_ctor_set
	ldr	x8, [sp, #344]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_53:
	ldur	x0, [x29, #-224]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #343]
	ldrb	w8, [sp, #343]
	cbnz	w8, LBB21_55
	b	LBB21_54
LBB21_54:
	ldur	x8, [x29, #-224]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_55:
	ldur	x0, [x29, #-224]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #52]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #328]
	ldur	x0, [x29, #-224]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #56]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #320]
	ldr	x0, [sp, #320]
	bl	_lean_inc
	ldr	x0, [sp, #328]
	bl	_lean_inc
	ldur	x0, [x29, #-224]
	bl	_lean_dec
	ldr	w2, [sp, #52]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #56]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #52]                   ; 4-byte Folded Reload
	str	x0, [sp, #312]
	ldr	x0, [sp, #312]
	ldr	x2, [sp, #328]
	bl	_lean_ctor_set
	ldr	w1, [sp, #56]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #312]
	ldr	x2, [sp, #320]
	bl	_lean_ctor_set
	ldr	x8, [sp, #312]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_56:
	ldur	x0, [x29, #-200]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #311]
	ldrb	w8, [sp, #311]
	cbnz	w8, LBB21_58
	b	LBB21_57
LBB21_57:
	ldur	x8, [x29, #-200]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_58:
	ldur	x0, [x29, #-200]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #44]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #296]
	ldur	x0, [x29, #-200]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #48]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #288]
	ldr	x0, [sp, #288]
	bl	_lean_inc
	ldr	x0, [sp, #296]
	bl	_lean_inc
	ldur	x0, [x29, #-200]
	bl	_lean_dec
	ldr	w2, [sp, #44]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #48]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #44]                   ; 4-byte Folded Reload
	str	x0, [sp, #280]
	ldr	x0, [sp, #280]
	ldr	x2, [sp, #296]
	bl	_lean_ctor_set
	ldr	w1, [sp, #48]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #280]
	ldr	x2, [sp, #288]
	bl	_lean_ctor_set
	ldr	x8, [sp, #280]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_59:
	ldur	x0, [x29, #-176]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #279]
	ldrb	w8, [sp, #279]
	cbnz	w8, LBB21_61
	b	LBB21_60
LBB21_60:
	ldur	x8, [x29, #-176]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_61:
	ldur	x0, [x29, #-176]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #36]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #264]
	ldur	x0, [x29, #-176]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #40]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #256]
	ldr	x0, [sp, #256]
	bl	_lean_inc
	ldr	x0, [sp, #264]
	bl	_lean_inc
	ldur	x0, [x29, #-176]
	bl	_lean_dec
	ldr	w2, [sp, #36]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #40]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #36]                   ; 4-byte Folded Reload
	str	x0, [sp, #248]
	ldr	x0, [sp, #248]
	ldr	x2, [sp, #264]
	bl	_lean_ctor_set
	ldr	w1, [sp, #40]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #248]
	ldr	x2, [sp, #256]
	bl	_lean_ctor_set
	ldr	x8, [sp, #248]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_62:
	ldur	x0, [x29, #-152]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #247]
	ldrb	w8, [sp, #247]
	cbnz	w8, LBB21_64
	b	LBB21_63
LBB21_63:
	ldur	x8, [x29, #-152]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_64:
	ldur	x0, [x29, #-152]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #28]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #232]
	ldur	x0, [x29, #-152]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #32]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #224]
	ldr	x0, [sp, #224]
	bl	_lean_inc
	ldr	x0, [sp, #232]
	bl	_lean_inc
	ldur	x0, [x29, #-152]
	bl	_lean_dec
	ldr	w2, [sp, #28]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #32]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	str	x0, [sp, #216]
	ldr	x0, [sp, #216]
	ldr	x2, [sp, #232]
	bl	_lean_ctor_set
	ldr	w1, [sp, #32]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #216]
	ldr	x2, [sp, #224]
	bl	_lean_ctor_set
	ldr	x8, [sp, #216]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_65:
	ldur	x0, [x29, #-120]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #215]
	ldrb	w8, [sp, #215]
	cbnz	w8, LBB21_67
	b	LBB21_66
LBB21_66:
	ldur	x8, [x29, #-120]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_67:
	ldur	x0, [x29, #-120]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #20]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #200]
	ldur	x0, [x29, #-120]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #24]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #192]
	ldr	x0, [sp, #192]
	bl	_lean_inc
	ldr	x0, [sp, #200]
	bl	_lean_inc
	ldur	x0, [x29, #-120]
	bl	_lean_dec
	ldr	w2, [sp, #20]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #24]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	str	x0, [sp, #184]
	ldr	x0, [sp, #184]
	ldr	x2, [sp, #200]
	bl	_lean_ctor_set
	ldr	w1, [sp, #24]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #184]
	ldr	x2, [sp, #192]
	bl	_lean_ctor_set
	ldr	x8, [sp, #184]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_68:
	ldur	x0, [x29, #-56]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #183]
	ldrb	w8, [sp, #183]
	cbnz	w8, LBB21_70
	b	LBB21_69
LBB21_69:
	ldur	x8, [x29, #-56]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_70:
	ldur	x0, [x29, #-56]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #168]
	ldur	x0, [x29, #-56]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #16]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #160]
	ldr	x0, [sp, #160]
	bl	_lean_inc
	ldr	x0, [sp, #168]
	bl	_lean_inc
	ldur	x0, [x29, #-56]
	bl	_lean_dec
	ldr	w2, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #152]
	ldr	x0, [sp, #152]
	ldr	x2, [sp, #168]
	bl	_lean_ctor_set
	ldr	w1, [sp, #16]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #152]
	ldr	x2, [sp, #160]
	bl	_lean_ctor_set
	ldr	x8, [sp, #152]
	stur	x8, [x29, #-24]
	b	LBB21_71
LBB21_71:
	ldur	x0, [x29, #-24]
	add	sp, sp, #1152
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
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
	tbz	w0, #0, LBB22_2
	b	LBB22_1
LBB22_1:
	ldr	x8, [sp]
	ldr	w8, [x8]
	mov	w9, #1                          ; =0x1
	subs	w8, w8, #1
	cset	w8, eq
	and	w8, w8, w9
	sturb	w8, [x29, #-1]
	b	LBB22_3
LBB22_2:
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB22_3
LBB22_3:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___main_spec__1___boxed ; -- Begin function l_IO_println___at___main_spec__1___boxed
	.globl	_l_IO_println___at___main_spec__1___boxed
	.p2align	2
_l_IO_println___at___main_spec__1___boxed: ; @l_IO_println___at___main_spec__1___boxed
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
	b	LBB23_1
LBB23_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox
	mov	x8, x0
	strb	w8, [sp, #15]
	ldrb	w0, [sp, #15]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___main_spec__1
	str	x0, [sp]
	ldr	x0, [sp]
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
	.private_extern	_initialize_str         ; -- Begin function initialize_str
	.globl	_initialize_str
	.p2align	2
_initialize_str:                        ; @initialize_str
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
	tbz	w8, #0, LBB25_2
	b	LBB25_1
LBB25_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB25_5
LBB25_2:
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
	tbz	w0, #0, LBB25_4
	b	LBB25_3
LBB25_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB25_5
LBB25_4:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	__init_l_showChars___closed__0
	adrp	x8, _l_showChars___closed__0@PAGE
	str	x0, [x8, _l_showChars___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_showChars___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_showChars___closed__1
	adrp	x8, _l_showChars___closed__1@PAGE
	str	x0, [x8, _l_showChars___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_showChars___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___main_spec__1___closed__0
	adrp	x8, _l_IO_println___at___main_spec__1___closed__0@PAGE
	str	x0, [x8, _l_IO_println___at___main_spec__1___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___main_spec__1___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___main_spec__1___closed__1
	adrp	x8, _l_IO_println___at___main_spec__1___closed__1@PAGE
	str	x0, [x8, _l_IO_println___at___main_spec__1___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___main_spec__1___closed__1@PAGEOFF]
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
	bl	__init_l_main___closed__3
	adrp	x8, _l_main___closed__3@PAGE
	str	x0, [x8, _l_main___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__4
	adrp	x8, _l_main___closed__4@PAGE
	str	x0, [x8, _l_main___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__5
	adrp	x8, _l_main___closed__5@PAGE
	str	x0, [x8, _l_main___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__6
	adrp	x8, _l_main___closed__6@PAGE
	str	x0, [x8, _l_main___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__7
	adrp	x8, _l_main___closed__7@PAGE
	str	x0, [x8, _l_main___closed__7@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__7@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__8
	adrp	x8, _l_main___closed__8@PAGE
	str	x0, [x8, _l_main___closed__8@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__8@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__9
	adrp	x8, _l_main___closed__9@PAGE
	str	x0, [x8, _l_main___closed__9@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__9@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__10
	adrp	x8, _l_main___closed__10@PAGE
	str	x0, [x8, _l_main___closed__10@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__10@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__11
	adrp	x8, _l_main___closed__11@PAGE
	str	x0, [x8, _l_main___closed__11@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__11@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__12
	adrp	x8, _l_main___closed__12@PAGE
	str	x0, [x8, _l_main___closed__12@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__12@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__13
	adrp	x8, _l_main___closed__13@PAGE
	str	x0, [x8, _l_main___closed__13@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__13@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__14
	adrp	x8, _l_main___closed__14@PAGE
	str	x0, [x8, _l_main___closed__14@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__14@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__15
	adrp	x8, _l_main___closed__15@PAGE
	str	x0, [x8, _l_main___closed__15@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__15@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__16
	adrp	x8, _l_main___closed__16@PAGE
	str	x0, [x8, _l_main___closed__16@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__16@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__17
	adrp	x8, _l_main___closed__17@PAGE
	str	x0, [x8, _l_main___closed__17@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__17@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__18
	adrp	x8, _l_main___closed__18@PAGE
	str	x0, [x8, _l_main___closed__18@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__18@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__19
	adrp	x8, _l_main___closed__19@PAGE
	str	x0, [x8, _l_main___closed__19@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__19@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__20
	adrp	x8, _l_main___closed__20@PAGE
	strb	w0, [x8, _l_main___closed__20@PAGEOFF]
	bl	__init_l_main___closed__21
	adrp	x8, _l_main___closed__21@PAGE
	strb	w0, [x8, _l_main___closed__21@PAGEOFF]
	bl	__init_l_main___closed__22
	adrp	x8, _l_main___closed__22@PAGE
	strb	w0, [x8, _l_main___closed__22@PAGEOFF]
	bl	__init_l_main___closed__23
	adrp	x8, _l_main___closed__23@PAGE
	strb	w0, [x8, _l_main___closed__23@PAGEOFF]
	bl	__init_l_main___closed__24
	adrp	x8, _l_main___closed__24@PAGE
	str	x0, [x8, _l_main___closed__24@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__24@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__25
	adrp	x8, _l_main___closed__25@PAGE
	str	x0, [x8, _l_main___closed__25@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__25@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__26
	adrp	x8, _l_main___closed__26@PAGE
	strb	w0, [x8, _l_main___closed__26@PAGEOFF]
	bl	__init_l_main___closed__27
	adrp	x8, _l_main___closed__27@PAGE
	str	x0, [x8, _l_main___closed__27@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__27@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__28
	adrp	x8, _l_main___closed__28@PAGE
	strb	w0, [x8, _l_main___closed__28@PAGEOFF]
	bl	__init_l_main___closed__29
	adrp	x8, _l_main___closed__29@PAGE
	str	x0, [x8, _l_main___closed__29@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__29@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__30
	adrp	x8, _l_main___closed__30@PAGE
	str	x0, [x8, _l_main___closed__30@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__30@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__31
	adrp	x8, _l_main___closed__31@PAGE
	strb	w0, [x8, _l_main___closed__31@PAGEOFF]
	bl	__init_l_main___closed__32
	adrp	x8, _l_main___closed__32@PAGE
	str	x0, [x8, _l_main___closed__32@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__32@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__33
	adrp	x8, _l_main___closed__33@PAGE
	str	x0, [x8, _l_main___closed__33@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__33@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___boxed__const__1
	adrp	x8, _l_main___boxed__const__1@PAGE
	str	x0, [x8, _l_main___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB25_5
LBB25_5:
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
	bl	_initialize_str
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	and	w0, w8, #0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mark_end_initialization
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB28_2
	b	LBB28_1
LBB28_1:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	_lean_init_task_manager
	bl	_lean_io_mk_world
	bl	__lean_main
	str	x0, [sp, #16]
	b	LBB28_2
LBB28_2:
	bl	_lean_finalize_task_manager
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB28_4
	b	LBB28_3
LBB28_3:
	ldr	x0, [sp, #16]
	bl	_lean_io_result_get_value
	bl	_lean_unbox_uint32
	str	w0, [sp, #12]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB28_5
LBB28_4:
	ldr	x0, [sp, #16]
	bl	_lean_io_result_show_error
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB28_5
LBB28_5:
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
	.p2align	2                               ; -- Begin function lean_unbox_uint32
_lean_unbox_uint32:                     ; @lean_unbox_uint32
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
	bl	_lean_unbox
                                        ; kill: def $w0 killed $w0 killed $x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_io_result_get_value
_lean_io_result_get_value:              ; @lean_io_result_get_value
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
	bl	_lean_io_result_is_ok
	tbnz	w0, #0, LBB31_2
	b	LBB31_1
LBB31_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #2840                       ; =0xb18
	adrp	x2, l_.str.19@PAGE
	add	x2, x2, l_.str.19@PAGEOFF
	bl	_lean_notify_assert
	b	LBB31_2
LBB31_2:
	ldr	x0, [sp, #8]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_string_size
_lean_string_size:                      ; @lean_string_size
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
	bl	_lean_to_string
	ldr	x0, [x0, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_to_string
_lean_to_string:                        ; @lean_to_string
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
	bl	_lean_is_string
	tbnz	w0, #0, LBB33_2
	b	LBB33_1
LBB33_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #536                        ; =0x218
	adrp	x2, l_.str.1@PAGE
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_lean_notify_assert
	b	LBB33_2
LBB33_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_is_string
_lean_is_string:                        ; @lean_is_string
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
	subs	w8, w0, #249
	cset	w0, eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	.p2align	2                               ; -- Begin function lean_nat_eq
_lean_nat_eq:                           ; @lean_nat_eq
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_lean_is_scalar
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	tbz	w0, #0, LBB37_2
	b	LBB37_1
LBB37_1:
	ldr	x0, [sp, #8]
	bl	_lean_is_scalar
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB37_2
LBB37_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB37_4
	b	LBB37_3
LBB37_3:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB37_5
LBB37_4:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_lean_nat_big_eq
	and	w8, w0, #0x1
	sturb	w8, [x29, #-1]
	b	LBB37_5
LBB37_5:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	tbnz	w0, #0, LBB38_2
	b	LBB38_1
LBB38_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #596                        ; =0x254
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB38_2
LBB38_2:
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
	tbnz	w0, #0, LBB39_2
	b	LBB39_1
LBB39_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #601                        ; =0x259
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB39_2
LBB39_2:
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
	tbnz	w0, #0, LBB42_2
	b	LBB42_1
LBB42_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #532                        ; =0x214
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB42_2
LBB42_2:
	ldr	x0, [sp, #8]
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
	tbz	w0, #0, LBB43_2
	b	LBB43_1
LBB43_1:
	ldr	x10, [sp, #16]
	ldur	x9, [x29, #-8]
	ldrsw	x8, [x9]
	add	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	b	LBB43_5
LBB43_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	cbz	w8, LBB43_4
	b	LBB43_3
LBB43_3:
	ldur	x0, [x29, #-8]
	bl	_lean_get_rc_mt_addr
	ldr	x8, [sp, #16]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	neg	w8, w8
	ldadd	w8, w8, [x0]
	str	w8, [sp, #8]
	b	LBB43_4
LBB43_4:
	b	LBB43_5
LBB43_5:
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
	tbz	w8, #0, LBB46_2
	b	LBB46_1
LBB46_1:
	ldr	x0, [sp]
	bl	_lean_box
	str	x0, [sp, #8]
	b	LBB46_3
LBB46_2:
	ldr	x0, [sp]
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #8]
	b	LBB46_3
LBB46_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	b.ls	LBB47_2
	b	LBB47_1
LBB47_1:
	ldr	x8, [sp, #16]
	ldur	w9, [x29, #-8]
                                        ; kill: def $x9 killed $w9
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	stur	xzr, [x8, #-8]
	b	LBB47_2
LBB47_2:
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
	cbnz	x8, LBB50_2
	b	LBB50_1
LBB50_1:
	bl	_lean_internal_panic_out_of_memory
LBB50_2:
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
	.p2align	2                               ; -- Begin function _init_l_showChars___closed__0
__init_l_showChars___closed__0:         ; @_init_l_showChars___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB52_1
LBB52_1:
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
	.p2align	2                               ; -- Begin function _init_l_showChars___closed__1
__init_l_showChars___closed__1:         ; @_init_l_showChars___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB53_1
LBB53_1:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___main_spec__1___closed__0
__init_l_IO_println___at___main_spec__1___closed__0: ; @_init_l_IO_println___at___main_spec__1___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB54_1
LBB54_1:
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___main_spec__1___closed__1
__init_l_IO_println___at___main_spec__1___closed__1: ; @_init_l_IO_println___at___main_spec__1___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB55_1
LBB55_1:
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
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
	b	LBB56_1
LBB56_1:
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	mov	x1, #17                         ; =0x11
	mov	x2, #15                         ; =0xf
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
	b	LBB57_1
LBB57_1:
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_string_utf8_byte_size
	str	x0, [sp]
	ldr	x0, [sp]
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
	b	LBB58_1
LBB58_1:
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__3
__init_l_main___closed__3:              ; @_init_l_main___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB59_1
LBB59_1:
	adrp	x8, _l_main___closed__2@PAGE
	ldr	x8, [x8, _l_main___closed__2@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_string_utf8_byte_size
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__4
__init_l_main___closed__4:              ; @_init_l_main___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB60_1
LBB60_1:
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_nat_sub
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__5
__init_l_main___closed__5:              ; @_init_l_main___closed__5
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
	adrp	x8, _l_main___closed__4@PAGE
	ldr	x8, [x8, _l_main___closed__4@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__3@PAGE
	ldr	x8, [x8, _l_main___closed__3@PAGEOFF]
	str	x8, [sp, #16]
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_string_utf8_extract
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__6
__init_l_main___closed__6:              ; @_init_l_main___closed__6
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
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_nat_sub
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__7
__init_l_main___closed__7:              ; @_init_l_main___closed__7
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB63_1
LBB63_1:
	adrp	x8, _l_main___closed__6@PAGE
	ldr	x8, [x8, _l_main___closed__6@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_string_utf8_extract
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__8
__init_l_main___closed__8:              ; @_init_l_main___closed__8
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB64_1
LBB64_1:
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #7                          ; =0x7
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_string_utf8_extract
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__9
__init_l_main___closed__9:              ; @_init_l_main___closed__9
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB65_1
LBB65_1:
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #8                          ; =0x8
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_string_utf8_extract
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__10
__init_l_main___closed__10:             ; @_init_l_main___closed__10
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB66_1
LBB66_1:
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Nat_reprFast
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__11
__init_l_main___closed__11:             ; @_init_l_main___closed__11
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
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	mov	x2, #9                          ; =0x9
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__12
__init_l_main___closed__12:             ; @_init_l_main___closed__12
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
	adrp	x8, _l_main___closed__11@PAGE
	ldr	x8, [x8, _l_main___closed__11@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_string_utf8_byte_size
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__13
__init_l_main___closed__13:             ; @_init_l_main___closed__13
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB69_1
LBB69_1:
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	adrp	x8, _l_main___closed__12@PAGE
	ldr	x8, [x8, _l_main___closed__12@PAGEOFF]
	str	x8, [sp, #16]
	adrp	x8, _l_main___closed__11@PAGE
	ldr	x8, [x8, _l_main___closed__11@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_l_Substring_takeWhileAux___at___String_Internal_trimImpl_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__14
__init_l_main___closed__14:             ; @_init_l_main___closed__14
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
	adrp	x8, _l_main___closed__12@PAGE
	ldr	x8, [x8, _l_main___closed__12@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__13@PAGE
	ldr	x8, [x8, _l_main___closed__13@PAGEOFF]
	str	x8, [sp, #16]
	adrp	x8, _l_main___closed__11@PAGE
	ldr	x8, [x8, _l_main___closed__11@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_l_Substring_takeRightWhileAux___at___String_Internal_trimImpl_spec__1
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__15
__init_l_main___closed__15:             ; @_init_l_main___closed__15
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB71_1
LBB71_1:
	adrp	x8, _l_main___closed__14@PAGE
	ldr	x8, [x8, _l_main___closed__14@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__13@PAGE
	ldr	x8, [x8, _l_main___closed__13@PAGEOFF]
	str	x8, [sp, #16]
	adrp	x8, _l_main___closed__11@PAGE
	ldr	x8, [x8, _l_main___closed__11@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_string_utf8_extract
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__16
__init_l_main___closed__16:             ; @_init_l_main___closed__16
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
	adrp	x8, _l_main___closed__15@PAGE
	ldr	x8, [x8, _l_main___closed__15@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_String_quote
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__17
__init_l_main___closed__17:             ; @_init_l_main___closed__17
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB73_1
LBB73_1:
	adrp	x8, _l_main___closed__16@PAGE
	ldr	x8, [x8, _l_main___closed__16@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #3                          ; =0x3
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__18
__init_l_main___closed__18:             ; @_init_l_main___closed__18
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
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__19
__init_l_main___closed__19:             ; @_init_l_main___closed__19
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB75_1
LBB75_1:
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__20
__init_l_main___closed__20:             ; @_init_l_main___closed__20
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
	adrp	x8, _l_main___closed__19@PAGE
	ldr	x8, [x8, _l_main___closed__19@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__18@PAGE
	ldr	x8, [x8, _l_main___closed__18@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_String_isPrefixOf
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__21
__init_l_main___closed__21:             ; @_init_l_main___closed__21
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB77_1
LBB77_1:
	adrp	x8, _l_main___closed__19@PAGE
	ldr	x8, [x8, _l_main___closed__19@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #8]
	bl	_l_String_isPrefixOf
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__22
__init_l_main___closed__22:             ; @_init_l_main___closed__22
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB78_1
LBB78_1:
	adrp	x8, _l_main___closed__19@PAGE
	ldr	x8, [x8, _l_main___closed__19@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_showChars___closed__1@PAGE
	ldr	x8, [x8, _l_showChars___closed__1@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_String_isPrefixOf
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__23
__init_l_main___closed__23:             ; @_init_l_main___closed__23
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
	adrp	x8, _l_showChars___closed__1@PAGE
	ldr	x8, [x8, _l_showChars___closed__1@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #8]
	bl	_l_String_isPrefixOf
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__24
__init_l_main___closed__24:             ; @_init_l_main___closed__24
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB80_1
LBB80_1:
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__25
__init_l_main___closed__25:             ; @_init_l_main___closed__25
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
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__26
__init_l_main___closed__26:             ; @_init_l_main___closed__26
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
	adrp	x8, _l_main___closed__25@PAGE
	ldr	x8, [x8, _l_main___closed__25@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__24@PAGE
	ldr	x8, [x8, _l_main___closed__24@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_String_isPrefixOf
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__27
__init_l_main___closed__27:             ; @_init_l_main___closed__27
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB83_1
LBB83_1:
	adrp	x0, l_.str.16@PAGE
	add	x0, x0, l_.str.16@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__28
__init_l_main___closed__28:             ; @_init_l_main___closed__28
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB84_1
LBB84_1:
	adrp	x8, _l_main___closed__27@PAGE
	ldr	x8, [x8, _l_main___closed__27@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__24@PAGE
	ldr	x8, [x8, _l_main___closed__24@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_String_isPrefixOf
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__29
__init_l_main___closed__29:             ; @_init_l_main___closed__29
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
	adrp	x0, l_.str.17@PAGE
	add	x0, x0, l_.str.17@PAGEOFF
	mov	x1, #3                          ; =0x3
	mov	x2, #2                          ; =0x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__30
__init_l_main___closed__30:             ; @_init_l_main___closed__30
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
	adrp	x0, l_.str.18@PAGE
	add	x0, x0, l_.str.18@PAGEOFF
	mov	x1, #4                          ; =0x4
	mov	x2, #3                          ; =0x3
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__31
__init_l_main___closed__31:             ; @_init_l_main___closed__31
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB87_1
LBB87_1:
	adrp	x8, _l_main___closed__30@PAGE
	ldr	x8, [x8, _l_main___closed__30@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__29@PAGE
	ldr	x8, [x8, _l_main___closed__29@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_String_isPrefixOf
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__32
__init_l_main___closed__32:             ; @_init_l_main___closed__32
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB88_1
LBB88_1:
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_string_utf8_extract
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__33
__init_l_main___closed__33:             ; @_init_l_main___closed__33
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB89_1
LBB89_1:
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__3@PAGE
	ldr	x8, [x8, _l_main___closed__3@PAGEOFF]
	str	x8, [sp, #16]
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_string_utf8_extract
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___boxed__const__1
__init_l_main___boxed__const__1:        ; @_init_l_main___boxed__const__1
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
	stur	wzr, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	_lean_box_uint32
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_box_uint32
_lean_box_uint32:                       ; @lean_box_uint32
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
	bl	_lean_box
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_l_showChars___closed__0,8,3 ; @l_showChars___closed__0
.zerofill __DATA,__bss,_l_showChars___closed__1,8,3 ; @l_showChars___closed__1
.zerofill __DATA,__bss,_l_IO_println___at___main_spec__1___closed__0,8,3 ; @l_IO_println___at___main_spec__1___closed__0
.zerofill __DATA,__bss,_l_IO_println___at___main_spec__1___closed__1,8,3 ; @l_IO_println___at___main_spec__1___closed__1
.zerofill __DATA,__bss,_l_main___closed__0,8,3 ; @l_main___closed__0
.zerofill __DATA,__bss,_l_main___closed__32,8,3 ; @l_main___closed__32
.zerofill __DATA,__bss,_l_main___closed__33,8,3 ; @l_main___closed__33
.zerofill __DATA,__bss,_l_main___closed__5,8,3 ; @l_main___closed__5
.zerofill __DATA,__bss,_l_main___closed__7,8,3 ; @l_main___closed__7
.zerofill __DATA,__bss,_l_main___closed__8,8,3 ; @l_main___closed__8
.zerofill __DATA,__bss,_l_main___closed__9,8,3 ; @l_main___closed__9
.zerofill __DATA,__bss,_l_main___closed__10,8,3 ; @l_main___closed__10
.zerofill __DATA,__bss,_l_main___closed__17,8,3 ; @l_main___closed__17
.zerofill __DATA,__bss,_l_main___closed__20,1,0 ; @l_main___closed__20
.zerofill __DATA,__bss,_l_main___closed__21,1,0 ; @l_main___closed__21
.zerofill __DATA,__bss,_l_main___closed__22,1,0 ; @l_main___closed__22
.zerofill __DATA,__bss,_l_main___closed__23,1,0 ; @l_main___closed__23
.zerofill __DATA,__bss,_l_main___closed__26,1,0 ; @l_main___closed__26
.zerofill __DATA,__bss,_l_main___closed__28,1,0 ; @l_main___closed__28
.zerofill __DATA,__bss,_l_main___closed__31,1,0 ; @l_main___closed__31
	.private_extern	_l_main___boxed__const__1 ; @l_main___boxed__const__1
	.comm	_l_main___boxed__const__1,8,3
.zerofill __DATA,__bss,__G_initialized,1,0 ; @_G_initialized
.zerofill __DATA,__bss,_l_main___closed__1,8,3 ; @l_main___closed__1
.zerofill __DATA,__bss,_l_main___closed__2,8,3 ; @l_main___closed__2
.zerofill __DATA,__bss,_l_main___closed__3,8,3 ; @l_main___closed__3
.zerofill __DATA,__bss,_l_main___closed__4,8,3 ; @l_main___closed__4
.zerofill __DATA,__bss,_l_main___closed__6,8,3 ; @l_main___closed__6
.zerofill __DATA,__bss,_l_main___closed__11,8,3 ; @l_main___closed__11
.zerofill __DATA,__bss,_l_main___closed__12,8,3 ; @l_main___closed__12
.zerofill __DATA,__bss,_l_main___closed__13,8,3 ; @l_main___closed__13
.zerofill __DATA,__bss,_l_main___closed__14,8,3 ; @l_main___closed__14
.zerofill __DATA,__bss,_l_main___closed__15,8,3 ; @l_main___closed__15
.zerofill __DATA,__bss,_l_main___closed__16,8,3 ; @l_main___closed__16
.zerofill __DATA,__bss,_l_main___closed__18,8,3 ; @l_main___closed__18
.zerofill __DATA,__bss,_l_main___closed__19,8,3 ; @l_main___closed__19
.zerofill __DATA,__bss,_l_main___closed__24,8,3 ; @l_main___closed__24
.zerofill __DATA,__bss,_l_main___closed__25,8,3 ; @l_main___closed__25
.zerofill __DATA,__bss,_l_main___closed__27,8,3 ; @l_main___closed__27
.zerofill __DATA,__bss,_l_main___closed__29,8,3 ; @l_main___closed__29
.zerofill __DATA,__bss,_l_main___closed__30,8,3 ; @l_main___closed__30
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/Users/pehle/dev/lean4/build/release/stage1/include/lean/lean.h"

l_.str.1:                               ; @.str.1
	.asciz	"lean_is_string(o)"

l_.str.2:                               ; @.str.2
	.asciz	"i < lean_ctor_num_objs(o)"

l_.str.3:                               ; @.str.3
	.asciz	"lean_is_ctor(o)"

l_.str.4:                               ; @.str.4
	.asciz	"tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE"

l_.str.5:                               ; @.str.5
	.asciz	">> "

l_.str.6:                               ; @.str.6
	.space	1

l_.str.7:                               ; @.str.7
	.asciz	"false"

l_.str.8:                               ; @.str.8
	.asciz	"true"

l_.str.9:                               ; @.str.9
	.asciz	"hello \316\261_world_\316\262"

l_.str.10:                              ; @.str.10
	.asciz	"  "

l_.str.11:                              ; @.str.11
	.asciz	"   aaa   "

l_.str.12:                              ; @.str.12
	.asciz	"abc"

l_.str.13:                              ; @.str.13
	.asciz	"abcd"

l_.str.14:                              ; @.str.14
	.asciz	"ab"

l_.str.15:                              ; @.str.15
	.asciz	"cb"

l_.str.16:                              ; @.str.16
	.asciz	"a"

l_.str.17:                              ; @.str.17
	.asciz	"\316\261b"

l_.str.18:                              ; @.str.18
	.asciz	"\316\261bc"

l_.str.19:                              ; @.str.19
	.asciz	"lean_io_result_is_ok(r)"

.subsections_via_symbols
