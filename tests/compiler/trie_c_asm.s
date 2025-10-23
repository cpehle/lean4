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
	.p2align	2                               ; -- Begin function lean_usize_dec_eq
_lean_usize_dec_eq:                     ; @lean_usize_dec_eq
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	subs	x8, x8, x9
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_string_dec_eq
_lean_string_dec_eq:                    ; @lean_string_dec_eq
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
	bl	_lean_string_eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
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
	.p2align	2                               ; -- Begin function lean_usize_of_nat
_lean_usize_of_nat:                     ; @lean_usize_of_nat
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
	tbz	w0, #0, LBB4_2
	b	LBB4_1
LBB4_1:
	ldr	x0, [sp, #8]
	bl	_lean_unbox
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB4_3
LBB4_2:
	ldr	x0, [sp, #8]
	bl	_lean_usize_of_big_nat
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB4_3
LBB4_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_string_dec_lt
_lean_string_dec_lt:                    ; @lean_string_dec_lt
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
	bl	_lean_string_lt
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_string_length
_lean_string_length:                    ; @lean_string_length
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
	bl	_lean_string_len
	bl	_lean_box
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	.p2align	2                               ; -- Begin function lean_nat_dec_lt
_lean_nat_dec_lt:                       ; @lean_nat_dec_lt
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
	bl	_lean_nat_lt
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
	tbz	w0, #0, LBB9_2
	b	LBB9_1
LBB9_1:
	ldr	x0, [sp, #24]
	bl	_lean_is_scalar
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB9_2
LBB9_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB9_6
	b	LBB9_3
LBB9_3:
	ldur	x0, [x29, #-16]
	bl	_lean_unbox
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	_lean_unbox
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.hs	LBB9_5
	b	LBB9_4
LBB9_4:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	b	LBB9_7
LBB9_5:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x0, x8, x9
	bl	_lean_box
	stur	x0, [x29, #-8]
	b	LBB9_7
LBB9_6:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_lean_nat_big_sub
	stur	x0, [x29, #-8]
	b	LBB9_7
LBB9_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_usize_add
_lean_usize_add:                        ; @lean_usize_add
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	add	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_array_uget
_lean_array_uget:                       ; @lean_array_uget
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
	ldr	x1, [sp, #16]
	bl	_lean_array_get_core
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_inc
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_array_size
_lean_array_size:                       ; @lean_array_size
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
	bl	_lean_to_array
	ldr	x0, [x0, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_array_get_size
_lean_array_get_size:                   ; @lean_array_get_size
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
	bl	_lean_array_size
	bl	_lean_box
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_nat_dec_le
_lean_nat_dec_le:                       ; @lean_nat_dec_le
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
	bl	_lean_nat_le
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_usize_dec_lt
_lean_usize_dec_lt:                     ; @lean_usize_dec_lt
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	subs	x8, x8, x9
	cset	w0, lo
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_nat_add
_lean_nat_add:                          ; @lean_nat_add
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
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	tbz	w0, #0, LBB16_2
	b	LBB16_1
LBB16_1:
	ldr	x0, [sp, #24]
	bl	_lean_is_scalar
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB16_2
LBB16_2:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB16_4
	b	LBB16_3
LBB16_3:
	ldur	x0, [x29, #-16]
	bl	_lean_unbox
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	_lean_unbox
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, x0, x8
	bl	_lean_usize_to_nat
	stur	x0, [x29, #-8]
	b	LBB16_5
LBB16_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_lean_nat_big_add
	stur	x0, [x29, #-8]
	b	LBB16_5
LBB16_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
	.globl	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0: ; @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	b	LBB17_1
LBB17_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	bl	_lean_usize_dec_eq
	sturb	w0, [x29, #-41]
	ldurb	w8, [x29, #-41]
	cbnz	w8, LBB17_5
	b	LBB17_2
LBB17_2:                                ;   in Loop: Header=BB17_1 Depth=1
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	_lean_array_uget
	str	x0, [sp, #40]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #40]
	bl	_lean_string_dec_eq
	strb	w0, [sp, #39]
	ldr	x0, [sp, #40]
	bl	_lean_dec_ref
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB17_4
	b	LBB17_3
LBB17_3:                                ;   in Loop: Header=BB17_1 Depth=1
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	_lean_usize_add
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-32]
	b	LBB17_1
LBB17_4:
	ldrb	w8, [sp, #39]
	sturb	w8, [x29, #-1]
	b	LBB17_6
LBB17_5:
	strb	wzr, [sp, #15]
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB17_6
LBB17_6:
	ldurb	w0, [x29, #-1]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
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
	tbz	w8, #0, LBB18_2
	b	LBB18_1
LBB18_1:
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	b	LBB18_5
LBB18_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbz	w8, LBB18_4
	b	LBB18_3
LBB18_3:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref_cold
	b	LBB18_4
LBB18_4:
	b	LBB18_5
LBB18_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_contains___at___T_insert_spec__0 ; -- Begin function l_Array_contains___at___T_insert_spec__0
	.globl	_l_Array_contains___at___T_insert_spec__0
	.p2align	2
_l_Array_contains___at___T_insert_spec__0: ; @l_Array_contains___at___T_insert_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	b	LBB19_1
LBB19_1:
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-16]
	bl	_lean_array_get_size
	str	x0, [sp, #40]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #40]
	bl	_lean_nat_dec_lt
	strb	w0, [sp, #39]
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB19_3
	b	LBB19_2
LBB19_2:
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldrb	w8, [sp, #39]
	sturb	w8, [x29, #-1]
	b	LBB19_6
LBB19_3:
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB19_5
	b	LBB19_4
LBB19_4:
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldrb	w8, [sp, #39]
	sturb	w8, [x29, #-1]
	b	LBB19_6
LBB19_5:
	str	xzr, [sp, #24]
	ldr	x0, [sp, #40]
	bl	_lean_usize_of_nat
	str	x0, [sp, #16]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
	strb	w0, [sp, #15]
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB19_6
LBB19_6:
	ldurb	w0, [x29, #-1]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
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
	tbnz	w0, #0, LBB21_2
	b	LBB21_1
LBB21_1:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	b	LBB21_2
LBB21_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_T_insert             ; -- Begin function l_T_insert
	.globl	_l_T_insert
	.p2align	2
_l_T_insert:                            ; @l_T_insert
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	b	LBB22_1
LBB22_1:
	ldur	x0, [x29, #-16]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	sturb	w8, [x29, #-25]
	ldurb	w8, [x29, #-25]
	cbnz	w8, LBB22_5
	b	LBB22_2
LBB22_2:
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-16]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-24]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-24]
	bl	_l_Lean_Data_Trie_insert___redArg
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-24]
	bl	_l_Array_contains___at___T_insert_spec__0
	sturb	w0, [x29, #-57]
	ldurb	w8, [x29, #-57]
	cbnz	w8, LBB22_4
	b	LBB22_3
LBB22_3:
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-24]
	bl	_lean_array_push
	str	x0, [sp, #72]
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #72]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldur	x0, [x29, #-16]
	ldur	x2, [x29, #-56]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_set
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB22_8
LBB22_4:
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	ldur	x2, [x29, #-56]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_set
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB22_8
LBB22_5:
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #64]
	ldur	x0, [x29, #-16]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_inc
	ldur	x0, [x29, #-16]
	bl	_lean_dec
	ldur	x0, [x29, #-24]
	bl	_lean_inc_ref
	ldr	x0, [sp, #64]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-24]
	bl	_l_Lean_Data_Trie_insert___redArg
	str	x0, [sp, #48]
	ldr	x0, [sp, #56]
	ldur	x1, [x29, #-24]
	bl	_l_Array_contains___at___T_insert_spec__0
	strb	w0, [sp, #47]
	ldrb	w8, [sp, #47]
	cbnz	w8, LBB22_7
	b	LBB22_6
LBB22_6:
	ldr	x0, [sp, #56]
	ldur	x1, [x29, #-24]
	bl	_lean_array_push
	str	x0, [sp, #32]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldr	x2, [sp, #48]
	bl	_lean_ctor_set
	ldr	x0, [sp, #24]
	ldr	x2, [sp, #32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB22_8
LBB22_7:
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #8]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #48]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB22_8
LBB22_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
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
	tbz	w0, #0, LBB23_2
	b	LBB23_1
LBB23_1:
	ldr	x8, [sp]
	ldr	w8, [x8]
	mov	w9, #1                          ; =0x1
	subs	w8, w8, #1
	cset	w8, eq
	and	w8, w8, w9
	sturb	w8, [x29, #-1]
	b	LBB23_3
LBB23_2:
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB23_3
LBB23_3:
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
	tbz	w8, #0, LBB24_2
	b	LBB24_1
LBB24_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #623                        ; =0x26f
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB24_2
LBB24_2:
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
	tbz	w8, #0, LBB26_2
	b	LBB26_1
LBB26_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #633                        ; =0x279
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB26_2
LBB26_2:
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
	tbnz	w0, #0, LBB27_2
	b	LBB27_1
LBB27_1:
	ldr	x0, [sp, #8]
	bl	_lean_inc_ref
	b	LBB27_2
LBB27_2:
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
	b.hi	LBB28_3
	b	LBB28_1
LBB28_1:
	ldur	w9, [x29, #-8]
	mov	w8, #0                          ; =0x0
	subs	w9, w9, #256
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b.hs	LBB28_3
	b	LBB28_2
LBB28_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1024
	cset	w8, lo
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB28_3
LBB28_3:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbnz	w8, #0, LBB28_5
	b	LBB28_4
LBB28_4:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #616                        ; =0x268
	adrp	x2, l_.str.6@PAGE
	add	x2, x2, l_.str.6@PAGEOFF
	bl	_lean_notify_assert
	b	LBB28_5
LBB28_5:
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
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed
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
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	b	LBB29_1
LBB29_1:
	ldur	x0, [x29, #-24]
	bl	_lean_unbox_usize
	str	x0, [sp, #24]
	ldur	x0, [x29, #-24]
	bl	_lean_dec
	ldr	x0, [sp, #32]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldr	x0, [sp, #32]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
	strb	w0, [sp, #15]
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldrb	w8, [sp, #15]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_unbox_usize
_lean_unbox_usize:                      ; @lean_unbox_usize
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
	bl	_lean_ctor_get_usize
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
	.private_extern	_l_Array_contains___at___T_insert_spec__0___boxed ; -- Begin function l_Array_contains___at___T_insert_spec__0___boxed
	.globl	_l_Array_contains___at___T_insert_spec__0___boxed
	.p2align	2
_l_Array_contains___at___T_insert_spec__0___boxed: ; @l_Array_contains___at___T_insert_spec__0___boxed
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
	b	LBB32_1
LBB32_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_l_Array_contains___at___T_insert_spec__0
	strb	w0, [sp, #15]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldrb	w8, [sp, #15]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0 ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0
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
	b	LBB33_1
LBB33_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_lean_string_dec_lt
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	b	LBB34_1
LBB34_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	_lean_nat_dec_lt
	sturb	w0, [x29, #-33]
	ldurb	w8, [x29, #-33]
	cbnz	w8, LBB34_3
	b	LBB34_2
LBB34_2:
	ldur	x0, [x29, #-24]
	bl	_lean_dec
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB34_6
LBB34_3:                                ;   in Loop: Header=BB34_1 Depth=1
	adrp	x0, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed@PAGE
	add	x0, x0, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed@PAGEOFF
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_alloc_closure
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-24]
	bl	_lean_inc
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	bl	_l_Array_qpartition___redArg
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_ctor_get
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	bl	_lean_inc
	ldr	x0, [sp, #56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	_lean_inc
	ldr	x0, [sp, #56]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #48]
	bl	_lean_nat_dec_le
	strb	w0, [sp, #39]
	ldrb	w8, [sp, #39]
	cbnz	w8, LBB34_5
	b	LBB34_4
LBB34_4:                                ;   in Loop: Header=BB34_1 Depth=1
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #48]
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	str	x0, [sp, #24]
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #16]
	bl	_lean_nat_add
	str	x0, [sp, #8]
	ldr	x0, [sp, #48]
	bl	_lean_dec
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-24]
	b	LBB34_1
LBB34_5:
	ldr	x0, [sp, #48]
	bl	_lean_dec
	ldur	x0, [x29, #-24]
	bl	_lean_dec
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB34_6
LBB34_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_alloc_closure
_lean_alloc_closure:                    ; @lean_alloc_closure
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
	str	w2, [sp, #16]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, ls
	tbz	w8, #0, LBB35_2
	b	LBB35_1
LBB35_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #726                        ; =0x2d6
	adrp	x2, l_.str.8@PAGE
	add	x2, x2, l_.str.8@PAGEOFF
	bl	_lean_notify_assert
	b	LBB35_2
LBB35_2:
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, hs
	tbz	w8, #0, LBB35_4
	b	LBB35_3
LBB35_3:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #727                        ; =0x2d7
	adrp	x2, l_.str.9@PAGE
	add	x2, x2, l_.str.9@PAGEOFF
	bl	_lean_notify_assert
	b	LBB35_4
LBB35_4:
	ldr	w8, [sp, #16]
	mov	x9, x8
	mov	x8, #8                          ; =0x8
	mul	x8, x8, x9
	add	x8, x8, #24
	mov	x0, x8
	bl	_lean_alloc_small_object
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #245                        ; =0xf5
	mov	w2, #0                          ; =0x0
	bl	_lean_set_st_header
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	strh	w8, [x9, #16]
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #8]
	strh	w8, [x9, #18]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed
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
	b	LBB36_1
LBB36_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0
	strb	w0, [sp, #15]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldrb	w8, [sp, #15]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0 ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0
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
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	x5, [sp, #16]
	str	x6, [sp, #8]
	b	LBB37_1
LBB37_1:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #32]
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_sorted         ; -- Begin function l_Array_sorted
	.globl	_l_Array_sorted
	.p2align	2
_l_Array_sorted:                        ; @l_Array_sorted
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB38_1
LBB38_1:
	ldur	x0, [x29, #-16]
	bl	_lean_array_get_size
	stur	x0, [x29, #-24]
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	_lean_nat_dec_eq
	sturb	w0, [x29, #-33]
	ldurb	w8, [x29, #-33]
	cbnz	w8, LBB38_8
	b	LBB38_2
LBB38_2:
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #48]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #48]
	bl	_lean_nat_sub
	str	x0, [sp, #40]
	ldur	x0, [x29, #-24]
	bl	_lean_dec
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #40]
	bl	_lean_nat_dec_le
	strb	w0, [sp, #31]
	ldrb	w8, [sp, #31]
	cbnz	w8, LBB38_4
	b	LBB38_3
LBB38_3:
	ldr	x0, [sp, #40]
	bl	_lean_inc
	ldr	x8, [sp, #40]
	str	x8, [sp, #32]
	b	LBB38_5
LBB38_4:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #32]
	b	LBB38_5
LBB38_5:
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	_lean_nat_dec_le
	strb	w0, [sp, #30]
	ldrb	w8, [sp, #30]
	cbnz	w8, LBB38_7
	b	LBB38_6
LBB38_6:
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldr	x0, [sp, #32]
	bl	_lean_inc
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #32]
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	str	x0, [sp, #16]
	ldr	x0, [sp, #32]
	bl	_lean_dec
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB38_9
LBB38_7:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #40]
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	str	x0, [sp, #8]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB38_9
LBB38_8:
	ldur	x0, [x29, #-24]
	bl	_lean_dec
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB38_9
LBB38_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___boxed ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___boxed
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___boxed
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___boxed: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___boxed
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
	str	x2, [sp, #8]
	b	LBB39_1
LBB39_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_lean_dec
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___boxed
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___boxed: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___boxed
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
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	x5, [sp, #16]
	str	x6, [sp, #8]
	b	LBB40_1
LBB40_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	ldr	x4, [sp, #24]
	ldr	x5, [sp, #16]
	ldr	x6, [sp, #8]
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0
	str	x0, [sp]
	ldr	x0, [sp, #32]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	bl	_lean_dec
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	b	LBB41_1
LBB41_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	_lean_usize_dec_eq
	strb	w0, [sp, #47]
	ldrb	w8, [sp, #47]
	cbnz	w8, LBB41_5
	b	LBB41_2
LBB41_2:                                ;   in Loop: Header=BB41_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	_lean_array_uget
	str	x0, [sp, #32]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	bl	_l_String_isPrefixOf
	strb	w0, [sp, #31]
	ldrb	w8, [sp, #31]
	cbnz	w8, LBB41_4
	b	LBB41_3
LBB41_3:                                ;   in Loop: Header=BB41_1 Depth=1
	ldr	x0, [sp, #32]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-40]
	str	x8, [sp, #48]
	b	LBB41_6
LBB41_4:                                ;   in Loop: Header=BB41_1 Depth=1
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #32]
	bl	_lean_array_push
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #48]
	b	LBB41_6
LBB41_5:
	ldur	x0, [x29, #-40]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB41_6:                                ;   in Loop: Header=BB41_1 Depth=1
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #8]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #8]
	bl	_lean_usize_add
	str	x0, [sp]
	ldr	x8, [sp]
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-40]
	b	LBB41_1
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_findPrefix     ; -- Begin function l_Array_findPrefix
	.globl	_l_Array_findPrefix
	.p2align	2
_l_Array_findPrefix:                    ; @l_Array_findPrefix
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	b	LBB42_1
LBB42_1:
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-16]
	bl	_lean_array_get_size
	str	x0, [sp, #40]
	adrp	x8, _l_Array_findPrefix___closed__0@PAGE
	ldr	x8, [x8, _l_Array_findPrefix___closed__0@PAGEOFF]
	str	x8, [sp, #32]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #40]
	bl	_lean_nat_dec_lt
	strb	w0, [sp, #31]
	ldrb	w8, [sp, #31]
	cbnz	w8, LBB42_3
	b	LBB42_2
LBB42_2:
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB42_6
LBB42_3:
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #40]
	bl	_lean_nat_dec_le
	strb	w0, [sp, #30]
	ldrb	w8, [sp, #30]
	cbnz	w8, LBB42_5
	b	LBB42_4
LBB42_4:
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB42_6
LBB42_5:
	str	xzr, [sp, #16]
	ldr	x0, [sp, #40]
	bl	_lean_usize_of_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	ldr	x4, [sp, #32]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
	str	x0, [sp]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	LBB42_6
LBB42_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed
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
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	b	LBB43_1
LBB43_1:
	ldur	x0, [x29, #-24]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-24]
	bl	_lean_dec
	ldr	x0, [sp, #32]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldr	x0, [sp, #32]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	ldr	x4, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
	str	x0, [sp]
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_findPrefix___boxed ; -- Begin function l_Array_findPrefix___boxed
	.globl	_l_Array_findPrefix___boxed
	.p2align	2
_l_Array_findPrefix___boxed:            ; @l_Array_findPrefix___boxed
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
	b	LBB44_1
LBB44_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_l_Array_findPrefix
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
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
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	stur	x5, [x29, #-56]
	stur	x6, [x29, #-64]
	b	LBB45_1
LBB45_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-48]
	bl	_lean_usize_dec_lt
	sturb	w0, [x29, #-65]
	ldurb	w8, [x29, #-65]
	cbnz	w8, LBB45_3
	b	LBB45_2
LBB45_2:
	ldur	x0, [x29, #-64]
	bl	_lean_inc_ref
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-8]
	b	LBB45_6
LBB45_3:                                ;   in Loop: Header=BB45_1 Depth=1
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-56]
	bl	_lean_array_uget
	str	x0, [sp, #80]
	ldr	x0, [sp, #80]
	ldur	x1, [x29, #-16]
	bl	_lean_string_dec_eq
	strb	w0, [sp, #79]
	ldrb	w8, [sp, #79]
	cbnz	w8, LBB45_5
	b	LBB45_4
LBB45_4:                                ;   in Loop: Header=BB45_1 Depth=1
	ldr	x0, [sp, #80]
	bl	_lean_dec_ref
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #64]
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #64]
	bl	_lean_usize_add
	str	x0, [sp, #56]
	ldr	x8, [sp, #56]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #40]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-56]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-64]
	b	LBB45_1
LBB45_5:
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x1
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	x2, [sp, #80]
	bl	_lean_ctor_set
	ldr	w2, [sp, #8]                    ; 4-byte Folded Reload
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	mov	x0, x1
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldr	x2, [sp, #32]
	bl	_lean_ctor_set
	ldr	w2, [sp, #8]                    ; 4-byte Folded Reload
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-32]
	bl	_lean_ctor_set
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB45_6
LBB45_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg ; -- Begin function l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	.globl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	.p2align	2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg: ; @l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #448
	stp	x28, x27, [sp, #416]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #432]            ; 16-byte Folded Spill
	add	x29, sp, #432
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-72]
	b	LBB46_1
LBB46_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-64]
	bl	_lean_obj_tag
	cbnz	w0, LBB46_3
	b	LBB46_2
LBB46_2:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-72]
	bl	_lean_inc_ref
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-24]
	b	LBB46_38
LBB46_3:                                ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-64]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #24]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	stur	x0, [x29, #-80]
	ldur	x0, [x29, #-80]
	bl	_lean_inc
	ldur	x0, [x29, #-64]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #28]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	stur	x0, [x29, #-88]
	ldur	x0, [x29, #-88]
	bl	_lean_inc
	ldur	x0, [x29, #-64]
	bl	_lean_dec_ref
	ldr	w0, [sp, #24]                   ; 4-byte Folded Reload
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-96]
	ldur	x0, [x29, #-32]
	bl	_lean_string_utf8_byte_size
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldr	w2, [sp, #24]                   ; 4-byte Folded Reload
	mov	x0, x2
	mov	w1, #3                          ; =0x3
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #24]                   ; 4-byte Folded Reload
	stur	x0, [x29, #-112]
	ldur	x0, [x29, #-112]
	ldur	x2, [x29, #-32]
	bl	_lean_ctor_set
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	ldur	x0, [x29, #-112]
	ldur	x2, [x29, #-96]
	bl	_lean_ctor_set
	ldur	x0, [x29, #-112]
	ldur	x2, [x29, #-104]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldur	x0, [x29, #-112]
	ldur	x1, [x29, #-80]
	ldur	x2, [x29, #-96]
	bl	_l_Substring_nextn
	stur	x0, [x29, #-120]
	ldur	x0, [x29, #-112]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-96]
	ldur	x2, [x29, #-120]
	bl	_lean_string_utf8_extract
	stur	x0, [x29, #-128]
	ldur	x0, [x29, #-120]
	bl	_lean_dec
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-136]
	adrp	x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
	ldr	x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
	stur	x8, [x29, #-144]
	ldur	x0, [x29, #-40]
	bl	_lean_array_size
	stur	x0, [x29, #-152]
	stur	xzr, [x29, #-160]
	ldur	x0, [x29, #-128]
	ldur	x1, [x29, #-144]
	ldur	x2, [x29, #-136]
	ldur	x3, [x29, #-40]
	ldur	x4, [x29, #-152]
	ldur	x5, [x29, #-160]
	ldur	x6, [x29, #-144]
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	stur	x0, [x29, #-168]
	ldur	x0, [x29, #-168]
	bl	_lean_is_exclusive
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	eor	w8, w0, w8
	sturb	w8, [x29, #-169]
	ldurb	w8, [x29, #-169]
	cbnz	w8, LBB46_21
	b	LBB46_4
LBB46_4:                                ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-168]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-184]
	ldur	x0, [x29, #-168]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-192]
	ldur	x0, [x29, #-192]
	bl	_lean_dec
	ldur	x0, [x29, #-184]
	bl	_lean_obj_tag
	cbnz	w0, LBB46_6
	b	LBB46_5
LBB46_5:                                ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-168]
	bl	_lean_free_object
	ldur	x0, [x29, #-128]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-200]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-208]
	ldur	x8, [x29, #-200]
	stur	x8, [x29, #-64]
	ldur	x8, [x29, #-208]
	stur	x8, [x29, #-72]
	b	LBB46_1
LBB46_6:                                ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-184]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	sturb	w8, [x29, #-209]
	ldurb	w8, [x29, #-209]
	cbnz	w8, LBB46_12
	b	LBB46_7
LBB46_7:                                ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-184]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #208]
	ldr	x0, [sp, #208]
	bl	_lean_obj_tag
	cbnz	w0, LBB46_9
	b	LBB46_8
LBB46_8:                                ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-184]
	bl	_lean_free_object
	ldur	x0, [x29, #-168]
	bl	_lean_free_object
	ldur	x0, [x29, #-128]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-88]
	str	x8, [sp, #200]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #192]
	ldr	x8, [sp, #200]
	stur	x8, [x29, #-64]
	ldr	x8, [sp, #192]
	stur	x8, [x29, #-72]
	b	LBB46_1
LBB46_9:
	ldur	x0, [x29, #-88]
	bl	_lean_dec
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	x0, [sp, #208]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #191]
	ldrb	w8, [sp, #191]
	cbnz	w8, LBB46_11
	b	LBB46_10
LBB46_10:
	ldr	x0, [sp, #208]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #20]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #176]
	ldr	x0, [sp, #176]
	bl	_lean_dec
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #208]
	ldur	x2, [x29, #-128]
	bl	_lean_ctor_set
	ldur	x0, [x29, #-168]
	ldur	x2, [x29, #-56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldur	x8, [x29, #-168]
	stur	x8, [x29, #-24]
	b	LBB46_38
LBB46_11:
	ldr	x0, [sp, #208]
	bl	_lean_dec
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #16]                   ; 4-byte Folded Spill
	mov	x0, x1
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #168]
	ldr	x0, [sp, #168]
	ldur	x2, [x29, #-128]
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldur	x0, [x29, #-184]
	ldr	x2, [sp, #168]
	bl	_lean_ctor_set
	ldr	w1, [sp, #16]                   ; 4-byte Folded Reload
	ldur	x0, [x29, #-168]
	ldur	x2, [x29, #-56]
	bl	_lean_ctor_set
	ldur	x8, [x29, #-168]
	stur	x8, [x29, #-24]
	b	LBB46_38
LBB46_12:                               ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-184]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #160]
	ldr	x0, [sp, #160]
	bl	_lean_inc
	ldur	x0, [x29, #-184]
	bl	_lean_dec
	ldr	x0, [sp, #160]
	bl	_lean_obj_tag
	cbnz	w0, LBB46_14
	b	LBB46_13
LBB46_13:                               ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-168]
	bl	_lean_free_object
	ldur	x0, [x29, #-128]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-88]
	str	x8, [sp, #152]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #144]
	ldr	x8, [sp, #152]
	stur	x8, [x29, #-64]
	ldr	x8, [sp, #144]
	stur	x8, [x29, #-72]
	b	LBB46_1
LBB46_14:
	ldur	x0, [x29, #-88]
	bl	_lean_dec
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	x0, [sp, #160]
	bl	_lean_is_exclusive
	tbz	w0, #0, LBB46_16
	b	LBB46_15
LBB46_15:
	ldr	x0, [sp, #160]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_release
	ldr	x8, [sp, #160]
	str	x8, [sp, #136]
	b	LBB46_17
LBB46_16:
	ldr	x0, [sp, #160]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #136]
	b	LBB46_17
LBB46_17:
	ldr	x0, [sp, #136]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB46_19
	b	LBB46_18
LBB46_18:
	mov	w1, #1                          ; =0x1
	mov	x0, x1
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_ctor
	str	x0, [sp, #128]
	b	LBB46_20
LBB46_19:
	ldr	x8, [sp, #136]
	str	x8, [sp, #128]
	b	LBB46_20
LBB46_20:
	ldr	x0, [sp, #128]
	ldur	x2, [x29, #-128]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_ctor_set
	ldr	w2, [sp, #8]                    ; 4-byte Folded Reload
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x1
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #120]
	ldr	x0, [sp, #120]
	ldr	x2, [sp, #128]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldur	x0, [x29, #-168]
	ldur	x2, [x29, #-56]
	bl	_lean_ctor_set
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	ldur	x0, [x29, #-168]
	ldr	x2, [sp, #120]
	bl	_lean_ctor_set
	ldur	x8, [x29, #-168]
	stur	x8, [x29, #-24]
	b	LBB46_38
LBB46_21:                               ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-168]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #112]
	ldr	x0, [sp, #112]
	bl	_lean_inc
	ldur	x0, [x29, #-168]
	bl	_lean_dec
	ldr	x0, [sp, #112]
	bl	_lean_obj_tag
	cbnz	w0, LBB46_23
	b	LBB46_22
LBB46_22:                               ;   in Loop: Header=BB46_1 Depth=1
	ldur	x0, [x29, #-128]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-88]
	str	x8, [sp, #104]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #96]
	ldr	x8, [sp, #104]
	stur	x8, [x29, #-64]
	ldr	x8, [sp, #96]
	stur	x8, [x29, #-72]
	b	LBB46_1
LBB46_23:                               ;   in Loop: Header=BB46_1 Depth=1
	ldr	x0, [sp, #112]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #88]
	ldr	x0, [sp, #88]
	bl	_lean_inc
	ldr	x0, [sp, #112]
	bl	_lean_is_exclusive
	tbz	w0, #0, LBB46_25
	b	LBB46_24
LBB46_24:                               ;   in Loop: Header=BB46_1 Depth=1
	ldr	x0, [sp, #112]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_release
	ldr	x8, [sp, #112]
	str	x8, [sp, #80]
	b	LBB46_26
LBB46_25:                               ;   in Loop: Header=BB46_1 Depth=1
	ldr	x0, [sp, #112]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #80]
	b	LBB46_26
LBB46_26:                               ;   in Loop: Header=BB46_1 Depth=1
	ldr	x0, [sp, #88]
	bl	_lean_obj_tag
	cbnz	w0, LBB46_28
	b	LBB46_27
LBB46_27:                               ;   in Loop: Header=BB46_1 Depth=1
	ldr	x0, [sp, #80]
	bl	_lean_dec
	ldur	x0, [x29, #-128]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-88]
	str	x8, [sp, #72]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #64]
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-64]
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-72]
	b	LBB46_1
LBB46_28:
	ldur	x0, [x29, #-88]
	bl	_lean_dec
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	x0, [sp, #88]
	bl	_lean_is_exclusive
	tbz	w0, #0, LBB46_30
	b	LBB46_29
LBB46_29:
	ldr	x0, [sp, #88]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_release
	ldr	x8, [sp, #88]
	str	x8, [sp, #56]
	b	LBB46_31
LBB46_30:
	ldr	x0, [sp, #88]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #56]
	b	LBB46_31
LBB46_31:
	ldr	x0, [sp, #56]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB46_33
	b	LBB46_32
LBB46_32:
	mov	w1, #1                          ; =0x1
	mov	x0, x1
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_ctor
	str	x0, [sp, #48]
	b	LBB46_34
LBB46_33:
	ldr	x8, [sp, #56]
	str	x8, [sp, #48]
	b	LBB46_34
LBB46_34:
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-128]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_set
	ldr	x0, [sp, #80]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB46_36
	b	LBB46_35
LBB46_35:
	mov	w1, #1                          ; =0x1
	mov	x0, x1
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_ctor
	str	x0, [sp, #40]
	b	LBB46_37
LBB46_36:
	ldr	x8, [sp, #80]
	str	x8, [sp, #40]
	b	LBB46_37
LBB46_37:
	ldr	x0, [sp, #40]
	ldr	x2, [sp, #48]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_set
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	x2, [sp, #40]
	bl	_lean_ctor_set
	ldr	x0, [sp, #32]
	ldur	x2, [x29, #-56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-24]
	b	LBB46_38
LBB46_38:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #432]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #416]            ; 16-byte Folded Reload
	add	sp, sp, #448
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
	tbz	w0, #0, LBB47_2
	b	LBB47_1
LBB47_1:
	ldr	x0, [sp]
	bl	_lean_unbox
	mov	x8, x0
	stur	w8, [x29, #-4]
	b	LBB47_3
LBB47_2:
	ldr	x0, [sp]
	bl	_lean_ptr_tag
	stur	w0, [x29, #-4]
	b	LBB47_3
LBB47_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ctor_release
_lean_ctor_release:                     ; @lean_ctor_release
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
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_num_objs
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, hs
	tbz	w8, #0, LBB48_2
	b	LBB48_1
LBB48_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #643                        ; =0x283
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB48_2
LBB48_2:
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_obj_cptr
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldur	w9, [x29, #-12]
                                        ; kill: def $x9 killed $w9
	ldr	x0, [x8, x9, lsl #3]
	bl	_lean_dec
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	ldr	x8, [sp, #8]
	ldur	w9, [x29, #-12]
                                        ; kill: def $x9 killed $w9
	str	x0, [x8, x9, lsl #3]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.private_extern	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1 ; -- Begin function l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1
	.globl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1
	.p2align	2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1: ; @l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	str	x7, [sp, #16]
	b	LBB50_1
LBB50_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldr	x4, [sp, #32]
	ldr	x5, [sp, #24]
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg ; -- Begin function l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	.globl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	.p2align	2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg: ; @l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #416
	stp	x28, x27, [sp, #384]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #400]            ; 16-byte Folded Spill
	add	x29, sp, #400
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-72]
	stur	x6, [x29, #-80]
	b	LBB51_1
LBB51_1:
	ldur	x0, [x29, #-72]
	bl	_lean_obj_tag
	cbnz	w0, LBB51_3
	b	LBB51_2
LBB51_2:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-80]
	bl	_lean_inc_ref
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_3:
	ldur	x0, [x29, #-72]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #24]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	stur	x0, [x29, #-88]
	ldur	x0, [x29, #-88]
	bl	_lean_inc
	ldur	x0, [x29, #-72]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #28]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	stur	x0, [x29, #-96]
	ldur	x0, [x29, #-96]
	bl	_lean_inc
	ldur	x0, [x29, #-72]
	bl	_lean_dec_ref
	ldr	w0, [sp, #24]                   ; 4-byte Folded Reload
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-32]
	bl	_lean_string_utf8_byte_size
	stur	x0, [x29, #-112]
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldr	w2, [sp, #24]                   ; 4-byte Folded Reload
	mov	x0, x2
	mov	w1, #3                          ; =0x3
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #24]                   ; 4-byte Folded Reload
	stur	x0, [x29, #-120]
	ldur	x0, [x29, #-120]
	ldur	x2, [x29, #-32]
	bl	_lean_ctor_set
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	ldur	x0, [x29, #-120]
	ldur	x2, [x29, #-104]
	bl	_lean_ctor_set
	ldur	x0, [x29, #-120]
	ldur	x2, [x29, #-112]
	mov	w1, #2                          ; =0x2
	bl	_lean_ctor_set
	ldur	x0, [x29, #-120]
	ldur	x1, [x29, #-88]
	ldur	x2, [x29, #-104]
	bl	_l_Substring_nextn
	stur	x0, [x29, #-128]
	ldur	x0, [x29, #-120]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-104]
	ldur	x2, [x29, #-128]
	bl	_lean_string_utf8_extract
	stur	x0, [x29, #-136]
	ldur	x0, [x29, #-128]
	bl	_lean_dec
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-144]
	adrp	x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
	ldr	x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
	stur	x8, [x29, #-152]
	ldur	x0, [x29, #-40]
	bl	_lean_array_size
	stur	x0, [x29, #-160]
	stur	xzr, [x29, #-168]
	ldur	x0, [x29, #-136]
	ldur	x1, [x29, #-152]
	ldur	x2, [x29, #-144]
	ldur	x3, [x29, #-40]
	ldur	x4, [x29, #-160]
	ldur	x5, [x29, #-168]
	ldur	x6, [x29, #-152]
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	stur	x0, [x29, #-176]
	ldur	x0, [x29, #-176]
	bl	_lean_is_exclusive
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	eor	w8, w0, w8
	sturb	w8, [x29, #-177]
	ldurb	w8, [x29, #-177]
	cbnz	w8, LBB51_21
	b	LBB51_4
LBB51_4:
	ldur	x0, [x29, #-176]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-192]
	ldur	x0, [x29, #-176]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #200]
	ldr	x0, [sp, #200]
	bl	_lean_dec
	ldur	x0, [x29, #-192]
	bl	_lean_obj_tag
	cbnz	w0, LBB51_6
	b	LBB51_5
LBB51_5:
	ldur	x0, [x29, #-176]
	bl	_lean_free_object
	ldur	x0, [x29, #-136]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	ldur	x3, [x29, #-56]
	ldur	x4, [x29, #-96]
	ldur	x5, [x29, #-48]
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	str	x0, [sp, #192]
	ldr	x8, [sp, #192]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_6:
	ldur	x0, [x29, #-192]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #191]
	ldrb	w8, [sp, #191]
	cbnz	w8, LBB51_12
	b	LBB51_7
LBB51_7:
	ldur	x0, [x29, #-192]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #176]
	ldr	x0, [sp, #176]
	bl	_lean_obj_tag
	cbnz	w0, LBB51_9
	b	LBB51_8
LBB51_8:
	ldur	x0, [x29, #-192]
	bl	_lean_free_object
	ldur	x0, [x29, #-176]
	bl	_lean_free_object
	ldur	x0, [x29, #-136]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	ldur	x3, [x29, #-56]
	ldur	x4, [x29, #-96]
	ldur	x5, [x29, #-48]
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	str	x0, [sp, #168]
	ldr	x8, [sp, #168]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_9:
	ldur	x0, [x29, #-96]
	bl	_lean_dec
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	x0, [sp, #176]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #167]
	ldrb	w8, [sp, #167]
	cbnz	w8, LBB51_11
	b	LBB51_10
LBB51_10:
	ldr	x0, [sp, #176]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #20]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #152]
	ldr	x0, [sp, #152]
	bl	_lean_dec
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #176]
	ldur	x2, [x29, #-136]
	bl	_lean_ctor_set
	ldur	x0, [x29, #-176]
	ldur	x2, [x29, #-56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldur	x8, [x29, #-176]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_11:
	ldr	x0, [sp, #176]
	bl	_lean_dec
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #16]                   ; 4-byte Folded Spill
	mov	x0, x1
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #144]
	ldr	x0, [sp, #144]
	ldur	x2, [x29, #-136]
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldur	x0, [x29, #-192]
	ldr	x2, [sp, #144]
	bl	_lean_ctor_set
	ldr	w1, [sp, #16]                   ; 4-byte Folded Reload
	ldur	x0, [x29, #-176]
	ldur	x2, [x29, #-56]
	bl	_lean_ctor_set
	ldur	x8, [x29, #-176]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_12:
	ldur	x0, [x29, #-192]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #136]
	ldr	x0, [sp, #136]
	bl	_lean_inc
	ldur	x0, [x29, #-192]
	bl	_lean_dec
	ldr	x0, [sp, #136]
	bl	_lean_obj_tag
	cbnz	w0, LBB51_14
	b	LBB51_13
LBB51_13:
	ldur	x0, [x29, #-176]
	bl	_lean_free_object
	ldur	x0, [x29, #-136]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	ldur	x3, [x29, #-56]
	ldur	x4, [x29, #-96]
	ldur	x5, [x29, #-48]
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	str	x0, [sp, #128]
	ldr	x8, [sp, #128]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_14:
	ldur	x0, [x29, #-96]
	bl	_lean_dec
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	x0, [sp, #136]
	bl	_lean_is_exclusive
	tbz	w0, #0, LBB51_16
	b	LBB51_15
LBB51_15:
	ldr	x0, [sp, #136]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_release
	ldr	x8, [sp, #136]
	str	x8, [sp, #120]
	b	LBB51_17
LBB51_16:
	ldr	x0, [sp, #136]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #120]
	b	LBB51_17
LBB51_17:
	ldr	x0, [sp, #120]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB51_19
	b	LBB51_18
LBB51_18:
	mov	w1, #1                          ; =0x1
	mov	x0, x1
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_ctor
	str	x0, [sp, #112]
	b	LBB51_20
LBB51_19:
	ldr	x8, [sp, #120]
	str	x8, [sp, #112]
	b	LBB51_20
LBB51_20:
	ldr	x0, [sp, #112]
	ldur	x2, [x29, #-136]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_ctor_set
	ldr	w2, [sp, #8]                    ; 4-byte Folded Reload
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x1
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #104]
	ldr	x0, [sp, #104]
	ldr	x2, [sp, #112]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldur	x0, [x29, #-176]
	ldur	x2, [x29, #-56]
	bl	_lean_ctor_set
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	ldur	x0, [x29, #-176]
	ldr	x2, [sp, #104]
	bl	_lean_ctor_set
	ldur	x8, [x29, #-176]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_21:
	ldur	x0, [x29, #-176]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #96]
	ldr	x0, [sp, #96]
	bl	_lean_inc
	ldur	x0, [x29, #-176]
	bl	_lean_dec
	ldr	x0, [sp, #96]
	bl	_lean_obj_tag
	cbnz	w0, LBB51_23
	b	LBB51_22
LBB51_22:
	ldur	x0, [x29, #-136]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	ldur	x3, [x29, #-56]
	ldur	x4, [x29, #-96]
	ldur	x5, [x29, #-48]
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	str	x0, [sp, #88]
	ldr	x8, [sp, #88]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_23:
	ldr	x0, [sp, #96]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #80]
	ldr	x0, [sp, #80]
	bl	_lean_inc
	ldr	x0, [sp, #96]
	bl	_lean_is_exclusive
	tbz	w0, #0, LBB51_25
	b	LBB51_24
LBB51_24:
	ldr	x0, [sp, #96]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_release
	ldr	x8, [sp, #96]
	str	x8, [sp, #72]
	b	LBB51_26
LBB51_25:
	ldr	x0, [sp, #96]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #72]
	b	LBB51_26
LBB51_26:
	ldr	x0, [sp, #80]
	bl	_lean_obj_tag
	cbnz	w0, LBB51_28
	b	LBB51_27
LBB51_27:
	ldr	x0, [sp, #72]
	bl	_lean_dec
	ldur	x0, [x29, #-136]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	ldur	x3, [x29, #-56]
	ldur	x4, [x29, #-96]
	ldur	x5, [x29, #-48]
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_28:
	ldur	x0, [x29, #-96]
	bl	_lean_dec
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	x0, [sp, #80]
	bl	_lean_is_exclusive
	tbz	w0, #0, LBB51_30
	b	LBB51_29
LBB51_29:
	ldr	x0, [sp, #80]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_release
	ldr	x8, [sp, #80]
	str	x8, [sp, #56]
	b	LBB51_31
LBB51_30:
	ldr	x0, [sp, #80]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #56]
	b	LBB51_31
LBB51_31:
	ldr	x0, [sp, #56]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB51_33
	b	LBB51_32
LBB51_32:
	mov	w1, #1                          ; =0x1
	mov	x0, x1
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_ctor
	str	x0, [sp, #48]
	b	LBB51_34
LBB51_33:
	ldr	x8, [sp, #56]
	str	x8, [sp, #48]
	b	LBB51_34
LBB51_34:
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-136]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_set
	ldr	x0, [sp, #72]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB51_36
	b	LBB51_35
LBB51_35:
	mov	w1, #1                          ; =0x1
	mov	x0, x1
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_ctor
	str	x0, [sp, #40]
	b	LBB51_37
LBB51_36:
	ldr	x8, [sp, #72]
	str	x8, [sp, #40]
	b	LBB51_37
LBB51_37:
	ldr	x0, [sp, #40]
	ldr	x2, [sp, #48]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_set
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	x2, [sp, #40]
	bl	_lean_ctor_set
	ldr	x0, [sp, #32]
	ldur	x2, [x29, #-56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-24]
	b	LBB51_38
LBB51_38:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #400]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #384]            ; 16-byte Folded Reload
	add	sp, sp, #416
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1 ; -- Begin function l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1
	.globl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1
	.p2align	2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1: ; @l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	str	x7, [sp, #16]
	b	LBB52_1
LBB52_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldr	x4, [sp, #40]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #24]
	bl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_matchPrefix    ; -- Begin function l_Array_matchPrefix
	.globl	_l_Array_matchPrefix
	.p2align	2
_l_Array_matchPrefix:                   ; @l_Array_matchPrefix
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	b	LBB53_1
LBB53_1:
	ldur	x0, [x29, #-24]
	bl	_lean_string_length
	stur	x0, [x29, #-32]
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	bl	_lean_nat_add
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldur	x0, [x29, #-48]
	bl	_l_List_range
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-56]
	bl	_l_List_reverse___redArg
	str	x0, [sp, #64]
	mov	x0, #0                          ; =0x0
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	_lean_box
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #56]
	bl	_lean_box
	str	x0, [sp, #48]
	adrp	x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
	ldr	x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
	str	x8, [sp, #40]
	ldr	x0, [sp, #64]
	bl	_lean_inc
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #40]
	ldr	x3, [sp, #48]
	ldr	x4, [sp, #64]
	ldr	x5, [sp, #64]
	ldr	x6, [sp, #40]
	bl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	str	x0, [sp, #32]
	ldr	x0, [sp, #64]
	bl	_lean_dec
	ldr	x0, [sp, #32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldr	x0, [sp, #32]
	bl	_lean_dec_ref
	ldr	x0, [sp, #24]
	bl	_lean_obj_tag
	cbnz	w0, LBB53_3
	b	LBB53_2
LBB53_2:
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-8]
	b	LBB53_4
LBB53_3:
	ldr	x0, [sp, #24]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_dec_ref
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB53_4
LBB53_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	b	LBB54_1
LBB54_1:
	ldr	x0, [sp, #40]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldr	x0, [sp, #32]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldr	x0, [sp, #32]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldr	x4, [sp, #16]
	ldr	x5, [sp, #8]
	ldr	x6, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	str	x0, [sp]
	ldr	x0, [sp, #24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed ; -- Begin function l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed
	.globl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed
	.p2align	2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed: ; @l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed
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
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	x5, [sp, #16]
	b	LBB55_1
LBB55_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	ldr	x4, [sp, #24]
	ldr	x5, [sp, #16]
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed ; -- Begin function l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed
	.globl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed
	.p2align	2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed: ; @l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	str	x7, [sp, #16]
	b	LBB56_1
LBB56_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldr	x4, [sp, #40]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #24]
	ldr	x7, [sp, #16]
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1
	str	x0, [sp, #8]
	ldr	x0, [sp, #24]
	bl	_lean_dec_ref
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed ; -- Begin function l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed
	.globl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed
	.p2align	2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed: ; @l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed
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
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	x5, [sp, #16]
	str	x6, [sp, #8]
	b	LBB57_1
LBB57_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	ldr	x4, [sp, #24]
	ldr	x5, [sp, #16]
	ldr	x6, [sp, #8]
	bl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	ldr	x0, [sp, #24]
	bl	_lean_dec
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed ; -- Begin function l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed
	.globl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed
	.p2align	2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed: ; @l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	str	x7, [sp, #16]
	b	LBB58_1
LBB58_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldr	x4, [sp, #40]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #24]
	ldr	x7, [sp, #16]
	bl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1
	str	x0, [sp, #8]
	ldr	x0, [sp, #24]
	bl	_lean_dec_ref
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_matchPrefix___boxed ; -- Begin function l_Array_matchPrefix___boxed
	.globl	_l_Array_matchPrefix___boxed
	.p2align	2
_l_Array_matchPrefix___boxed:           ; @l_Array_matchPrefix___boxed
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
	b	LBB59_1
LBB59_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_l_Array_matchPrefix
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0 ; -- Begin function l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	.globl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	.p2align	2
_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0: ; @l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
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
	b	LBB60_1
LBB60_1:
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
	.private_extern	_l_IO_println___at___T_check_spec__0 ; -- Begin function l_IO_println___at___T_check_spec__0
	.globl	_l_IO_println___at___T_check_spec__0
	.p2align	2
_l_IO_println___at___T_check_spec__0:   ; @l_IO_println___at___T_check_spec__0
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
	b	LBB61_1
LBB61_1:
	mov	w8, #10                         ; =0xa
	stur	w8, [x29, #-20]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-20]
	bl	_lean_string_push
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #544
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-72]
	stur	x6, [x29, #-80]
	b	LBB62_1
LBB62_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-64]
	bl	_lean_usize_dec_eq
	sturb	w0, [x29, #-105]
	ldurb	w8, [x29, #-105]
	cbnz	w8, LBB62_16
	b	LBB62_2
LBB62_2:                                ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	bl	_lean_array_uget
	stur	x0, [x29, #-120]
	adrp	x0, _l_instDecidableEqString___boxed@GOTPAGE
	ldr	x0, [x0, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_closure
	mov	x8, x0
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	stur	x8, [x29, #-152]
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-160]
	ldur	x0, [x29, #-120]
	bl	_lean_string_utf8_byte_size
	stur	x0, [x29, #-168]
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-120]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-160]
	ldur	x3, [x29, #-168]
	bl	_l_Lean_Data_Trie_matchPrefix___redArg
	stur	x0, [x29, #-176]
	ldur	x0, [x29, #-168]
	bl	_lean_dec
	ldur	x0, [x29, #-120]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-120]
	bl	_l_Array_matchPrefix
	stur	x0, [x29, #-184]
	ldur	x0, [x29, #-184]
	bl	_lean_inc
	ldur	x0, [x29, #-176]
	bl	_lean_inc
	ldur	x0, [x29, #-152]
	ldur	x1, [x29, #-176]
	ldur	x2, [x29, #-184]
	bl	_l_Option_instDecidableEq_decEq___redArg
	sturb	w0, [x29, #-185]
	ldurb	w8, [x29, #-185]
	cbnz	w8, LBB62_9
	b	LBB62_3
LBB62_3:                                ;   in Loop: Header=BB62_1 Depth=1
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGEOFF]
	stur	x8, [x29, #-200]
	ldur	x0, [x29, #-200]
	ldur	x1, [x29, #-120]
	bl	_lean_string_append
	stur	x0, [x29, #-208]
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGEOFF]
	stur	x8, [x29, #-216]
	ldur	x0, [x29, #-208]
	ldur	x1, [x29, #-216]
	bl	_lean_string_append
	stur	x0, [x29, #-224]
	ldur	x0, [x29, #-176]
	bl	_lean_obj_tag
	cbnz	w0, LBB62_5
	b	LBB62_4
LBB62_4:                                ;   in Loop: Header=BB62_1 Depth=1
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
	stur	x8, [x29, #-240]
	ldur	x8, [x29, #-240]
	stur	x8, [x29, #-232]
	b	LBB62_6
LBB62_5:                                ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-176]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-248]
	ldur	x0, [x29, #-248]
	bl	_lean_inc
	ldur	x0, [x29, #-176]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
	stur	x8, [x29, #-256]
	ldur	x0, [x29, #-248]
	bl	_l_addParenHeuristic
	str	x0, [sp, #296]
	ldur	x0, [x29, #-256]
	ldr	x1, [sp, #296]
	bl	_lean_string_append
	str	x0, [sp, #288]
	ldr	x0, [sp, #296]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
	str	x8, [sp, #280]
	ldr	x0, [sp, #288]
	ldr	x1, [sp, #280]
	bl	_lean_string_append
	str	x0, [sp, #272]
	ldr	x8, [sp, #272]
	stur	x8, [x29, #-232]
	b	LBB62_6
LBB62_6:                                ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-224]
	ldur	x1, [x29, #-232]
	bl	_lean_string_append
	str	x0, [sp, #264]
	ldur	x0, [x29, #-232]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGEOFF]
	str	x8, [sp, #256]
	ldr	x0, [sp, #264]
	ldr	x1, [sp, #256]
	bl	_lean_string_append
	str	x0, [sp, #248]
	ldur	x0, [x29, #-184]
	bl	_lean_obj_tag
	cbnz	w0, LBB62_8
	b	LBB62_7
LBB62_7:                                ;   in Loop: Header=BB62_1 Depth=1
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
	str	x8, [sp, #240]
	ldr	x8, [sp, #248]
	stur	x8, [x29, #-136]
	ldr	x8, [sp, #240]
	stur	x8, [x29, #-144]
	b	LBB62_13
LBB62_8:                                ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-184]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #232]
	ldr	x0, [sp, #232]
	bl	_lean_inc
	ldur	x0, [x29, #-184]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
	str	x8, [sp, #224]
	ldr	x0, [sp, #232]
	bl	_l_addParenHeuristic
	str	x0, [sp, #216]
	ldr	x0, [sp, #224]
	ldr	x1, [sp, #216]
	bl	_lean_string_append
	str	x0, [sp, #208]
	ldr	x0, [sp, #216]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
	str	x8, [sp, #200]
	ldr	x0, [sp, #208]
	ldr	x1, [sp, #200]
	bl	_lean_string_append
	str	x0, [sp, #192]
	ldr	x8, [sp, #248]
	stur	x8, [x29, #-136]
	ldr	x8, [sp, #192]
	stur	x8, [x29, #-144]
	b	LBB62_13
LBB62_9:                                ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-184]
	bl	_lean_dec
	ldur	x0, [x29, #-176]
	bl	_lean_dec
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-128]
	b	LBB62_10
LBB62_10:                               ;   in Loop: Header=BB62_1 Depth=1
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
	str	x8, [sp, #184]
	ldr	x0, [sp, #184]
	ldur	x1, [x29, #-120]
	bl	_lean_string_append
	str	x0, [sp, #176]
	adrp	x0, _l_instDecidableEqString___boxed@GOTPAGE
	ldr	x0, [x0, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_closure
	str	x0, [sp, #168]
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGEOFF]
	str	x8, [sp, #160]
	ldr	x0, [sp, #176]
	bl	_lean_string_utf8_byte_size
	str	x0, [sp, #152]
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldr	x0, [sp, #176]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #160]
	ldr	x3, [sp, #152]
	bl	_l_Lean_Data_Trie_matchPrefix___redArg
	str	x0, [sp, #144]
	ldr	x0, [sp, #152]
	bl	_lean_dec
	ldr	x0, [sp, #176]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-120]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-120]
	bl	_l_Array_matchPrefix
	str	x0, [sp, #136]
	ldr	x0, [sp, #168]
	ldr	x1, [sp, #144]
	ldr	x2, [sp, #136]
	bl	_l_Option_instDecidableEq_decEq___redArg
	strb	w0, [sp, #135]
	ldrb	w8, [sp, #135]
	cbnz	w8, LBB62_12
	b	LBB62_11
LBB62_11:                               ;   in Loop: Header=BB62_1 Depth=1
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGEOFF]
	str	x8, [sp, #120]
	ldr	x0, [sp, #120]
	ldur	x1, [x29, #-120]
	bl	_lean_string_append
	str	x0, [sp, #112]
	ldur	x0, [x29, #-120]
	bl	_lean_dec_ref
	ldr	x0, [sp, #112]
	ldur	x1, [x29, #-128]
	bl	_l_IO_println___at___T_check_spec__0
	str	x0, [sp, #104]
	ldr	x8, [sp, #104]
	stur	x8, [x29, #-104]
	b	LBB62_18
LBB62_12:                               ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-120]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #96]
	ldr	x8, [sp, #96]
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-128]
	stur	x8, [x29, #-96]
	b	LBB62_17
LBB62_13:                               ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-136]
	ldur	x1, [x29, #-144]
	bl	_lean_string_append
	str	x0, [sp, #88]
	ldur	x0, [x29, #-144]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGEOFF]
	str	x8, [sp, #80]
	ldr	x0, [sp, #88]
	ldr	x1, [sp, #80]
	bl	_lean_string_append
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	ldur	x1, [x29, #-80]
	bl	_l_IO_println___at___T_check_spec__0
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB62_15
	b	LBB62_14
LBB62_14:                               ;   in Loop: Header=BB62_1 Depth=1
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-128]
	b	LBB62_10
LBB62_15:                               ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-120]
	bl	_lean_dec_ref
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-104]
	b	LBB62_18
LBB62_16:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #8]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-72]
	bl	_lean_ctor_set
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-24]
	b	LBB62_21
LBB62_17:                               ;   in Loop: Header=BB62_1 Depth=1
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #40]
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #40]
	bl	_lean_usize_add
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-80]
	b	LBB62_1
LBB62_18:                               ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-104]
	bl	_lean_obj_tag
	cbnz	w0, LBB62_20
	b	LBB62_19
LBB62_19:                               ;   in Loop: Header=BB62_1 Depth=1
	ldur	x0, [x29, #-104]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_lean_inc
	ldur	x0, [x29, #-104]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldur	x0, [x29, #-104]
	bl	_lean_dec_ref
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-88]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-96]
	b	LBB62_17
LBB62_20:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-104]
	stur	x8, [x29, #-24]
	b	LBB62_21
LBB62_21:
	ldur	x0, [x29, #-24]
	add	sp, sp, #544
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #544
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-72]
	stur	x6, [x29, #-80]
	b	LBB63_1
LBB63_1:
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-64]
	bl	_lean_usize_dec_eq
	sturb	w0, [x29, #-105]
	ldurb	w8, [x29, #-105]
	cbnz	w8, LBB63_16
	b	LBB63_2
LBB63_2:
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	bl	_lean_array_uget
	stur	x0, [x29, #-120]
	adrp	x0, _l_instDecidableEqString___boxed@GOTPAGE
	ldr	x0, [x0, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_alloc_closure
	mov	x8, x0
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	stur	x8, [x29, #-152]
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-160]
	ldur	x0, [x29, #-120]
	bl	_lean_string_utf8_byte_size
	stur	x0, [x29, #-168]
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-120]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-160]
	ldur	x3, [x29, #-168]
	bl	_l_Lean_Data_Trie_matchPrefix___redArg
	stur	x0, [x29, #-176]
	ldur	x0, [x29, #-168]
	bl	_lean_dec
	ldur	x0, [x29, #-120]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-120]
	bl	_l_Array_matchPrefix
	stur	x0, [x29, #-184]
	ldur	x0, [x29, #-184]
	bl	_lean_inc
	ldur	x0, [x29, #-176]
	bl	_lean_inc
	ldur	x0, [x29, #-152]
	ldur	x1, [x29, #-176]
	ldur	x2, [x29, #-184]
	bl	_l_Option_instDecidableEq_decEq___redArg
	sturb	w0, [x29, #-185]
	ldurb	w8, [x29, #-185]
	cbnz	w8, LBB63_9
	b	LBB63_3
LBB63_3:
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGEOFF]
	stur	x8, [x29, #-200]
	ldur	x0, [x29, #-200]
	ldur	x1, [x29, #-120]
	bl	_lean_string_append
	stur	x0, [x29, #-208]
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGEOFF]
	stur	x8, [x29, #-216]
	ldur	x0, [x29, #-208]
	ldur	x1, [x29, #-216]
	bl	_lean_string_append
	stur	x0, [x29, #-224]
	ldur	x0, [x29, #-176]
	bl	_lean_obj_tag
	cbnz	w0, LBB63_5
	b	LBB63_4
LBB63_4:
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
	stur	x8, [x29, #-240]
	ldur	x8, [x29, #-240]
	stur	x8, [x29, #-232]
	b	LBB63_6
LBB63_5:
	ldur	x0, [x29, #-176]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-248]
	ldur	x0, [x29, #-248]
	bl	_lean_inc
	ldur	x0, [x29, #-176]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
	stur	x8, [x29, #-256]
	ldur	x0, [x29, #-248]
	bl	_l_addParenHeuristic
	str	x0, [sp, #296]
	ldur	x0, [x29, #-256]
	ldr	x1, [sp, #296]
	bl	_lean_string_append
	str	x0, [sp, #288]
	ldr	x0, [sp, #296]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
	str	x8, [sp, #280]
	ldr	x0, [sp, #288]
	ldr	x1, [sp, #280]
	bl	_lean_string_append
	str	x0, [sp, #272]
	ldr	x8, [sp, #272]
	stur	x8, [x29, #-232]
	b	LBB63_6
LBB63_6:
	ldur	x0, [x29, #-224]
	ldur	x1, [x29, #-232]
	bl	_lean_string_append
	str	x0, [sp, #264]
	ldur	x0, [x29, #-232]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGEOFF]
	str	x8, [sp, #256]
	ldr	x0, [sp, #264]
	ldr	x1, [sp, #256]
	bl	_lean_string_append
	str	x0, [sp, #248]
	ldur	x0, [x29, #-184]
	bl	_lean_obj_tag
	cbnz	w0, LBB63_8
	b	LBB63_7
LBB63_7:
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
	str	x8, [sp, #240]
	ldr	x8, [sp, #248]
	stur	x8, [x29, #-136]
	ldr	x8, [sp, #240]
	stur	x8, [x29, #-144]
	b	LBB63_13
LBB63_8:
	ldur	x0, [x29, #-184]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #232]
	ldr	x0, [sp, #232]
	bl	_lean_inc
	ldur	x0, [x29, #-184]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
	str	x8, [sp, #224]
	ldr	x0, [sp, #232]
	bl	_l_addParenHeuristic
	str	x0, [sp, #216]
	ldr	x0, [sp, #224]
	ldr	x1, [sp, #216]
	bl	_lean_string_append
	str	x0, [sp, #208]
	ldr	x0, [sp, #216]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
	str	x8, [sp, #200]
	ldr	x0, [sp, #208]
	ldr	x1, [sp, #200]
	bl	_lean_string_append
	str	x0, [sp, #192]
	ldr	x8, [sp, #248]
	stur	x8, [x29, #-136]
	ldr	x8, [sp, #192]
	stur	x8, [x29, #-144]
	b	LBB63_13
LBB63_9:
	ldur	x0, [x29, #-184]
	bl	_lean_dec
	ldur	x0, [x29, #-176]
	bl	_lean_dec
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-128]
	b	LBB63_10
LBB63_10:
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
	str	x8, [sp, #184]
	ldr	x0, [sp, #184]
	ldur	x1, [x29, #-120]
	bl	_lean_string_append
	str	x0, [sp, #176]
	adrp	x0, _l_instDecidableEqString___boxed@GOTPAGE
	ldr	x0, [x0, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_closure
	str	x0, [sp, #168]
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGEOFF]
	str	x8, [sp, #160]
	ldr	x0, [sp, #176]
	bl	_lean_string_utf8_byte_size
	str	x0, [sp, #152]
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldr	x0, [sp, #176]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #160]
	ldr	x3, [sp, #152]
	bl	_l_Lean_Data_Trie_matchPrefix___redArg
	str	x0, [sp, #144]
	ldr	x0, [sp, #152]
	bl	_lean_dec
	ldr	x0, [sp, #176]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-120]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-120]
	bl	_l_Array_matchPrefix
	str	x0, [sp, #136]
	ldr	x0, [sp, #168]
	ldr	x1, [sp, #144]
	ldr	x2, [sp, #136]
	bl	_l_Option_instDecidableEq_decEq___redArg
	strb	w0, [sp, #135]
	ldrb	w8, [sp, #135]
	cbnz	w8, LBB63_12
	b	LBB63_11
LBB63_11:
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGEOFF]
	str	x8, [sp, #120]
	ldr	x0, [sp, #120]
	ldur	x1, [x29, #-120]
	bl	_lean_string_append
	str	x0, [sp, #112]
	ldur	x0, [x29, #-120]
	bl	_lean_dec_ref
	ldr	x0, [sp, #112]
	ldur	x1, [x29, #-128]
	bl	_l_IO_println___at___T_check_spec__0
	str	x0, [sp, #104]
	ldr	x8, [sp, #104]
	stur	x8, [x29, #-104]
	b	LBB63_18
LBB63_12:
	ldur	x0, [x29, #-120]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #96]
	ldr	x8, [sp, #96]
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-128]
	stur	x8, [x29, #-96]
	b	LBB63_17
LBB63_13:
	ldur	x0, [x29, #-136]
	ldur	x1, [x29, #-144]
	bl	_lean_string_append
	str	x0, [sp, #88]
	ldur	x0, [x29, #-144]
	bl	_lean_dec_ref
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGEOFF]
	str	x8, [sp, #80]
	ldr	x0, [sp, #88]
	ldr	x1, [sp, #80]
	bl	_lean_string_append
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	ldur	x1, [x29, #-80]
	bl	_l_IO_println___at___T_check_spec__0
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_obj_tag
	cbnz	w0, LBB63_15
	b	LBB63_14
LBB63_14:
	ldr	x0, [sp, #64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #64]
	bl	_lean_dec_ref
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-128]
	b	LBB63_10
LBB63_15:
	ldur	x0, [x29, #-120]
	bl	_lean_dec_ref
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-104]
	b	LBB63_18
LBB63_16:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-72]
	bl	_lean_ctor_set
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-24]
	b	LBB63_21
LBB63_17:
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #40]
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #40]
	bl	_lean_usize_add
	str	x0, [sp, #32]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	ldr	x3, [sp, #32]
	ldur	x4, [x29, #-64]
	ldur	x5, [x29, #-88]
	ldur	x6, [x29, #-96]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB63_21
LBB63_18:
	ldur	x0, [x29, #-104]
	bl	_lean_obj_tag
	cbnz	w0, LBB63_20
	b	LBB63_19
LBB63_19:
	ldur	x0, [x29, #-104]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldur	x0, [x29, #-104]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_inc
	ldur	x0, [x29, #-104]
	bl	_lean_dec_ref
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-88]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-96]
	b	LBB63_17
LBB63_20:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-104]
	stur	x8, [x29, #-24]
	b	LBB63_21
LBB63_21:
	ldur	x0, [x29, #-24]
	add	sp, sp, #544
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	stur	x5, [x29, #-56]
	stur	x6, [x29, #-64]
	b	LBB64_1
LBB64_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-48]
	bl	_lean_usize_dec_eq
	sturb	w0, [x29, #-81]
	ldurb	w8, [x29, #-81]
	cbnz	w8, LBB64_7
	b	LBB64_2
LBB64_2:                                ;   in Loop: Header=BB64_1 Depth=1
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	bl	_lean_array_uget
	stur	x0, [x29, #-96]
	adrp	x0, _l_instDecidableEqString___boxed@GOTPAGE
	ldr	x0, [x0, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_closure
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-16]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-96]
	bl	_l_Lean_Data_Trie_findPrefix___redArg
	str	x0, [sp, #112]
	ldr	x0, [sp, #112]
	bl	_l_Array_sorted
	str	x0, [sp, #104]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-96]
	bl	_l_Array_findPrefix
	str	x0, [sp, #96]
	ldr	x0, [sp, #96]
	bl	_l_Array_sorted
	str	x0, [sp, #88]
	ldur	x0, [x29, #-104]
	ldr	x1, [sp, #104]
	ldr	x2, [sp, #88]
	bl	_l_Array_instDecidableEq___redArg
	strb	w0, [sp, #87]
	ldr	x0, [sp, #88]
	bl	_lean_dec_ref
	ldr	x0, [sp, #104]
	bl	_lean_dec_ref
	ldrb	w8, [sp, #87]
	cbnz	w8, LBB64_6
	b	LBB64_3
LBB64_3:                                ;   in Loop: Header=BB64_1 Depth=1
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGEOFF]
	str	x8, [sp, #72]
	ldr	x0, [sp, #72]
	ldur	x1, [x29, #-96]
	bl	_lean_string_append
	str	x0, [sp, #64]
	ldur	x0, [x29, #-96]
	bl	_lean_dec_ref
	ldr	x0, [sp, #64]
	ldur	x1, [x29, #-64]
	bl	_l_IO_println___at___T_check_spec__0
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_obj_tag
	cbnz	w0, LBB64_5
	b	LBB64_4
LBB64_4:                                ;   in Loop: Header=BB64_1 Depth=1
	ldr	x0, [sp, #56]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	bl	_lean_inc
	ldr	x0, [sp, #56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	_lean_inc
	ldr	x0, [sp, #56]
	bl	_lean_dec_ref
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-72]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-80]
	b	LBB64_8
LBB64_5:
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-8]
	b	LBB64_9
LBB64_6:                                ;   in Loop: Header=BB64_1 Depth=1
	ldur	x0, [x29, #-96]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-80]
	b	LBB64_8
LBB64_7:
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	x2, [x29, #-56]
	bl	_lean_ctor_set
	ldr	x0, [sp, #24]
	ldur	x2, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB64_9
LBB64_8:                                ;   in Loop: Header=BB64_1 Depth=1
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #16]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #16]
	bl	_lean_usize_add
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-64]
	b	LBB64_1
LBB64_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-72]
	stur	x6, [x29, #-80]
	b	LBB65_1
LBB65_1:
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-64]
	bl	_lean_usize_dec_eq
	sturb	w0, [x29, #-97]
	ldurb	w8, [x29, #-97]
	cbnz	w8, LBB65_7
	b	LBB65_2
LBB65_2:
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	bl	_lean_array_uget
	stur	x0, [x29, #-112]
	adrp	x0, _l_instDecidableEqString___boxed@GOTPAGE
	ldr	x0, [x0, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_closure
	stur	x0, [x29, #-120]
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-112]
	bl	_l_Lean_Data_Trie_findPrefix___redArg
	str	x0, [sp, #128]
	ldr	x0, [sp, #128]
	bl	_l_Array_sorted
	str	x0, [sp, #120]
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-112]
	bl	_l_Array_findPrefix
	str	x0, [sp, #112]
	ldr	x0, [sp, #112]
	bl	_l_Array_sorted
	str	x0, [sp, #104]
	ldur	x0, [x29, #-120]
	ldr	x1, [sp, #120]
	ldr	x2, [sp, #104]
	bl	_l_Array_instDecidableEq___redArg
	strb	w0, [sp, #103]
	ldr	x0, [sp, #104]
	bl	_lean_dec_ref
	ldr	x0, [sp, #120]
	bl	_lean_dec_ref
	ldrb	w8, [sp, #103]
	cbnz	w8, LBB65_6
	b	LBB65_3
LBB65_3:
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGEOFF]
	str	x8, [sp, #88]
	ldr	x0, [sp, #88]
	ldur	x1, [x29, #-112]
	bl	_lean_string_append
	str	x0, [sp, #80]
	ldur	x0, [x29, #-112]
	bl	_lean_dec_ref
	ldr	x0, [sp, #80]
	ldur	x1, [x29, #-80]
	bl	_l_IO_println___at___T_check_spec__0
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_obj_tag
	cbnz	w0, LBB65_5
	b	LBB65_4
LBB65_4:
	ldr	x0, [sp, #72]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_inc
	ldr	x0, [sp, #72]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #72]
	bl	_lean_dec_ref
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-88]
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-96]
	b	LBB65_8
LBB65_5:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-24]
	b	LBB65_9
LBB65_6:
	ldur	x0, [x29, #-112]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #48]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-96]
	b	LBB65_8
LBB65_7:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	ldur	x2, [x29, #-72]
	bl	_lean_ctor_set
	ldr	x0, [sp, #40]
	ldur	x2, [x29, #-80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-24]
	b	LBB65_9
LBB65_8:
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #32]
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #32]
	bl	_lean_usize_add
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	ldr	x3, [sp, #24]
	ldur	x4, [x29, #-64]
	ldur	x5, [x29, #-88]
	ldur	x6, [x29, #-96]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB65_9
LBB65_9:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #320
	stp	x28, x27, [sp, #288]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #304]            ; 16-byte Folded Spill
	add	x29, sp, #304
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-72]
	stur	x6, [x29, #-80]
	b	LBB66_1
LBB66_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-64]
	bl	_lean_usize_dec_eq
	sturb	w0, [x29, #-97]
	ldurb	w8, [x29, #-97]
	cbnz	w8, LBB66_10
	b	LBB66_2
LBB66_2:                                ;   in Loop: Header=BB66_1 Depth=1
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	bl	_lean_array_uget
	stur	x0, [x29, #-112]
	mov	x0, #0                          ; =0x0
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	_lean_box
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-120]
	bl	_lean_box
	stur	x0, [x29, #-128]
	adrp	x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
	ldr	x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
	stur	x8, [x29, #-136]
	ldur	x0, [x29, #-40]
	bl	_lean_array_size
	stur	x0, [x29, #-144]
	str	xzr, [sp, #152]
	ldur	x0, [x29, #-112]
	ldur	x1, [x29, #-136]
	ldur	x2, [x29, #-128]
	ldur	x3, [x29, #-40]
	ldur	x4, [x29, #-144]
	ldr	x5, [sp, #152]
	ldur	x6, [x29, #-136]
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	str	x0, [sp, #144]
	ldr	x0, [sp, #144]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #28]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #136]
	ldr	x0, [sp, #136]
	bl	_lean_inc
	ldr	x0, [sp, #144]
	bl	_lean_dec_ref
	ldr	w2, [sp, #28]                   ; 4-byte Folded Reload
	adrp	x0, _l_instDecidableEqString___boxed@GOTPAGE
	ldr	x0, [x0, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_closure
	str	x0, [sp, #128]
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-112]
	bl	_l_Lean_Data_Trie_find_x3f___redArg
	str	x0, [sp, #120]
	ldr	x0, [sp, #136]
	bl	_lean_obj_tag
	cbnz	w0, LBB66_4
	b	LBB66_3
LBB66_3:                                ;   in Loop: Header=BB66_1 Depth=1
	ldur	x8, [x29, #-120]
	str	x8, [sp, #112]
	b	LBB66_5
LBB66_4:                                ;   in Loop: Header=BB66_1 Depth=1
	ldr	x0, [sp, #136]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #104]
	ldr	x0, [sp, #104]
	bl	_lean_inc
	ldr	x0, [sp, #136]
	bl	_lean_dec_ref
	ldr	x8, [sp, #104]
	str	x8, [sp, #112]
	b	LBB66_5
LBB66_5:                                ;   in Loop: Header=BB66_1 Depth=1
	ldr	x0, [sp, #128]
	ldr	x1, [sp, #120]
	ldr	x2, [sp, #112]
	bl	_l_Option_instDecidableEq_decEq___redArg
	strb	w0, [sp, #103]
	ldrb	w8, [sp, #103]
	cbnz	w8, LBB66_9
	b	LBB66_6
LBB66_6:                                ;   in Loop: Header=BB66_1 Depth=1
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGEOFF]
	str	x8, [sp, #88]
	ldr	x0, [sp, #88]
	ldur	x1, [x29, #-112]
	bl	_lean_string_append
	str	x0, [sp, #80]
	ldur	x0, [x29, #-112]
	bl	_lean_dec_ref
	ldr	x0, [sp, #80]
	ldur	x1, [x29, #-80]
	bl	_l_IO_println___at___T_check_spec__0
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_obj_tag
	cbnz	w0, LBB66_8
	b	LBB66_7
LBB66_7:                                ;   in Loop: Header=BB66_1 Depth=1
	ldr	x0, [sp, #72]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_inc
	ldr	x0, [sp, #72]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #72]
	bl	_lean_dec_ref
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-88]
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-96]
	b	LBB66_11
LBB66_8:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-24]
	b	LBB66_12
LBB66_9:                                ;   in Loop: Header=BB66_1 Depth=1
	ldur	x0, [x29, #-112]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-128]
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-96]
	b	LBB66_11
LBB66_10:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-72]
	bl	_lean_ctor_set
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-24]
	b	LBB66_12
LBB66_11:                               ;   in Loop: Header=BB66_1 Depth=1
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #40]
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #40]
	bl	_lean_usize_add
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-80]
	b	LBB66_1
LBB66_12:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #304]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            ; 16-byte Folded Reload
	add	sp, sp, #320
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #320
	stp	x28, x27, [sp, #288]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #304]            ; 16-byte Folded Spill
	add	x29, sp, #304
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-72]
	stur	x6, [x29, #-80]
	b	LBB67_1
LBB67_1:
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-64]
	bl	_lean_usize_dec_eq
	sturb	w0, [x29, #-97]
	ldurb	w8, [x29, #-97]
	cbnz	w8, LBB67_10
	b	LBB67_2
LBB67_2:
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	bl	_lean_array_uget
	stur	x0, [x29, #-112]
	mov	x0, #0                          ; =0x0
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	_lean_box
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-120]
	bl	_lean_box
	stur	x0, [x29, #-128]
	adrp	x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
	ldr	x8, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
	stur	x8, [x29, #-136]
	ldur	x0, [x29, #-40]
	bl	_lean_array_size
	stur	x0, [x29, #-144]
	str	xzr, [sp, #152]
	ldur	x0, [x29, #-112]
	ldur	x1, [x29, #-136]
	ldur	x2, [x29, #-128]
	ldur	x3, [x29, #-40]
	ldur	x4, [x29, #-144]
	ldr	x5, [sp, #152]
	ldur	x6, [x29, #-136]
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	str	x0, [sp, #144]
	ldr	x0, [sp, #144]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #20]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #136]
	ldr	x0, [sp, #136]
	bl	_lean_inc
	ldr	x0, [sp, #144]
	bl	_lean_dec_ref
	ldr	w2, [sp, #20]                   ; 4-byte Folded Reload
	adrp	x0, _l_instDecidableEqString___boxed@GOTPAGE
	ldr	x0, [x0, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_closure
	str	x0, [sp, #128]
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-112]
	bl	_l_Lean_Data_Trie_find_x3f___redArg
	str	x0, [sp, #120]
	ldr	x0, [sp, #136]
	bl	_lean_obj_tag
	cbnz	w0, LBB67_4
	b	LBB67_3
LBB67_3:
	ldur	x8, [x29, #-120]
	str	x8, [sp, #112]
	b	LBB67_5
LBB67_4:
	ldr	x0, [sp, #136]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #104]
	ldr	x0, [sp, #104]
	bl	_lean_inc
	ldr	x0, [sp, #136]
	bl	_lean_dec_ref
	ldr	x8, [sp, #104]
	str	x8, [sp, #112]
	b	LBB67_5
LBB67_5:
	ldr	x0, [sp, #128]
	ldr	x1, [sp, #120]
	ldr	x2, [sp, #112]
	bl	_l_Option_instDecidableEq_decEq___redArg
	strb	w0, [sp, #103]
	ldrb	w8, [sp, #103]
	cbnz	w8, LBB67_9
	b	LBB67_6
LBB67_6:
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGEOFF]
	str	x8, [sp, #88]
	ldr	x0, [sp, #88]
	ldur	x1, [x29, #-112]
	bl	_lean_string_append
	str	x0, [sp, #80]
	ldur	x0, [x29, #-112]
	bl	_lean_dec_ref
	ldr	x0, [sp, #80]
	ldur	x1, [x29, #-80]
	bl	_l_IO_println___at___T_check_spec__0
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_obj_tag
	cbnz	w0, LBB67_8
	b	LBB67_7
LBB67_7:
	ldr	x0, [sp, #72]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_inc
	ldr	x0, [sp, #72]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldr	x0, [sp, #72]
	bl	_lean_dec_ref
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-88]
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-96]
	b	LBB67_11
LBB67_8:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-24]
	b	LBB67_12
LBB67_9:
	ldur	x0, [x29, #-112]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-128]
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-96]
	b	LBB67_11
LBB67_10:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #4]                    ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-72]
	bl	_lean_ctor_set
	ldr	x0, [sp, #48]
	ldur	x2, [x29, #-80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-24]
	b	LBB67_12
LBB67_11:
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #40]
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #40]
	bl	_lean_usize_add
	str	x0, [sp, #32]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	ldur	x2, [x29, #-48]
	ldr	x3, [sp, #32]
	ldur	x4, [x29, #-64]
	ldur	x5, [x29, #-88]
	ldur	x6, [x29, #-96]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB67_12
LBB67_12:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #304]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            ; 16-byte Folded Reload
	add	sp, sp, #320
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_T_check              ; -- Begin function l_T_check
	.globl	_l_T_check
	.p2align	2
_l_T_check:                             ; @l_T_check
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	b	LBB68_1
LBB68_1:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-56]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_is_exclusive
	tbz	w0, #0, LBB68_3
	b	LBB68_2
LBB68_2:
	ldur	x0, [x29, #-32]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_release
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_release
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-64]
	b	LBB68_4
LBB68_3:
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-64]
	b	LBB68_4
LBB68_4:
	adrp	x8, _l_keys@PAGE
	ldr	x8, [x8, _l_keys@PAGEOFF]
	stur	x8, [x29, #-72]
	adrp	x8, _l_T_check___closed__1@PAGE
	ldrb	w8, [x8, _l_T_check___closed__1@PAGEOFF]
	sturb	w8, [x29, #-89]
	ldurb	w8, [x29, #-89]
	cbnz	w8, LBB68_6
	b	LBB68_5
LBB68_5:
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-88]
	b	LBB68_22
LBB68_6:
	adrp	x8, _l_T_check___closed__2@PAGE
	ldrb	w8, [x8, _l_T_check___closed__2@PAGEOFF]
	sturb	w8, [x29, #-90]
	ldurb	w8, [x29, #-90]
	cbnz	w8, LBB68_8
	b	LBB68_7
LBB68_7:
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-88]
	b	LBB68_22
LBB68_8:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-104]
	stur	xzr, [x29, #-112]
	adrp	x8, _l_T_check___closed__3@PAGE
	ldr	x8, [x8, _l_T_check___closed__3@PAGEOFF]
	stur	x8, [x29, #-120]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	ldur	x2, [x29, #-72]
	ldur	x3, [x29, #-112]
	ldur	x4, [x29, #-120]
	ldur	x5, [x29, #-104]
	ldur	x6, [x29, #-40]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	str	x0, [sp, #128]
	ldr	x0, [sp, #128]
	bl	_lean_obj_tag
	cbnz	w0, LBB68_10
	b	LBB68_9
LBB68_9:
	ldr	x0, [sp, #128]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #120]
	ldr	x0, [sp, #120]
	bl	_lean_inc
	ldr	x0, [sp, #128]
	bl	_lean_dec_ref
	ldr	x8, [sp, #120]
	stur	x8, [x29, #-88]
	b	LBB68_22
LBB68_10:
	ldur	x0, [x29, #-64]
	bl	_lean_dec
	ldur	x0, [x29, #-56]
	bl	_lean_dec
	ldur	x0, [x29, #-48]
	bl	_lean_dec
	ldr	x8, [sp, #128]
	stur	x8, [x29, #-24]
	b	LBB68_29
LBB68_11:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #112]
	adrp	x8, _l_T_check___closed__1@PAGE
	ldrb	w8, [x8, _l_T_check___closed__1@PAGEOFF]
	strb	w8, [sp, #111]
	ldrb	w8, [sp, #111]
	cbnz	w8, LBB68_16
	b	LBB68_12
LBB68_12:
	ldur	x0, [x29, #-56]
	bl	_lean_dec
	ldur	x0, [x29, #-48]
	bl	_lean_dec
	ldur	x0, [x29, #-64]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB68_14
	b	LBB68_13
LBB68_13:
	mov	w2, #0                          ; =0x0
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	str	x0, [sp, #96]
	b	LBB68_15
LBB68_14:
	ldur	x8, [x29, #-64]
	str	x8, [sp, #96]
	b	LBB68_15
LBB68_15:
	ldr	x0, [sp, #96]
	ldr	x2, [sp, #112]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_set
	ldr	x0, [sp, #96]
	ldur	x2, [x29, #-80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #96]
	stur	x8, [x29, #-24]
	b	LBB68_29
LBB68_16:
	adrp	x8, _l_T_check___closed__2@PAGE
	ldrb	w8, [x8, _l_T_check___closed__2@PAGEOFF]
	strb	w8, [sp, #95]
	ldrb	w8, [sp, #95]
	cbnz	w8, LBB68_21
	b	LBB68_17
LBB68_17:
	ldur	x0, [x29, #-56]
	bl	_lean_dec
	ldur	x0, [x29, #-48]
	bl	_lean_dec
	ldur	x0, [x29, #-64]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB68_19
	b	LBB68_18
LBB68_18:
	mov	w2, #0                          ; =0x0
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	str	x0, [sp, #80]
	b	LBB68_20
LBB68_19:
	ldur	x8, [x29, #-64]
	str	x8, [sp, #80]
	b	LBB68_20
LBB68_20:
	ldr	x0, [sp, #80]
	ldr	x2, [sp, #112]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_set
	ldr	x0, [sp, #80]
	ldur	x2, [x29, #-80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x8, [sp, #80]
	stur	x8, [x29, #-24]
	b	LBB68_29
LBB68_21:
	ldur	x0, [x29, #-64]
	bl	_lean_dec
	str	xzr, [sp, #72]
	adrp	x8, _l_T_check___closed__3@PAGE
	ldr	x8, [x8, _l_T_check___closed__3@PAGEOFF]
	str	x8, [sp, #64]
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #72]
	ldr	x4, [sp, #64]
	ldr	x5, [sp, #112]
	ldur	x6, [x29, #-80]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	str	x0, [sp, #56]
	ldur	x0, [x29, #-56]
	bl	_lean_dec
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-24]
	b	LBB68_29
LBB68_22:
	adrp	x8, _l_T_check___closed__1@PAGE
	ldrb	w8, [x8, _l_T_check___closed__1@PAGEOFF]
	strb	w8, [sp, #55]
	ldrb	w8, [sp, #55]
	cbnz	w8, LBB68_24
	b	LBB68_23
LBB68_23:
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-80]
	b	LBB68_11
LBB68_24:
	adrp	x8, _l_T_check___closed__2@PAGE
	ldrb	w8, [x8, _l_T_check___closed__2@PAGEOFF]
	strb	w8, [sp, #54]
	ldrb	w8, [sp, #54]
	cbnz	w8, LBB68_26
	b	LBB68_25
LBB68_25:
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-80]
	b	LBB68_11
LBB68_26:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #40]
	str	xzr, [sp, #32]
	adrp	x8, _l_T_check___closed__3@PAGE
	ldr	x8, [x8, _l_T_check___closed__3@PAGEOFF]
	str	x8, [sp, #24]
	ldur	x0, [x29, #-48]
	bl	_lean_inc
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #32]
	ldr	x4, [sp, #24]
	ldr	x5, [sp, #40]
	ldur	x6, [x29, #-88]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_obj_tag
	cbnz	w0, LBB68_28
	b	LBB68_27
LBB68_27:
	ldr	x0, [sp, #16]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_inc
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-80]
	b	LBB68_11
LBB68_28:
	ldur	x0, [x29, #-64]
	bl	_lean_dec
	ldur	x0, [x29, #-56]
	bl	_lean_dec
	ldur	x0, [x29, #-48]
	bl	_lean_dec
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB68_29
LBB68_29:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	b	LBB69_1
LBB69_1:
	ldur	x0, [x29, #-32]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	x0, [sp, #40]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #16]
	ldr	x4, [sp, #8]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
	str	x0, [sp]
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	b	LBB70_1
LBB70_1:
	ldur	x0, [x29, #-32]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	x0, [sp, #40]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #16]
	ldr	x4, [sp, #8]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	str	x0, [sp]
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	b	LBB71_1
LBB71_1:
	ldur	x0, [x29, #-32]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	x0, [sp, #40]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #16]
	ldr	x4, [sp, #8]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
	str	x0, [sp]
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	b	LBB72_1
LBB72_1:
	ldur	x0, [x29, #-32]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	x0, [sp, #40]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #16]
	ldr	x4, [sp, #8]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	str	x0, [sp]
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	b	LBB73_1
LBB73_1:
	ldur	x0, [x29, #-32]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	x0, [sp, #40]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #16]
	ldr	x4, [sp, #8]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
	str	x0, [sp]
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	b	LBB74_1
LBB74_1:
	ldur	x0, [x29, #-32]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldr	x0, [sp, #40]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #16]
	ldr	x4, [sp, #8]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	str	x0, [sp]
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	stur	x4, [x29, #-64]
	b	LBB75_1
LBB75_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-40]
	bl	_lean_usize_dec_lt
	sturb	w0, [x29, #-65]
	ldurb	w8, [x29, #-65]
	cbnz	w8, LBB75_3
	b	LBB75_2
LBB75_2:
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #28]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	stur	x0, [x29, #-80]
	ldur	x0, [x29, #-80]
	ldur	x2, [x29, #-56]
	bl	_lean_ctor_set
	ldur	x0, [x29, #-80]
	ldur	x2, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-24]
	b	LBB75_12
LBB75_3:                                ;   in Loop: Header=BB75_1 Depth=1
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-48]
	bl	_lean_array_uget
	stur	x0, [x29, #-88]
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGEOFF]
	stur	x8, [x29, #-96]
	ldur	x0, [x29, #-96]
	ldur	x1, [x29, #-88]
	bl	_lean_string_append
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-104]
	ldur	x1, [x29, #-64]
	bl	_l_IO_println___at___T_check_spec__0
	stur	x0, [x29, #-112]
	ldur	x0, [x29, #-112]
	bl	_lean_obj_tag
	cbnz	w0, LBB75_9
	b	LBB75_4
LBB75_4:                                ;   in Loop: Header=BB75_1 Depth=1
	ldur	x0, [x29, #-112]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-120]
	ldur	x0, [x29, #-120]
	bl	_lean_inc
	ldur	x0, [x29, #-112]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-88]
	bl	_l_T_insert
	str	x0, [sp, #128]
	ldr	x0, [sp, #128]
	bl	_lean_inc_ref
	ldr	x0, [sp, #128]
	ldur	x1, [x29, #-120]
	bl	_l_T_check
	str	x0, [sp, #120]
	ldr	x0, [sp, #120]
	bl	_lean_obj_tag
	cbnz	w0, LBB75_6
	b	LBB75_5
LBB75_5:                                ;   in Loop: Header=BB75_1 Depth=1
	ldr	x0, [sp, #120]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #112]
	ldr	x0, [sp, #112]
	bl	_lean_inc
	ldr	x0, [sp, #120]
	bl	_lean_dec_ref
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #104]
	ldur	x0, [x29, #-48]
	ldr	x1, [sp, #104]
	bl	_lean_usize_add
	str	x0, [sp, #96]
	ldr	x8, [sp, #96]
	stur	x8, [x29, #-48]
	ldr	x8, [sp, #128]
	stur	x8, [x29, #-56]
	ldr	x8, [sp, #112]
	stur	x8, [x29, #-64]
	b	LBB75_1
LBB75_6:
	ldr	x0, [sp, #128]
	bl	_lean_dec_ref
	ldr	x0, [sp, #120]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #95]
	ldrb	w8, [sp, #95]
	cbnz	w8, LBB75_8
	b	LBB75_7
LBB75_7:
	ldr	x8, [sp, #120]
	stur	x8, [x29, #-24]
	b	LBB75_12
LBB75_8:
	ldr	x0, [sp, #120]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #20]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #80]
	ldr	x0, [sp, #120]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #24]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_inc
	ldr	x0, [sp, #80]
	bl	_lean_inc
	ldr	x0, [sp, #120]
	bl	_lean_dec
	ldr	w2, [sp, #20]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #24]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	ldr	x2, [sp, #80]
	bl	_lean_ctor_set
	ldr	w1, [sp, #24]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #64]
	ldr	x2, [sp, #72]
	bl	_lean_ctor_set
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-24]
	b	LBB75_12
LBB75_9:
	ldur	x0, [x29, #-88]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-56]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-112]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #63]
	ldrb	w8, [sp, #63]
	cbnz	w8, LBB75_11
	b	LBB75_10
LBB75_10:
	ldur	x8, [x29, #-112]
	stur	x8, [x29, #-24]
	b	LBB75_12
LBB75_11:
	ldur	x0, [x29, #-112]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #48]
	ldur	x0, [x29, #-112]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #16]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	_lean_inc
	ldr	x0, [sp, #48]
	bl	_lean_inc
	ldur	x0, [x29, #-112]
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
	stur	x8, [x29, #-24]
	b	LBB75_12
LBB75_12:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #288
	stp	x28, x27, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-72]
	b	LBB76_1
LBB76_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-48]
	bl	_lean_usize_dec_lt
	sturb	w0, [x29, #-73]
	ldurb	w8, [x29, #-73]
	cbnz	w8, LBB76_3
	b	LBB76_2
LBB76_2:
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #20]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	stur	x0, [x29, #-88]
	ldur	x0, [x29, #-88]
	ldur	x2, [x29, #-64]
	bl	_lean_ctor_set
	ldur	x0, [x29, #-88]
	ldur	x2, [x29, #-72]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-24]
	b	LBB76_12
LBB76_3:                                ;   in Loop: Header=BB76_1 Depth=1
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGEOFF]
	stur	x8, [x29, #-96]
	ldur	x0, [x29, #-96]
	ldur	x1, [x29, #-72]
	bl	_l_IO_println___at___T_check_spec__0
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-104]
	bl	_lean_obj_tag
	cbnz	w0, LBB76_11
	b	LBB76_4
LBB76_4:                                ;   in Loop: Header=BB76_1 Depth=1
	ldur	x0, [x29, #-104]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-112]
	ldur	x0, [x29, #-112]
	bl	_lean_inc
	ldur	x0, [x29, #-104]
	bl	_lean_dec_ref
	adrp	x8, _l_T_empty@PAGE
	ldr	x8, [x8, _l_T_empty@PAGEOFF]
	stur	x8, [x29, #-120]
	ldur	x0, [x29, #-120]
	ldur	x1, [x29, #-112]
	bl	_l_T_check
	stur	x0, [x29, #-128]
	ldur	x0, [x29, #-128]
	bl	_lean_obj_tag
	cbnz	w0, LBB76_10
	b	LBB76_5
LBB76_5:                                ;   in Loop: Header=BB76_1 Depth=1
	ldur	x0, [x29, #-128]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #136]
	ldr	x0, [sp, #136]
	bl	_lean_inc
	ldur	x0, [x29, #-128]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-56]
	bl	_lean_array_uget
	str	x0, [sp, #128]
	ldr	x0, [sp, #128]
	bl	_lean_array_size
	str	x0, [sp, #120]
	str	xzr, [sp, #112]
	ldr	x0, [sp, #128]
	ldr	x1, [sp, #120]
	ldr	x2, [sp, #112]
	ldur	x3, [x29, #-120]
	ldr	x4, [sp, #136]
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	str	x0, [sp, #104]
	ldr	x0, [sp, #128]
	bl	_lean_dec_ref
	ldr	x0, [sp, #104]
	bl	_lean_obj_tag
	cbnz	w0, LBB76_7
	b	LBB76_6
LBB76_6:                                ;   in Loop: Header=BB76_1 Depth=1
	ldr	x0, [sp, #104]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #96]
	ldr	x0, [sp, #96]
	bl	_lean_inc
	ldr	x0, [sp, #104]
	bl	_lean_dec_ref
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #88]
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #88]
	bl	_lean_usize_add
	str	x0, [sp, #80]
	ldr	x8, [sp, #80]
	str	x8, [sp, #72]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #64]
	ldr	x8, [sp, #96]
	str	x8, [sp, #56]
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-56]
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-64]
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-72]
	b	LBB76_1
LBB76_7:
	ldr	x0, [sp, #104]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #55]
	ldrb	w8, [sp, #55]
	cbnz	w8, LBB76_9
	b	LBB76_8
LBB76_8:
	ldr	x8, [sp, #104]
	stur	x8, [x29, #-24]
	b	LBB76_12
LBB76_9:
	ldr	x0, [sp, #104]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #40]
	ldr	x0, [sp, #104]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #16]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	bl	_lean_inc
	ldr	x0, [sp, #40]
	bl	_lean_inc
	ldr	x0, [sp, #104]
	bl	_lean_dec
	ldr	w2, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldr	x2, [sp, #40]
	bl	_lean_ctor_set
	ldr	w1, [sp, #16]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #24]
	ldr	x2, [sp, #32]
	bl	_lean_ctor_set
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB76_12
LBB76_10:
	ldur	x8, [x29, #-128]
	stur	x8, [x29, #-24]
	b	LBB76_12
LBB76_11:
	ldur	x8, [x29, #-104]
	stur	x8, [x29, #-24]
	b	LBB76_12
LBB76_12:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #256]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__lean_main             ; -- Begin function _lean_main
	.globl	__lean_main
	.p2align	2
__lean_main:                            ; @_lean_main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB77_1
LBB77_1:
	adrp	x8, _l_main___closed__15@PAGE
	ldr	x8, [x8, _l_main___closed__15@PAGEOFF]
	stur	x8, [x29, #-24]
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-32]
	adrp	x8, _l_main___closed__16@PAGE
	ldr	x8, [x8, _l_main___closed__16@PAGEOFF]
	stur	x8, [x29, #-40]
	stur	xzr, [x29, #-48]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-40]
	ldur	x3, [x29, #-48]
	ldur	x4, [x29, #-32]
	ldur	x5, [x29, #-16]
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_obj_tag
	cbnz	w0, LBB77_5
	b	LBB77_2
LBB77_2:
	ldr	x0, [sp, #56]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	strb	w8, [sp, #55]
	ldrb	w8, [sp, #55]
	cbnz	w8, LBB77_4
	b	LBB77_3
LBB77_3:
	ldr	x0, [sp, #56]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #20]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	_lean_dec
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #56]
	ldur	x2, [x29, #-32]
	bl	_lean_ctor_set
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-8]
	b	LBB77_6
LBB77_4:
	ldr	x0, [sp, #56]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #16]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	bl	_lean_inc
	ldr	x0, [sp, #56]
	bl	_lean_dec
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	x2, [x29, #-32]
	bl	_lean_ctor_set
	ldr	w1, [sp, #16]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #24]
	ldr	x2, [sp, #32]
	bl	_lean_ctor_set
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB77_6
LBB77_5:
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-8]
	b	LBB77_6
LBB77_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed
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
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	b	LBB78_1
LBB78_1:
	ldur	x0, [x29, #-16]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	_lean_dec
	ldur	x0, [x29, #-24]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldur	x0, [x29, #-24]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x3, [sp, #32]
	ldr	x4, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	str	x0, [sp]
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	b	LBB79_1
LBB79_1:
	ldur	x0, [x29, #-24]
	bl	_lean_unbox_usize
	str	x0, [sp, #24]
	ldur	x0, [x29, #-24]
	bl	_lean_dec
	ldur	x0, [x29, #-32]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-32]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	ldr	x4, [sp, #40]
	ldr	x5, [sp, #32]
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	str	x0, [sp, #8]
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_initialize_trie        ; -- Begin function initialize_trie
	.globl	_initialize_trie
	.p2align	2
_initialize_trie:                       ; @initialize_trie
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
	tbz	w8, #0, LBB80_2
	b	LBB80_1
LBB80_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB80_7
LBB80_2:
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
	tbz	w0, #0, LBB80_4
	b	LBB80_3
LBB80_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB80_7
LBB80_4:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldurb	w8, [x29, #-9]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_io_mk_world
	mov	x1, x0
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	bl	_initialize_Lean_Data_Trie
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_error
	tbz	w0, #0, LBB80_6
	b	LBB80_5
LBB80_5:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB80_7
LBB80_6:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	__init_l_keys___closed__0
	adrp	x8, _l_keys___closed__0@PAGE
	str	x0, [x8, _l_keys___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__1
	adrp	x8, _l_keys___closed__1@PAGE
	str	x0, [x8, _l_keys___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__2
	adrp	x8, _l_keys___closed__2@PAGE
	str	x0, [x8, _l_keys___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__3
	adrp	x8, _l_keys___closed__3@PAGE
	str	x0, [x8, _l_keys___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__4
	adrp	x8, _l_keys___closed__4@PAGE
	str	x0, [x8, _l_keys___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__5
	adrp	x8, _l_keys___closed__5@PAGE
	str	x0, [x8, _l_keys___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__6
	adrp	x8, _l_keys___closed__6@PAGE
	str	x0, [x8, _l_keys___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__7
	adrp	x8, _l_keys___closed__7@PAGE
	str	x0, [x8, _l_keys___closed__7@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__7@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__8
	adrp	x8, _l_keys___closed__8@PAGE
	str	x0, [x8, _l_keys___closed__8@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__8@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__9
	adrp	x8, _l_keys___closed__9@PAGE
	str	x0, [x8, _l_keys___closed__9@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__9@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__10
	adrp	x8, _l_keys___closed__10@PAGE
	str	x0, [x8, _l_keys___closed__10@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__10@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__11
	adrp	x8, _l_keys___closed__11@PAGE
	str	x0, [x8, _l_keys___closed__11@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__11@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__12
	adrp	x8, _l_keys___closed__12@PAGE
	str	x0, [x8, _l_keys___closed__12@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__12@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__13
	adrp	x8, _l_keys___closed__13@PAGE
	str	x0, [x8, _l_keys___closed__13@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__13@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__14
	adrp	x8, _l_keys___closed__14@PAGE
	str	x0, [x8, _l_keys___closed__14@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__14@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__15
	adrp	x8, _l_keys___closed__15@PAGE
	str	x0, [x8, _l_keys___closed__15@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__15@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__16
	adrp	x8, _l_keys___closed__16@PAGE
	str	x0, [x8, _l_keys___closed__16@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__16@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__17
	adrp	x8, _l_keys___closed__17@PAGE
	str	x0, [x8, _l_keys___closed__17@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__17@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__18
	adrp	x8, _l_keys___closed__18@PAGE
	str	x0, [x8, _l_keys___closed__18@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__18@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__19
	adrp	x8, _l_keys___closed__19@PAGE
	str	x0, [x8, _l_keys___closed__19@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__19@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__20
	adrp	x8, _l_keys___closed__20@PAGE
	str	x0, [x8, _l_keys___closed__20@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__20@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__21
	adrp	x8, _l_keys___closed__21@PAGE
	str	x0, [x8, _l_keys___closed__21@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__21@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__22
	adrp	x8, _l_keys___closed__22@PAGE
	str	x0, [x8, _l_keys___closed__22@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__22@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__23
	adrp	x8, _l_keys___closed__23@PAGE
	str	x0, [x8, _l_keys___closed__23@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__23@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys___closed__24
	adrp	x8, _l_keys___closed__24@PAGE
	str	x0, [x8, _l_keys___closed__24@PAGEOFF]
	ldr	x0, [x8, _l_keys___closed__24@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_keys
	adrp	x8, _l_keys@PAGE
	str	x0, [x8, _l_keys@PAGEOFF]
	ldr	x0, [x8, _l_keys@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_T_empty___closed__0
	adrp	x8, _l_T_empty___closed__0@PAGE
	str	x0, [x8, _l_T_empty___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_T_empty___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_T_empty___closed__1
	adrp	x8, _l_T_empty___closed__1@PAGE
	str	x0, [x8, _l_T_empty___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_T_empty___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_T_empty___closed__2
	adrp	x8, _l_T_empty___closed__2@PAGE
	str	x0, [x8, _l_T_empty___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_T_empty___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_T_empty
	adrp	x8, _l_T_empty@PAGE
	str	x0, [x8, _l_T_empty@PAGEOFF]
	ldr	x0, [x8, _l_T_empty@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_Array_findPrefix___closed__0
	adrp	x8, _l_Array_findPrefix___closed__0@PAGE
	str	x0, [x8, _l_Array_findPrefix___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_Array_findPrefix___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
	adrp	x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGE
	str	x0, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_T_check___closed__0
	adrp	x8, _l_T_check___closed__0@PAGE
	str	x0, [x8, _l_T_check___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_T_check___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_T_check___closed__1
	adrp	x8, _l_T_check___closed__1@PAGE
	strb	w0, [x8, _l_T_check___closed__1@PAGEOFF]
	bl	__init_l_T_check___closed__2
	adrp	x8, _l_T_check___closed__2@PAGE
	strb	w0, [x8, _l_T_check___closed__2@PAGEOFF]
	bl	__init_l_T_check___closed__3
	adrp	x8, _l_T_check___closed__3@PAGE
	str	x0, [x8, _l_T_check___closed__3@PAGEOFF]
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGE
	str	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGEOFF]
	ldr	x0, [x8, _l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0@PAGEOFF]
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
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB80_7
LBB80_7:
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
	bl	_lean_initialize
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mk_world
	mov	x1, x0
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	bl	_initialize_trie
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	and	w0, w8, #0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mark_end_initialization
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB83_2
	b	LBB83_1
LBB83_1:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	_lean_init_task_manager
	bl	_lean_io_mk_world
	bl	__lean_main
	str	x0, [sp, #16]
	b	LBB83_2
LBB83_2:
	bl	_lean_finalize_task_manager
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB83_4
	b	LBB83_3
LBB83_3:
	str	wzr, [sp, #12]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB83_5
LBB83_4:
	ldr	x0, [sp, #16]
	bl	_lean_io_result_show_error
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB83_5
LBB83_5:
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
	.p2align	2                               ; -- Begin function lean_string_eq
_lean_string_eq:                        ; @lean_string_eq
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
	ldur	x9, [x29, #-8]
	ldr	x10, [sp, #16]
	mov	w8, #1                          ; =0x1
	subs	x9, x9, x10
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b.eq	LBB88_4
	b	LBB88_1
LBB88_1:
	ldur	x0, [x29, #-8]
	bl	_lean_string_size
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	_lean_string_size
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	mov	w0, #0                          ; =0x0
	subs	x8, x8, x9
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b.ne	LBB88_3
	b	LBB88_2
LBB88_2:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_lean_string_eq_cold
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB88_3
LBB88_3:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB88_4
LBB88_4:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	tbnz	w0, #0, LBB90_2
	b	LBB90_1
LBB90_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #536                        ; =0x218
	adrp	x2, l_.str.1@PAGE
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_lean_notify_assert
	b	LBB90_2
LBB90_2:
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
	.p2align	2                               ; -- Begin function lean_string_len
_lean_string_len:                       ; @lean_string_len
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
	ldr	x0, [x0, #24]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	tbz	w0, #0, LBB94_2
	b	LBB94_1
LBB94_1:
	ldr	x0, [sp, #8]
	bl	_lean_is_scalar
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB94_2
LBB94_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB94_4
	b	LBB94_3
LBB94_3:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB94_5
LBB94_4:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_lean_nat_big_eq
	and	w8, w0, #0x1
	sturb	w8, [x29, #-1]
	b	LBB94_5
LBB94_5:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_nat_lt
_lean_nat_lt:                           ; @lean_nat_lt
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
	tbz	w0, #0, LBB95_2
	b	LBB95_1
LBB95_1:
	ldr	x0, [sp, #8]
	bl	_lean_is_scalar
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB95_2
LBB95_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB95_4
	b	LBB95_3
LBB95_3:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, lo
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB95_5
LBB95_4:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_lean_nat_big_lt
	and	w8, w0, #0x1
	sturb	w8, [x29, #-1]
	b	LBB95_5
LBB95_5:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_array_get_core
_lean_array_get_core:                   ; @lean_array_get_core
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
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_array_size
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, hs
	tbz	w8, #0, LBB96_2
	b	LBB96_1
LBB96_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #788                        ; =0x314
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB96_2
LBB96_2:
	ldur	x0, [x29, #-8]
	bl	_lean_to_array
	add	x8, x0, #24
	ldr	x9, [sp, #16]
	ldr	x0, [x8, x9, lsl #3]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_to_array
_lean_to_array:                         ; @lean_to_array
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
	bl	_lean_is_array
	tbnz	w0, #0, LBB97_2
	b	LBB97_1
LBB97_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #534                        ; =0x216
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB97_2
LBB97_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_is_array
_lean_is_array:                         ; @lean_is_array
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
	subs	w8, w0, #246
	cset	w0, eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_nat_le
_lean_nat_le:                           ; @lean_nat_le
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
	tbz	w0, #0, LBB99_2
	b	LBB99_1
LBB99_1:
	ldr	x0, [sp, #8]
	bl	_lean_is_scalar
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB99_2
LBB99_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB99_4
	b	LBB99_3
LBB99_3:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, ls
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB99_5
LBB99_4:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_lean_nat_big_le
	and	w8, w0, #0x1
	sturb	w8, [x29, #-1]
	b	LBB99_5
LBB99_5:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	tbz	w8, #0, LBB100_2
	b	LBB100_1
LBB100_1:
	ldr	x0, [sp]
	bl	_lean_box
	str	x0, [sp, #8]
	b	LBB100_3
LBB100_2:
	ldr	x0, [sp]
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #8]
	b	LBB100_3
LBB100_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	tbnz	w0, #0, LBB102_2
	b	LBB102_1
LBB102_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #596                        ; =0x254
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	bl	_lean_notify_assert
	b	LBB102_2
LBB102_2:
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
	tbnz	w0, #0, LBB103_2
	b	LBB103_1
LBB103_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #601                        ; =0x259
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	bl	_lean_notify_assert
	b	LBB103_2
LBB103_2:
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
	tbnz	w0, #0, LBB106_2
	b	LBB106_1
LBB106_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #532                        ; =0x214
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	bl	_lean_notify_assert
	b	LBB106_2
LBB106_2:
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
	tbz	w0, #0, LBB107_2
	b	LBB107_1
LBB107_1:
	ldr	x10, [sp, #16]
	ldur	x9, [x29, #-8]
	ldrsw	x8, [x9]
	add	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	b	LBB107_5
LBB107_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	cbz	w8, LBB107_4
	b	LBB107_3
LBB107_3:
	ldur	x0, [x29, #-8]
	bl	_lean_get_rc_mt_addr
	ldr	x8, [sp, #16]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	neg	w8, w8
	ldadd	w8, w8, [x0]
	str	w8, [sp, #8]
	b	LBB107_4
LBB107_4:
	b	LBB107_5
LBB107_5:
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
	b.ls	LBB109_2
	b	LBB109_1
LBB109_1:
	ldr	x8, [sp, #16]
	ldur	w9, [x29, #-8]
                                        ; kill: def $x9 killed $w9
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	stur	xzr, [x8, #-8]
	b	LBB109_2
LBB109_2:
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
	cbnz	x8, LBB111_2
	b	LBB111_1
LBB111_1:
	bl	_lean_internal_panic_out_of_memory
LBB111_2:
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
	.p2align	2                               ; -- Begin function lean_ctor_get_usize
_lean_ctor_get_usize:                   ; @lean_ctor_get_usize
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
	cset	w8, lo
	tbz	w8, #0, LBB112_2
	b	LBB112_1
LBB112_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #650                        ; =0x28a
	adrp	x2, l_.str.7@PAGE
	add	x2, x2, l_.str.7@PAGEOFF
	bl	_lean_notify_assert
	b	LBB112_2
LBB112_2:
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__0
__init_l_keys___closed__0:              ; @_init_l_keys___closed__0
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
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__1
__init_l_keys___closed__1:              ; @_init_l_keys___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB115_1
LBB115_1:
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__2
__init_l_keys___closed__2:              ; @_init_l_keys___closed__2
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
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__3
__init_l_keys___closed__3:              ; @_init_l_keys___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB117_1
LBB117_1:
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__4
__init_l_keys___closed__4:              ; @_init_l_keys___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB118_1
LBB118_1:
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__5
__init_l_keys___closed__5:              ; @_init_l_keys___closed__5
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
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	mov	x2, #10                         ; =0xa
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_keys___closed__6
__init_l_keys___closed__6:              ; @_init_l_keys___closed__6
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
	adrp	x0, l_.str.16@PAGE
	add	x0, x0, l_.str.16@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__7
__init_l_keys___closed__7:              ; @_init_l_keys___closed__7
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB121_1
LBB121_1:
	adrp	x0, l_.str.17@PAGE
	add	x0, x0, l_.str.17@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__8
__init_l_keys___closed__8:              ; @_init_l_keys___closed__8
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB122_1
LBB122_1:
	adrp	x0, l_.str.18@PAGE
	add	x0, x0, l_.str.18@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__9
__init_l_keys___closed__9:              ; @_init_l_keys___closed__9
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB123_1
LBB123_1:
	adrp	x0, l_.str.19@PAGE
	add	x0, x0, l_.str.19@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__10
__init_l_keys___closed__10:             ; @_init_l_keys___closed__10
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
	adrp	x0, l_.str.20@PAGE
	add	x0, x0, l_.str.20@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__11
__init_l_keys___closed__11:             ; @_init_l_keys___closed__11
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
	adrp	x0, l_.str.21@PAGE
	add	x0, x0, l_.str.21@PAGEOFF
	mov	x1, #4                          ; =0x4
	mov	x2, #1                          ; =0x1
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_keys___closed__12
__init_l_keys___closed__12:             ; @_init_l_keys___closed__12
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
	mov	w0, #12                         ; =0xc
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__13
__init_l_keys___closed__13:             ; @_init_l_keys___closed__13
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB127_1
LBB127_1:
	adrp	x8, _l_keys___closed__0@PAGE
	ldr	x8, [x8, _l_keys___closed__0@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__12@PAGE
	ldr	x8, [x8, _l_keys___closed__12@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__14
__init_l_keys___closed__14:             ; @_init_l_keys___closed__14
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB128_1
LBB128_1:
	adrp	x8, _l_keys___closed__1@PAGE
	ldr	x8, [x8, _l_keys___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__13@PAGE
	ldr	x8, [x8, _l_keys___closed__13@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__15
__init_l_keys___closed__15:             ; @_init_l_keys___closed__15
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB129_1
LBB129_1:
	adrp	x8, _l_keys___closed__2@PAGE
	ldr	x8, [x8, _l_keys___closed__2@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__14@PAGE
	ldr	x8, [x8, _l_keys___closed__14@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__16
__init_l_keys___closed__16:             ; @_init_l_keys___closed__16
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB130_1
LBB130_1:
	adrp	x8, _l_keys___closed__3@PAGE
	ldr	x8, [x8, _l_keys___closed__3@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__15@PAGE
	ldr	x8, [x8, _l_keys___closed__15@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__17
__init_l_keys___closed__17:             ; @_init_l_keys___closed__17
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB131_1
LBB131_1:
	adrp	x8, _l_keys___closed__4@PAGE
	ldr	x8, [x8, _l_keys___closed__4@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__16@PAGE
	ldr	x8, [x8, _l_keys___closed__16@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__18
__init_l_keys___closed__18:             ; @_init_l_keys___closed__18
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB132_1
LBB132_1:
	adrp	x8, _l_keys___closed__5@PAGE
	ldr	x8, [x8, _l_keys___closed__5@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__17@PAGE
	ldr	x8, [x8, _l_keys___closed__17@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__19
__init_l_keys___closed__19:             ; @_init_l_keys___closed__19
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB133_1
LBB133_1:
	adrp	x8, _l_keys___closed__6@PAGE
	ldr	x8, [x8, _l_keys___closed__6@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__18@PAGE
	ldr	x8, [x8, _l_keys___closed__18@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__20
__init_l_keys___closed__20:             ; @_init_l_keys___closed__20
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB134_1
LBB134_1:
	adrp	x8, _l_keys___closed__7@PAGE
	ldr	x8, [x8, _l_keys___closed__7@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__19@PAGE
	ldr	x8, [x8, _l_keys___closed__19@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__21
__init_l_keys___closed__21:             ; @_init_l_keys___closed__21
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB135_1
LBB135_1:
	adrp	x8, _l_keys___closed__8@PAGE
	ldr	x8, [x8, _l_keys___closed__8@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__20@PAGE
	ldr	x8, [x8, _l_keys___closed__20@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__22
__init_l_keys___closed__22:             ; @_init_l_keys___closed__22
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB136_1
LBB136_1:
	adrp	x8, _l_keys___closed__9@PAGE
	ldr	x8, [x8, _l_keys___closed__9@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__21@PAGE
	ldr	x8, [x8, _l_keys___closed__21@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__23
__init_l_keys___closed__23:             ; @_init_l_keys___closed__23
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB137_1
LBB137_1:
	adrp	x8, _l_keys___closed__10@PAGE
	ldr	x8, [x8, _l_keys___closed__10@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__22@PAGE
	ldr	x8, [x8, _l_keys___closed__22@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys___closed__24
__init_l_keys___closed__24:             ; @_init_l_keys___closed__24
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB138_1
LBB138_1:
	adrp	x8, _l_keys___closed__11@PAGE
	ldr	x8, [x8, _l_keys___closed__11@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_keys___closed__23@PAGE
	ldr	x8, [x8, _l_keys___closed__23@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_keys
__init_l_keys:                          ; @_init_l_keys
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	b	LBB139_1
LBB139_1:
	adrp	x8, _l_keys___closed__24@PAGE
	ldr	x8, [x8, _l_keys___closed__24@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_T_empty___closed__0
__init_l_T_empty___closed__0:           ; @_init_l_T_empty___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB140_1
LBB140_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_l_Lean_Data_Trie_empty
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_T_empty___closed__1
__init_l_T_empty___closed__1:           ; @_init_l_T_empty___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB141_1
LBB141_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_l_Array_empty
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_T_empty___closed__2
__init_l_T_empty___closed__2:           ; @_init_l_T_empty___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB142_1
LBB142_1:
	adrp	x8, _l_T_empty___closed__1@PAGE
	ldr	x8, [x8, _l_T_empty___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_T_empty___closed__0@PAGE
	ldr	x8, [x8, _l_T_empty___closed__0@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_T_empty
__init_l_T_empty:                       ; @_init_l_T_empty
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	b	LBB143_1
LBB143_1:
	adrp	x8, _l_T_empty___closed__2@PAGE
	ldr	x8, [x8, _l_T_empty___closed__2@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_Array_findPrefix___closed__0
__init_l_Array_findPrefix___closed__0:  ; @_init_l_Array_findPrefix___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB144_1
LBB144_1:
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
	.p2align	2                               ; -- Begin function _init_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
__init_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0: ; @_init_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB145_1
LBB145_1:
	mov	x0, #0                          ; =0x0
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	_lean_box
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	bl	_lean_box
	stur	x0, [x29, #-16]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #20]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	x2, [x29, #-16]
	bl	_lean_ctor_set
	ldr	x0, [sp, #24]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB146_1
LBB146_1:
	adrp	x0, l_.str.22@PAGE
	add	x0, x0, l_.str.22@PAGEOFF
	mov	x2, #10                         ; =0xa
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB147_1
LBB147_1:
	adrp	x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGE
	ldr	x8, [x8, _l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB148_1
LBB148_1:
	adrp	x0, l_.str.23@PAGE
	add	x0, x0, l_.str.23@PAGEOFF
	mov	x2, #41                         ; =0x29
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB149_1
LBB149_1:
	adrp	x0, l_.str.24@PAGE
	add	x0, x0, l_.str.24@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB150_1
LBB150_1:
	adrp	x0, l_.str.25@PAGE
	add	x0, x0, l_.str.25@PAGEOFF
	mov	x2, #27                         ; =0x1b
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB151_1
LBB151_1:
	adrp	x0, l_.str.26@PAGE
	add	x0, x0, l_.str.26@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB152_1
LBB152_1:
	adrp	x0, l_.str.27@PAGE
	add	x0, x0, l_.str.27@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB153_1
LBB153_1:
	adrp	x0, l_.str.28@PAGE
	add	x0, x0, l_.str.28@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB154_1
LBB154_1:
	adrp	x0, l_.str.29@PAGE
	add	x0, x0, l_.str.29@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB155_1
LBB155_1:
	adrp	x0, l_.str.30@PAGE
	add	x0, x0, l_.str.30@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB156_1
LBB156_1:
	adrp	x0, l_.str.31@PAGE
	add	x0, x0, l_.str.31@PAGEOFF
	mov	x2, #26                         ; =0x1a
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
__init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0: ; @_init_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB157_1
LBB157_1:
	adrp	x0, l_.str.32@PAGE
	add	x0, x0, l_.str.32@PAGEOFF
	mov	x2, #21                         ; =0x15
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_T_check___closed__0
__init_l_T_check___closed__0:           ; @_init_l_T_check___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB158_1
LBB158_1:
	adrp	x8, _l_keys@PAGE
	ldr	x8, [x8, _l_keys@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_array_get_size
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_T_check___closed__1
__init_l_T_check___closed__1:           ; @_init_l_T_check___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB159_1
LBB159_1:
	adrp	x8, _l_T_check___closed__0@PAGE
	ldr	x8, [x8, _l_T_check___closed__0@PAGEOFF]
	stur	x8, [x29, #-8]
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_nat_dec_lt
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_T_check___closed__2
__init_l_T_check___closed__2:           ; @_init_l_T_check___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB160_1
LBB160_1:
	adrp	x8, _l_T_check___closed__0@PAGE
	ldr	x8, [x8, _l_T_check___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #8]
	bl	_lean_nat_dec_le
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_T_check___closed__3
__init_l_T_check___closed__3:           ; @_init_l_T_check___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB161_1
LBB161_1:
	adrp	x8, _l_T_check___closed__0@PAGE
	ldr	x8, [x8, _l_T_check___closed__0@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_usize_of_nat
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0
__init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0: ; @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB162_1
LBB162_1:
	adrp	x0, l_.str.33@PAGE
	add	x0, x0, l_.str.33@PAGEOFF
	mov	x2, #10                         ; =0xa
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0
__init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0: ; @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB163_1
LBB163_1:
	adrp	x0, l_.str.34@PAGE
	add	x0, x0, l_.str.34@PAGEOFF
	mov	x2, #14                         ; =0xe
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
	b	LBB164_1
LBB164_1:
	mov	w0, #9                          ; =0x9
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
	b	LBB165_1
LBB165_1:
	adrp	x8, _l_keys___closed__2@PAGE
	ldr	x8, [x8, _l_keys___closed__2@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__2
__init_l_main___closed__2:              ; @_init_l_main___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB166_1
LBB166_1:
	adrp	x8, _l_keys___closed__6@PAGE
	ldr	x8, [x8, _l_keys___closed__6@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__1@PAGE
	ldr	x8, [x8, _l_main___closed__1@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__3
__init_l_main___closed__3:              ; @_init_l_main___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB167_1
LBB167_1:
	adrp	x8, _l_keys___closed__4@PAGE
	ldr	x8, [x8, _l_keys___closed__4@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__2@PAGE
	ldr	x8, [x8, _l_main___closed__2@PAGEOFF]
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
	b	LBB168_1
LBB168_1:
	adrp	x8, _l_keys___closed__1@PAGE
	ldr	x8, [x8, _l_keys___closed__1@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__3@PAGE
	ldr	x8, [x8, _l_main___closed__3@PAGEOFF]
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
	b	LBB169_1
LBB169_1:
	adrp	x8, _l_keys___closed__8@PAGE
	ldr	x8, [x8, _l_keys___closed__8@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__4@PAGE
	ldr	x8, [x8, _l_main___closed__4@PAGEOFF]
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
	b	LBB170_1
LBB170_1:
	adrp	x8, _l_keys___closed__9@PAGE
	ldr	x8, [x8, _l_keys___closed__9@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__5@PAGE
	ldr	x8, [x8, _l_main___closed__5@PAGEOFF]
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
	b	LBB171_1
LBB171_1:
	adrp	x8, _l_keys___closed__11@PAGE
	ldr	x8, [x8, _l_keys___closed__11@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__6@PAGE
	ldr	x8, [x8, _l_main___closed__6@PAGEOFF]
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
	b	LBB172_1
LBB172_1:
	adrp	x8, _l_keys___closed__0@PAGE
	ldr	x8, [x8, _l_keys___closed__0@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__7@PAGE
	ldr	x8, [x8, _l_main___closed__7@PAGEOFF]
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
	b	LBB173_1
LBB173_1:
	adrp	x8, _l_keys___closed__9@PAGE
	ldr	x8, [x8, _l_keys___closed__9@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__8@PAGE
	ldr	x8, [x8, _l_main___closed__8@PAGEOFF]
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
	b	LBB174_1
LBB174_1:
	adrp	x0, l_.str.35@PAGE
	add	x0, x0, l_.str.35@PAGEOFF
	mov	x2, #8                          ; =0x8
	mov	x1, x2
	bl	_lean_mk_string_unchecked
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
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
	b	LBB175_1
LBB175_1:
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__12
__init_l_main___closed__12:             ; @_init_l_main___closed__12
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB176_1
LBB176_1:
	adrp	x8, _l_keys___closed__0@PAGE
	ldr	x8, [x8, _l_keys___closed__0@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__11@PAGE
	ldr	x8, [x8, _l_main___closed__11@PAGEOFF]
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
	b	LBB177_1
LBB177_1:
	adrp	x8, _l_main___closed__10@PAGE
	ldr	x8, [x8, _l_main___closed__10@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__12@PAGE
	ldr	x8, [x8, _l_main___closed__12@PAGEOFF]
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
	b	LBB178_1
LBB178_1:
	adrp	x8, _l_main___closed__9@PAGE
	ldr	x8, [x8, _l_main___closed__9@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__11@PAGE
	ldr	x8, [x8, _l_main___closed__11@PAGEOFF]
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
	b	LBB179_1
LBB179_1:
	adrp	x8, _l_main___closed__13@PAGE
	ldr	x8, [x8, _l_main___closed__13@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__14@PAGE
	ldr	x8, [x8, _l_main___closed__14@PAGEOFF]
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
	b	LBB180_1
LBB180_1:
	adrp	x8, _l_main___closed__15@PAGE
	ldr	x8, [x8, _l_main___closed__15@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_array_size
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_l_Array_findPrefix___closed__0,8,3 ; @l_Array_findPrefix___closed__0
.zerofill __DATA,__bss,_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0,8,3 ; @l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___closed__0
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__4
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__5
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__7
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__8
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__9
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__6
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__0
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__1
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__2
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___closed__3
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___closed__0
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___closed__0
	.private_extern	_l_keys                 ; @l_keys
	.comm	_l_keys,8,3
.zerofill __DATA,__bss,_l_T_check___closed__1,1,0 ; @l_T_check___closed__1
.zerofill __DATA,__bss,_l_T_check___closed__2,1,0 ; @l_T_check___closed__2
.zerofill __DATA,__bss,_l_T_check___closed__3,8,3 ; @l_T_check___closed__3
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___closed__0
.zerofill __DATA,__bss,_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0,8,3 ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___closed__0
	.private_extern	_l_T_empty              ; @l_T_empty
	.comm	_l_T_empty,8,3
.zerofill __DATA,__bss,_l_main___closed__15,8,3 ; @l_main___closed__15
.zerofill __DATA,__bss,_l_main___closed__16,8,3 ; @l_main___closed__16
.zerofill __DATA,__bss,__G_initialized,1,0 ; @_G_initialized
.zerofill __DATA,__bss,_l_keys___closed__0,8,3 ; @l_keys___closed__0
.zerofill __DATA,__bss,_l_keys___closed__1,8,3 ; @l_keys___closed__1
.zerofill __DATA,__bss,_l_keys___closed__2,8,3 ; @l_keys___closed__2
.zerofill __DATA,__bss,_l_keys___closed__3,8,3 ; @l_keys___closed__3
.zerofill __DATA,__bss,_l_keys___closed__4,8,3 ; @l_keys___closed__4
.zerofill __DATA,__bss,_l_keys___closed__5,8,3 ; @l_keys___closed__5
.zerofill __DATA,__bss,_l_keys___closed__6,8,3 ; @l_keys___closed__6
.zerofill __DATA,__bss,_l_keys___closed__7,8,3 ; @l_keys___closed__7
.zerofill __DATA,__bss,_l_keys___closed__8,8,3 ; @l_keys___closed__8
.zerofill __DATA,__bss,_l_keys___closed__9,8,3 ; @l_keys___closed__9
.zerofill __DATA,__bss,_l_keys___closed__10,8,3 ; @l_keys___closed__10
.zerofill __DATA,__bss,_l_keys___closed__11,8,3 ; @l_keys___closed__11
.zerofill __DATA,__bss,_l_keys___closed__12,8,3 ; @l_keys___closed__12
.zerofill __DATA,__bss,_l_keys___closed__13,8,3 ; @l_keys___closed__13
.zerofill __DATA,__bss,_l_keys___closed__14,8,3 ; @l_keys___closed__14
.zerofill __DATA,__bss,_l_keys___closed__15,8,3 ; @l_keys___closed__15
.zerofill __DATA,__bss,_l_keys___closed__16,8,3 ; @l_keys___closed__16
.zerofill __DATA,__bss,_l_keys___closed__17,8,3 ; @l_keys___closed__17
.zerofill __DATA,__bss,_l_keys___closed__18,8,3 ; @l_keys___closed__18
.zerofill __DATA,__bss,_l_keys___closed__19,8,3 ; @l_keys___closed__19
.zerofill __DATA,__bss,_l_keys___closed__20,8,3 ; @l_keys___closed__20
.zerofill __DATA,__bss,_l_keys___closed__21,8,3 ; @l_keys___closed__21
.zerofill __DATA,__bss,_l_keys___closed__22,8,3 ; @l_keys___closed__22
.zerofill __DATA,__bss,_l_keys___closed__23,8,3 ; @l_keys___closed__23
.zerofill __DATA,__bss,_l_keys___closed__24,8,3 ; @l_keys___closed__24
.zerofill __DATA,__bss,_l_T_empty___closed__0,8,3 ; @l_T_empty___closed__0
.zerofill __DATA,__bss,_l_T_empty___closed__1,8,3 ; @l_T_empty___closed__1
.zerofill __DATA,__bss,_l_T_empty___closed__2,8,3 ; @l_T_empty___closed__2
.zerofill __DATA,__bss,_l_T_check___closed__0,8,3 ; @l_T_check___closed__0
.zerofill __DATA,__bss,_l_main___closed__0,8,3 ; @l_main___closed__0
.zerofill __DATA,__bss,_l_main___closed__1,8,3 ; @l_main___closed__1
.zerofill __DATA,__bss,_l_main___closed__2,8,3 ; @l_main___closed__2
.zerofill __DATA,__bss,_l_main___closed__3,8,3 ; @l_main___closed__3
.zerofill __DATA,__bss,_l_main___closed__4,8,3 ; @l_main___closed__4
.zerofill __DATA,__bss,_l_main___closed__5,8,3 ; @l_main___closed__5
.zerofill __DATA,__bss,_l_main___closed__6,8,3 ; @l_main___closed__6
.zerofill __DATA,__bss,_l_main___closed__7,8,3 ; @l_main___closed__7
.zerofill __DATA,__bss,_l_main___closed__8,8,3 ; @l_main___closed__8
.zerofill __DATA,__bss,_l_main___closed__9,8,3 ; @l_main___closed__9
.zerofill __DATA,__bss,_l_main___closed__10,8,3 ; @l_main___closed__10
.zerofill __DATA,__bss,_l_main___closed__11,8,3 ; @l_main___closed__11
.zerofill __DATA,__bss,_l_main___closed__12,8,3 ; @l_main___closed__12
.zerofill __DATA,__bss,_l_main___closed__13,8,3 ; @l_main___closed__13
.zerofill __DATA,__bss,_l_main___closed__14,8,3 ; @l_main___closed__14
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/Users/pehle/dev/lean4/build/release/stage1/include/lean/lean.h"

l_.str.1:                               ; @.str.1
	.asciz	"lean_is_string(o)"

l_.str.2:                               ; @.str.2
	.asciz	"i < lean_array_size(o)"

l_.str.3:                               ; @.str.3
	.asciz	"lean_is_array(o)"

l_.str.4:                               ; @.str.4
	.asciz	"i < lean_ctor_num_objs(o)"

l_.str.5:                               ; @.str.5
	.asciz	"lean_is_ctor(o)"

l_.str.6:                               ; @.str.6
	.asciz	"tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE"

l_.str.7:                               ; @.str.7
	.asciz	"i >= lean_ctor_num_objs(o)"

l_.str.8:                               ; @.str.8
	.asciz	"arity > 0"

l_.str.9:                               ; @.str.9
	.asciz	"num_fixed < arity"

l_.str.10:                              ; @.str.10
	.space	1

l_.str.11:                              ; @.str.11
	.asciz	"h"

l_.str.12:                              ; @.str.12
	.asciz	"hello"

l_.str.13:                              ; @.str.13
	.asciz	"helloo"

l_.str.14:                              ; @.str.14
	.asciz	"hellooo"

l_.str.15:                              ; @.str.15
	.asciz	"helloooooo"

l_.str.16:                              ; @.str.16
	.asciz	"hella"

l_.str.17:                              ; @.str.17
	.asciz	"hellx"

l_.str.18:                              ; @.str.18
	.asciz	"h\303\266"

l_.str.19:                              ; @.str.19
	.asciz	"h\303\274"

l_.str.20:                              ; @.str.20
	.asciz	"h\303\244"

l_.str.21:                              ; @.str.21
	.asciz	"\360\237\222\251"

l_.str.22:                              ; @.str.22
	.asciz	"somePrefix"

l_.str.23:                              ; @.str.23
	.asciz	"matchPrefix differs (with prefix): key = "

l_.str.24:                              ; @.str.24
	.asciz	" "

l_.str.25:                              ; @.str.25
	.asciz	"matchPrefix differs: key = "

l_.str.26:                              ; @.str.26
	.asciz	", got: "

l_.str.27:                              ; @.str.27
	.asciz	" exp: "

l_.str.28:                              ; @.str.28
	.asciz	"none"

l_.str.29:                              ; @.str.29
	.asciz	"(some "

l_.str.30:                              ; @.str.30
	.asciz	")"

l_.str.31:                              ; @.str.31
	.asciz	"findPrefix differs: key = "

l_.str.32:                              ; @.str.32
	.asciz	"find? differs: key = "

l_.str.33:                              ; @.str.33
	.asciz	"Inserting "

l_.str.34:                              ; @.str.34
	.asciz	"Resetting trie"

l_.str.35:                              ; @.str.35
	.asciz	"helooooo"

.subsections_via_symbols
