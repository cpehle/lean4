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
	.p2align	2                               ; -- Begin function lean_array_get_borrowed
_lean_array_get_borrowed:               ; @lean_array_get_borrowed
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
	str	x2, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_is_scalar
	tbz	w0, #0, LBB1_4
	b	LBB1_1
LBB1_1:
	ldr	x0, [sp, #16]
	bl	_lean_unbox
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	_lean_array_size
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.hs	LBB1_3
	b	LBB1_2
LBB1_2:
	ldur	x0, [x29, #-16]
	bl	_lean_dec
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #8]
	bl	_lean_array_get_core
	stur	x0, [x29, #-8]
	b	LBB1_5
LBB1_3:
	b	LBB1_4
LBB1_4:
	ldur	x0, [x29, #-16]
	bl	_lean_array_get_panic
	stur	x0, [x29, #-8]
	b	LBB1_5
LBB1_5:
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
	tbz	w0, #0, LBB7_2
	b	LBB7_1
LBB7_1:
	ldr	x0, [sp, #24]
	bl	_lean_is_scalar
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB7_2
LBB7_2:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB7_4
	b	LBB7_3
LBB7_3:
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
	b	LBB7_5
LBB7_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_lean_nat_big_add
	stur	x0, [x29, #-8]
	b	LBB7_5
LBB7_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_array_uset
_lean_array_uset:                       ; @lean_array_uset
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
	ldur	x0, [x29, #-8]
	bl	_lean_ensure_exclusive_array
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_lean_array_cptr
	ldur	x8, [x29, #-16]
	add	x8, x0, x8, lsl #3
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_lean_dec
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_arraySize            ; -- Begin function l_arraySize
	.globl	_l_arraySize
	.p2align	2
_l_arraySize:                           ; @l_arraySize
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	b	LBB9_1
LBB9_1:
	ldr	x0, [sp, #8]
	bl	_lean_array_get_size
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_arraySize___boxed    ; -- Begin function l_arraySize___boxed
	.globl	_l_arraySize___boxed
	.p2align	2
_l_arraySize___boxed:                   ; @l_arraySize___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	b	LBB10_1
LBB10_1:
	ldr	x0, [sp, #8]
	bl	_l_arraySize
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	ldr	x0, [sp]
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
	tbz	w8, #0, LBB11_2
	b	LBB11_1
LBB11_1:
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	b	LBB11_5
LBB11_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbz	w8, LBB11_4
	b	LBB11_3
LBB11_3:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref_cold
	b	LBB11_4
LBB11_4:
	b	LBB11_5
LBB11_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_arrayGet             ; -- Begin function l_arrayGet
	.globl	_l_arrayGet
	.p2align	2
_l_arrayGet:                            ; @l_arrayGet
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
	b	LBB12_1
LBB12_1:
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	bl	_lean_array_get_borrowed
	str	x0, [sp]
	ldr	x0, [sp]
	bl	_lean_inc
	ldr	x0, [sp]
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
	tbnz	w0, #0, LBB14_2
	b	LBB14_1
LBB14_1:
	ldr	x0, [sp, #8]
	bl	_lean_inc_ref
	b	LBB14_2
LBB14_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_arrayGet___boxed     ; -- Begin function l_arrayGet___boxed
	.globl	_l_arrayGet___boxed
	.p2align	2
_l_arrayGet___boxed:                    ; @l_arrayGet___boxed
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
	b	LBB15_1
LBB15_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_l_arrayGet
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_lean_dec
	ldur	x0, [x29, #-8]
	bl	_lean_dec_ref
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	tbnz	w0, #0, LBB16_2
	b	LBB16_1
LBB16_1:
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	b	LBB16_2
LBB16_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_arrayPush            ; -- Begin function l_arrayPush
	.globl	_l_arrayPush
	.p2align	2
_l_arrayPush:                           ; @l_arrayPush
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
	b	LBB17_1
LBB17_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_lean_array_push
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0
	.globl	_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0: ; @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0
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
	b	LBB18_1
LBB18_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	bl	_lean_usize_dec_lt
	sturb	w0, [x29, #-25]
	ldurb	w8, [x29, #-25]
	cbnz	w8, LBB18_3
	b	LBB18_2
LBB18_2:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB18_3:                                ;   in Loop: Header=BB18_1 Depth=1
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_lean_array_uget
	stur	x0, [x29, #-40]
	mov	w0, #0                          ; =0x0
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #48]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #48]
	bl	_lean_array_uset
	str	x0, [sp, #40]
	mov	w0, #10                         ; =0xa
	bl	_lean_unsigned_to_nat
	str	x0, [sp, #32]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #32]
	bl	_lean_nat_add
	str	x0, [sp, #24]
	ldur	x0, [x29, #-40]
	bl	_lean_dec
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	_lean_usize_add
	str	x0, [sp, #8]
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	_lean_array_uset
	str	x0, [sp]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-16]
	ldr	x8, [sp]
	stur	x8, [x29, #-24]
	b	LBB18_1
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_arrayMap             ; -- Begin function l_arrayMap
	.globl	_l_arrayMap
	.p2align	2
_l_arrayMap:                            ; @l_arrayMap
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	b	LBB19_1
LBB19_1:
	ldur	x0, [x29, #-8]
	bl	_lean_array_size
	str	x0, [sp, #16]
	str	xzr, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldur	x2, [x29, #-8]
	bl	_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0___boxed
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
	b	LBB20_1
LBB20_1:
	ldur	x0, [x29, #-8]
	bl	_lean_unbox_usize
	str	x0, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	_lean_dec
	ldur	x0, [x29, #-16]
	bl	_lean_unbox_usize
	str	x0, [sp, #8]
	ldur	x0, [x29, #-16]
	bl	_lean_dec
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #24]
	bl	_l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___arrayMap_spec__0
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
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
	b	LBB22_1
LBB22_1:
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
	tbz	w8, #0, LBB23_2
	b	LBB23_1
LBB23_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #623                        ; =0x26f
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	bl	_lean_notify_assert
	b	LBB23_2
LBB23_2:
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
	b	LBB25_1
LBB25_1:
	mov	w8, #10                         ; =0xa
	stur	w8, [x29, #-20]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-20]
	bl	_lean_string_push
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_l_IO_print___at___IO_println___at___main_spec__0_spec__0
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_foldl___at___List_toString___at___main_spec__2_spec__2 ; -- Begin function l_List_foldl___at___List_toString___at___main_spec__2_spec__2
	.globl	_l_List_foldl___at___List_toString___at___main_spec__2_spec__2
	.p2align	2
_l_List_foldl___at___List_toString___at___main_spec__2_spec__2: ; @l_List_foldl___at___List_toString___at___main_spec__2_spec__2
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
	b	LBB26_1
LBB26_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	bl	_lean_obj_tag
	cbnz	w0, LBB26_3
	b	LBB26_2
LBB26_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB26_3:                                ;   in Loop: Header=BB26_1 Depth=1
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	_lean_inc
	ldur	x0, [x29, #-16]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	bl	_lean_inc
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	adrp	x8, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGE
	ldr	x8, [x8, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGEOFF]
	str	x8, [sp, #24]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	_lean_string_append
	str	x0, [sp, #16]
	ldur	x0, [x29, #-24]
	bl	_l_Nat_reprFast
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_lean_string_append
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_lean_dec_ref
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-16]
	b	LBB26_1
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
	tbz	w0, #0, LBB27_2
	b	LBB27_1
LBB27_1:
	ldr	x0, [sp]
	bl	_lean_unbox
	mov	x8, x0
	stur	w8, [x29, #-4]
	b	LBB27_3
LBB27_2:
	ldr	x0, [sp]
	bl	_lean_ptr_tag
	stur	w0, [x29, #-4]
	b	LBB27_3
LBB27_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_toString___at___main_spec__2 ; -- Begin function l_List_toString___at___main_spec__2
	.globl	_l_List_toString___at___main_spec__2
	.p2align	2
_l_List_toString___at___main_spec__2:   ; @l_List_toString___at___main_spec__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB28_1
LBB28_1:
	ldur	x0, [x29, #-16]
	bl	_lean_obj_tag
	cbnz	w0, LBB28_3
	b	LBB28_2
LBB28_2:
	adrp	x8, _l_List_toString___at___main_spec__2___closed__0@PAGE
	ldr	x8, [x8, _l_List_toString___at___main_spec__2___closed__0@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB28_6
LBB28_3:
	ldur	x0, [x29, #-16]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB28_5
	b	LBB28_4
LBB28_4:
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	adrp	x8, _l_List_toString___at___main_spec__2___closed__1@PAGE
	ldr	x8, [x8, _l_List_toString___at___main_spec__2___closed__1@PAGEOFF]
	stur	x8, [x29, #-48]
	ldur	x0, [x29, #-40]
	bl	_l_Nat_reprFast
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	bl	_lean_string_append
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-56]
	bl	_lean_dec_ref
	adrp	x8, _l_List_toString___at___main_spec__2___closed__2@PAGE
	ldr	x8, [x8, _l_List_toString___at___main_spec__2___closed__2@PAGEOFF]
	str	x8, [sp, #72]
	ldur	x0, [x29, #-64]
	ldr	x1, [sp, #72]
	bl	_lean_string_append
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB28_6
LBB28_5:
	ldur	x0, [x29, #-32]
	bl	_lean_inc_ref
	ldur	x0, [x29, #-16]
	mov	w1, #0                          ; =0x0
	bl	_lean_ctor_get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	bl	_lean_inc
	ldur	x0, [x29, #-16]
	bl	_lean_dec_ref
	adrp	x8, _l_List_toString___at___main_spec__2___closed__1@PAGE
	ldr	x8, [x8, _l_List_toString___at___main_spec__2___closed__1@PAGEOFF]
	str	x8, [sp, #48]
	ldr	x0, [sp, #56]
	bl	_l_Nat_reprFast
	str	x0, [sp, #40]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #40]
	bl	_lean_string_append
	str	x0, [sp, #32]
	ldr	x0, [sp, #40]
	bl	_lean_dec_ref
	ldr	x0, [sp, #32]
	ldur	x1, [x29, #-32]
	bl	_l_List_foldl___at___List_toString___at___main_spec__2_spec__2
	str	x0, [sp, #24]
	mov	w8, #93                         ; =0x5d
	str	w8, [sp, #20]
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	_lean_string_push
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB28_6
LBB28_6:
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
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	b	LBB29_1
LBB29_1:
	adrp	x8, _l_main___closed__9@PAGE
	ldr	x8, [x8, _l_main___closed__9@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	_l_IO_println___at___main_spec__0
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	_lean_obj_tag
	cbnz	w0, LBB29_9
	b	LBB29_2
LBB29_2:
	ldur	x0, [x29, #-32]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	_lean_inc
	ldur	x0, [x29, #-32]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__13@PAGE
	ldr	x8, [x8, _l_main___closed__13@PAGEOFF]
	stur	x8, [x29, #-48]
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-40]
	bl	_l_IO_println___at___main_spec__0
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-56]
	bl	_lean_obj_tag
	cbnz	w0, LBB29_8
	b	LBB29_3
LBB29_3:
	ldur	x0, [x29, #-56]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	_lean_inc
	ldur	x0, [x29, #-56]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__18@PAGE
	ldr	x8, [x8, _l_main___closed__18@PAGEOFF]
	stur	x8, [x29, #-72]
	ldur	x0, [x29, #-72]
	ldur	x1, [x29, #-64]
	bl	_l_IO_println___at___main_spec__0
	stur	x0, [x29, #-80]
	ldur	x0, [x29, #-80]
	bl	_lean_obj_tag
	cbnz	w0, LBB29_7
	b	LBB29_4
LBB29_4:
	ldur	x0, [x29, #-80]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #88]
	ldr	x0, [sp, #88]
	bl	_lean_inc
	ldur	x0, [x29, #-80]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__22@PAGE
	ldr	x8, [x8, _l_main___closed__22@PAGEOFF]
	str	x8, [sp, #80]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	bl	_l_IO_println___at___main_spec__0
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	_lean_obj_tag
	cbnz	w0, LBB29_6
	b	LBB29_5
LBB29_5:
	ldr	x0, [sp, #72]
	mov	w1, #1                          ; =0x1
	bl	_lean_ctor_get
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	bl	_lean_inc
	ldr	x0, [sp, #72]
	bl	_lean_dec_ref
	adrp	x8, _l_main___closed__24@PAGE
	ldr	x8, [x8, _l_main___closed__24@PAGEOFF]
	str	x8, [sp, #56]
	adrp	x8, _l_main___closed__25@PAGE
	ldr	x8, [x8, _l_main___closed__25@PAGEOFF]
	str	x8, [sp, #48]
	adrp	x8, _l_main___closed__26@PAGE
	ldr	x8, [x8, _l_main___closed__26@PAGEOFF]
	str	x8, [sp, #40]
	ldr	x0, [sp, #40]
	bl	_l_List_toString___at___main_spec__2
	str	x0, [sp, #32]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #32]
	bl	_lean_string_append
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	_lean_dec_ref
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #24]
	bl	_lean_string_append
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	_lean_dec_ref
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #64]
	bl	_l_IO_println___at___main_spec__0
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB29_10
LBB29_6:
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-8]
	b	LBB29_10
LBB29_7:
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-8]
	b	LBB29_10
LBB29_8:
	ldur	x8, [x29, #-56]
	stur	x8, [x29, #-8]
	b	LBB29_10
LBB29_9:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	LBB29_10
LBB29_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_initialize_arm64__array ; -- Begin function initialize_arm64__array
	.globl	_initialize_arm64__array
	.p2align	2
_initialize_arm64__array:               ; @initialize_arm64__array
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
	tbz	w8, #0, LBB30_2
	b	LBB30_1
LBB30_1:
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB30_5
LBB30_2:
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
	tbz	w0, #0, LBB30_4
	b	LBB30_3
LBB30_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB30_5
LBB30_4:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	__init_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
	adrp	x8, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGE
	str	x0, [x8, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_List_toString___at___main_spec__2___closed__0
	adrp	x8, _l_List_toString___at___main_spec__2___closed__0@PAGE
	str	x0, [x8, _l_List_toString___at___main_spec__2___closed__0@PAGEOFF]
	ldr	x0, [x8, _l_List_toString___at___main_spec__2___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_List_toString___at___main_spec__2___closed__1
	adrp	x8, _l_List_toString___at___main_spec__2___closed__1@PAGE
	str	x0, [x8, _l_List_toString___at___main_spec__2___closed__1@PAGEOFF]
	ldr	x0, [x8, _l_List_toString___at___main_spec__2___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_List_toString___at___main_spec__2___closed__2
	adrp	x8, _l_List_toString___at___main_spec__2___closed__2@PAGE
	str	x0, [x8, _l_List_toString___at___main_spec__2___closed__2@PAGEOFF]
	ldr	x0, [x8, _l_List_toString___at___main_spec__2___closed__2@PAGEOFF]
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
	str	x0, [x8, _l_main___closed__20@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__20@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__21
	adrp	x8, _l_main___closed__21@PAGE
	str	x0, [x8, _l_main___closed__21@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__21@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__22
	adrp	x8, _l_main___closed__22@PAGE
	str	x0, [x8, _l_main___closed__22@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__22@PAGEOFF]
	bl	_lean_mark_persistent
	bl	__init_l_main___closed__23
	adrp	x8, _l_main___closed__23@PAGE
	str	x0, [x8, _l_main___closed__23@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__23@PAGEOFF]
	bl	_lean_mark_persistent
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
	str	x0, [x8, _l_main___closed__26@PAGEOFF]
	ldr	x0, [x8, _l_main___closed__26@PAGEOFF]
	bl	_lean_mark_persistent
	mov	x0, #0                          ; =0x0
	bl	_lean_box
	bl	_lean_io_result_mk_ok
	stur	x0, [x29, #-8]
	b	LBB30_5
LBB30_5:
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
	bl	_initialize_arm64__array
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	str	x0, [sp, #16]
	and	w0, w8, #0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mark_end_initialization
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB34_2
	b	LBB34_1
LBB34_1:
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	bl	_lean_init_task_manager
	bl	_lean_io_mk_world
	bl	__lean_main
	str	x0, [sp, #16]
	b	LBB34_2
LBB34_2:
	bl	_lean_finalize_task_manager
	ldr	x0, [sp, #16]
	bl	_lean_io_result_is_ok
	tbz	w0, #0, LBB34_4
	b	LBB34_3
LBB34_3:
	str	wzr, [sp, #12]
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB34_5
LBB34_4:
	ldr	x0, [sp, #16]
	bl	_lean_io_result_show_error
	ldr	x0, [sp, #16]
	bl	_lean_dec_ref
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB34_5
LBB34_5:
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
	tbz	w8, #0, LBB40_2
	b	LBB40_1
LBB40_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #788                        ; =0x314
	adrp	x2, l_.str.1@PAGE
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_lean_notify_assert
	b	LBB40_2
LBB40_2:
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
	tbnz	w0, #0, LBB41_2
	b	LBB41_1
LBB41_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #534                        ; =0x216
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_lean_notify_assert
	b	LBB41_2
LBB41_2:
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
	tbz	w8, #0, LBB44_2
	b	LBB44_1
LBB44_1:
	ldr	x0, [sp]
	bl	_lean_box
	str	x0, [sp, #8]
	b	LBB44_3
LBB44_2:
	ldr	x0, [sp]
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #8]
	b	LBB44_3
LBB44_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_ensure_exclusive_array
_lean_ensure_exclusive_array:           ; @lean_ensure_exclusive_array
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
	bl	_lean_is_exclusive
	tbz	w0, #0, LBB45_2
	b	LBB45_1
LBB45_1:
	ldr	x8, [sp]
	str	x8, [sp, #8]
	b	LBB45_3
LBB45_2:
	ldr	x0, [sp]
	bl	_lean_copy_array
	str	x0, [sp, #8]
	b	LBB45_3
LBB45_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_array_cptr
_lean_array_cptr:                       ; @lean_array_cptr
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
	add	x0, x0, #24
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
	tbz	w0, #0, LBB47_2
	b	LBB47_1
LBB47_1:
	ldr	x8, [sp]
	ldr	w8, [x8]
	mov	w9, #1                          ; =0x1
	subs	w8, w8, #1
	cset	w8, eq
	and	w8, w8, w9
	sturb	w8, [x29, #-1]
	b	LBB47_3
LBB47_2:
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB47_3
LBB47_3:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lean_copy_array
_lean_copy_array:                       ; @lean_copy_array
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
	mov	w8, #0                          ; =0x0
	and	w1, w8, #0x1
	bl	_lean_copy_expand_array
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
	tbz	w8, #0, LBB50_2
	b	LBB50_1
LBB50_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #650                        ; =0x28a
	adrp	x2, l_.str.3@PAGE
	add	x2, x2, l_.str.3@PAGEOFF
	bl	_lean_notify_assert
	b	LBB50_2
LBB50_2:
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
	tbnz	w0, #0, LBB51_2
	b	LBB51_1
LBB51_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #596                        ; =0x254
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB51_2
LBB51_2:
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
	tbnz	w0, #0, LBB52_2
	b	LBB52_1
LBB52_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #601                        ; =0x259
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB52_2
LBB52_2:
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
	tbnz	w0, #0, LBB55_2
	b	LBB55_1
LBB55_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #532                        ; =0x214
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	bl	_lean_notify_assert
	b	LBB55_2
LBB55_2:
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
	tbz	w0, #0, LBB56_2
	b	LBB56_1
LBB56_1:
	ldr	x10, [sp, #16]
	ldur	x9, [x29, #-8]
	ldrsw	x8, [x9]
	add	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	b	LBB56_5
LBB56_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	cbz	w8, LBB56_4
	b	LBB56_3
LBB56_3:
	ldur	x0, [x29, #-8]
	bl	_lean_get_rc_mt_addr
	ldr	x8, [sp, #16]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	neg	w8, w8
	ldadd	w8, w8, [x0]
	str	w8, [sp, #8]
	b	LBB56_4
LBB56_4:
	b	LBB56_5
LBB56_5:
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
	b.hi	LBB58_3
	b	LBB58_1
LBB58_1:
	ldur	w9, [x29, #-8]
	mov	w8, #0                          ; =0x0
	subs	w9, w9, #256
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b.hs	LBB58_3
	b	LBB58_2
LBB58_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1024
	cset	w8, lo
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB58_3
LBB58_3:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbnz	w8, #0, LBB58_5
	b	LBB58_4
LBB58_4:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #616                        ; =0x268
	adrp	x2, l_.str.6@PAGE
	add	x2, x2, l_.str.6@PAGEOFF
	bl	_lean_notify_assert
	b	LBB58_5
LBB58_5:
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
	tbz	w8, #0, LBB59_2
	b	LBB59_1
LBB59_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #633                        ; =0x279
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	bl	_lean_notify_assert
	b	LBB59_2
LBB59_2:
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
	b.ls	LBB60_2
	b	LBB60_1
LBB60_1:
	ldr	x8, [sp, #16]
	ldur	w9, [x29, #-8]
                                        ; kill: def $x9 killed $w9
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	stur	xzr, [x8, #-8]
	b	LBB60_2
LBB60_2:
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
	cbnz	x8, LBB62_2
	b	LBB62_1
LBB62_1:
	bl	_lean_internal_panic_out_of_memory
LBB62_2:
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
	.p2align	2                               ; -- Begin function _init_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
__init_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0: ; @_init_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
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
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_List_toString___at___main_spec__2___closed__0
__init_l_List_toString___at___main_spec__2___closed__0: ; @_init_l_List_toString___at___main_spec__2___closed__0
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
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_List_toString___at___main_spec__2___closed__1
__init_l_List_toString___at___main_spec__2___closed__1: ; @_init_l_List_toString___at___main_spec__2___closed__1
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
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_List_toString___at___main_spec__2___closed__2
__init_l_List_toString___at___main_spec__2___closed__2: ; @_init_l_List_toString___at___main_spec__2___closed__2
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
	b	LBB68_1
LBB68_1:
	mov	w0, #5                          ; =0x5
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
	b	LBB69_1
LBB69_1:
	mov	w0, #1                          ; =0x1
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
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
	b	LBB70_1
LBB70_1:
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
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
	b	LBB71_1
LBB71_1:
	mov	w0, #3                          ; =0x3
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
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
	b	LBB72_1
LBB72_1:
	mov	w0, #4                          ; =0x4
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
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
	b	LBB73_1
LBB73_1:
	mov	w0, #5                          ; =0x5
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
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
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB74_1
LBB74_1:
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__7
__init_l_main___closed__7:              ; @_init_l_main___closed__7
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
	adrp	x8, _l_main___closed__5@PAGE
	ldr	x8, [x8, _l_main___closed__5@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_arraySize
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
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB76_1
LBB76_1:
	adrp	x8, _l_main___closed__7@PAGE
	ldr	x8, [x8, _l_main___closed__7@PAGEOFF]
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
	b	LBB77_1
LBB77_1:
	adrp	x8, _l_main___closed__8@PAGE
	ldr	x8, [x8, _l_main___closed__8@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__6@PAGE
	ldr	x8, [x8, _l_main___closed__6@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_string_append
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
	b	LBB78_1
LBB78_1:
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__11
__init_l_main___closed__11:             ; @_init_l_main___closed__11
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB79_1
LBB79_1:
	mov	w0, #2                          ; =0x2
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	adrp	x8, _l_main___closed__5@PAGE
	ldr	x8, [x8, _l_main___closed__5@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_arrayGet
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	b	LBB80_1
LBB80_1:
	adrp	x8, _l_main___closed__11@PAGE
	ldr	x8, [x8, _l_main___closed__11@PAGEOFF]
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
	b	LBB81_1
LBB81_1:
	adrp	x8, _l_main___closed__12@PAGE
	ldr	x8, [x8, _l_main___closed__12@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__10@PAGE
	ldr	x8, [x8, _l_main___closed__10@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_string_append
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
	b	LBB82_1
LBB82_1:
	mov	w0, #6                          ; =0x6
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	adrp	x8, _l_main___closed__5@PAGE
	ldr	x8, [x8, _l_main___closed__5@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_arrayPush
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
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB83_1
LBB83_1:
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
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
	b	LBB84_1
LBB84_1:
	adrp	x8, _l_main___closed__14@PAGE
	ldr	x8, [x8, _l_main___closed__14@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_arraySize
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
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB85_1
LBB85_1:
	adrp	x8, _l_main___closed__16@PAGE
	ldr	x8, [x8, _l_main___closed__16@PAGEOFF]
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__18
__init_l_main___closed__18:             ; @_init_l_main___closed__18
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB86_1
LBB86_1:
	adrp	x8, _l_main___closed__17@PAGE
	ldr	x8, [x8, _l_main___closed__17@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__15@PAGE
	ldr	x8, [x8, _l_main___closed__15@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_string_append
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	b	LBB87_1
LBB87_1:
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
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
	b	LBB88_1
LBB88_1:
	mov	w0, #5                          ; =0x5
	bl	_lean_unsigned_to_nat
	stur	x0, [x29, #-8]
	adrp	x8, _l_main___closed__14@PAGE
	ldr	x8, [x8, _l_main___closed__14@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_l_arrayGet
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
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
	b	LBB89_1
LBB89_1:
	adrp	x8, _l_main___closed__20@PAGE
	ldr	x8, [x8, _l_main___closed__20@PAGEOFF]
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
	b	LBB90_1
LBB90_1:
	adrp	x8, _l_main___closed__21@PAGE
	ldr	x8, [x8, _l_main___closed__21@PAGEOFF]
	stur	x8, [x29, #-8]
	adrp	x8, _l_main___closed__19@PAGE
	ldr	x8, [x8, _l_main___closed__19@PAGEOFF]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	_lean_string_append
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
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
	b	LBB91_1
LBB91_1:
	adrp	x8, _l_main___closed__5@PAGE
	ldr	x8, [x8, _l_main___closed__5@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_l_arrayMap
	str	x0, [sp]
	ldr	x0, [sp]
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
	b	LBB92_1
LBB92_1:
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
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
	b	LBB93_1
LBB93_1:
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
	.p2align	2                               ; -- Begin function _init_l_main___closed__26
__init_l_main___closed__26:             ; @_init_l_main___closed__26
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	b	LBB94_1
LBB94_1:
	adrp	x8, _l_main___closed__23@PAGE
	ldr	x8, [x8, _l_main___closed__23@PAGEOFF]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_lean_array_to_list
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0,8,3 ; @l_List_foldl___at___List_toString___at___main_spec__2_spec__2___closed__0
.zerofill __DATA,__bss,_l_List_toString___at___main_spec__2___closed__0,8,3 ; @l_List_toString___at___main_spec__2___closed__0
.zerofill __DATA,__bss,_l_List_toString___at___main_spec__2___closed__1,8,3 ; @l_List_toString___at___main_spec__2___closed__1
.zerofill __DATA,__bss,_l_List_toString___at___main_spec__2___closed__2,8,3 ; @l_List_toString___at___main_spec__2___closed__2
.zerofill __DATA,__bss,_l_main___closed__9,8,3 ; @l_main___closed__9
.zerofill __DATA,__bss,_l_main___closed__13,8,3 ; @l_main___closed__13
.zerofill __DATA,__bss,_l_main___closed__18,8,3 ; @l_main___closed__18
.zerofill __DATA,__bss,_l_main___closed__22,8,3 ; @l_main___closed__22
.zerofill __DATA,__bss,_l_main___closed__24,8,3 ; @l_main___closed__24
.zerofill __DATA,__bss,_l_main___closed__25,8,3 ; @l_main___closed__25
.zerofill __DATA,__bss,_l_main___closed__26,8,3 ; @l_main___closed__26
.zerofill __DATA,__bss,__G_initialized,1,0 ; @_G_initialized
.zerofill __DATA,__bss,_l_main___closed__0,8,3 ; @l_main___closed__0
.zerofill __DATA,__bss,_l_main___closed__1,8,3 ; @l_main___closed__1
.zerofill __DATA,__bss,_l_main___closed__2,8,3 ; @l_main___closed__2
.zerofill __DATA,__bss,_l_main___closed__3,8,3 ; @l_main___closed__3
.zerofill __DATA,__bss,_l_main___closed__4,8,3 ; @l_main___closed__4
.zerofill __DATA,__bss,_l_main___closed__5,8,3 ; @l_main___closed__5
.zerofill __DATA,__bss,_l_main___closed__6,8,3 ; @l_main___closed__6
.zerofill __DATA,__bss,_l_main___closed__7,8,3 ; @l_main___closed__7
.zerofill __DATA,__bss,_l_main___closed__8,8,3 ; @l_main___closed__8
.zerofill __DATA,__bss,_l_main___closed__10,8,3 ; @l_main___closed__10
.zerofill __DATA,__bss,_l_main___closed__11,8,3 ; @l_main___closed__11
.zerofill __DATA,__bss,_l_main___closed__12,8,3 ; @l_main___closed__12
.zerofill __DATA,__bss,_l_main___closed__14,8,3 ; @l_main___closed__14
.zerofill __DATA,__bss,_l_main___closed__15,8,3 ; @l_main___closed__15
.zerofill __DATA,__bss,_l_main___closed__16,8,3 ; @l_main___closed__16
.zerofill __DATA,__bss,_l_main___closed__17,8,3 ; @l_main___closed__17
.zerofill __DATA,__bss,_l_main___closed__19,8,3 ; @l_main___closed__19
.zerofill __DATA,__bss,_l_main___closed__20,8,3 ; @l_main___closed__20
.zerofill __DATA,__bss,_l_main___closed__21,8,3 ; @l_main___closed__21
.zerofill __DATA,__bss,_l_main___closed__23,8,3 ; @l_main___closed__23
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/Users/pehle/dev/lean4/build/release/stage1/include/lean/lean.h"

l_.str.1:                               ; @.str.1
	.asciz	"i < lean_array_size(o)"

l_.str.2:                               ; @.str.2
	.asciz	"lean_is_array(o)"

l_.str.3:                               ; @.str.3
	.asciz	"i >= lean_ctor_num_objs(o)"

l_.str.4:                               ; @.str.4
	.asciz	"lean_is_ctor(o)"

l_.str.5:                               ; @.str.5
	.asciz	"i < lean_ctor_num_objs(o)"

l_.str.6:                               ; @.str.6
	.asciz	"tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE"

l_.str.7:                               ; @.str.7
	.asciz	", "

l_.str.8:                               ; @.str.8
	.asciz	"[]"

l_.str.9:                               ; @.str.9
	.asciz	"["

l_.str.10:                              ; @.str.10
	.asciz	"]"

l_.str.11:                              ; @.str.11
	.asciz	"size = "

l_.str.12:                              ; @.str.12
	.asciz	"arr[2] = "

l_.str.13:                              ; @.str.13
	.asciz	"after push: size = "

l_.str.14:                              ; @.str.14
	.asciz	"after push: arr[5] = "

l_.str.15:                              ; @.str.15
	.asciz	"after map (+10): "

l_.str.16:                              ; @.str.16
	.asciz	"#"

.subsections_via_symbols
