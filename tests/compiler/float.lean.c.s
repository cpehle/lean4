	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 99, 0	sdk_version 15, 5
	.p2align	2                               ; -- Begin function lean_float_mul
_lean_float_mul:                        ; @lean_float_mul
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fmul	d0, d0, d1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_uint32_to_nat
_lean_uint32_to_nat:                    ; @lean_uint32_to_nat
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
	.p2align	2                               ; -- Begin function lean_float_div
_lean_float_div:                        ; @lean_float_div
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fdiv	d0, d0, d1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_uint64_of_nat
_lean_uint64_of_nat:                    ; @lean_uint64_of_nat
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
	tbz	w0, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	ldr	x0, [sp, #8]
	bl	_lean_unbox
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB3_3
LBB3_2:
	ldr	x0, [sp, #8]
	bl	_lean_uint64_of_big_nat
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB3_3
LBB3_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_decLt
_lean_float_decLt:                      ; @lean_float_decLt
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fcmp	d0, d1
	cset	w0, mi
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_to_usize
_lean_float_to_usize:                   ; @lean_float_to_usize
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint64
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_negate
_lean_float_negate:                     ; @lean_float_negate
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	fneg	d0, d0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_to_uint8
_lean_float_to_uint8:                   ; @lean_float_to_uint8
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	ldr	d1, [sp, #8]
	movi	d0, #0000000000000000
	fcmp	d0, d1
	b.hi	LBB7_5
	b	LBB7_1
LBB7_1:
	ldr	d0, [sp, #8]
	mov	x8, #4643211215818981376        ; =0x4070000000000000
	fmov	d1, x8
	fcmp	d0, d1
	b.pl	LBB7_3
	b	LBB7_2
LBB7_2:
	ldr	d0, [sp, #8]
	fcvtzu	w8, d0
	and	w8, w8, #0xff
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB7_4
LBB7_3:
	mov	w8, #255                        ; =0xff
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB7_4
LBB7_4:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB7_6
LBB7_5:
	mov	w8, #0                          ; =0x0
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB7_6
LBB7_6:
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	and	w0, w8, #0xff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_add
_lean_float_add:                        ; @lean_float_add
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fadd	d0, d0, d1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_nat_to_int
_lean_nat_to_int:                       ; @lean_nat_to_int
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB9_4
	b	LBB9_1
LBB9_1:
	ldr	x0, [sp, #16]
	bl	_lean_unbox
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x9, #2147483647                 ; =0x7fffffff
	subs	x8, x8, x9
	b.hi	LBB9_3
	b	LBB9_2
LBB9_2:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB9_5
LBB9_3:
	ldr	x0, [sp, #8]
	bl	_lean_big_size_t_to_int
	stur	x0, [x29, #-8]
	b	LBB9_5
LBB9_4:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB9_5
LBB9_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_uint64_to_float
_lean_uint64_to_float:                  ; @lean_uint64_to_float
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	d0, [sp, #8]
	ucvtf	d0, d0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_uint64_to_nat
_lean_uint64_to_nat:                    ; @lean_uint64_to_nat
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
	tbz	w8, #0, LBB11_2
	b	LBB11_1
LBB11_1:
	ldr	x0, [sp]
	bl	_lean_box
	str	x0, [sp, #8]
	b	LBB11_3
LBB11_2:
	ldr	x0, [sp]
	bl	_lean_big_uint64_to_nat
	str	x0, [sp, #8]
	b	LBB11_3
LBB11_3:
	ldr	x0, [sp, #8]
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
	tbz	w8, #0, LBB12_2
	b	LBB12_1
LBB12_1:
	ldr	x0, [sp]
	bl	_lean_box
	str	x0, [sp, #8]
	b	LBB12_3
LBB12_2:
	ldr	x0, [sp]
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #8]
	b	LBB12_3
LBB12_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_to_uint16
_lean_float_to_uint16:                  ; @lean_float_to_uint16
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	ldr	d1, [sp, #8]
	movi	d0, #0000000000000000
	fcmp	d0, d1
	b.hi	LBB13_5
	b	LBB13_1
LBB13_1:
	ldr	d0, [sp, #8]
	mov	x8, #4679240012837945344        ; =0x40f0000000000000
	fmov	d1, x8
	fcmp	d0, d1
	b.pl	LBB13_3
	b	LBB13_2
LBB13_2:
	ldr	d0, [sp, #8]
	fcvtzu	w8, d0
	and	w8, w8, #0xffff
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB13_4
LBB13_3:
	mov	w8, #65535                      ; =0xffff
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB13_4
LBB13_4:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB13_6
LBB13_5:
	mov	w8, #0                          ; =0x0
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB13_6
LBB13_6:
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	and	w0, w8, #0xffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_to_uint32
_lean_float_to_uint32:                  ; @lean_float_to_uint32
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	ldr	d1, [sp, #8]
	movi	d0, #0000000000000000
	fcmp	d0, d1
	b.hi	LBB14_5
	b	LBB14_1
LBB14_1:
	ldr	d0, [sp, #8]
	mov	x8, #4751297606875873280        ; =0x41f0000000000000
	fmov	d1, x8
	fcmp	d0, d1
	b.pl	LBB14_3
	b	LBB14_2
LBB14_2:
	ldr	d0, [sp, #8]
	fcvtzu	w8, d0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB14_4
LBB14_3:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB14_4
LBB14_4:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB14_6
LBB14_5:
	mov	w8, #0                          ; =0x0
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB14_6
LBB14_6:
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_nat_abs
_lean_nat_abs:                          ; @lean_nat_abs
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	_lean_int_lt
	tbz	w0, #0, LBB15_2
	b	LBB15_1
LBB15_1:
	ldr	x0, [sp, #16]
	bl	_lean_int_neg
	bl	_lean_int_to_nat
	stur	x0, [x29, #-8]
	b	LBB15_3
LBB15_2:
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #16]
	bl	_lean_int_to_nat
	stur	x0, [x29, #-8]
	b	LBB15_3
LBB15_3:
	ldur	x0, [x29, #-8]
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
	.p2align	2                               ; -- Begin function lean_float_beq
_lean_float_beq:                        ; @lean_float_beq
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fcmp	d0, d1
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_uint16_to_nat
_lean_uint16_to_nat:                    ; @lean_uint16_to_nat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturh	w0, [x29, #-2]
	ldurh	w8, [x29, #-2]
	mov	x0, x8
	bl	_lean_usize_to_nat
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_int_dec_lt
_lean_int_dec_lt:                       ; @lean_int_dec_lt
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
	bl	_lean_int_lt
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
	tbz	w0, #0, LBB20_2
	b	LBB20_1
LBB20_1:
	ldr	x0, [sp, #24]
	bl	_lean_is_scalar
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB20_2
LBB20_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB20_6
	b	LBB20_3
LBB20_3:
	ldur	x0, [x29, #-16]
	bl	_lean_unbox
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	_lean_unbox
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.hs	LBB20_5
	b	LBB20_4
LBB20_4:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	b	LBB20_7
LBB20_5:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x0, x8, x9
	bl	_lean_box
	stur	x0, [x29, #-8]
	b	LBB20_7
LBB20_6:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_lean_nat_big_sub
	stur	x0, [x29, #-8]
	b	LBB20_7
LBB20_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_decLe
_lean_float_decLe:                      ; @lean_float_decLe
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fcmp	d0, d1
	cset	w0, ls
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_to_uint64
_lean_float_to_uint64:                  ; @lean_float_to_uint64
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, #24]
	ldr	d1, [sp, #24]
	movi	d0, #0000000000000000
	fcmp	d0, d1
	b.hi	LBB22_5
	b	LBB22_1
LBB22_1:
	ldr	d0, [sp, #24]
	mov	x8, #4895412794951729152        ; =0x43f0000000000000
	fmov	d1, x8
	fcmp	d0, d1
	b.pl	LBB22_3
	b	LBB22_2
LBB22_2:
	ldr	d0, [sp, #24]
	fcvtzu	x8, d0
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB22_4
LBB22_3:
	mov	x8, #-1                         ; =0xffffffffffffffff
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB22_4
LBB22_4:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB22_6
LBB22_5:
	mov	x8, #0                          ; =0x0
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB22_6
LBB22_6:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_uint8_to_nat
_lean_uint8_to_nat:                     ; @lean_uint8_to_nat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-1]
	ldurb	w8, [x29, #-1]
	mov	x0, x8
	bl	_lean_usize_to_nat
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_int_neg
_lean_int_neg:                          ; @lean_int_neg
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
	tbz	w0, #0, LBB24_2
	b	LBB24_1
LBB24_1:
	ldr	x0, [sp]
	bl	_lean_scalar_to_int64
	mov	x8, #0                          ; =0x0
	subs	x0, x8, x0
	bl	_lean_int64_to_int
	str	x0, [sp, #8]
	b	LBB24_3
LBB24_2:
	ldr	x0, [sp]
	bl	_lean_int_big_neg
	str	x0, [sp, #8]
	b	LBB24_3
LBB24_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	tbz	w0, #0, LBB25_2
	b	LBB25_1
LBB25_1:
	ldr	x0, [sp, #24]
	bl	_lean_is_scalar
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB25_2
LBB25_2:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB25_4
	b	LBB25_3
LBB25_3:
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
	b	LBB25_5
LBB25_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_lean_nat_big_add
	stur	x0, [x29, #-8]
	b	LBB25_5
LBB25_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_float_sub
_lean_float_sub:                        ; @lean_float_sub
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fsub	d0, d0, d1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0 ; -- Begin function l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	.globl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	.p2align	2
_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0: ; @l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
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
	b	LBB27_1
LBB27_1:
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
	tbz	w8, #0, LBB28_2
	b	LBB28_1
LBB28_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #623                        ; =0x26f
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB28_2
LBB28_2:
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
	tbnz	w0, #0, LBB29_2
	b	LBB29_1
LBB29_1:
	ldr	x0, [sp, #8]
	bl	_lean_inc_ref
	b	LBB29_2
LBB29_2:
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
	tbz	w8, #0, LBB30_2
	b	LBB30_1
LBB30_1:
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	b	LBB30_5
LBB30_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbz	w8, LBB30_4
	b	LBB30_3
LBB30_3:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref_cold
	b	LBB30_4
LBB30_4:
	b	LBB30_5
LBB30_5:
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
	tbnz	w0, #0, LBB32_2
	b	LBB32_1
LBB32_1:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	b	LBB32_2
LBB32_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__0 ; -- Begin function l_IO_println___at___tst1_spec__0
	.globl	_l_IO_println___at___tst1_spec__0
	.p2align	2
_l_IO_println___at___tst1_spec__0:      ; @l_IO_println___at___tst1_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	d0, [x29, #-8]
	stur	x0, [x29, #-16]
	b	LBB33_1
LBB33_1:
	ldur	d0, [x29, #-8]
	bl	_lean_float_to_string
	str	x0, [sp, #24]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #20]
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	_lean_string_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__2 ; -- Begin function l_IO_println___at___tst1_spec__2
	.globl	_l_IO_println___at___tst1_spec__2
	.p2align	2
_l_IO_println___at___tst1_spec__2:      ; @l_IO_println___at___tst1_spec__2
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
	b	LBB34_1
LBB34_1:
	ldurb	w8, [x29, #-1]
	cbnz	w8, LBB34_3
	b	LBB34_2
LBB34_2:
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-24]
	b	LBB34_4
LBB34_3:
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB34_4
LBB34_4:
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #20]
	ldur	x0, [x29, #-24]
	ldr	w1, [sp, #20]
	bl	_lean_string_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__3 ; -- Begin function l_IO_println___at___tst1_spec__3
	.globl	_l_IO_println___at___tst1_spec__3
	.p2align	2
_l_IO_println___at___tst1_spec__3:      ; @l_IO_println___at___tst1_spec__3
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
	b	LBB35_1
LBB35_1:
	ldurb	w0, [x29, #-1]
	bl	_lean_uint8_to_nat
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	_l_Nat_reprFast
	str	x0, [sp, #32]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #28]
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #28]
	bl	_lean_string_push
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__4 ; -- Begin function l_IO_println___at___tst1_spec__4
	.globl	_l_IO_println___at___tst1_spec__4
	.p2align	2
_l_IO_println___at___tst1_spec__4:      ; @l_IO_println___at___tst1_spec__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturh	w0, [x29, #-2]
	stur	x1, [x29, #-16]
	b	LBB36_1
LBB36_1:
	ldurh	w0, [x29, #-2]
	bl	_lean_uint16_to_nat
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	_l_Nat_reprFast
	str	x0, [sp, #32]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #28]
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #28]
	bl	_lean_string_push
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__5 ; -- Begin function l_IO_println___at___tst1_spec__5
	.globl	_l_IO_println___at___tst1_spec__5
	.p2align	2
_l_IO_println___at___tst1_spec__5:      ; @l_IO_println___at___tst1_spec__5
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	b	LBB37_1
LBB37_1:
	ldur	w0, [x29, #-4]
	bl	_lean_uint32_to_nat
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	_l_Nat_reprFast
	str	x0, [sp, #32]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #28]
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #28]
	bl	_lean_string_push
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__6 ; -- Begin function l_IO_println___at___tst1_spec__6
	.globl	_l_IO_println___at___tst1_spec__6
	.p2align	2
_l_IO_println___at___tst1_spec__6:      ; @l_IO_println___at___tst1_spec__6
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
	b	LBB38_1
LBB38_1:
	ldur	x0, [x29, #-8]
	bl	_lean_uint64_to_nat
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	_l_Nat_reprFast
	str	x0, [sp, #32]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #28]
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #28]
	bl	_lean_string_push
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__7 ; -- Begin function l_IO_println___at___tst1_spec__7
	.globl	_l_IO_println___at___tst1_spec__7
	.p2align	2
_l_IO_println___at___tst1_spec__7:      ; @l_IO_println___at___tst1_spec__7
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
	b	LBB39_1
LBB39_1:
	ldur	x0, [x29, #-8]
	bl	_lean_usize_to_nat
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	_l_Nat_reprFast
	str	x0, [sp, #32]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #28]
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #28]
	bl	_lean_string_push
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__8 ; -- Begin function l_IO_println___at___tst1_spec__8
	.globl	_l_IO_println___at___tst1_spec__8
	.p2align	2
_l_IO_println___at___tst1_spec__8:      ; @l_IO_println___at___tst1_spec__8
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #608
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	b	LBB40_1
LBB40_1:
	ldur	x0, [x29, #-24]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-24]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_get
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-40]
	bl	_lean_ctor_get
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-40]
	bl	_lean_ctor_get
	stur	x0, [x29, #-64]
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__0@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__8___closed__0@PAGEOFF]
	stur	x8, [x29, #-72]
	ldur	x0, [x29, #-48]
	bl	_lean_unbox_float
	stur	d0, [x29, #-80]
	ldur	d0, [x29, #-80]
	bl	_lean_float_to_string
	stur	x0, [x29, #-88]
	ldur	x0, [x29, #-72]
	ldur	x1, [x29, #-88]
	bl	_lean_string_append
	stur	x0, [x29, #-96]
	ldur	x0, [x29, #-88]
	bl	_lean_dec_ref
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGEOFF]
	stur	x8, [x29, #-104]
	ldur	x0, [x29, #-96]
	ldur	x1, [x29, #-104]
	bl	_lean_string_append
	stur	x0, [x29, #-112]
	ldur	x0, [x29, #-56]
	bl	_lean_unbox
	mov	x8, x0
	sturb	w8, [x29, #-217]
	ldurb	w8, [x29, #-217]
	cbnz	w8, LBB40_3
	b	LBB40_2
LBB40_2:
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
	stur	x8, [x29, #-232]
	ldur	x8, [x29, #-232]
	stur	x8, [x29, #-216]
	b	LBB40_11
LBB40_3:
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
	stur	x8, [x29, #-240]
	ldur	x8, [x29, #-240]
	stur	x8, [x29, #-216]
	b	LBB40_11
LBB40_4:
	ldur	x0, [x29, #-144]
	ldur	x1, [x29, #-152]
	bl	_lean_string_append
	stur	x0, [x29, #-248]
	ldur	x0, [x29, #-152]
	bl	_lean_dec_ref
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGEOFF]
	stur	x8, [x29, #-256]
	ldur	x0, [x29, #-248]
	ldur	x1, [x29, #-256]
	bl	_lean_string_append
	str	x0, [sp, #360]
	ldur	x0, [x29, #-136]
	ldr	x1, [sp, #360]
	bl	_lean_string_append
	str	x0, [sp, #352]
	ldr	x0, [sp, #360]
	bl	_lean_dec_ref
	ldr	x0, [sp, #352]
	ldur	x1, [x29, #-256]
	bl	_lean_string_append
	str	x0, [sp, #344]
	ldur	x0, [x29, #-120]
	ldr	x1, [sp, #344]
	bl	_lean_string_append
	str	x0, [sp, #336]
	ldr	x0, [sp, #344]
	bl	_lean_dec_ref
	ldr	x0, [sp, #336]
	ldur	x1, [x29, #-256]
	bl	_lean_string_append
	str	x0, [sp, #328]
	ldur	x0, [x29, #-128]
	ldr	x1, [sp, #328]
	bl	_lean_string_append
	str	x0, [sp, #320]
	ldr	x0, [sp, #328]
	bl	_lean_dec_ref
	ldr	x0, [sp, #320]
	ldur	x1, [x29, #-256]
	bl	_lean_string_append
	str	x0, [sp, #312]
	ldur	x0, [x29, #-112]
	ldr	x1, [sp, #312]
	bl	_lean_string_append
	str	x0, [sp, #304]
	ldr	x0, [sp, #312]
	bl	_lean_dec_ref
	ldr	x0, [sp, #304]
	ldur	x1, [x29, #-256]
	bl	_lean_string_append
	str	x0, [sp, #296]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #292]
	ldr	x0, [sp, #296]
	ldr	w1, [sp, #292]
	bl	_lean_string_push
	str	x0, [sp, #280]
	ldr	x0, [sp, #280]
	ldur	x1, [x29, #-32]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp, #272]
	ldr	x0, [sp, #272]
	add	sp, sp, #608
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB40_5:
	ldur	x0, [x29, #-160]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #264]
	ldur	x0, [x29, #-160]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #256]
	ldur	x0, [x29, #-72]
	ldur	x1, [x29, #-184]
	bl	_lean_string_append
	str	x0, [sp, #248]
	ldur	x0, [x29, #-184]
	bl	_lean_dec_ref
	ldr	x0, [sp, #248]
	ldur	x1, [x29, #-104]
	bl	_lean_string_append
	str	x0, [sp, #240]
	ldr	x0, [sp, #264]
	bl	_lean_unbox_float
	str	d0, [sp, #232]
	ldr	d0, [sp, #232]
	bl	_lean_float_to_string
	str	x0, [sp, #224]
	ldur	x0, [x29, #-72]
	ldr	x1, [sp, #224]
	bl	_lean_string_append
	str	x0, [sp, #216]
	ldr	x0, [sp, #224]
	bl	_lean_dec_ref
	ldr	x0, [sp, #216]
	ldur	x1, [x29, #-104]
	bl	_lean_string_append
	str	x0, [sp, #208]
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGEOFF]
	str	x8, [sp, #200]
	ldr	x0, [sp, #256]
	ldr	x1, [sp, #200]
	bl	_lean_int_dec_lt
	strb	w0, [sp, #199]
	ldrb	w8, [sp, #199]
	cbnz	w8, LBB40_7
	b	LBB40_6
LBB40_6:
	ldr	x0, [sp, #256]
	bl	_lean_nat_abs
	str	x0, [sp, #184]
	ldr	x0, [sp, #184]
	bl	_l_Nat_reprFast
	str	x0, [sp, #176]
	ldur	x8, [x29, #-168]
	stur	x8, [x29, #-120]
	ldur	x8, [x29, #-176]
	stur	x8, [x29, #-128]
	ldr	x8, [sp, #240]
	stur	x8, [x29, #-136]
	ldr	x8, [sp, #208]
	stur	x8, [x29, #-144]
	ldr	x8, [sp, #176]
	stur	x8, [x29, #-152]
	b	LBB40_4
LBB40_7:
	ldr	x0, [sp, #256]
	bl	_lean_nat_abs
	str	x0, [sp, #168]
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #160]
	ldr	x0, [sp, #168]
	ldr	x1, [sp, #160]
	bl	_lean_nat_sub
	str	x0, [sp, #152]
	ldr	x0, [sp, #168]
	bl	_lean_dec
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGEOFF]
	str	x8, [sp, #144]
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #160]
	bl	_lean_nat_add
	str	x0, [sp, #136]
	ldr	x0, [sp, #152]
	bl	_lean_dec
	ldr	x0, [sp, #136]
	bl	_l_Nat_reprFast
	str	x0, [sp, #128]
	ldr	x0, [sp, #144]
	ldr	x1, [sp, #128]
	bl	_lean_string_append
	str	x0, [sp, #120]
	ldr	x0, [sp, #128]
	bl	_lean_dec_ref
	ldur	x8, [x29, #-168]
	stur	x8, [x29, #-120]
	ldur	x8, [x29, #-176]
	stur	x8, [x29, #-128]
	ldr	x8, [sp, #240]
	stur	x8, [x29, #-136]
	ldr	x8, [sp, #208]
	stur	x8, [x29, #-144]
	ldr	x8, [sp, #120]
	stur	x8, [x29, #-152]
	b	LBB40_4
LBB40_8:
	ldur	x0, [x29, #-192]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #112]
	ldur	x0, [x29, #-192]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #104]
	ldur	x0, [x29, #-72]
	ldur	x1, [x29, #-208]
	bl	_lean_string_append
	str	x0, [sp, #96]
	ldur	x0, [x29, #-208]
	bl	_lean_dec_ref
	ldr	x0, [sp, #96]
	ldur	x1, [x29, #-104]
	bl	_lean_string_append
	str	x0, [sp, #88]
	ldr	x0, [sp, #112]
	bl	_lean_unbox
	mov	x8, x0
	strb	w8, [sp, #87]
	ldrb	w8, [sp, #87]
	cbnz	w8, LBB40_10
	b	LBB40_9
LBB40_9:
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
	str	x8, [sp, #72]
	ldr	x8, [sp, #104]
	stur	x8, [x29, #-160]
	ldr	x8, [sp, #88]
	stur	x8, [x29, #-168]
	ldur	x8, [x29, #-200]
	stur	x8, [x29, #-176]
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-184]
	b	LBB40_5
LBB40_10:
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
	str	x8, [sp, #64]
	ldr	x8, [sp, #104]
	stur	x8, [x29, #-160]
	ldr	x8, [sp, #88]
	stur	x8, [x29, #-168]
	ldur	x8, [x29, #-200]
	stur	x8, [x29, #-176]
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-184]
	b	LBB40_5
LBB40_11:
	ldur	x0, [x29, #-64]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldur	x0, [x29, #-64]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #48]
	ldur	x0, [x29, #-72]
	ldur	x1, [x29, #-216]
	bl	_lean_string_append
	str	x0, [sp, #40]
	ldur	x0, [x29, #-216]
	bl	_lean_dec_ref
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-104]
	bl	_lean_string_append
	str	x0, [sp, #32]
	ldr	x0, [sp, #56]
	bl	_lean_unbox
	mov	x8, x0
	strb	w8, [sp, #31]
	ldrb	w8, [sp, #31]
	cbnz	w8, LBB40_13
	b	LBB40_12
LBB40_12:
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-192]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-200]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-208]
	b	LBB40_8
LBB40_13:
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-192]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-200]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-208]
	b	LBB40_8
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
	.private_extern	_l_tst1                 ; -- Begin function l_tst1
	.globl	_l_tst1
	.p2align	2
_l_tst1:                                ; @l_tst1
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #1040
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	b	LBB44_1
LBB44_1:
	adrp	x8, _l_tst1___closed__0@PAGE
	ldr	d0, [x8, _l_tst1___closed__0@PAGEOFF]
	stur	d0, [x29, #-40]
	ldur	d0, [x29, #-40]
	ldur	x0, [x29, #-32]
	bl	_l_IO_println___at___tst1_spec__0
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_85
	b	LBB44_2
LBB44_2:
	ldur	x0, [x29, #-48]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-56]
	bl	_lean_inc
	ldur	x0, [x29, #-48]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__2@PAGE
	ldr	d0, [x8, _l_tst1___closed__2@PAGEOFF]
	stur	d0, [x29, #-64]
	ldur	d0, [x29, #-64]
	ldur	x0, [x29, #-56]
	bl	_l_IO_println___at___tst1_spec__0
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-72]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_84
	b	LBB44_3
LBB44_3:
	ldur	x0, [x29, #-72]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-80]
	ldur	x0, [x29, #-80]
	bl	_lean_inc
	ldur	x0, [x29, #-72]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__4@PAGE
	ldr	d0, [x8, _l_tst1___closed__4@PAGEOFF]
	stur	d0, [x29, #-88]
	ldur	d0, [x29, #-88]
	ldur	x0, [x29, #-80]
	bl	_l_IO_println___at___tst1_spec__0
	stur	x0, [x29, #-96]
	ldur	x0, [x29, #-96]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_83
	b	LBB44_4
LBB44_4:
	ldur	x0, [x29, #-96]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-104]
	bl	_lean_inc
	ldur	x0, [x29, #-96]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__5@PAGE
	ldr	d0, [x8, _l_tst1___closed__5@PAGEOFF]
	stur	d0, [x29, #-112]
	ldur	d0, [x29, #-112]
	ldur	x0, [x29, #-104]
	bl	_l_IO_println___at___tst1_spec__0
	stur	x0, [x29, #-120]
	ldur	x0, [x29, #-120]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_82
	b	LBB44_5
LBB44_5:
	ldur	x0, [x29, #-120]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-128]
	ldur	x0, [x29, #-128]
	bl	_lean_inc
	ldur	x0, [x29, #-120]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__6@PAGE
	ldr	d0, [x8, _l_tst1___closed__6@PAGEOFF]
	stur	d0, [x29, #-136]
	ldur	d0, [x29, #-136]
	ldur	x0, [x29, #-128]
	bl	_l_IO_println___at___tst1_spec__0
	stur	x0, [x29, #-144]
	ldur	x0, [x29, #-144]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_81
	b	LBB44_6
LBB44_6:
	ldur	x0, [x29, #-144]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-152]
	ldur	x0, [x29, #-152]
	bl	_lean_inc
	ldur	x0, [x29, #-144]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__7@PAGE
	ldrb	w8, [x8, _l_tst1___closed__7@PAGEOFF]
	sturb	w8, [x29, #-153]
	ldurb	w0, [x29, #-153]
	ldur	x1, [x29, #-152]
	bl	_l_IO_println___at___tst1_spec__2
	stur	x0, [x29, #-168]
	ldur	x0, [x29, #-168]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_80
	b	LBB44_7
LBB44_7:
	ldur	x0, [x29, #-168]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-176]
	ldur	x0, [x29, #-176]
	bl	_lean_inc
	ldur	x0, [x29, #-168]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__9@PAGE
	ldrb	w8, [x8, _l_tst1___closed__9@PAGEOFF]
	sturb	w8, [x29, #-177]
	ldurb	w0, [x29, #-177]
	ldur	x1, [x29, #-176]
	bl	_l_IO_println___at___tst1_spec__2
	stur	x0, [x29, #-192]
	ldur	x0, [x29, #-192]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_79
	b	LBB44_8
LBB44_8:
	ldur	x0, [x29, #-192]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-200]
	ldur	x0, [x29, #-200]
	bl	_lean_inc
	ldur	x0, [x29, #-192]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__10@PAGE
	ldrb	w8, [x8, _l_tst1___closed__10@PAGEOFF]
	sturb	w8, [x29, #-201]
	ldurb	w0, [x29, #-201]
	ldur	x1, [x29, #-200]
	bl	_l_IO_println___at___tst1_spec__2
	stur	x0, [x29, #-216]
	ldur	x0, [x29, #-216]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_78
	b	LBB44_9
LBB44_9:
	ldur	x0, [x29, #-216]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-224]
	ldur	x0, [x29, #-224]
	bl	_lean_inc
	ldur	x0, [x29, #-216]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__11@PAGE
	ldrb	w8, [x8, _l_tst1___closed__11@PAGEOFF]
	sturb	w8, [x29, #-225]
	ldurb	w0, [x29, #-225]
	ldur	x1, [x29, #-224]
	bl	_l_IO_println___at___tst1_spec__2
	stur	x0, [x29, #-240]
	ldur	x0, [x29, #-240]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_77
	b	LBB44_10
LBB44_10:
	ldur	x0, [x29, #-240]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-248]
	ldur	x0, [x29, #-248]
	bl	_lean_inc
	ldur	x0, [x29, #-240]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__12@PAGE
	ldrb	w8, [x8, _l_tst1___closed__12@PAGEOFF]
	sturb	w8, [x29, #-249]
	ldurb	w0, [x29, #-249]
	ldur	x1, [x29, #-248]
	bl	_l_IO_println___at___tst1_spec__2
	str	x0, [sp, #792]
	ldr	x0, [sp, #792]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_76
	b	LBB44_11
LBB44_11:
	ldr	x0, [sp, #792]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #784]
	ldr	x0, [sp, #784]
	bl	_lean_inc
	ldr	x0, [sp, #792]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__13@PAGE
	ldrb	w8, [x8, _l_tst1___closed__13@PAGEOFF]
	strb	w8, [sp, #783]
	ldrb	w0, [sp, #783]
	ldr	x1, [sp, #784]
	bl	_l_IO_println___at___tst1_spec__2
	str	x0, [sp, #768]
	ldr	x0, [sp, #768]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_75
	b	LBB44_12
LBB44_12:
	ldr	x0, [sp, #768]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #760]
	ldr	x0, [sp, #760]
	bl	_lean_inc
	ldr	x0, [sp, #768]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__14@PAGE
	ldrb	w8, [x8, _l_tst1___closed__14@PAGEOFF]
	strb	w8, [sp, #759]
	ldrb	w0, [sp, #759]
	ldr	x1, [sp, #760]
	bl	_l_IO_println___at___tst1_spec__2
	str	x0, [sp, #744]
	ldr	x0, [sp, #744]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_74
	b	LBB44_13
LBB44_13:
	ldr	x0, [sp, #744]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #736]
	ldr	x0, [sp, #736]
	bl	_lean_inc
	ldr	x0, [sp, #744]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__15@PAGE
	ldr	d0, [x8, _l_tst1___closed__15@PAGEOFF]
	str	d0, [sp, #728]
	ldr	d0, [sp, #728]
	ldr	x0, [sp, #736]
	bl	_l_IO_println___at___tst1_spec__0
	str	x0, [sp, #720]
	ldr	x0, [sp, #720]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_73
	b	LBB44_14
LBB44_14:
	ldr	x0, [sp, #720]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #712]
	ldr	x0, [sp, #712]
	bl	_lean_inc
	ldr	x0, [sp, #720]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__17@PAGE
	ldr	d0, [x8, _l_tst1___closed__17@PAGEOFF]
	str	d0, [sp, #704]
	ldr	d0, [sp, #704]
	ldr	x0, [sp, #712]
	bl	_l_IO_println___at___tst1_spec__0
	str	x0, [sp, #696]
	ldr	x0, [sp, #696]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_72
	b	LBB44_15
LBB44_15:
	ldr	x0, [sp, #696]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #688]
	ldr	x0, [sp, #688]
	bl	_lean_inc
	ldr	x0, [sp, #696]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__19@PAGE
	ldr	d0, [x8, _l_tst1___closed__19@PAGEOFF]
	str	d0, [sp, #680]
	ldr	d0, [sp, #680]
	ldr	x0, [sp, #688]
	bl	_l_IO_println___at___tst1_spec__0
	str	x0, [sp, #672]
	ldr	x0, [sp, #672]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_71
	b	LBB44_16
LBB44_16:
	ldr	x0, [sp, #672]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #664]
	ldr	x0, [sp, #664]
	bl	_lean_inc
	ldr	x0, [sp, #672]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__20@PAGE
	ldr	d0, [x8, _l_tst1___closed__20@PAGEOFF]
	str	d0, [sp, #656]
	ldr	d0, [sp, #656]
	ldr	x0, [sp, #664]
	bl	_l_IO_println___at___tst1_spec__0
	str	x0, [sp, #648]
	ldr	x0, [sp, #648]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_70
	b	LBB44_17
LBB44_17:
	ldr	x0, [sp, #648]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #640]
	ldr	x0, [sp, #640]
	bl	_lean_inc
	ldr	x0, [sp, #648]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__23@PAGE
	ldrb	w8, [x8, _l_tst1___closed__23@PAGEOFF]
	strb	w8, [sp, #639]
	ldrb	w0, [sp, #639]
	ldr	x1, [sp, #640]
	bl	_l_IO_println___at___tst1_spec__3
	str	x0, [sp, #624]
	ldr	x0, [sp, #624]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_69
	b	LBB44_18
LBB44_18:
	ldr	x0, [sp, #624]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #616]
	ldr	x0, [sp, #616]
	bl	_lean_inc
	ldr	x0, [sp, #624]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__24@PAGE
	ldrh	w8, [x8, _l_tst1___closed__24@PAGEOFF]
	strh	w8, [sp, #614]
	ldrh	w0, [sp, #614]
	ldr	x1, [sp, #616]
	bl	_l_IO_println___at___tst1_spec__4
	str	x0, [sp, #600]
	ldr	x0, [sp, #600]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_68
	b	LBB44_19
LBB44_19:
	ldr	x0, [sp, #600]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #592]
	ldr	x0, [sp, #592]
	bl	_lean_inc
	ldr	x0, [sp, #600]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__25@PAGE
	ldr	w8, [x8, _l_tst1___closed__25@PAGEOFF]
	str	w8, [sp, #588]
	ldr	w0, [sp, #588]
	ldr	x1, [sp, #592]
	bl	_l_IO_println___at___tst1_spec__5
	str	x0, [sp, #576]
	ldr	x0, [sp, #576]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_67
	b	LBB44_20
LBB44_20:
	ldr	x0, [sp, #576]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #568]
	ldr	x0, [sp, #568]
	bl	_lean_inc
	ldr	x0, [sp, #576]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__26@PAGE
	ldr	x8, [x8, _l_tst1___closed__26@PAGEOFF]
	str	x8, [sp, #560]
	ldr	x0, [sp, #560]
	ldr	x1, [sp, #568]
	bl	_l_IO_println___at___tst1_spec__6
	str	x0, [sp, #552]
	ldr	x0, [sp, #552]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_66
	b	LBB44_21
LBB44_21:
	ldr	x0, [sp, #552]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #544]
	ldr	x0, [sp, #544]
	bl	_lean_inc
	ldr	x0, [sp, #552]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__27@PAGE
	ldr	x8, [x8, _l_tst1___closed__27@PAGEOFF]
	str	x8, [sp, #536]
	ldr	x0, [sp, #536]
	ldr	x1, [sp, #544]
	bl	_l_IO_println___at___tst1_spec__7
	str	x0, [sp, #528]
	ldr	x0, [sp, #528]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_65
	b	LBB44_22
LBB44_22:
	ldr	x0, [sp, #528]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #520]
	ldr	x0, [sp, #520]
	bl	_lean_inc
	ldr	x0, [sp, #528]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__29@PAGE
	ldrb	w8, [x8, _l_tst1___closed__29@PAGEOFF]
	strb	w8, [sp, #519]
	ldrb	w0, [sp, #519]
	ldr	x1, [sp, #520]
	bl	_l_IO_println___at___tst1_spec__3
	str	x0, [sp, #504]
	ldr	x0, [sp, #504]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_64
	b	LBB44_23
LBB44_23:
	ldr	x0, [sp, #504]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #496]
	ldr	x0, [sp, #496]
	bl	_lean_inc
	ldr	x0, [sp, #504]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__31@PAGE
	ldrb	w8, [x8, _l_tst1___closed__31@PAGEOFF]
	strb	w8, [sp, #495]
	ldrb	w0, [sp, #495]
	ldr	x1, [sp, #496]
	bl	_l_IO_println___at___tst1_spec__3
	str	x0, [sp, #480]
	ldr	x0, [sp, #480]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_63
	b	LBB44_24
LBB44_24:
	ldr	x0, [sp, #480]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #472]
	ldr	x0, [sp, #472]
	bl	_lean_inc
	ldr	x0, [sp, #480]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__33@PAGE
	ldrb	w8, [x8, _l_tst1___closed__33@PAGEOFF]
	strb	w8, [sp, #471]
	ldrb	w0, [sp, #471]
	ldr	x1, [sp, #472]
	bl	_l_IO_println___at___tst1_spec__3
	str	x0, [sp, #456]
	ldr	x0, [sp, #456]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_62
	b	LBB44_25
LBB44_25:
	ldr	x0, [sp, #456]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #448]
	ldr	x0, [sp, #448]
	bl	_lean_inc
	ldr	x0, [sp, #456]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__34@PAGE
	ldrh	w8, [x8, _l_tst1___closed__34@PAGEOFF]
	strh	w8, [sp, #446]
	ldrh	w0, [sp, #446]
	ldr	x1, [sp, #448]
	bl	_l_IO_println___at___tst1_spec__4
	str	x0, [sp, #432]
	ldr	x0, [sp, #432]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_61
	b	LBB44_26
LBB44_26:
	ldr	x0, [sp, #432]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #424]
	ldr	x0, [sp, #424]
	bl	_lean_inc
	ldr	x0, [sp, #432]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__37@PAGE
	ldrh	w8, [x8, _l_tst1___closed__37@PAGEOFF]
	strh	w8, [sp, #422]
	ldrh	w0, [sp, #422]
	ldr	x1, [sp, #424]
	bl	_l_IO_println___at___tst1_spec__4
	str	x0, [sp, #408]
	ldr	x0, [sp, #408]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_60
	b	LBB44_27
LBB44_27:
	ldr	x0, [sp, #408]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #400]
	ldr	x0, [sp, #400]
	bl	_lean_inc
	ldr	x0, [sp, #408]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__38@PAGE
	ldrh	w8, [x8, _l_tst1___closed__38@PAGEOFF]
	strh	w8, [sp, #398]
	ldrh	w0, [sp, #398]
	ldr	x1, [sp, #400]
	bl	_l_IO_println___at___tst1_spec__4
	str	x0, [sp, #384]
	ldr	x0, [sp, #384]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_59
	b	LBB44_28
LBB44_28:
	ldr	x0, [sp, #384]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #376]
	ldr	x0, [sp, #376]
	bl	_lean_inc
	ldr	x0, [sp, #384]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__39@PAGE
	ldr	w8, [x8, _l_tst1___closed__39@PAGEOFF]
	str	w8, [sp, #372]
	ldr	w0, [sp, #372]
	ldr	x1, [sp, #376]
	bl	_l_IO_println___at___tst1_spec__5
	str	x0, [sp, #360]
	ldr	x0, [sp, #360]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_58
	b	LBB44_29
LBB44_29:
	ldr	x0, [sp, #360]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #352]
	ldr	x0, [sp, #352]
	bl	_lean_inc
	ldr	x0, [sp, #360]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__42@PAGE
	ldr	w8, [x8, _l_tst1___closed__42@PAGEOFF]
	str	w8, [sp, #348]
	ldr	w0, [sp, #348]
	ldr	x1, [sp, #352]
	bl	_l_IO_println___at___tst1_spec__5
	str	x0, [sp, #336]
	ldr	x0, [sp, #336]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_57
	b	LBB44_30
LBB44_30:
	ldr	x0, [sp, #336]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #328]
	ldr	x0, [sp, #328]
	bl	_lean_inc
	ldr	x0, [sp, #336]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__43@PAGE
	ldr	w8, [x8, _l_tst1___closed__43@PAGEOFF]
	str	w8, [sp, #324]
	ldr	w0, [sp, #324]
	ldr	x1, [sp, #328]
	bl	_l_IO_println___at___tst1_spec__5
	str	x0, [sp, #312]
	ldr	x0, [sp, #312]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_56
	b	LBB44_31
LBB44_31:
	ldr	x0, [sp, #312]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #304]
	ldr	x0, [sp, #304]
	bl	_lean_inc
	ldr	x0, [sp, #312]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__44@PAGE
	ldr	x8, [x8, _l_tst1___closed__44@PAGEOFF]
	str	x8, [sp, #296]
	ldr	x0, [sp, #296]
	ldr	x1, [sp, #304]
	bl	_l_IO_println___at___tst1_spec__6
	str	x0, [sp, #288]
	ldr	x0, [sp, #288]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_55
	b	LBB44_32
LBB44_32:
	ldr	x0, [sp, #288]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #280]
	ldr	x0, [sp, #280]
	bl	_lean_inc
	ldr	x0, [sp, #288]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__47@PAGE
	ldr	x8, [x8, _l_tst1___closed__47@PAGEOFF]
	str	x8, [sp, #272]
	ldr	x0, [sp, #272]
	ldr	x1, [sp, #280]
	bl	_l_IO_println___at___tst1_spec__6
	str	x0, [sp, #264]
	ldr	x0, [sp, #264]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_54
	b	LBB44_33
LBB44_33:
	ldr	x0, [sp, #264]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #256]
	ldr	x0, [sp, #256]
	bl	_lean_inc
	ldr	x0, [sp, #264]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__48@PAGE
	ldr	x8, [x8, _l_tst1___closed__48@PAGEOFF]
	str	x8, [sp, #248]
	ldr	x0, [sp, #248]
	ldr	x1, [sp, #256]
	bl	_l_IO_println___at___tst1_spec__6
	str	x0, [sp, #240]
	ldr	x0, [sp, #240]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_53
	b	LBB44_34
LBB44_34:
	ldr	x0, [sp, #240]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #232]
	ldr	x0, [sp, #232]
	bl	_lean_inc
	ldr	x0, [sp, #240]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__49@PAGE
	ldr	x8, [x8, _l_tst1___closed__49@PAGEOFF]
	str	x8, [sp, #224]
	ldr	x0, [sp, #224]
	ldr	x1, [sp, #232]
	bl	_l_IO_println___at___tst1_spec__7
	str	x0, [sp, #216]
	ldr	x0, [sp, #216]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_52
	b	LBB44_35
LBB44_35:
	ldr	x0, [sp, #216]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #208]
	ldr	x0, [sp, #208]
	bl	_lean_inc
	ldr	x0, [sp, #216]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__57@PAGE
	ldrb	w8, [x8, _l_tst1___closed__57@PAGEOFF]
	strb	w8, [sp, #207]
	ldrb	w0, [sp, #207]
	ldr	x1, [sp, #208]
	bl	_l_IO_println___at___tst1_spec__2
	str	x0, [sp, #192]
	ldr	x0, [sp, #192]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_51
	b	LBB44_36
LBB44_36:
	ldr	x0, [sp, #192]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #184]
	ldr	x0, [sp, #184]
	bl	_lean_inc
	ldr	x0, [sp, #192]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__60@PAGE
	ldrb	w8, [x8, _l_tst1___closed__60@PAGEOFF]
	strb	w8, [sp, #183]
	ldrb	w0, [sp, #183]
	ldr	x1, [sp, #184]
	bl	_l_IO_println___at___tst1_spec__2
	str	x0, [sp, #168]
	ldr	x0, [sp, #168]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_50
	b	LBB44_37
LBB44_37:
	ldr	x0, [sp, #168]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #160]
	ldr	x0, [sp, #160]
	bl	_lean_inc
	ldr	x0, [sp, #168]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__69@PAGE
	ldr	x8, [x8, _l_tst1___closed__69@PAGEOFF]
	str	x8, [sp, #152]
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #160]
	bl	_l_IO_println___at___tst1_spec__8
	str	x0, [sp, #144]
	ldr	x0, [sp, #144]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_49
	b	LBB44_38
LBB44_38:
	ldr	x0, [sp, #144]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #136]
	ldr	x0, [sp, #136]
	bl	_lean_inc
	ldr	x0, [sp, #144]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__77@PAGE
	ldr	x8, [x8, _l_tst1___closed__77@PAGEOFF]
	str	x8, [sp, #128]
	ldr	x0, [sp, #128]
	ldr	x1, [sp, #136]
	bl	_l_IO_println___at___tst1_spec__8
	str	x0, [sp, #120]
	ldr	x0, [sp, #120]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_48
	b	LBB44_39
LBB44_39:
	ldr	x0, [sp, #120]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #112]
	ldr	x0, [sp, #112]
	bl	_lean_inc
	ldr	x0, [sp, #120]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__87@PAGE
	ldr	x8, [x8, _l_tst1___closed__87@PAGEOFF]
	str	x8, [sp, #104]
	ldr	x0, [sp, #104]
	ldr	x1, [sp, #112]
	bl	_l_IO_println___at___tst1_spec__8
	str	x0, [sp, #96]
	ldr	x0, [sp, #96]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_47
	b	LBB44_40
LBB44_40:
	ldr	x0, [sp, #96]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #88]
	ldr	x0, [sp, #88]
	bl	_lean_inc
	ldr	x0, [sp, #96]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__95@PAGE
	ldr	x8, [x8, _l_tst1___closed__95@PAGEOFF]
	str	x8, [sp, #80]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	bl	_l_IO_println___at___tst1_spec__8
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_46
	b	LBB44_41
LBB44_41:
	ldr	x0, [sp, #72]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_inc
	ldr	x0, [sp, #72]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__104@PAGE
	ldr	x8, [x8, _l_tst1___closed__104@PAGEOFF]
	str	x8, [sp, #56]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	_l_IO_println___at___tst1_spec__8
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_45
	b	LBB44_42
LBB44_42:
	ldr	x0, [sp, #48]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	_lean_inc
	ldr	x0, [sp, #48]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__105@PAGE
	ldr	d0, [x8, _l_tst1___closed__105@PAGEOFF]
	str	d0, [sp, #32]
	ldr	d0, [sp, #32]
	ldr	x0, [sp, #40]
	bl	_l_IO_println___at___tst1_spec__0
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_lean_obj_tag
	cbnz	w0, LBB44_44
	b	LBB44_43
LBB44_43:
	ldr	x0, [sp, #24]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_dec_ref
	adrp	x8, _l_tst1___closed__107@PAGE
	ldr	d0, [x8, _l_tst1___closed__107@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__0
	str	x0, [sp]
	ldr	x8, [sp]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_44:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_45:
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_46:
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_47:
	ldr	x8, [sp, #96]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_48:
	ldr	x8, [sp, #120]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_49:
	ldr	x8, [sp, #144]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_50:
	ldr	x8, [sp, #168]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_51:
	ldr	x8, [sp, #192]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_52:
	ldr	x8, [sp, #216]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_53:
	ldr	x8, [sp, #240]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_54:
	ldr	x8, [sp, #264]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_55:
	ldr	x8, [sp, #288]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_56:
	ldr	x8, [sp, #312]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_57:
	ldr	x8, [sp, #336]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_58:
	ldr	x8, [sp, #360]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_59:
	ldr	x8, [sp, #384]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_60:
	ldr	x8, [sp, #408]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_61:
	ldr	x8, [sp, #432]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_62:
	ldr	x8, [sp, #456]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_63:
	ldr	x8, [sp, #480]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_64:
	ldr	x8, [sp, #504]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_65:
	ldr	x8, [sp, #528]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_66:
	ldr	x8, [sp, #552]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_67:
	ldr	x8, [sp, #576]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_68:
	ldr	x8, [sp, #600]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_69:
	ldr	x8, [sp, #624]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_70:
	ldr	x8, [sp, #648]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_71:
	ldr	x8, [sp, #672]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_72:
	ldr	x8, [sp, #696]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_73:
	ldr	x8, [sp, #720]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_74:
	ldr	x8, [sp, #744]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_75:
	ldr	x8, [sp, #768]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_76:
	ldr	x8, [sp, #792]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_77:
	ldur	x8, [x29, #-240]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_78:
	ldur	x8, [x29, #-216]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_79:
	ldur	x8, [x29, #-192]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_80:
	ldur	x8, [x29, #-168]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_81:
	ldur	x8, [x29, #-144]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_82:
	ldur	x8, [x29, #-120]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_83:
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_84:
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_85:
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-24]
	b	LBB44_86
LBB44_86:
	ldur	x0, [x29, #-24]
	add	sp, sp, #1040
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
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
	tbz	w0, #0, LBB45_2
	b	LBB45_1
LBB45_1:
	ldr	x0, [sp]
	bl	_lean_unbox
	mov	x8, x0
	stur	w8, [x29, #-4]
	b	LBB45_3
LBB45_2:
	ldr	x0, [sp]
	bl	_lean_ptr_tag
	stur	w0, [x29, #-4]
	b	LBB45_3
LBB45_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__0___boxed ; -- Begin function l_IO_println___at___tst1_spec__0___boxed
	.globl	_l_IO_println___at___tst1_spec__0___boxed
	.p2align	2
_l_IO_println___at___tst1_spec__0___boxed: ; @l_IO_println___at___tst1_spec__0___boxed
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
	b	LBB46_1
LBB46_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox_float
	str	d0, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	d0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__2___boxed ; -- Begin function l_IO_println___at___tst1_spec__2___boxed
	.globl	_l_IO_println___at___tst1_spec__2___boxed
	.p2align	2
_l_IO_println___at___tst1_spec__2___boxed: ; @l_IO_println___at___tst1_spec__2___boxed
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
	b	LBB47_1
LBB47_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox
	mov	x8, x0
	strb	w8, [sp, #15]
	ldrb	w0, [sp, #15]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__2
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__3___boxed ; -- Begin function l_IO_println___at___tst1_spec__3___boxed
	.globl	_l_IO_println___at___tst1_spec__3___boxed
	.p2align	2
_l_IO_println___at___tst1_spec__3___boxed: ; @l_IO_println___at___tst1_spec__3___boxed
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
	b	LBB48_1
LBB48_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox
	mov	x8, x0
	strb	w8, [sp, #15]
	ldrb	w0, [sp, #15]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__3
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__4___boxed ; -- Begin function l_IO_println___at___tst1_spec__4___boxed
	.globl	_l_IO_println___at___tst1_spec__4___boxed
	.p2align	2
_l_IO_println___at___tst1_spec__4___boxed: ; @l_IO_println___at___tst1_spec__4___boxed
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
	b	LBB49_1
LBB49_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox
	mov	x8, x0
	strh	w8, [sp, #14]
	ldrh	w0, [sp, #14]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__4
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__5___boxed ; -- Begin function l_IO_println___at___tst1_spec__5___boxed
	.globl	_l_IO_println___at___tst1_spec__5___boxed
	.p2align	2
_l_IO_println___at___tst1_spec__5___boxed: ; @l_IO_println___at___tst1_spec__5___boxed
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
	b	LBB50_1
LBB50_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox_uint32
	str	w0, [sp, #12]
	ldur	x0, [x29, #-8]
	bl	_lean_dec
	ldr	w0, [sp, #12]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__5
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.private_extern	_l_IO_println___at___tst1_spec__6___boxed ; -- Begin function l_IO_println___at___tst1_spec__6___boxed
	.globl	_l_IO_println___at___tst1_spec__6___boxed
	.p2align	2
_l_IO_println___at___tst1_spec__6___boxed: ; @l_IO_println___at___tst1_spec__6___boxed
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
	b	LBB52_1
LBB52_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox_uint64
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	_lean_dec
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__6
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_unbox_uint64
_lean_unbox_uint64:                     ; @lean_unbox_uint64
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
	bl	_lean_ctor_get_uint64
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst1_spec__7___boxed ; -- Begin function l_IO_println___at___tst1_spec__7___boxed
	.globl	_l_IO_println___at___tst1_spec__7___boxed
	.p2align	2
_l_IO_println___at___tst1_spec__7___boxed: ; @l_IO_println___at___tst1_spec__7___boxed
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
	b	LBB54_1
LBB54_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	_lean_dec
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__7
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.private_extern	_l_IO_println___at___tst1_spec__8___boxed ; -- Begin function l_IO_println___at___tst1_spec__8___boxed
	.globl	_l_IO_println___at___tst1_spec__8___boxed
	.p2align	2
_l_IO_println___at___tst1_spec__8___boxed: ; @l_IO_println___at___tst1_spec__8___boxed
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
	b	LBB56_1
LBB56_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__8
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Foo_ctorIdx          ; -- Begin function l_Foo_ctorIdx
	.globl	_l_Foo_ctorIdx
	.p2align	2
_l_Foo_ctorIdx:                         ; @l_Foo_ctorIdx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	b	LBB57_1
LBB57_1:
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Foo_ctorIdx___boxed  ; -- Begin function l_Foo_ctorIdx___boxed
	.globl	_l_Foo_ctorIdx___boxed
	.p2align	2
_l_Foo_ctorIdx___boxed:                 ; @l_Foo_ctorIdx___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	b	LBB58_1
LBB58_1:
	ldr	x0, [sp, #8]
	bl	_l_Foo_ctorIdx
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_mkFoo                ; -- Begin function l_mkFoo
	.globl	_l_mkFoo
	.p2align	2
_l_mkFoo:                               ; @l_mkFoo
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	b	LBB59_1
LBB59_1:
	ldur	x0, [x29, #-8]
	bl	_lean_uint64_of_nat
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	_lean_inc
	ldur	x0, [x29, #-8]
	bl	_lean_float_of_nat
	stur	d0, [x29, #-24]
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	stur	d0, [x29, #-32]
	ldur	d0, [x29, #-24]
	ldur	d1, [x29, #-32]
	bl	_lean_float_div
	str	d0, [sp, #40]
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	str	d0, [sp, #32]
	ldur	d0, [x29, #-24]
	ldr	d1, [sp, #32]
	bl	_lean_float_div
	str	d0, [sp, #24]
	mov	w0, #0                          ; =0x0
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	mov	w1, #1                          ; =0x1
	mov	w2, #24                         ; =0x18
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	mov	w1, #8                          ; =0x8
	bl	_lean_ctor_set_uint64
	ldr	x0, [sp, #16]
	ldr	d0, [sp, #40]
	mov	w1, #16                         ; =0x10
	bl	_lean_ctor_set_float
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldr	d0, [sp, #24]
	bl	_lean_ctor_set_float
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
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
	b.hi	LBB60_3
	b	LBB60_1
LBB60_1:
	ldur	w9, [x29, #-8]
	mov	w8, #0                          ; =0x0
	subs	w9, w9, #256
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b.hs	LBB60_3
	b	LBB60_2
LBB60_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1024
	cset	w8, lo
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB60_3
LBB60_3:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbnz	w8, #0, LBB60_5
	b	LBB60_4
LBB60_4:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #616                        ; =0x268
	adrp	x2, l_.str.7@PAGE
	add	x2, x2, l_.str.7@PAGEOFF
	bl	_lean_notify_assert
	b	LBB60_5
LBB60_5:
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
	tbz	w8, #0, LBB61_2
	b	LBB61_1
LBB61_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #633                        ; =0x279
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB61_2
LBB61_2:
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
	.p2align	2                               ; -- Begin function lean_ctor_set_uint64
_lean_ctor_set_uint64:                  ; @lean_ctor_set_uint64
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
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_num_objs
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, w0, uxtw #3
	cset	w8, lo
	tbz	w8, #0, LBB62_2
	b	LBB62_1
LBB62_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #705                        ; =0x2c1
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	bl	_lean_notify_assert
	b	LBB62_2
LBB62_2:
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_obj_cptr
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	w9, [x29, #-12]
                                        ; kill: def $x9 killed $w9
	str	x8, [x0, x9]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
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
	tbz	w8, #0, LBB63_2
	b	LBB63_1
LBB63_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #710                        ; =0x2c6
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	bl	_lean_notify_assert
	b	LBB63_2
LBB63_2:
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
	.private_extern	_l_tst2                 ; -- Begin function l_tst2
	.globl	_l_tst2
	.p2align	2
_l_tst2:                                ; @l_tst2
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
	b	LBB64_1
LBB64_1:
	ldur	x0, [x29, #-16]
	bl	_l_mkFoo
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	mov	w1, #16                         ; =0x10
	bl	_lean_ctor_get_float
	str	d0, [sp, #40]
	ldur	x0, [x29, #-32]
	mov	w1, #24                         ; =0x18
	bl	_lean_ctor_get_float
	str	d0, [sp, #32]
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	ldr	d0, [sp, #40]
	ldur	x0, [x29, #-24]
	bl	_l_IO_println___at___tst1_spec__0
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_lean_obj_tag
	cbnz	w0, LBB64_3
	b	LBB64_2
LBB64_2:
	ldr	x0, [sp, #24]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_dec_ref
	ldr	d0, [sp, #32]
	ldr	x0, [sp, #16]
	bl	_l_IO_println___at___tst1_spec__0
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB64_4
LBB64_3:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB64_4
LBB64_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
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
	tbz	w8, #0, LBB65_2
	b	LBB65_1
LBB65_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #675                        ; =0x2a3
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	bl	_lean_notify_assert
	b	LBB65_2
LBB65_2:
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
	.private_extern	_l_List_mapTR_loop___at___fMap_spec__0 ; -- Begin function l_List_mapTR_loop___at___fMap_spec__0
	.globl	_l_List_mapTR_loop___at___fMap_spec__0
	.p2align	2
_l_List_mapTR_loop___at___fMap_spec__0: ; @l_List_mapTR_loop___at___fMap_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	b	LBB66_1
LBB66_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	bl	_lean_obj_tag
	cbnz	w0, LBB66_3
	b	LBB66_2
LBB66_2:
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-24]
	bl	_l_List_reverse___redArg
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB66_3:                                ;   in Loop: Header=BB66_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	_lean_is_exclusive
	eor	w8, w0, #0x1
	sturb	w8, [x29, #-33]
	ldurb	w8, [x29, #-33]
	cbnz	w8, LBB66_5
	b	LBB66_4
LBB66_4:                                ;   in Loop: Header=BB66_1 Depth=1
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	bl	_lean_ctor_get
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-16]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #8]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-8]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-48]
	bl	_lean_apply_1
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #64]
	ldur	x0, [x29, #-16]
	ldur	x2, [x29, #-24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #64]
	bl	_lean_ctor_set
	ldur	x8, [x29, #-56]
	str	x8, [sp, #56]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-24]
	b	LBB66_1
LBB66_5:                                ;   in Loop: Header=BB66_1 Depth=1
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #40]
	ldur	x0, [x29, #-16]
	mov	w1, #1                          ; =0x1
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_lean_ctor_get
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	bl	_lean_inc
	ldr	x0, [sp, #40]
	bl	_lean_inc
	ldur	x0, [x29, #-16]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #40]
	bl	_lean_apply_1
	ldr	w2, [sp]                        ; 4-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	str	x8, [sp, #24]
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-24]
	bl	_lean_ctor_set
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB66_1
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
	tbz	w0, #0, LBB67_2
	b	LBB67_1
LBB67_1:
	ldr	x8, [sp]
	ldr	w8, [x8]
	mov	w9, #1                          ; =0x1
	subs	w8, w8, #1
	cset	w8, eq
	and	w8, w8, w9
	sturb	w8, [x29, #-1]
	b	LBB67_3
LBB67_2:
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB67_3
LBB67_3:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_fMap                 ; -- Begin function l_fMap
	.globl	_l_fMap
	.p2align	2
_l_fMap:                                ; @l_fMap
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
	b	LBB68_1
LBB68_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	_l_List_mapTR_loop___at___fMap_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
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
	.private_extern	_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0 ; -- Begin function l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0
	.globl	_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0
	.p2align	2
_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0: ; @l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0
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
	b	LBB70_1
LBB70_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	bl	_lean_obj_tag
	cbnz	w0, LBB70_3
	b	LBB70_2
LBB70_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB70_3:                                ;   in Loop: Header=BB70_1 Depth=1
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-16]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-32]
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGEOFF]
	str	x8, [sp, #40]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #40]
	bl	_lean_string_append
	str	x0, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	_lean_unbox_float
	str	d0, [sp, #24]
	ldr	d0, [sp, #24]
	bl	_lean_float_to_string
	str	x0, [sp, #16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #16]
	bl	_lean_string_append
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-16]
	b	LBB70_1
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0 ; -- Begin function l_List_toString___at___IO_println___at___tst3_spec__0_spec__0
	.globl	_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0
	.p2align	2
_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0: ; @l_List_toString___at___IO_println___at___tst3_spec__0_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB71_1
LBB71_1:
	ldur	x0, [x29, #-16]
	bl	_lean_obj_tag
	cbnz	w0, LBB71_3
	b	LBB71_2
LBB71_2:
	adrp	x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGE
	ldr	x8, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB71_6
LBB71_3:
	ldur	x0, [x29, #-16]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB71_5
	b	LBB71_4
LBB71_4:
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	adrp	x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGE
	ldr	x8, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGEOFF]
	stur	x8, [x29, #-48]
	ldur	x0, [x29, #-40]
	bl	_lean_unbox_float
	stur	d0, [x29, #-56]
	ldur	d0, [x29, #-56]
	bl	_lean_float_to_string
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-64]
	bl	_lean_string_append
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-64]
	bl	_lean_dec_ref
	adrp	x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGE
	ldr	x8, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGEOFF]
	str	x8, [sp, #80]
	ldur	x0, [x29, #-72]
	ldr	x1, [sp, #80]
	bl	_lean_string_append
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-8]
	b	LBB71_6
LBB71_5:
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #64]
	adrp	x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGE
	ldr	x8, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGEOFF]
	str	x8, [sp, #56]
	ldr	x0, [sp, #64]
	bl	_lean_unbox_float
	str	d0, [sp, #48]
	ldr	d0, [sp, #48]
	bl	_lean_float_to_string
	str	x0, [sp, #40]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #40]
	bl	_lean_string_append
	str	x0, [sp, #32]
	ldr	x0, [sp, #40]
	bl	_lean_dec_ref
	ldr	x0, [sp, #32]
	ldur	x1, [x29, #-32]
	bl	_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0
	str	x0, [sp, #24]
	mov	w8, #93                         ; =0x5d
	str	w8, [sp, #20]
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	_lean_string_push
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB71_6
LBB71_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst3_spec__0 ; -- Begin function l_IO_println___at___tst3_spec__0
	.globl	_l_IO_println___at___tst3_spec__0
	.p2align	2
_l_IO_println___at___tst3_spec__0:      ; @l_IO_println___at___tst3_spec__0
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
	b	LBB72_1
LBB72_1:
	ldur	x0, [x29, #-8]
	bl	_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0
	str	x0, [sp, #24]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #20]
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	_lean_string_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_tst3___lam__0        ; -- Begin function l_tst3___lam__0
	.globl	_l_tst3___lam__0
	.p2align	2
_l_tst3___lam__0:                       ; @l_tst3___lam__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	d0, [x29, #-8]
	str	d1, [sp, #16]
	b	LBB73_1
LBB73_1:
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_div
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_tst3                 ; -- Begin function l_tst3
	.globl	_l_tst3
	.p2align	2
_l_tst3:                                ; @l_tst3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	d0, [x29, #-16]
	stur	x1, [x29, #-24]
	b	LBB74_1
LBB74_1:
	ldur	d0, [x29, #-16]
	bl	_lean_box_float
	str	x0, [sp, #32]
	adrp	x0, _l_tst3___lam__0___boxed@PAGE
	add	x0, x0, _l_tst3___lam__0___boxed@PAGEOFF
	mov	w1, #2                          ; =0x2
	mov	w2, #1                          ; =0x1
	bl	_lean_alloc_closure
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldr	x2, [sp, #32]
	mov	w1, #0                          ; =0x0
	bl	_lean_closure_set
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-8]
	bl	_l_fMap
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-24]
	bl	_l_IO_println___at___tst3_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_lean_dec
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
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
	tbz	w8, #0, LBB76_2
	b	LBB76_1
LBB76_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #726                        ; =0x2d6
	adrp	x2, l_.str.8@PAGE
	add	x2, x2, l_.str.8@PAGEOFF
	bl	_lean_notify_assert
	b	LBB76_2
LBB76_2:
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, hs
	tbz	w8, #0, LBB76_4
	b	LBB76_3
LBB76_3:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #727                        ; =0x2d7
	adrp	x2, l_.str.9@PAGE
	add	x2, x2, l_.str.9@PAGEOFF
	bl	_lean_notify_assert
	b	LBB76_4
LBB76_4:
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
	.private_extern	_l_tst3___lam__0___boxed ; -- Begin function l_tst3___lam__0___boxed
	.globl	_l_tst3___lam__0___boxed
	.p2align	2
_l_tst3___lam__0___boxed:               ; @l_tst3___lam__0___boxed
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
	b	LBB77_1
LBB77_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox_float
	str	d0, [sp, #24]
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-16]
	bl	_lean_unbox_float
	str	d0, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldr	d0, [sp, #24]
	ldr	d1, [sp, #16]
	bl	_l_tst3___lam__0
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_box_float
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_closure_set
_lean_closure_set:                      ; @lean_closure_set
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
	bl	_lean_closure_num_fixed
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, hs
	tbz	w8, #0, LBB78_2
	b	LBB78_1
LBB78_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #740                        ; =0x2e4
	adrp	x2, l_.str.10@PAGE
	add	x2, x2, l_.str.10@PAGEOFF
	bl	_lean_notify_assert
	b	LBB78_2
LBB78_2:
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_lean_to_closure
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x9, x0, #24
	ldur	w10, [x29, #-12]
                                        ; kill: def $x10 killed $w10
	str	x8, [x9, x10, lsl #3]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0___boxed ; -- Begin function l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0___boxed
	.globl	_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0___boxed
	.p2align	2
_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0___boxed: ; @l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0___boxed
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
	b	LBB79_1
LBB79_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_l_List_foldl___at___List_toString___at___IO_println___at___tst3_spec__0_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_lean_dec
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___boxed ; -- Begin function l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___boxed
	.globl	_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___boxed
	.p2align	2
_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___boxed: ; @l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	b	LBB80_1
LBB80_1:
	ldr	x0, [sp, #8]
	bl	_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_lean_dec
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___tst3_spec__0___boxed ; -- Begin function l_IO_println___at___tst3_spec__0___boxed
	.globl	_l_IO_println___at___tst3_spec__0___boxed
	.p2align	2
_l_IO_println___at___tst3_spec__0___boxed: ; @l_IO_println___at___tst3_spec__0___boxed
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
	b	LBB81_1
LBB81_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_l_IO_println___at___tst3_spec__0
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	_lean_dec
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_tst3___boxed         ; -- Begin function l_tst3___boxed
	.globl	_l_tst3___boxed
	.p2align	2
_l_tst3___boxed:                        ; @l_tst3___boxed
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
	b	LBB82_1
LBB82_1:
	ldur	x0, [x29, #-16]
	bl	_lean_unbox_float
	str	d0, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	ldur	x0, [x29, #-8]
	ldr	d0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	_l_tst3
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_tst4___lam__0        ; -- Begin function l_tst4___lam__0
	.globl	_l_tst4___lam__0
	.p2align	2
_l_tst4___lam__0:                       ; @l_tst4___lam__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	b	LBB83_1
LBB83_1:
	ldr	d0, [sp, #8]
	fabs	d0, d0
	str	d0, [sp]
	ldr	d0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_tst4                 ; -- Begin function l_tst4
	.globl	_l_tst4
	.p2align	2
_l_tst4:                                ; @l_tst4
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
	b	LBB84_1
LBB84_1:
	adrp	x0, _l_tst4___lam__0___boxed@PAGE
	add	x0, x0, _l_tst4___lam__0___boxed@PAGEOFF
	mov	w1, #1                          ; =0x1
	mov	w2, #0                          ; =0x0
	bl	_lean_alloc_closure
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-8]
	bl	_l_fMap
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_println___at___tst3_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_lean_dec
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_tst4___lam__0___boxed ; -- Begin function l_tst4___lam__0___boxed
	.globl	_l_tst4___lam__0___boxed
	.p2align	2
_l_tst4___lam__0___boxed:               ; @l_tst4___lam__0___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	b	LBB85_1
LBB85_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox_float
	str	d0, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	d0, [sp, #16]
	bl	_l_tst4___lam__0
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_box_float
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___main_spec__0 ; -- Begin function l_IO_println___at___main_spec__0
	.globl	_l_IO_println___at___main_spec__0
	.p2align	2
_l_IO_println___at___main_spec__0:      ; @l_IO_println___at___main_spec__0
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
	b	LBB86_1
LBB86_1:
	mov	w8, #10                         ; =0xa
	stur	w8, [x29, #-20]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-20]
	bl	_lean_string_push
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___tst1_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
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
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB87_1
LBB87_1:
	ldur	x0, [x29, #-16]
	bl	_l_tst1
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	_lean_obj_tag
	cbnz	w0, LBB87_9
	b	LBB87_2
LBB87_2:
	ldur	x0, [x29, #-24]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_inc
	ldur	x0, [x29, #-24]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__0@PAGE
	ldr	x8, [x8, _l_main___closed__0@PAGEOFF]
	stur	x8, [x29, #-40]
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-32]
	bl	_l_IO_println___at___main_spec__0
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	bl	_lean_obj_tag
	cbnz	w0, LBB87_8
	b	LBB87_3
LBB87_3:
	ldur	x0, [x29, #-48]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-56]
	bl	_lean_inc
	ldur	x0, [x29, #-48]
	bl	_lean_dec_ref
	mov	w0, #7                          ; =0x7
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	ldur	x1, [x29, #-56]
	bl	_l_tst2
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_obj_tag
	cbnz	w0, LBB87_7
	b	LBB87_4
LBB87_4:
	ldr	x0, [sp, #56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	bl	_lean_inc
	ldr	x0, [sp, #56]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__10@PAGE
	ldr	x8, [x8, _l_main___closed__10@PAGEOFF]
	str	x8, [sp, #40]
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	str	d0, [sp, #32]
	ldr	x0, [sp, #40]
	ldr	d0, [sp, #32]
	ldr	x1, [sp, #48]
	bl	_l_tst3
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_lean_obj_tag
	cbnz	w0, LBB87_6
	b	LBB87_5
LBB87_5:
	ldr	x0, [sp, #24]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_inc
	ldr	x0, [sp, #24]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__17@PAGE
	ldr	x8, [x8, _l_main___closed__17@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	_l_tst4
	str	x0, [sp]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	LBB87_10
LBB87_6:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB87_10
LBB87_7:
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-8]
	b	LBB87_10
LBB87_8:
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-8]
	b	LBB87_10
LBB87_9:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB87_10
LBB87_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_initialize_float       ; -- Begin function initialize_float
	.globl	_initialize_float
	.p2align	2
_initialize_float:                      ; @initialize_float
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
	tbz	w8, #0, LBB88_2
	b	LBB88_1
LBB88_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB88_5
LBB88_2:
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
	tbz	w0, #0, LBB88_4
	b	LBB88_3
LBB88_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB88_5
LBB88_4:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	__init_l_IO_println___at___tst1_spec__2___closed__0
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGE
	str	x0, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___tst1_spec__2___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___tst1_spec__2___closed__1
	adrp	x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGE
	str	x0, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___tst1_spec__2___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___tst1_spec__8___closed__0
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__0@PAGE
	str	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___tst1_spec__8___closed__1
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGE
	str	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___tst1_spec__8___closed__2
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGE
	str	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___tst1_spec__8___closed__3
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGE
	str	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_IO_println___at___tst1_spec__8___closed__4
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGE
	str	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGEOFF]
	ldr	x0, [x8, _l_IO_println___at___tst1_spec__8___closed__4@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__0
	adrp	x8, _l_tst1___closed__0@PAGE
	str	d0, [x8, _l_tst1___closed__0@PAGEOFF]
	bl	__init_l_tst1___closed__1
	adrp	x8, _l_tst1___closed__1@PAGE
	str	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	bl	__init_l_tst1___closed__2
	adrp	x8, _l_tst1___closed__2@PAGE
	str	d0, [x8, _l_tst1___closed__2@PAGEOFF]
	bl	__init_l_tst1___closed__3
	adrp	x8, _l_tst1___closed__3@PAGE
	str	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	bl	__init_l_tst1___closed__4
	adrp	x8, _l_tst1___closed__4@PAGE
	str	d0, [x8, _l_tst1___closed__4@PAGEOFF]
	bl	__init_l_tst1___closed__5
	adrp	x8, _l_tst1___closed__5@PAGE
	str	d0, [x8, _l_tst1___closed__5@PAGEOFF]
	bl	__init_l_tst1___closed__6
	adrp	x8, _l_tst1___closed__6@PAGE
	str	d0, [x8, _l_tst1___closed__6@PAGEOFF]
	bl	__init_l_tst1___closed__7
	adrp	x8, _l_tst1___closed__7@PAGE
	strb	w0, [x8, _l_tst1___closed__7@PAGEOFF]
	bl	__init_l_tst1___closed__8
	adrp	x8, _l_tst1___closed__8@PAGE
	str	d0, [x8, _l_tst1___closed__8@PAGEOFF]
	bl	__init_l_tst1___closed__9
	adrp	x8, _l_tst1___closed__9@PAGE
	strb	w0, [x8, _l_tst1___closed__9@PAGEOFF]
	bl	__init_l_tst1___closed__10
	adrp	x8, _l_tst1___closed__10@PAGE
	strb	w0, [x8, _l_tst1___closed__10@PAGEOFF]
	bl	__init_l_tst1___closed__11
	adrp	x8, _l_tst1___closed__11@PAGE
	strb	w0, [x8, _l_tst1___closed__11@PAGEOFF]
	bl	__init_l_tst1___closed__12
	adrp	x8, _l_tst1___closed__12@PAGE
	strb	w0, [x8, _l_tst1___closed__12@PAGEOFF]
	bl	__init_l_tst1___closed__13
	adrp	x8, _l_tst1___closed__13@PAGE
	strb	w0, [x8, _l_tst1___closed__13@PAGEOFF]
	bl	__init_l_tst1___closed__14
	adrp	x8, _l_tst1___closed__14@PAGE
	strb	w0, [x8, _l_tst1___closed__14@PAGEOFF]
	bl	__init_l_tst1___closed__15
	adrp	x8, _l_tst1___closed__15@PAGE
	str	d0, [x8, _l_tst1___closed__15@PAGEOFF]
	bl	__init_l_tst1___closed__16
	adrp	x8, _l_tst1___closed__16@PAGE
	str	x0, [x8, _l_tst1___closed__16@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__16@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__17
	adrp	x8, _l_tst1___closed__17@PAGE
	str	d0, [x8, _l_tst1___closed__17@PAGEOFF]
	bl	__init_l_tst1___closed__18
	adrp	x8, _l_tst1___closed__18@PAGE
	str	x0, [x8, _l_tst1___closed__18@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__18@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__19
	adrp	x8, _l_tst1___closed__19@PAGE
	str	d0, [x8, _l_tst1___closed__19@PAGEOFF]
	bl	__init_l_tst1___closed__20
	adrp	x8, _l_tst1___closed__20@PAGE
	str	d0, [x8, _l_tst1___closed__20@PAGEOFF]
	bl	__init_l_tst1___closed__21
	adrp	x8, _l_tst1___closed__21@PAGE
	str	d0, [x8, _l_tst1___closed__21@PAGEOFF]
	bl	__init_l_tst1___closed__22
	adrp	x8, _l_tst1___closed__22@PAGE
	str	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	bl	__init_l_tst1___closed__23
	adrp	x8, _l_tst1___closed__23@PAGE
	strb	w0, [x8, _l_tst1___closed__23@PAGEOFF]
	bl	__init_l_tst1___closed__24
	adrp	x8, _l_tst1___closed__24@PAGE
	strh	w0, [x8, _l_tst1___closed__24@PAGEOFF]
	bl	__init_l_tst1___closed__25
	adrp	x8, _l_tst1___closed__25@PAGE
	str	w0, [x8, _l_tst1___closed__25@PAGEOFF]
	bl	__init_l_tst1___closed__26
	adrp	x8, _l_tst1___closed__26@PAGE
	str	x0, [x8, _l_tst1___closed__26@PAGEOFF]
	bl	__init_l_tst1___closed__27
	adrp	x8, _l_tst1___closed__27@PAGE
	str	x0, [x8, _l_tst1___closed__27@PAGEOFF]
	bl	__init_l_tst1___closed__28
	adrp	x8, _l_tst1___closed__28@PAGE
	str	d0, [x8, _l_tst1___closed__28@PAGEOFF]
	bl	__init_l_tst1___closed__29
	adrp	x8, _l_tst1___closed__29@PAGE
	strb	w0, [x8, _l_tst1___closed__29@PAGEOFF]
	bl	__init_l_tst1___closed__30
	adrp	x8, _l_tst1___closed__30@PAGE
	str	d0, [x8, _l_tst1___closed__30@PAGEOFF]
	bl	__init_l_tst1___closed__31
	adrp	x8, _l_tst1___closed__31@PAGE
	strb	w0, [x8, _l_tst1___closed__31@PAGEOFF]
	bl	__init_l_tst1___closed__32
	adrp	x8, _l_tst1___closed__32@PAGE
	str	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	bl	__init_l_tst1___closed__33
	adrp	x8, _l_tst1___closed__33@PAGE
	strb	w0, [x8, _l_tst1___closed__33@PAGEOFF]
	bl	__init_l_tst1___closed__34
	adrp	x8, _l_tst1___closed__34@PAGE
	strh	w0, [x8, _l_tst1___closed__34@PAGEOFF]
	bl	__init_l_tst1___closed__35
	adrp	x8, _l_tst1___closed__35@PAGE
	str	d0, [x8, _l_tst1___closed__35@PAGEOFF]
	bl	__init_l_tst1___closed__36
	adrp	x8, _l_tst1___closed__36@PAGE
	str	d0, [x8, _l_tst1___closed__36@PAGEOFF]
	bl	__init_l_tst1___closed__37
	adrp	x8, _l_tst1___closed__37@PAGE
	strh	w0, [x8, _l_tst1___closed__37@PAGEOFF]
	bl	__init_l_tst1___closed__38
	adrp	x8, _l_tst1___closed__38@PAGE
	strh	w0, [x8, _l_tst1___closed__38@PAGEOFF]
	bl	__init_l_tst1___closed__39
	adrp	x8, _l_tst1___closed__39@PAGE
	str	w0, [x8, _l_tst1___closed__39@PAGEOFF]
	bl	__init_l_tst1___closed__40
	adrp	x8, _l_tst1___closed__40@PAGE
	str	d0, [x8, _l_tst1___closed__40@PAGEOFF]
	bl	__init_l_tst1___closed__41
	adrp	x8, _l_tst1___closed__41@PAGE
	str	d0, [x8, _l_tst1___closed__41@PAGEOFF]
	bl	__init_l_tst1___closed__42
	adrp	x8, _l_tst1___closed__42@PAGE
	str	w0, [x8, _l_tst1___closed__42@PAGEOFF]
	bl	__init_l_tst1___closed__43
	adrp	x8, _l_tst1___closed__43@PAGE
	str	w0, [x8, _l_tst1___closed__43@PAGEOFF]
	bl	__init_l_tst1___closed__44
	adrp	x8, _l_tst1___closed__44@PAGE
	str	x0, [x8, _l_tst1___closed__44@PAGEOFF]
	bl	__init_l_tst1___closed__45
	adrp	x8, _l_tst1___closed__45@PAGE
	str	d0, [x8, _l_tst1___closed__45@PAGEOFF]
	bl	__init_l_tst1___closed__46
	adrp	x8, _l_tst1___closed__46@PAGE
	str	d0, [x8, _l_tst1___closed__46@PAGEOFF]
	bl	__init_l_tst1___closed__47
	adrp	x8, _l_tst1___closed__47@PAGE
	str	x0, [x8, _l_tst1___closed__47@PAGEOFF]
	bl	__init_l_tst1___closed__48
	adrp	x8, _l_tst1___closed__48@PAGE
	str	x0, [x8, _l_tst1___closed__48@PAGEOFF]
	bl	__init_l_tst1___closed__49
	adrp	x8, _l_tst1___closed__49@PAGE
	str	x0, [x8, _l_tst1___closed__49@PAGEOFF]
	bl	__init_l_tst1___closed__50
	adrp	x8, _l_tst1___closed__50@PAGE
	str	x0, [x8, _l_tst1___closed__50@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__50@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__51
	adrp	x8, _l_tst1___closed__51@PAGE
	str	x0, [x8, _l_tst1___closed__51@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__51@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__52
	adrp	x8, _l_tst1___closed__52@PAGE
	str	d0, [x8, _l_tst1___closed__52@PAGEOFF]
	bl	__init_l_tst1___closed__53
	adrp	x8, _l_tst1___closed__53@PAGE
	str	d0, [x8, _l_tst1___closed__53@PAGEOFF]
	bl	__init_l_tst1___closed__54
	adrp	x8, _l_tst1___closed__54@PAGE
	str	x0, [x8, _l_tst1___closed__54@PAGEOFF]
	bl	__init_l_tst1___closed__55
	adrp	x8, _l_tst1___closed__55@PAGE
	str	x0, [x8, _l_tst1___closed__55@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__55@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__56
	adrp	x8, _l_tst1___closed__56@PAGE
	str	x0, [x8, _l_tst1___closed__56@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__56@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__57
	adrp	x8, _l_tst1___closed__57@PAGE
	strb	w0, [x8, _l_tst1___closed__57@PAGEOFF]
	bl	__init_l_tst1___closed__58
	adrp	x8, _l_tst1___closed__58@PAGE
	str	x0, [x8, _l_tst1___closed__58@PAGEOFF]
	bl	__init_l_tst1___closed__59
	adrp	x8, _l_tst1___closed__59@PAGE
	str	x0, [x8, _l_tst1___closed__59@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__59@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__60
	adrp	x8, _l_tst1___closed__60@PAGE
	strb	w0, [x8, _l_tst1___closed__60@PAGEOFF]
	bl	__init_l_tst1___closed__61
	adrp	x8, _l_tst1___closed__61@PAGE
	str	d0, [x8, _l_tst1___closed__61@PAGEOFF]
	bl	__init_l_tst1___closed__62
	adrp	x8, _l_tst1___closed__62@PAGE
	strb	w0, [x8, _l_tst1___closed__62@PAGEOFF]
	bl	__init_l_tst1___closed__63
	adrp	x8, _l_tst1___closed__63@PAGE
	strb	w0, [x8, _l_tst1___closed__63@PAGEOFF]
	bl	__init_l_tst1___closed__64
	adrp	x8, _l_tst1___closed__64@PAGE
	strb	w0, [x8, _l_tst1___closed__64@PAGEOFF]
	bl	__init_l_tst1___closed__65
	adrp	x8, _l_tst1___closed__65@PAGE
	str	x0, [x8, _l_tst1___closed__65@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__65@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__66
	adrp	x8, _l_tst1___closed__66@PAGE
	str	x0, [x8, _l_tst1___closed__66@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__66@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__67
	adrp	x8, _l_tst1___closed__67@PAGE
	str	x0, [x8, _l_tst1___closed__67@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__67@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__68
	adrp	x8, _l_tst1___closed__68@PAGE
	str	x0, [x8, _l_tst1___closed__68@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__68@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__69___boxed__const__1
	adrp	x8, _l_tst1___closed__69___boxed__const__1@PAGE
	str	x0, [x8, _l_tst1___closed__69___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__69___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__69
	adrp	x8, _l_tst1___closed__69@PAGE
	str	x0, [x8, _l_tst1___closed__69@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__69@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__70
	adrp	x8, _l_tst1___closed__70@PAGE
	strb	w0, [x8, _l_tst1___closed__70@PAGEOFF]
	bl	__init_l_tst1___closed__71
	adrp	x8, _l_tst1___closed__71@PAGE
	strb	w0, [x8, _l_tst1___closed__71@PAGEOFF]
	bl	__init_l_tst1___closed__72
	adrp	x8, _l_tst1___closed__72@PAGE
	strb	w0, [x8, _l_tst1___closed__72@PAGEOFF]
	bl	__init_l_tst1___closed__73
	adrp	x8, _l_tst1___closed__73@PAGE
	str	x0, [x8, _l_tst1___closed__73@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__73@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__74
	adrp	x8, _l_tst1___closed__74@PAGE
	str	x0, [x8, _l_tst1___closed__74@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__74@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__75
	adrp	x8, _l_tst1___closed__75@PAGE
	str	x0, [x8, _l_tst1___closed__75@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__75@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__76
	adrp	x8, _l_tst1___closed__76@PAGE
	str	x0, [x8, _l_tst1___closed__76@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__76@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__77___boxed__const__1
	adrp	x8, _l_tst1___closed__77___boxed__const__1@PAGE
	str	x0, [x8, _l_tst1___closed__77___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__77___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__77
	adrp	x8, _l_tst1___closed__77@PAGE
	str	x0, [x8, _l_tst1___closed__77@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__77@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__78
	adrp	x8, _l_tst1___closed__78@PAGE
	str	d0, [x8, _l_tst1___closed__78@PAGEOFF]
	bl	__init_l_tst1___closed__79
	adrp	x8, _l_tst1___closed__79@PAGE
	str	d0, [x8, _l_tst1___closed__79@PAGEOFF]
	bl	__init_l_tst1___closed__80
	adrp	x8, _l_tst1___closed__80@PAGE
	strb	w0, [x8, _l_tst1___closed__80@PAGEOFF]
	bl	__init_l_tst1___closed__81
	adrp	x8, _l_tst1___closed__81@PAGE
	strb	w0, [x8, _l_tst1___closed__81@PAGEOFF]
	bl	__init_l_tst1___closed__82
	adrp	x8, _l_tst1___closed__82@PAGE
	strb	w0, [x8, _l_tst1___closed__82@PAGEOFF]
	bl	__init_l_tst1___closed__83
	adrp	x8, _l_tst1___closed__83@PAGE
	str	x0, [x8, _l_tst1___closed__83@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__83@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__84
	adrp	x8, _l_tst1___closed__84@PAGE
	str	x0, [x8, _l_tst1___closed__84@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__84@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__85
	adrp	x8, _l_tst1___closed__85@PAGE
	str	x0, [x8, _l_tst1___closed__85@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__85@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__86
	adrp	x8, _l_tst1___closed__86@PAGE
	str	x0, [x8, _l_tst1___closed__86@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__86@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__87___boxed__const__1
	adrp	x8, _l_tst1___closed__87___boxed__const__1@PAGE
	str	x0, [x8, _l_tst1___closed__87___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__87___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__87
	adrp	x8, _l_tst1___closed__87@PAGE
	str	x0, [x8, _l_tst1___closed__87@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__87@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__88
	adrp	x8, _l_tst1___closed__88@PAGE
	strb	w0, [x8, _l_tst1___closed__88@PAGEOFF]
	bl	__init_l_tst1___closed__89
	adrp	x8, _l_tst1___closed__89@PAGE
	strb	w0, [x8, _l_tst1___closed__89@PAGEOFF]
	bl	__init_l_tst1___closed__90
	adrp	x8, _l_tst1___closed__90@PAGE
	strb	w0, [x8, _l_tst1___closed__90@PAGEOFF]
	bl	__init_l_tst1___closed__91
	adrp	x8, _l_tst1___closed__91@PAGE
	str	x0, [x8, _l_tst1___closed__91@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__91@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__92
	adrp	x8, _l_tst1___closed__92@PAGE
	str	x0, [x8, _l_tst1___closed__92@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__92@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__93
	adrp	x8, _l_tst1___closed__93@PAGE
	str	x0, [x8, _l_tst1___closed__93@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__93@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__94
	adrp	x8, _l_tst1___closed__94@PAGE
	str	x0, [x8, _l_tst1___closed__94@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__94@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__95___boxed__const__1
	adrp	x8, _l_tst1___closed__95___boxed__const__1@PAGE
	str	x0, [x8, _l_tst1___closed__95___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__95___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__95
	adrp	x8, _l_tst1___closed__95@PAGE
	str	x0, [x8, _l_tst1___closed__95@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__95@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__96
	adrp	x8, _l_tst1___closed__96@PAGE
	str	d0, [x8, _l_tst1___closed__96@PAGEOFF]
	bl	__init_l_tst1___closed__97
	adrp	x8, _l_tst1___closed__97@PAGE
	strb	w0, [x8, _l_tst1___closed__97@PAGEOFF]
	bl	__init_l_tst1___closed__98
	adrp	x8, _l_tst1___closed__98@PAGE
	strb	w0, [x8, _l_tst1___closed__98@PAGEOFF]
	bl	__init_l_tst1___closed__99
	adrp	x8, _l_tst1___closed__99@PAGE
	strb	w0, [x8, _l_tst1___closed__99@PAGEOFF]
	bl	__init_l_tst1___closed__100
	adrp	x8, _l_tst1___closed__100@PAGE
	str	x0, [x8, _l_tst1___closed__100@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__100@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__101
	adrp	x8, _l_tst1___closed__101@PAGE
	str	x0, [x8, _l_tst1___closed__101@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__101@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__102
	adrp	x8, _l_tst1___closed__102@PAGE
	str	x0, [x8, _l_tst1___closed__102@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__102@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__103
	adrp	x8, _l_tst1___closed__103@PAGE
	str	x0, [x8, _l_tst1___closed__103@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__103@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__104___boxed__const__1
	adrp	x8, _l_tst1___closed__104___boxed__const__1@PAGE
	str	x0, [x8, _l_tst1___closed__104___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__104___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__104
	adrp	x8, _l_tst1___closed__104@PAGE
	str	x0, [x8, _l_tst1___closed__104@PAGEOFF]
	ldr	x0, [x8, _l_tst1___closed__104@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_tst1___closed__105
	adrp	x8, _l_tst1___closed__105@PAGE
	str	d0, [x8, _l_tst1___closed__105@PAGEOFF]
	bl	__init_l_tst1___closed__106
	adrp	x8, _l_tst1___closed__106@PAGE
	str	d0, [x8, _l_tst1___closed__106@PAGEOFF]
	bl	__init_l_tst1___closed__107
	adrp	x8, _l_tst1___closed__107@PAGE
	str	d0, [x8, _l_tst1___closed__107@PAGEOFF]
	bl	__init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0
	adrp	x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGE
	str	x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
	adrp	x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGE
	str	x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2
	adrp	x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGE
	str	x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__0
	adrp	x8, _l_main___closed__0@PAGE
	str	x0, [x8, _l_main___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__1
	adrp	x8, _l_main___closed__1@PAGE
	str	d0, [x8, _l_main___closed__1@PAGEOFF]
	bl	__init_l_main___closed__2
	adrp	x8, _l_main___closed__2@PAGE
	str	d0, [x8, _l_main___closed__2@PAGEOFF]
	bl	__init_l_main___closed__3
	adrp	x8, _l_main___closed__3@PAGE
	str	d0, [x8, _l_main___closed__3@PAGEOFF]
	bl	__init_l_main___closed__4
	adrp	x8, _l_main___closed__4@PAGE
	str	d0, [x8, _l_main___closed__4@PAGEOFF]
	bl	__init_l_main___closed__5___boxed__const__1
	adrp	x8, _l_main___closed__5___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__5___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__5___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__5
	adrp	x8, _l_main___closed__5@PAGE
	str	x0, [x8, _l_main___closed__5@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__5@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__6___boxed__const__1
	adrp	x8, _l_main___closed__6___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__6___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__6___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__6
	adrp	x8, _l_main___closed__6@PAGE
	str	x0, [x8, _l_main___closed__6@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__6@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__7___boxed__const__1
	adrp	x8, _l_main___closed__7___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__7___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__7___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__7
	adrp	x8, _l_main___closed__7@PAGE
	str	x0, [x8, _l_main___closed__7@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__7@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__8___boxed__const__1
	adrp	x8, _l_main___closed__8___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__8___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__8___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__8
	adrp	x8, _l_main___closed__8@PAGE
	str	x0, [x8, _l_main___closed__8@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__8@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__9___boxed__const__1
	adrp	x8, _l_main___closed__9___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__9___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__9___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__9
	adrp	x8, _l_main___closed__9@PAGE
	str	x0, [x8, _l_main___closed__9@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__9@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__10___boxed__const__1
	adrp	x8, _l_main___closed__10___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__10___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__10___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__10
	adrp	x8, _l_main___closed__10@PAGE
	str	x0, [x8, _l_main___closed__10@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__10@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__11
	adrp	x8, _l_main___closed__11@PAGE
	str	d0, [x8, _l_main___closed__11@PAGEOFF]
	bl	__init_l_main___closed__12___boxed__const__1
	adrp	x8, _l_main___closed__12___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__12___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__12___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__12
	adrp	x8, _l_main___closed__12@PAGE
	str	x0, [x8, _l_main___closed__12@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__12@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__13___boxed__const__1
	adrp	x8, _l_main___closed__13___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__13___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__13___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__13
	adrp	x8, _l_main___closed__13@PAGE
	str	x0, [x8, _l_main___closed__13@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__13@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__14___boxed__const__1
	adrp	x8, _l_main___closed__14___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__14___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__14___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__14
	adrp	x8, _l_main___closed__14@PAGE
	str	x0, [x8, _l_main___closed__14@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__14@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__15___boxed__const__1
	adrp	x8, _l_main___closed__15___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__15___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__15___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__15
	adrp	x8, _l_main___closed__15@PAGE
	str	x0, [x8, _l_main___closed__15@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__15@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__16___boxed__const__1
	adrp	x8, _l_main___closed__16___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__16___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__16___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__16
	adrp	x8, _l_main___closed__16@PAGE
	str	x0, [x8, _l_main___closed__16@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__16@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__17___boxed__const__1
	adrp	x8, _l_main___closed__17___boxed__const__1@PAGE
	str	x0, [x8, _l_main___closed__17___boxed__const__1@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__17___boxed__const__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__17
	adrp	x8, _l_main___closed__17@PAGE
	str	x0, [x8, _l_main___closed__17@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__17@PAGEOFF]
	bl	_lean_mark_persistent
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB88_5
LBB88_5:
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
	bl	_initialize_float
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	and	w0, w8, #0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mark_end_initialization
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB91_2
	b	LBB91_1
LBB91_1:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	_lean_init_task_manager
	bl	_lean_io_mk_world
	bl	__lean_main
	str	x0, [sp, #16]
	b	LBB91_2
LBB91_2:
	bl	_lean_finalize_task_manager
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB91_4
	b	LBB91_3
LBB91_3:
	str	wzr, [sp, #12]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB91_5
LBB91_4:
	ldr	x0, [sp, #16]
	bl	_lean_io_result_show_error
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB91_5
LBB91_5:
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
	.p2align	2                               ; -- Begin function lean_int_lt
_lean_int_lt:                           ; @lean_int_lt
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
	ldr	x0, [sp, #16]
	bl	_lean_scalar_to_int
	str	w0, [sp]                        ; 4-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	_lean_scalar_to_int
	mov	x8, x0
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	subs	w8, w0, w8
	cset	w8, lt
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB94_5
LBB94_4:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_lean_int_big_lt
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
	.p2align	2                               ; -- Begin function lean_int_to_nat
_lean_int_to_nat:                       ; @lean_int_to_nat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	_lean_int_lt
	tbz	w0, #0, LBB95_2
	b	LBB95_1
LBB95_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #1756                       ; =0x6dc
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB95_2
LBB95_2:
	ldr	x0, [sp, #16]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB95_4
	b	LBB95_3
LBB95_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB95_5
LBB95_4:
	ldr	x0, [sp, #16]
	bl	_lean_big_int_to_nat
	stur	x0, [x29, #-8]
	b	LBB95_5
LBB95_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_scalar_to_int
_lean_scalar_to_int:                    ; @lean_scalar_to_int
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
	tbnz	w0, #0, LBB96_2
	b	LBB96_1
LBB96_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #1521                       ; =0x5f1
	adrp	x2, l_.str.1@PAGE
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_lean_notify_assert
	b	LBB96_2
LBB96_2:
	ldr	x0, [sp, #8]
	bl	_lean_unbox
                                        ; kill: def $w0 killed $w0 killed $x0
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
	tbz	w0, #0, LBB97_2
	b	LBB97_1
LBB97_1:
	ldr	x0, [sp, #8]
	bl	_lean_is_scalar
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB97_2
LBB97_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB97_4
	b	LBB97_3
LBB97_3:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB97_5
LBB97_4:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_lean_nat_big_eq
	and	w8, w0, #0x1
	sturb	w8, [x29, #-1]
	b	LBB97_5
LBB97_5:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_int64_to_int
_lean_int64_to_int:                     ; @lean_int64_to_int
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x10, [sp, #16]
	mov	x9, #-2147483648                ; =0xffffffff80000000
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b.gt	LBB98_2
	b	LBB98_1
LBB98_1:
	ldr	x8, [sp, #16]
	mov	x9, #2147483647                 ; =0x7fffffff
	subs	x8, x8, x9
	cset	w8, le
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB98_2
LBB98_2:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB98_4
	b	LBB98_3
LBB98_3:
	ldr	x8, [sp, #16]
                                        ; kill: def $w8 killed $w8 killed $x8
	mov	w8, w8
	mov	x0, x8
	bl	_lean_box
	stur	x0, [x29, #-8]
	b	LBB98_5
LBB98_4:
	ldr	x0, [sp, #16]
	bl	_lean_big_int64_to_int
	stur	x0, [x29, #-8]
	b	LBB98_5
LBB98_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_scalar_to_int64
_lean_scalar_to_int64:                  ; @lean_scalar_to_int64
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
	tbnz	w0, #0, LBB99_2
	b	LBB99_1
LBB99_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #1513                       ; =0x5e9
	adrp	x2, l_.str.1@PAGE
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_lean_notify_assert
	b	LBB99_2
LBB99_2:
	ldr	x0, [sp, #8]
	bl	_lean_unbox
	sxtw	x0, w0
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
	tbnz	w0, #0, LBB100_2
	b	LBB100_1
LBB100_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #596                        ; =0x254
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB100_2
LBB100_2:
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
	tbnz	w0, #0, LBB101_2
	b	LBB101_1
LBB101_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #601                        ; =0x259
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB101_2
LBB101_2:
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
	tbnz	w0, #0, LBB105_2
	b	LBB105_1
LBB105_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #532                        ; =0x214
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB105_2
LBB105_2:
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
	tbz	w0, #0, LBB106_2
	b	LBB106_1
LBB106_1:
	ldr	x10, [sp, #16]
	ldur	x9, [x29, #-8]
	ldrsw	x8, [x9]
	add	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	b	LBB106_5
LBB106_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	cbz	w8, LBB106_4
	b	LBB106_3
LBB106_3:
	ldur	x0, [x29, #-8]
	bl	_lean_get_rc_mt_addr
	ldr	x8, [sp, #16]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	neg	w8, w8
	ldadd	w8, w8, [x0]
	str	w8, [sp, #8]
	b	LBB106_4
LBB106_4:
	b	LBB106_5
LBB106_5:
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
	.p2align	2                               ; -- Begin function lean_ctor_get_uint64
_lean_ctor_get_uint64:                  ; @lean_ctor_get_uint64
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
	tbz	w8, #0, LBB109_2
	b	LBB109_1
LBB109_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #670                        ; =0x29e
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	bl	_lean_notify_assert
	b	LBB109_2
LBB109_2:
	ldur	x0, [x29, #-8]
	bl	_lean_ctor_obj_cptr
	ldur	w8, [x29, #-12]
                                        ; kill: def $x8 killed $w8
	ldr	x0, [x0, x8]
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
	tbz	w8, #0, LBB110_2
	b	LBB110_1
LBB110_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #650                        ; =0x28a
	adrp	x2, l_.str.6@PAGE
	add	x2, x2, l_.str.6@PAGEOFF
	bl	_lean_notify_assert
	b	LBB110_2
LBB110_2:
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
	b.ls	LBB111_2
	b	LBB111_1
LBB111_1:
	ldr	x8, [sp, #16]
	ldur	w9, [x29, #-8]
                                        ; kill: def $x9 killed $w9
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	stur	xzr, [x8, #-8]
	b	LBB111_2
LBB111_2:
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
	cbnz	x8, LBB114_2
	b	LBB114_1
LBB114_1:
	bl	_lean_internal_panic_out_of_memory
LBB114_2:
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
	.p2align	2                               ; -- Begin function lean_closure_num_fixed
_lean_closure_num_fixed:                ; @lean_closure_num_fixed
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
	bl	_lean_to_closure
	ldrh	w0, [x0, #18]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_to_closure
_lean_to_closure:                       ; @lean_to_closure
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
	bl	_lean_is_closure
	tbnz	w0, #0, LBB116_2
	b	LBB116_1
LBB116_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #533                        ; =0x215
	adrp	x2, l_.str.11@PAGE
	add	x2, x2, l_.str.11@PAGEOFF
	bl	_lean_notify_assert
	b	LBB116_2
LBB116_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_is_closure
_lean_is_closure:                       ; @lean_is_closure
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
	subs	w8, w0, #245
	cset	w0, eq
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
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___tst1_spec__2___closed__0
__init_l_IO_println___at___tst1_spec__2___closed__0: ; @_init_l_IO_println___at___tst1_spec__2___closed__0
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
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___tst1_spec__2___closed__1
__init_l_IO_println___at___tst1_spec__2___closed__1: ; @_init_l_IO_println___at___tst1_spec__2___closed__1
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
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___tst1_spec__8___closed__0
__init_l_IO_println___at___tst1_spec__8___closed__0: ; @_init_l_IO_println___at___tst1_spec__8___closed__0
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
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___tst1_spec__8___closed__1
__init_l_IO_println___at___tst1_spec__8___closed__1: ; @_init_l_IO_println___at___tst1_spec__8___closed__1
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
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___tst1_spec__8___closed__2
__init_l_IO_println___at___tst1_spec__8___closed__2: ; @_init_l_IO_println___at___tst1_spec__8___closed__2
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
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___tst1_spec__8___closed__3
__init_l_IO_println___at___tst1_spec__8___closed__3: ; @_init_l_IO_println___at___tst1_spec__8___closed__3
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
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_nat_to_int
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_IO_println___at___tst1_spec__8___closed__4
__init_l_IO_println___at___tst1_spec__8___closed__4: ; @_init_l_IO_println___at___tst1_spec__8___closed__4
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
	adrp	x0, l_.str.17@PAGE
	add	x0, x0, l_.str.17@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__0
__init_l_tst1___closed__0:              ; @_init_l_tst1___closed__0
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
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__1
__init_l_tst1___closed__1:              ; @_init_l_tst1___closed__1
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
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__2
__init_l_tst1___closed__2:              ; @_init_l_tst1___closed__2
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
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__0@PAGE
	ldr	d0, [x8, _l_tst1___closed__0@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_add
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__3
__init_l_tst1___closed__3:              ; @_init_l_tst1___closed__3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB129_1
LBB129_1:
	mov	w0, #3                          ; =0x3
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__4
__init_l_tst1___closed__4:              ; @_init_l_tst1___closed__4
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
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_sub
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__5
__init_l_tst1___closed__5:              ; @_init_l_tst1___closed__5
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
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_mul
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__6
__init_l_tst1___closed__6:              ; @_init_l_tst1___closed__6
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
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_div
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__7
__init_l_tst1___closed__7:              ; @_init_l_tst1___closed__7
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
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_decLt
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__8
__init_l_tst1___closed__8:              ; @_init_l_tst1___closed__8
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB134_1
LBB134_1:
	mov	w0, #4                          ; =0x4
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__9
__init_l_tst1___closed__9:              ; @_init_l_tst1___closed__9
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
	adrp	x8, _l_tst1___closed__8@PAGE
	ldr	d0, [x8, _l_tst1___closed__8@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_decLt
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__10
__init_l_tst1___closed__10:             ; @_init_l_tst1___closed__10
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
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_beq
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__11
__init_l_tst1___closed__11:             ; @_init_l_tst1___closed__11
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB137_1
LBB137_1:
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldr	d1, [sp, #8]
	bl	_lean_float_beq
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__12
__init_l_tst1___closed__12:             ; @_init_l_tst1___closed__12
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
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_decLe
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__13
__init_l_tst1___closed__13:             ; @_init_l_tst1___closed__13
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB139_1
LBB139_1:
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldr	d1, [sp, #8]
	bl	_lean_float_decLe
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__14
__init_l_tst1___closed__14:             ; @_init_l_tst1___closed__14
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB140_1
LBB140_1:
	adrp	x8, _l_tst1___closed__8@PAGE
	ldr	d0, [x8, _l_tst1___closed__8@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_decLe
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__15
__init_l_tst1___closed__15:             ; @_init_l_tst1___closed__15
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
	adrp	x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGE
	ldr	x8, [x8, _l_IO_println___at___tst1_spec__8___closed__3@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Float_ofInt
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__16
__init_l_tst1___closed__16:             ; @_init_l_tst1___closed__16
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB142_1
LBB142_1:
	mov	w0, #42                         ; =0x2a
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_nat_to_int
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__17
__init_l_tst1___closed__17:             ; @_init_l_tst1___closed__17
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB143_1
LBB143_1:
	adrp	x8, _l_tst1___closed__16@PAGE
	ldr	x8, [x8, _l_tst1___closed__16@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Float_ofInt
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__18
__init_l_tst1___closed__18:             ; @_init_l_tst1___closed__18
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
	adrp	x8, _l_tst1___closed__16@PAGE
	ldr	x8, [x8, _l_tst1___closed__16@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_int_neg
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__19
__init_l_tst1___closed__19:             ; @_init_l_tst1___closed__19
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB145_1
LBB145_1:
	adrp	x8, _l_tst1___closed__18@PAGE
	ldr	x8, [x8, _l_tst1___closed__18@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_Float_ofInt
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__20
__init_l_tst1___closed__20:             ; @_init_l_tst1___closed__20
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
	str	xzr, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_uint64_to_float
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__21
__init_l_tst1___closed__21:             ; @_init_l_tst1___closed__21
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
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__22
__init_l_tst1___closed__22:             ; @_init_l_tst1___closed__22
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
	adrp	x8, _l_tst1___closed__21@PAGE
	ldr	d0, [x8, _l_tst1___closed__21@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldr	d1, [sp, #8]
	bl	_lean_float_div
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__23
__init_l_tst1___closed__23:             ; @_init_l_tst1___closed__23
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
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint8
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__24
__init_l_tst1___closed__24:             ; @_init_l_tst1___closed__24
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
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint16
	strh	w0, [sp, #6]
	ldrh	w0, [sp, #6]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__25
__init_l_tst1___closed__25:             ; @_init_l_tst1___closed__25
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
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint32
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__26
__init_l_tst1___closed__26:             ; @_init_l_tst1___closed__26
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
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint64
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__27
__init_l_tst1___closed__27:             ; @_init_l_tst1___closed__27
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
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_usize
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__28
__init_l_tst1___closed__28:             ; @_init_l_tst1___closed__28
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
	adrp	x8, _l_tst1___closed__0@PAGE
	ldr	d0, [x8, _l_tst1___closed__0@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_negate
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__29
__init_l_tst1___closed__29:             ; @_init_l_tst1___closed__29
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
	adrp	x8, _l_tst1___closed__28@PAGE
	ldr	d0, [x8, _l_tst1___closed__28@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint8
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__30
__init_l_tst1___closed__30:             ; @_init_l_tst1___closed__30
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
	mov	w0, #256                        ; =0x100
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__31
__init_l_tst1___closed__31:             ; @_init_l_tst1___closed__31
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
	adrp	x8, _l_tst1___closed__30@PAGE
	ldr	d0, [x8, _l_tst1___closed__30@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint8
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__32
__init_l_tst1___closed__32:             ; @_init_l_tst1___closed__32
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB158_1
LBB158_1:
	adrp	x8, _l_tst1___closed__21@PAGE
	ldr	d0, [x8, _l_tst1___closed__21@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__0@PAGE
	ldr	d0, [x8, _l_tst1___closed__0@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_div
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__33
__init_l_tst1___closed__33:             ; @_init_l_tst1___closed__33
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB159_1
LBB159_1:
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint8
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__34
__init_l_tst1___closed__34:             ; @_init_l_tst1___closed__34
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
	adrp	x8, _l_tst1___closed__28@PAGE
	ldr	d0, [x8, _l_tst1___closed__28@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint16
	strh	w0, [sp, #6]
	ldrh	w0, [sp, #6]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__35
__init_l_tst1___closed__35:             ; @_init_l_tst1___closed__35
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
	mov	w0, #16                         ; =0x10
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__36
__init_l_tst1___closed__36:             ; @_init_l_tst1___closed__36
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB162_1
LBB162_1:
	adrp	x8, _l_tst1___closed__35@PAGE
	ldr	d0, [x8, _l_tst1___closed__35@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_pow
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__37
__init_l_tst1___closed__37:             ; @_init_l_tst1___closed__37
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
	adrp	x8, _l_tst1___closed__36@PAGE
	ldr	d0, [x8, _l_tst1___closed__36@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint16
	strh	w0, [sp, #6]
	ldrh	w0, [sp, #6]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__38
__init_l_tst1___closed__38:             ; @_init_l_tst1___closed__38
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
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint16
	strh	w0, [sp, #6]
	ldrh	w0, [sp, #6]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__39
__init_l_tst1___closed__39:             ; @_init_l_tst1___closed__39
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB165_1
LBB165_1:
	adrp	x8, _l_tst1___closed__28@PAGE
	ldr	d0, [x8, _l_tst1___closed__28@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint32
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__40
__init_l_tst1___closed__40:             ; @_init_l_tst1___closed__40
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB166_1
LBB166_1:
	mov	w0, #32                         ; =0x20
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__41
__init_l_tst1___closed__41:             ; @_init_l_tst1___closed__41
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
	adrp	x8, _l_tst1___closed__40@PAGE
	ldr	d0, [x8, _l_tst1___closed__40@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_pow
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__42
__init_l_tst1___closed__42:             ; @_init_l_tst1___closed__42
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB168_1
LBB168_1:
	adrp	x8, _l_tst1___closed__41@PAGE
	ldr	d0, [x8, _l_tst1___closed__41@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint32
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__43
__init_l_tst1___closed__43:             ; @_init_l_tst1___closed__43
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB169_1
LBB169_1:
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint32
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__44
__init_l_tst1___closed__44:             ; @_init_l_tst1___closed__44
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB170_1
LBB170_1:
	adrp	x8, _l_tst1___closed__28@PAGE
	ldr	d0, [x8, _l_tst1___closed__28@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint64
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__45
__init_l_tst1___closed__45:             ; @_init_l_tst1___closed__45
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB171_1
LBB171_1:
	mov	w0, #64                         ; =0x40
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__46
__init_l_tst1___closed__46:             ; @_init_l_tst1___closed__46
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
	adrp	x8, _l_tst1___closed__45@PAGE
	ldr	d0, [x8, _l_tst1___closed__45@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_pow
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__47
__init_l_tst1___closed__47:             ; @_init_l_tst1___closed__47
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB173_1
LBB173_1:
	adrp	x8, _l_tst1___closed__46@PAGE
	ldr	d0, [x8, _l_tst1___closed__46@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint64
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__48
__init_l_tst1___closed__48:             ; @_init_l_tst1___closed__48
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
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_uint64
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__49
__init_l_tst1___closed__49:             ; @_init_l_tst1___closed__49
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
	adrp	x8, _l_tst1___closed__28@PAGE
	ldr	d0, [x8, _l_tst1___closed__28@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_usize
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__50
__init_l_tst1___closed__50:             ; @_init_l_tst1___closed__50
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
	adrp	x8, _l_System_Platform_numBits@GOTPAGE
	ldr	x8, [x8, _l_System_Platform_numBits@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_nat_pow
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__51
__init_l_tst1___closed__51:             ; @_init_l_tst1___closed__51
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB177_1
LBB177_1:
	adrp	x8, _l_tst1___closed__50@PAGE
	ldr	x8, [x8, _l_tst1___closed__50@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_nat_log2
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__52
__init_l_tst1___closed__52:             ; @_init_l_tst1___closed__52
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB178_1
LBB178_1:
	adrp	x8, _l_tst1___closed__51@PAGE
	ldr	x8, [x8, _l_tst1___closed__51@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__53
__init_l_tst1___closed__53:             ; @_init_l_tst1___closed__53
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
	adrp	x8, _l_tst1___closed__52@PAGE
	ldr	d0, [x8, _l_tst1___closed__52@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_pow
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__54
__init_l_tst1___closed__54:             ; @_init_l_tst1___closed__54
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
	adrp	x8, _l_tst1___closed__53@PAGE
	ldr	d0, [x8, _l_tst1___closed__53@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_usize
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__55
__init_l_tst1___closed__55:             ; @_init_l_tst1___closed__55
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB181_1
LBB181_1:
	adrp	x8, _l_tst1___closed__54@PAGE
	ldr	x8, [x8, _l_tst1___closed__54@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_usize_to_nat
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__56
__init_l_tst1___closed__56:             ; @_init_l_tst1___closed__56
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB182_1
LBB182_1:
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	adrp	x8, _l_tst1___closed__50@PAGE
	ldr	x8, [x8, _l_tst1___closed__50@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__57
__init_l_tst1___closed__57:             ; @_init_l_tst1___closed__57
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB183_1
LBB183_1:
	adrp	x8, _l_tst1___closed__56@PAGE
	ldr	x8, [x8, _l_tst1___closed__56@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__55@PAGE
	ldr	x8, [x8, _l_tst1___closed__55@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_nat_dec_eq
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__58
__init_l_tst1___closed__58:             ; @_init_l_tst1___closed__58
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB184_1
LBB184_1:
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_to_usize
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__59
__init_l_tst1___closed__59:             ; @_init_l_tst1___closed__59
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB185_1
LBB185_1:
	adrp	x8, _l_tst1___closed__58@PAGE
	ldr	x8, [x8, _l_tst1___closed__58@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_usize_to_nat
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__60
__init_l_tst1___closed__60:             ; @_init_l_tst1___closed__60
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB186_1
LBB186_1:
	adrp	x8, _l_tst1___closed__56@PAGE
	ldr	x8, [x8, _l_tst1___closed__56@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__59@PAGE
	ldr	x8, [x8, _l_tst1___closed__59@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_nat_dec_eq
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__61
__init_l_tst1___closed__61:             ; @_init_l_tst1___closed__61
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB187_1
LBB187_1:
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__62
__init_l_tst1___closed__62:             ; @_init_l_tst1___closed__62
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB188_1
LBB188_1:
	adrp	x8, _l_tst1___closed__61@PAGE
	ldr	d0, [x8, _l_tst1___closed__61@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isnan
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__63
__init_l_tst1___closed__63:             ; @_init_l_tst1___closed__63
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB189_1
LBB189_1:
	adrp	x8, _l_tst1___closed__61@PAGE
	ldr	d0, [x8, _l_tst1___closed__61@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isinf
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__64
__init_l_tst1___closed__64:             ; @_init_l_tst1___closed__64
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB190_1
LBB190_1:
	adrp	x8, _l_tst1___closed__61@PAGE
	ldr	d0, [x8, _l_tst1___closed__61@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isfinite
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__65
__init_l_tst1___closed__65:             ; @_init_l_tst1___closed__65
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB191_1
LBB191_1:
	adrp	x8, _l_tst1___closed__61@PAGE
	ldr	d0, [x8, _l_tst1___closed__61@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_frexp
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__66
__init_l_tst1___closed__66:             ; @_init_l_tst1___closed__66
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB192_1
LBB192_1:
	adrp	x8, _l_tst1___closed__65@PAGE
	ldr	x8, [x8, _l_tst1___closed__65@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__64@PAGE
	ldrb	w8, [x8, _l_tst1___closed__64@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__67
__init_l_tst1___closed__67:             ; @_init_l_tst1___closed__67
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB193_1
LBB193_1:
	adrp	x8, _l_tst1___closed__66@PAGE
	ldr	x8, [x8, _l_tst1___closed__66@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__63@PAGE
	ldrb	w8, [x8, _l_tst1___closed__63@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__68
__init_l_tst1___closed__68:             ; @_init_l_tst1___closed__68
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB194_1
LBB194_1:
	adrp	x8, _l_tst1___closed__67@PAGE
	ldr	x8, [x8, _l_tst1___closed__67@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__62@PAGE
	ldrb	w8, [x8, _l_tst1___closed__62@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__69___boxed__const__1
__init_l_tst1___closed__69___boxed__const__1: ; @_init_l_tst1___closed__69___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB195_1
LBB195_1:
	adrp	x8, _l_tst1___closed__61@PAGE
	ldr	d0, [x8, _l_tst1___closed__61@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__69
__init_l_tst1___closed__69:             ; @_init_l_tst1___closed__69
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB196_1
LBB196_1:
	adrp	x8, _l_tst1___closed__68@PAGE
	ldr	x8, [x8, _l_tst1___closed__68@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__69___boxed__const__1@PAGE
	ldr	x8, [x8, _l_tst1___closed__69___boxed__const__1@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__70
__init_l_tst1___closed__70:             ; @_init_l_tst1___closed__70
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB197_1
LBB197_1:
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isnan
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__71
__init_l_tst1___closed__71:             ; @_init_l_tst1___closed__71
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB198_1
LBB198_1:
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isinf
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__72
__init_l_tst1___closed__72:             ; @_init_l_tst1___closed__72
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB199_1
LBB199_1:
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isfinite
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__73
__init_l_tst1___closed__73:             ; @_init_l_tst1___closed__73
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB200_1
LBB200_1:
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_frexp
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__74
__init_l_tst1___closed__74:             ; @_init_l_tst1___closed__74
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB201_1
LBB201_1:
	adrp	x8, _l_tst1___closed__73@PAGE
	ldr	x8, [x8, _l_tst1___closed__73@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__72@PAGE
	ldrb	w8, [x8, _l_tst1___closed__72@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__75
__init_l_tst1___closed__75:             ; @_init_l_tst1___closed__75
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB202_1
LBB202_1:
	adrp	x8, _l_tst1___closed__74@PAGE
	ldr	x8, [x8, _l_tst1___closed__74@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__71@PAGE
	ldrb	w8, [x8, _l_tst1___closed__71@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__76
__init_l_tst1___closed__76:             ; @_init_l_tst1___closed__76
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB203_1
LBB203_1:
	adrp	x8, _l_tst1___closed__75@PAGE
	ldr	x8, [x8, _l_tst1___closed__75@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__70@PAGE
	ldrb	w8, [x8, _l_tst1___closed__70@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__77___boxed__const__1
__init_l_tst1___closed__77___boxed__const__1: ; @_init_l_tst1___closed__77___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB204_1
LBB204_1:
	adrp	x8, _l_tst1___closed__22@PAGE
	ldr	d0, [x8, _l_tst1___closed__22@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__77
__init_l_tst1___closed__77:             ; @_init_l_tst1___closed__77
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB205_1
LBB205_1:
	adrp	x8, _l_tst1___closed__76@PAGE
	ldr	x8, [x8, _l_tst1___closed__76@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__77___boxed__const__1@PAGE
	ldr	x8, [x8, _l_tst1___closed__77___boxed__const__1@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__78
__init_l_tst1___closed__78:             ; @_init_l_tst1___closed__78
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB206_1
LBB206_1:
	adrp	x8, _l_tst1___closed__21@PAGE
	ldr	d0, [x8, _l_tst1___closed__21@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_negate
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__79
__init_l_tst1___closed__79:             ; @_init_l_tst1___closed__79
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB207_1
LBB207_1:
	adrp	x8, _l_tst1___closed__21@PAGE
	ldr	d0, [x8, _l_tst1___closed__21@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__78@PAGE
	ldr	d0, [x8, _l_tst1___closed__78@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_div
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__80
__init_l_tst1___closed__80:             ; @_init_l_tst1___closed__80
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB208_1
LBB208_1:
	adrp	x8, _l_tst1___closed__79@PAGE
	ldr	d0, [x8, _l_tst1___closed__79@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isnan
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__81
__init_l_tst1___closed__81:             ; @_init_l_tst1___closed__81
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB209_1
LBB209_1:
	adrp	x8, _l_tst1___closed__79@PAGE
	ldr	d0, [x8, _l_tst1___closed__79@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isinf
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__82
__init_l_tst1___closed__82:             ; @_init_l_tst1___closed__82
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB210_1
LBB210_1:
	adrp	x8, _l_tst1___closed__79@PAGE
	ldr	d0, [x8, _l_tst1___closed__79@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isfinite
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__83
__init_l_tst1___closed__83:             ; @_init_l_tst1___closed__83
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB211_1
LBB211_1:
	adrp	x8, _l_tst1___closed__79@PAGE
	ldr	d0, [x8, _l_tst1___closed__79@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_frexp
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__84
__init_l_tst1___closed__84:             ; @_init_l_tst1___closed__84
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB212_1
LBB212_1:
	adrp	x8, _l_tst1___closed__83@PAGE
	ldr	x8, [x8, _l_tst1___closed__83@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__82@PAGE
	ldrb	w8, [x8, _l_tst1___closed__82@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__85
__init_l_tst1___closed__85:             ; @_init_l_tst1___closed__85
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB213_1
LBB213_1:
	adrp	x8, _l_tst1___closed__84@PAGE
	ldr	x8, [x8, _l_tst1___closed__84@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__81@PAGE
	ldrb	w8, [x8, _l_tst1___closed__81@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__86
__init_l_tst1___closed__86:             ; @_init_l_tst1___closed__86
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB214_1
LBB214_1:
	adrp	x8, _l_tst1___closed__85@PAGE
	ldr	x8, [x8, _l_tst1___closed__85@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__80@PAGE
	ldrb	w8, [x8, _l_tst1___closed__80@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__87___boxed__const__1
__init_l_tst1___closed__87___boxed__const__1: ; @_init_l_tst1___closed__87___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB215_1
LBB215_1:
	adrp	x8, _l_tst1___closed__79@PAGE
	ldr	d0, [x8, _l_tst1___closed__79@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__87
__init_l_tst1___closed__87:             ; @_init_l_tst1___closed__87
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB216_1
LBB216_1:
	adrp	x8, _l_tst1___closed__86@PAGE
	ldr	x8, [x8, _l_tst1___closed__86@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__87___boxed__const__1@PAGE
	ldr	x8, [x8, _l_tst1___closed__87___boxed__const__1@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__88
__init_l_tst1___closed__88:             ; @_init_l_tst1___closed__88
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB217_1
LBB217_1:
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isnan
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__89
__init_l_tst1___closed__89:             ; @_init_l_tst1___closed__89
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB218_1
LBB218_1:
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isinf
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__90
__init_l_tst1___closed__90:             ; @_init_l_tst1___closed__90
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB219_1
LBB219_1:
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isfinite
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__91
__init_l_tst1___closed__91:             ; @_init_l_tst1___closed__91
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB220_1
LBB220_1:
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_frexp
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__92
__init_l_tst1___closed__92:             ; @_init_l_tst1___closed__92
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB221_1
LBB221_1:
	adrp	x8, _l_tst1___closed__91@PAGE
	ldr	x8, [x8, _l_tst1___closed__91@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__90@PAGE
	ldrb	w8, [x8, _l_tst1___closed__90@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__93
__init_l_tst1___closed__93:             ; @_init_l_tst1___closed__93
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB222_1
LBB222_1:
	adrp	x8, _l_tst1___closed__92@PAGE
	ldr	x8, [x8, _l_tst1___closed__92@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__89@PAGE
	ldrb	w8, [x8, _l_tst1___closed__89@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__94
__init_l_tst1___closed__94:             ; @_init_l_tst1___closed__94
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB223_1
LBB223_1:
	adrp	x8, _l_tst1___closed__93@PAGE
	ldr	x8, [x8, _l_tst1___closed__93@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__88@PAGE
	ldrb	w8, [x8, _l_tst1___closed__88@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__95___boxed__const__1
__init_l_tst1___closed__95___boxed__const__1: ; @_init_l_tst1___closed__95___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB224_1
LBB224_1:
	adrp	x8, _l_tst1___closed__32@PAGE
	ldr	d0, [x8, _l_tst1___closed__32@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__95
__init_l_tst1___closed__95:             ; @_init_l_tst1___closed__95
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB225_1
LBB225_1:
	adrp	x8, _l_tst1___closed__94@PAGE
	ldr	x8, [x8, _l_tst1___closed__94@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__95___boxed__const__1@PAGE
	ldr	x8, [x8, _l_tst1___closed__95___boxed__const__1@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__96
__init_l_tst1___closed__96:             ; @_init_l_tst1___closed__96
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB226_1
LBB226_1:
	adrp	x8, _l_tst1___closed__21@PAGE
	ldr	d0, [x8, _l_tst1___closed__21@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__28@PAGE
	ldr	d0, [x8, _l_tst1___closed__28@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_lean_float_div
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__97
__init_l_tst1___closed__97:             ; @_init_l_tst1___closed__97
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB227_1
LBB227_1:
	adrp	x8, _l_tst1___closed__96@PAGE
	ldr	d0, [x8, _l_tst1___closed__96@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isnan
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__98
__init_l_tst1___closed__98:             ; @_init_l_tst1___closed__98
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB228_1
LBB228_1:
	adrp	x8, _l_tst1___closed__96@PAGE
	ldr	d0, [x8, _l_tst1___closed__96@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isinf
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__99
__init_l_tst1___closed__99:             ; @_init_l_tst1___closed__99
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB229_1
LBB229_1:
	adrp	x8, _l_tst1___closed__96@PAGE
	ldr	d0, [x8, _l_tst1___closed__96@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_isfinite
	strb	w0, [sp, #7]
	ldrb	w0, [sp, #7]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__100
__init_l_tst1___closed__100:            ; @_init_l_tst1___closed__100
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB230_1
LBB230_1:
	adrp	x8, _l_tst1___closed__96@PAGE
	ldr	d0, [x8, _l_tst1___closed__96@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_frexp
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__101
__init_l_tst1___closed__101:            ; @_init_l_tst1___closed__101
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB231_1
LBB231_1:
	adrp	x8, _l_tst1___closed__100@PAGE
	ldr	x8, [x8, _l_tst1___closed__100@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__99@PAGE
	ldrb	w8, [x8, _l_tst1___closed__99@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__102
__init_l_tst1___closed__102:            ; @_init_l_tst1___closed__102
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB232_1
LBB232_1:
	adrp	x8, _l_tst1___closed__101@PAGE
	ldr	x8, [x8, _l_tst1___closed__101@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__98@PAGE
	ldrb	w8, [x8, _l_tst1___closed__98@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__103
__init_l_tst1___closed__103:            ; @_init_l_tst1___closed__103
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB233_1
LBB233_1:
	adrp	x8, _l_tst1___closed__102@PAGE
	ldr	x8, [x8, _l_tst1___closed__102@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__97@PAGE
	ldrb	w8, [x8, _l_tst1___closed__97@PAGEOFF]
	sturb	w8, [x29, #-9]
	ldurb	w8, [x29, #-9]
	mov	x0, x8
	bl	_lean_box
	str	x0, [sp, #24]
	mov	w2, #0                          ; =0x0
	str	w2, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x2
	mov	w1, #2                          ; =0x2
	bl	_lean_alloc_ctor
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #24]
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_set
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__104___boxed__const__1
__init_l_tst1___closed__104___boxed__const__1: ; @_init_l_tst1___closed__104___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB234_1
LBB234_1:
	adrp	x8, _l_tst1___closed__96@PAGE
	ldr	d0, [x8, _l_tst1___closed__96@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__104
__init_l_tst1___closed__104:            ; @_init_l_tst1___closed__104
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB235_1
LBB235_1:
	adrp	x8, _l_tst1___closed__103@PAGE
	ldr	x8, [x8, _l_tst1___closed__103@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_tst1___closed__104___boxed__const__1@PAGE
	ldr	x8, [x8, _l_tst1___closed__104___boxed__const__1@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__105
__init_l_tst1___closed__105:            ; @_init_l_tst1___closed__105
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB236_1
LBB236_1:
	adrp	x8, _l_tst1___closed__28@PAGE
	ldr	d0, [x8, _l_tst1___closed__28@PAGEOFF]
	stur	d0, [x29, #-8]
	adrp	x8, _l_tst1___closed__1@PAGE
	ldr	d0, [x8, _l_tst1___closed__1@PAGEOFF]
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	ldur	d1, [x29, #-8]
	bl	_pow
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__106
__init_l_tst1___closed__106:            ; @_init_l_tst1___closed__106
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB237_1
LBB237_1:
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	mov	w8, #1                          ; =0x1
	sturb	w8, [x29, #-9]
	mov	w0, #22                         ; =0x16
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
	.p2align	2                               ; -- Begin function _init_l_tst1___closed__107
__init_l_tst1___closed__107:            ; @_init_l_tst1___closed__107
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB238_1
LBB238_1:
	adrp	x8, _l_tst1___closed__106@PAGE
	ldr	d0, [x8, _l_tst1___closed__106@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldr	d1, [sp, #8]
	bl	_pow
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0
__init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0: ; @_init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB239_1
LBB239_1:
	adrp	x0, l_.str.18@PAGE
	add	x0, x0, l_.str.18@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
__init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1: ; @_init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB240_1
LBB240_1:
	adrp	x0, l_.str.19@PAGE
	add	x0, x0, l_.str.19@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2
__init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2: ; @_init_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB241_1
LBB241_1:
	adrp	x0, l_.str.20@PAGE
	add	x0, x0, l_.str.20@PAGEOFF
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
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB242_1
LBB242_1:
	adrp	x0, l_.str.21@PAGE
	add	x0, x0, l_.str.21@PAGEOFF
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
	b	LBB243_1
LBB243_1:
	mov	w0, #7                          ; =0x7
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
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
	b	LBB244_1
LBB244_1:
	mov	w0, #8                          ; =0x8
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
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
	b	LBB245_1
LBB245_1:
	mov	w0, #9                          ; =0x9
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__4
__init_l_main___closed__4:              ; @_init_l_main___closed__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB246_1
LBB246_1:
	mov	w0, #11                         ; =0xb
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_float_of_nat
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__5___boxed__const__1
__init_l_main___closed__5___boxed__const__1: ; @_init_l_main___closed__5___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB247_1
LBB247_1:
	adrp	x8, _l_main___closed__4@PAGE
	ldr	d0, [x8, _l_main___closed__4@PAGEOFF]
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
	b	LBB248_1
LBB248_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	adrp	x8, _l_main___closed__5___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__5___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__6___boxed__const__1
__init_l_main___closed__6___boxed__const__1: ; @_init_l_main___closed__6___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB249_1
LBB249_1:
	adrp	x8, _l_main___closed__3@PAGE
	ldr	d0, [x8, _l_main___closed__3@PAGEOFF]
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
	b	LBB250_1
LBB250_1:
	adrp	x8, _l_main___closed__5@PAGE
	ldr	x8, [x8, _l_main___closed__5@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__6___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__6___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__7___boxed__const__1
__init_l_main___closed__7___boxed__const__1: ; @_init_l_main___closed__7___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB251_1
LBB251_1:
	adrp	x8, _l_main___closed__2@PAGE
	ldr	d0, [x8, _l_main___closed__2@PAGEOFF]
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
	b	LBB252_1
LBB252_1:
	adrp	x8, _l_main___closed__6@PAGE
	ldr	x8, [x8, _l_main___closed__6@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__7___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__7___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__8___boxed__const__1
__init_l_main___closed__8___boxed__const__1: ; @_init_l_main___closed__8___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB253_1
LBB253_1:
	adrp	x8, _l_main___closed__1@PAGE
	ldr	d0, [x8, _l_main___closed__1@PAGEOFF]
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
	b	LBB254_1
LBB254_1:
	adrp	x8, _l_main___closed__7@PAGE
	ldr	x8, [x8, _l_main___closed__7@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__8___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__8___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__9___boxed__const__1
__init_l_main___closed__9___boxed__const__1: ; @_init_l_main___closed__9___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB255_1
LBB255_1:
	adrp	x8, _l_tst1___closed__8@PAGE
	ldr	d0, [x8, _l_tst1___closed__8@PAGEOFF]
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
	b	LBB256_1
LBB256_1:
	adrp	x8, _l_main___closed__8@PAGE
	ldr	x8, [x8, _l_main___closed__8@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__9___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__9___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__10___boxed__const__1
__init_l_main___closed__10___boxed__const__1: ; @_init_l_main___closed__10___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB257_1
LBB257_1:
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__10
__init_l_main___closed__10:             ; @_init_l_main___closed__10
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB258_1
LBB258_1:
	adrp	x8, _l_main___closed__9@PAGE
	ldr	x8, [x8, _l_main___closed__9@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__10___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__10___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	b	LBB259_1
LBB259_1:
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	bl	_lean_float_negate
	str	d0, [sp]
	ldr	d0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__12___boxed__const__1
__init_l_main___closed__12___boxed__const__1: ; @_init_l_main___closed__12___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB260_1
LBB260_1:
	adrp	x8, _l_tst1___closed__79@PAGE
	ldr	d0, [x8, _l_tst1___closed__79@PAGEOFF]
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
	b	LBB261_1
LBB261_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	stur	x0, [x29, #-8]
	adrp	x8, _l_main___closed__12___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__12___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__13___boxed__const__1
__init_l_main___closed__13___boxed__const__1: ; @_init_l_main___closed__13___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB262_1
LBB262_1:
	adrp	x8, _l_tst1___closed__96@PAGE
	ldr	d0, [x8, _l_tst1___closed__96@PAGEOFF]
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
	b	LBB263_1
LBB263_1:
	adrp	x8, _l_main___closed__12@PAGE
	ldr	x8, [x8, _l_main___closed__12@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__13___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__13___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__14___boxed__const__1
__init_l_main___closed__14___boxed__const__1: ; @_init_l_main___closed__14___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB264_1
LBB264_1:
	adrp	x8, _l_tst1___closed__78@PAGE
	ldr	d0, [x8, _l_tst1___closed__78@PAGEOFF]
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
	b	LBB265_1
LBB265_1:
	adrp	x8, _l_main___closed__13@PAGE
	ldr	x8, [x8, _l_main___closed__13@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__14___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__14___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__15___boxed__const__1
__init_l_main___closed__15___boxed__const__1: ; @_init_l_main___closed__15___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB266_1
LBB266_1:
	adrp	x8, _l_tst1___closed__21@PAGE
	ldr	d0, [x8, _l_tst1___closed__21@PAGEOFF]
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
	b	LBB267_1
LBB267_1:
	adrp	x8, _l_main___closed__14@PAGE
	ldr	x8, [x8, _l_main___closed__14@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__15___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__15___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__16___boxed__const__1
__init_l_main___closed__16___boxed__const__1: ; @_init_l_main___closed__16___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB268_1
LBB268_1:
	adrp	x8, _l_main___closed__11@PAGE
	ldr	d0, [x8, _l_main___closed__11@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__16
__init_l_main___closed__16:             ; @_init_l_main___closed__16
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB269_1
LBB269_1:
	adrp	x8, _l_main___closed__15@PAGE
	ldr	x8, [x8, _l_main___closed__15@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__16___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__16___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _init_l_main___closed__17___boxed__const__1
__init_l_main___closed__17___boxed__const__1: ; @_init_l_main___closed__17___boxed__const__1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB270_1
LBB270_1:
	adrp	x8, _l_tst1___closed__3@PAGE
	ldr	d0, [x8, _l_tst1___closed__3@PAGEOFF]
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
	b	LBB271_1
LBB271_1:
	adrp	x8, _l_main___closed__16@PAGE
	ldr	x8, [x8, _l_main___closed__16@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__17___boxed__const__1@PAGE
	ldr	x8, [x8, _l_main___closed__17___boxed__const__1@PAGEOFF]
	str	x8, [sp, #16]
	mov	w0, #1                          ; =0x1
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	mov	w1, #2                          ; =0x2
	mov	w2, #0                          ; =0x0
	str	w2, [sp]                        ; 4-byte Folded Spill
	bl	_lean_alloc_ctor
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x2, [sp, #16]
	bl	_lean_ctor_set
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_lean_ctor_set
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_l_IO_println___at___tst1_spec__2___closed__0,8,3 ; @l_IO_println___at___tst1_spec__2___closed__0
.zerofill __DATA,__bss,_l_IO_println___at___tst1_spec__2___closed__1,8,3 ; @l_IO_println___at___tst1_spec__2___closed__1
.zerofill __DATA,__bss,_l_IO_println___at___tst1_spec__8___closed__0,8,3 ; @l_IO_println___at___tst1_spec__8___closed__0
.zerofill __DATA,__bss,_l_IO_println___at___tst1_spec__8___closed__1,8,3 ; @l_IO_println___at___tst1_spec__8___closed__1
.zerofill __DATA,__bss,_l_IO_println___at___tst1_spec__8___closed__2,8,3 ; @l_IO_println___at___tst1_spec__8___closed__2
.zerofill __DATA,__bss,_l_IO_println___at___tst1_spec__8___closed__3,8,3 ; @l_IO_println___at___tst1_spec__8___closed__3
.zerofill __DATA,__bss,_l_IO_println___at___tst1_spec__8___closed__4,8,3 ; @l_IO_println___at___tst1_spec__8___closed__4
.zerofill __DATA,__bss,_l_tst1___closed__0,8,3 ; @l_tst1___closed__0
.zerofill __DATA,__bss,_l_tst1___closed__2,8,3 ; @l_tst1___closed__2
.zerofill __DATA,__bss,_l_tst1___closed__4,8,3 ; @l_tst1___closed__4
.zerofill __DATA,__bss,_l_tst1___closed__5,8,3 ; @l_tst1___closed__5
.zerofill __DATA,__bss,_l_tst1___closed__6,8,3 ; @l_tst1___closed__6
.zerofill __DATA,__bss,_l_tst1___closed__7,1,0 ; @l_tst1___closed__7
.zerofill __DATA,__bss,_l_tst1___closed__9,1,0 ; @l_tst1___closed__9
.zerofill __DATA,__bss,_l_tst1___closed__10,1,0 ; @l_tst1___closed__10
.zerofill __DATA,__bss,_l_tst1___closed__11,1,0 ; @l_tst1___closed__11
.zerofill __DATA,__bss,_l_tst1___closed__12,1,0 ; @l_tst1___closed__12
.zerofill __DATA,__bss,_l_tst1___closed__13,1,0 ; @l_tst1___closed__13
.zerofill __DATA,__bss,_l_tst1___closed__14,1,0 ; @l_tst1___closed__14
.zerofill __DATA,__bss,_l_tst1___closed__15,8,3 ; @l_tst1___closed__15
.zerofill __DATA,__bss,_l_tst1___closed__17,8,3 ; @l_tst1___closed__17
.zerofill __DATA,__bss,_l_tst1___closed__19,8,3 ; @l_tst1___closed__19
.zerofill __DATA,__bss,_l_tst1___closed__20,8,3 ; @l_tst1___closed__20
.zerofill __DATA,__bss,_l_tst1___closed__23,1,0 ; @l_tst1___closed__23
.zerofill __DATA,__bss,_l_tst1___closed__24,2,1 ; @l_tst1___closed__24
.zerofill __DATA,__bss,_l_tst1___closed__25,4,2 ; @l_tst1___closed__25
.zerofill __DATA,__bss,_l_tst1___closed__26,8,3 ; @l_tst1___closed__26
.zerofill __DATA,__bss,_l_tst1___closed__27,8,3 ; @l_tst1___closed__27
.zerofill __DATA,__bss,_l_tst1___closed__29,1,0 ; @l_tst1___closed__29
.zerofill __DATA,__bss,_l_tst1___closed__31,1,0 ; @l_tst1___closed__31
.zerofill __DATA,__bss,_l_tst1___closed__33,1,0 ; @l_tst1___closed__33
.zerofill __DATA,__bss,_l_tst1___closed__34,2,1 ; @l_tst1___closed__34
.zerofill __DATA,__bss,_l_tst1___closed__37,2,1 ; @l_tst1___closed__37
.zerofill __DATA,__bss,_l_tst1___closed__38,2,1 ; @l_tst1___closed__38
.zerofill __DATA,__bss,_l_tst1___closed__39,4,2 ; @l_tst1___closed__39
.zerofill __DATA,__bss,_l_tst1___closed__42,4,2 ; @l_tst1___closed__42
.zerofill __DATA,__bss,_l_tst1___closed__43,4,2 ; @l_tst1___closed__43
.zerofill __DATA,__bss,_l_tst1___closed__44,8,3 ; @l_tst1___closed__44
.zerofill __DATA,__bss,_l_tst1___closed__47,8,3 ; @l_tst1___closed__47
.zerofill __DATA,__bss,_l_tst1___closed__48,8,3 ; @l_tst1___closed__48
.zerofill __DATA,__bss,_l_tst1___closed__49,8,3 ; @l_tst1___closed__49
.zerofill __DATA,__bss,_l_tst1___closed__57,1,0 ; @l_tst1___closed__57
.zerofill __DATA,__bss,_l_tst1___closed__60,1,0 ; @l_tst1___closed__60
.zerofill __DATA,__bss,_l_tst1___closed__69,8,3 ; @l_tst1___closed__69
.zerofill __DATA,__bss,_l_tst1___closed__77,8,3 ; @l_tst1___closed__77
.zerofill __DATA,__bss,_l_tst1___closed__87,8,3 ; @l_tst1___closed__87
.zerofill __DATA,__bss,_l_tst1___closed__95,8,3 ; @l_tst1___closed__95
.zerofill __DATA,__bss,_l_tst1___closed__104,8,3 ; @l_tst1___closed__104
.zerofill __DATA,__bss,_l_tst1___closed__105,8,3 ; @l_tst1___closed__105
.zerofill __DATA,__bss,_l_tst1___closed__107,8,3 ; @l_tst1___closed__107
.zerofill __DATA,__bss,_l_tst1___closed__3,8,3 ; @l_tst1___closed__3
.zerofill __DATA,__bss,_l_tst1___closed__1,8,3 ; @l_tst1___closed__1
.zerofill __DATA,__bss,_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0,8,3 ; @l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__0
.zerofill __DATA,__bss,_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1,8,3 ; @l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__1
.zerofill __DATA,__bss,_l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2,8,3 ; @l_List_toString___at___IO_println___at___tst3_spec__0_spec__0___closed__2
.zerofill __DATA,__bss,_l_main___closed__0,8,3 ; @l_main___closed__0
.zerofill __DATA,__bss,_l_main___closed__10,8,3 ; @l_main___closed__10
.zerofill __DATA,__bss,_l_main___closed__17,8,3 ; @l_main___closed__17
.zerofill __DATA,__bss,__G_initialized,1,0 ; @_G_initialized
.zerofill __DATA,__bss,_l_tst1___closed__8,8,3 ; @l_tst1___closed__8
.zerofill __DATA,__bss,_l_tst1___closed__16,8,3 ; @l_tst1___closed__16
.zerofill __DATA,__bss,_l_tst1___closed__18,8,3 ; @l_tst1___closed__18
.zerofill __DATA,__bss,_l_tst1___closed__21,8,3 ; @l_tst1___closed__21
.zerofill __DATA,__bss,_l_tst1___closed__22,8,3 ; @l_tst1___closed__22
.zerofill __DATA,__bss,_l_tst1___closed__28,8,3 ; @l_tst1___closed__28
.zerofill __DATA,__bss,_l_tst1___closed__30,8,3 ; @l_tst1___closed__30
.zerofill __DATA,__bss,_l_tst1___closed__32,8,3 ; @l_tst1___closed__32
.zerofill __DATA,__bss,_l_tst1___closed__35,8,3 ; @l_tst1___closed__35
.zerofill __DATA,__bss,_l_tst1___closed__36,8,3 ; @l_tst1___closed__36
.zerofill __DATA,__bss,_l_tst1___closed__40,8,3 ; @l_tst1___closed__40
.zerofill __DATA,__bss,_l_tst1___closed__41,8,3 ; @l_tst1___closed__41
.zerofill __DATA,__bss,_l_tst1___closed__45,8,3 ; @l_tst1___closed__45
.zerofill __DATA,__bss,_l_tst1___closed__46,8,3 ; @l_tst1___closed__46
.zerofill __DATA,__bss,_l_tst1___closed__50,8,3 ; @l_tst1___closed__50
.zerofill __DATA,__bss,_l_tst1___closed__51,8,3 ; @l_tst1___closed__51
.zerofill __DATA,__bss,_l_tst1___closed__52,8,3 ; @l_tst1___closed__52
.zerofill __DATA,__bss,_l_tst1___closed__53,8,3 ; @l_tst1___closed__53
.zerofill __DATA,__bss,_l_tst1___closed__54,8,3 ; @l_tst1___closed__54
.zerofill __DATA,__bss,_l_tst1___closed__55,8,3 ; @l_tst1___closed__55
.zerofill __DATA,__bss,_l_tst1___closed__56,8,3 ; @l_tst1___closed__56
.zerofill __DATA,__bss,_l_tst1___closed__58,8,3 ; @l_tst1___closed__58
.zerofill __DATA,__bss,_l_tst1___closed__59,8,3 ; @l_tst1___closed__59
.zerofill __DATA,__bss,_l_tst1___closed__61,8,3 ; @l_tst1___closed__61
.zerofill __DATA,__bss,_l_tst1___closed__62,1,0 ; @l_tst1___closed__62
.zerofill __DATA,__bss,_l_tst1___closed__63,1,0 ; @l_tst1___closed__63
.zerofill __DATA,__bss,_l_tst1___closed__64,1,0 ; @l_tst1___closed__64
.zerofill __DATA,__bss,_l_tst1___closed__65,8,3 ; @l_tst1___closed__65
.zerofill __DATA,__bss,_l_tst1___closed__66,8,3 ; @l_tst1___closed__66
.zerofill __DATA,__bss,_l_tst1___closed__67,8,3 ; @l_tst1___closed__67
.zerofill __DATA,__bss,_l_tst1___closed__68,8,3 ; @l_tst1___closed__68
	.private_extern	_l_tst1___closed__69___boxed__const__1 ; @l_tst1___closed__69___boxed__const__1
	.comm	_l_tst1___closed__69___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_tst1___closed__70,1,0 ; @l_tst1___closed__70
.zerofill __DATA,__bss,_l_tst1___closed__71,1,0 ; @l_tst1___closed__71
.zerofill __DATA,__bss,_l_tst1___closed__72,1,0 ; @l_tst1___closed__72
.zerofill __DATA,__bss,_l_tst1___closed__73,8,3 ; @l_tst1___closed__73
.zerofill __DATA,__bss,_l_tst1___closed__74,8,3 ; @l_tst1___closed__74
.zerofill __DATA,__bss,_l_tst1___closed__75,8,3 ; @l_tst1___closed__75
.zerofill __DATA,__bss,_l_tst1___closed__76,8,3 ; @l_tst1___closed__76
	.private_extern	_l_tst1___closed__77___boxed__const__1 ; @l_tst1___closed__77___boxed__const__1
	.comm	_l_tst1___closed__77___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_tst1___closed__78,8,3 ; @l_tst1___closed__78
.zerofill __DATA,__bss,_l_tst1___closed__79,8,3 ; @l_tst1___closed__79
.zerofill __DATA,__bss,_l_tst1___closed__80,1,0 ; @l_tst1___closed__80
.zerofill __DATA,__bss,_l_tst1___closed__81,1,0 ; @l_tst1___closed__81
.zerofill __DATA,__bss,_l_tst1___closed__82,1,0 ; @l_tst1___closed__82
.zerofill __DATA,__bss,_l_tst1___closed__83,8,3 ; @l_tst1___closed__83
.zerofill __DATA,__bss,_l_tst1___closed__84,8,3 ; @l_tst1___closed__84
.zerofill __DATA,__bss,_l_tst1___closed__85,8,3 ; @l_tst1___closed__85
.zerofill __DATA,__bss,_l_tst1___closed__86,8,3 ; @l_tst1___closed__86
	.private_extern	_l_tst1___closed__87___boxed__const__1 ; @l_tst1___closed__87___boxed__const__1
	.comm	_l_tst1___closed__87___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_tst1___closed__88,1,0 ; @l_tst1___closed__88
.zerofill __DATA,__bss,_l_tst1___closed__89,1,0 ; @l_tst1___closed__89
.zerofill __DATA,__bss,_l_tst1___closed__90,1,0 ; @l_tst1___closed__90
.zerofill __DATA,__bss,_l_tst1___closed__91,8,3 ; @l_tst1___closed__91
.zerofill __DATA,__bss,_l_tst1___closed__92,8,3 ; @l_tst1___closed__92
.zerofill __DATA,__bss,_l_tst1___closed__93,8,3 ; @l_tst1___closed__93
.zerofill __DATA,__bss,_l_tst1___closed__94,8,3 ; @l_tst1___closed__94
	.private_extern	_l_tst1___closed__95___boxed__const__1 ; @l_tst1___closed__95___boxed__const__1
	.comm	_l_tst1___closed__95___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_tst1___closed__96,8,3 ; @l_tst1___closed__96
.zerofill __DATA,__bss,_l_tst1___closed__97,1,0 ; @l_tst1___closed__97
.zerofill __DATA,__bss,_l_tst1___closed__98,1,0 ; @l_tst1___closed__98
.zerofill __DATA,__bss,_l_tst1___closed__99,1,0 ; @l_tst1___closed__99
.zerofill __DATA,__bss,_l_tst1___closed__100,8,3 ; @l_tst1___closed__100
.zerofill __DATA,__bss,_l_tst1___closed__101,8,3 ; @l_tst1___closed__101
.zerofill __DATA,__bss,_l_tst1___closed__102,8,3 ; @l_tst1___closed__102
.zerofill __DATA,__bss,_l_tst1___closed__103,8,3 ; @l_tst1___closed__103
	.private_extern	_l_tst1___closed__104___boxed__const__1 ; @l_tst1___closed__104___boxed__const__1
	.comm	_l_tst1___closed__104___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_tst1___closed__106,8,3 ; @l_tst1___closed__106
.zerofill __DATA,__bss,_l_main___closed__1,8,3 ; @l_main___closed__1
.zerofill __DATA,__bss,_l_main___closed__2,8,3 ; @l_main___closed__2
.zerofill __DATA,__bss,_l_main___closed__3,8,3 ; @l_main___closed__3
.zerofill __DATA,__bss,_l_main___closed__4,8,3 ; @l_main___closed__4
	.private_extern	_l_main___closed__5___boxed__const__1 ; @l_main___closed__5___boxed__const__1
	.comm	_l_main___closed__5___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__5,8,3 ; @l_main___closed__5
	.private_extern	_l_main___closed__6___boxed__const__1 ; @l_main___closed__6___boxed__const__1
	.comm	_l_main___closed__6___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__6,8,3 ; @l_main___closed__6
	.private_extern	_l_main___closed__7___boxed__const__1 ; @l_main___closed__7___boxed__const__1
	.comm	_l_main___closed__7___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__7,8,3 ; @l_main___closed__7
	.private_extern	_l_main___closed__8___boxed__const__1 ; @l_main___closed__8___boxed__const__1
	.comm	_l_main___closed__8___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__8,8,3 ; @l_main___closed__8
	.private_extern	_l_main___closed__9___boxed__const__1 ; @l_main___closed__9___boxed__const__1
	.comm	_l_main___closed__9___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__9,8,3 ; @l_main___closed__9
	.private_extern	_l_main___closed__10___boxed__const__1 ; @l_main___closed__10___boxed__const__1
	.comm	_l_main___closed__10___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__11,8,3 ; @l_main___closed__11
	.private_extern	_l_main___closed__12___boxed__const__1 ; @l_main___closed__12___boxed__const__1
	.comm	_l_main___closed__12___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__12,8,3 ; @l_main___closed__12
	.private_extern	_l_main___closed__13___boxed__const__1 ; @l_main___closed__13___boxed__const__1
	.comm	_l_main___closed__13___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__13,8,3 ; @l_main___closed__13
	.private_extern	_l_main___closed__14___boxed__const__1 ; @l_main___closed__14___boxed__const__1
	.comm	_l_main___closed__14___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__14,8,3 ; @l_main___closed__14
	.private_extern	_l_main___closed__15___boxed__const__1 ; @l_main___closed__15___boxed__const__1
	.comm	_l_main___closed__15___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__15,8,3 ; @l_main___closed__15
	.private_extern	_l_main___closed__16___boxed__const__1 ; @l_main___closed__16___boxed__const__1
	.comm	_l_main___closed__16___boxed__const__1,8,3
.zerofill __DATA,__bss,_l_main___closed__16,8,3 ; @l_main___closed__16
	.private_extern	_l_main___closed__17___boxed__const__1 ; @l_main___closed__17___boxed__const__1
	.comm	_l_main___closed__17___boxed__const__1,8,3
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/Users/pehle/dev/lean4/build/release/stage1/include/lean/lean.h"

l_.str.1:                               ; @.str.1
	.asciz	"lean_is_scalar(a)"

l_.str.2:                               ; @.str.2
	.asciz	"!lean_int_lt(a, lean_box(0))"

l_.str.3:                               ; @.str.3
	.asciz	"i < lean_ctor_num_objs(o)"

l_.str.4:                               ; @.str.4
	.asciz	"lean_is_ctor(o)"

l_.str.5:                               ; @.str.5
	.asciz	"offset >= lean_ctor_num_objs(o) * sizeof(void*)"

l_.str.6:                               ; @.str.6
	.asciz	"i >= lean_ctor_num_objs(o)"

l_.str.7:                               ; @.str.7
	.asciz	"tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE"

l_.str.8:                               ; @.str.8
	.asciz	"arity > 0"

l_.str.9:                               ; @.str.9
	.asciz	"num_fixed < arity"

l_.str.10:                              ; @.str.10
	.asciz	"i < lean_closure_num_fixed(o)"

l_.str.11:                              ; @.str.11
	.asciz	"lean_is_closure(o)"

l_.str.12:                              ; @.str.12
	.asciz	"false"

l_.str.13:                              ; @.str.13
	.asciz	"true"

l_.str.14:                              ; @.str.14
	.asciz	"("

l_.str.15:                              ; @.str.15
	.asciz	", "

l_.str.16:                              ; @.str.16
	.asciz	")"

l_.str.17:                              ; @.str.17
	.asciz	"-"

l_.str.18:                              ; @.str.18
	.asciz	"[]"

l_.str.19:                              ; @.str.19
	.asciz	"["

l_.str.20:                              ; @.str.20
	.asciz	"]"

l_.str.21:                              ; @.str.21
	.asciz	"-----"

.subsections_via_symbols
