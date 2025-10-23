	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 99, 0	sdk_version 15, 5
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
	.globl	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0: ; @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	subs	x21, x3, x2
	b.ne	LBB0_2
LBB0_1:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB0_2:
	mov	x19, x0
	add	x8, x1, x2, lsl #3
	add	x22, x8, #24
	mov	w23, #-1                        ; =0xffffffff
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x20, [x22]
	tbnz	w20, #0, LBB0_6
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB0_16
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	add	w8, w8, #1
	str	w8, [x20]
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	x20, x19
	b.eq	LBB0_11
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [x19, #8]
	ldr	x9, [x20, #8]
	cmp	x8, x9
	b.ne	LBB0_15
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x0, x19
	mov	x1, x20
	bl	_lean_string_eq_cold
	ldr	w8, [x20]
	cmp	w8, #2
	b.ge	LBB0_12
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	cbz	w8, LBB0_13
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x24, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x24
	b	LBB0_13
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #1                          ; =0x1
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB0_9
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
	sub	w8, w8, #1
	str	w8, [x20]
LBB0_13:                                ;   in Loop: Header=BB0_3 Depth=1
	cbnz	w0, LBB0_18
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	add	x22, x22, #8
	subs	x21, x21, #1
	b.ne	LBB0_3
	b	LBB0_1
LBB0_15:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #0                          ; =0x0
	ldr	w8, [x20]
	cmp	w8, #2
	b.ge	LBB0_12
	b	LBB0_9
LBB0_16:                                ;   in Loop: Header=BB0_3 Depth=1
	cbz	w8, LBB0_6
; %bb.17:                               ;   in Loop: Header=BB0_3 Depth=1
	ldadd	w23, w8, [x20]
	b	LBB0_6
LBB0_18:
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_contains___at___T_insert_spec__0 ; -- Begin function l_Array_contains___at___T_insert_spec__0
	.globl	_l_Array_contains___at___T_insert_spec__0
	.p2align	2
_l_Array_contains___at___T_insert_spec__0: ; @l_Array_contains___at___T_insert_spec__0
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	ldr	x8, [x0, #8]
	ands	x21, x8, #0x7fffffffffffffff
	b.eq	LBB1_17
; %bb.1:
	mov	x19, x1
	add	x22, x0, #24
	mov	w23, #-1                        ; =0xffffffff
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x20, [x22]
	tbnz	w20, #0, LBB1_5
; %bb.3:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB1_15
; %bb.4:                                ;   in Loop: Header=BB1_2 Depth=1
	add	w8, w8, #1
	str	w8, [x20]
LBB1_5:                                 ;   in Loop: Header=BB1_2 Depth=1
	cmp	x20, x19
	b.eq	LBB1_10
; %bb.6:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	x8, [x19, #8]
	ldr	x9, [x20, #8]
	cmp	x8, x9
	b.ne	LBB1_14
; %bb.7:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	x0, x19
	mov	x1, x20
	bl	_lean_string_eq_cold
	ldr	w8, [x20]
	cmp	w8, #2
	b.ge	LBB1_11
LBB1_8:                                 ;   in Loop: Header=BB1_2 Depth=1
	cbz	w8, LBB1_12
; %bb.9:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	x24, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x24
	b	LBB1_12
LBB1_10:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	w0, #1                          ; =0x1
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB1_8
LBB1_11:                                ;   in Loop: Header=BB1_2 Depth=1
	sub	w8, w8, #1
	str	w8, [x20]
LBB1_12:                                ;   in Loop: Header=BB1_2 Depth=1
	cbnz	w0, LBB1_18
; %bb.13:                               ;   in Loop: Header=BB1_2 Depth=1
	add	x22, x22, #8
	subs	x21, x21, #1
	b.ne	LBB1_2
	b	LBB1_17
LBB1_14:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	w0, #0                          ; =0x0
	ldr	w8, [x20]
	cmp	w8, #2
	b.ge	LBB1_11
	b	LBB1_8
LBB1_15:                                ;   in Loop: Header=BB1_2 Depth=1
	cbz	w8, LBB1_5
; %bb.16:                               ;   in Loop: Header=BB1_2 Depth=1
	ldadd	w23, w8, [x20]
	b	LBB1_5
LBB1_17:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB1_18:
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l_T_insert
lCPI2_0:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l_T_insert
	.globl	_l_T_insert
	.p2align	2
_l_T_insert:                            ; @l_T_insert
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x1
	mov	x21, x0
	ldr	w8, [x0]
	ldr	x0, [x0, #8]
	ldr	x19, [x21, #16]
	cmp	w8, #1
	b.ne	LBB2_20
; %bb.1:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB2_57
; %bb.2:
	add	w8, w8, #1
	str	w8, [x20]
LBB2_3:
	mov	x1, x20
	mov	x2, x20
	bl	_l_Lean_Data_Trie_insert___redArg
	mov	x22, x0
	ldr	x8, [x19, #8]
	ands	x24, x8, #0x7fffffffffffffff
	b.eq	LBB2_48
; %bb.4:
	add	x25, x19, #24
	mov	w26, #-1                        ; =0xffffffff
LBB2_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x23, [x25]
	tbnz	w23, #0, LBB2_8
; %bb.6:                                ;   in Loop: Header=BB2_5 Depth=1
	ldr	w8, [x23]
	cmp	w8, #1
	b.lt	LBB2_18
; %bb.7:                                ;   in Loop: Header=BB2_5 Depth=1
	add	w8, w8, #1
	str	w8, [x23]
LBB2_8:                                 ;   in Loop: Header=BB2_5 Depth=1
	cmp	x23, x20
	b.eq	LBB2_11
; %bb.9:                                ;   in Loop: Header=BB2_5 Depth=1
	ldr	x8, [x20, #8]
	ldr	x9, [x23, #8]
	cmp	x8, x9
	b.ne	LBB2_15
; %bb.10:                               ;   in Loop: Header=BB2_5 Depth=1
	mov	x0, x20
	mov	x1, x23
	bl	_lean_string_eq_cold
	ldr	w8, [x23]
	cmp	w8, #2
	b.ge	LBB2_12
	b	LBB2_16
LBB2_11:                                ;   in Loop: Header=BB2_5 Depth=1
	mov	w0, #1                          ; =0x1
	ldr	w8, [x23]
	cmp	w8, #2
	b.lt	LBB2_16
LBB2_12:                                ;   in Loop: Header=BB2_5 Depth=1
	sub	w8, w8, #1
	str	w8, [x23]
LBB2_13:                                ;   in Loop: Header=BB2_5 Depth=1
	tbnz	w0, #0, LBB2_50
; %bb.14:                               ;   in Loop: Header=BB2_5 Depth=1
	add	x25, x25, #8
	subs	x24, x24, #1
	b.ne	LBB2_5
	b	LBB2_48
LBB2_15:                                ;   in Loop: Header=BB2_5 Depth=1
	mov	w0, #0                          ; =0x0
	ldr	w8, [x23]
	cmp	w8, #2
	b.ge	LBB2_12
LBB2_16:                                ;   in Loop: Header=BB2_5 Depth=1
	cbz	w8, LBB2_13
; %bb.17:                               ;   in Loop: Header=BB2_5 Depth=1
	mov	x27, x0
	mov	x0, x23
	bl	_lean_dec_ref_cold
	mov	x0, x27
	b	LBB2_13
LBB2_18:                                ;   in Loop: Header=BB2_5 Depth=1
	cbz	w8, LBB2_8
; %bb.19:                               ;   in Loop: Header=BB2_5 Depth=1
	ldadd	w26, w8, [x23]
	b	LBB2_8
LBB2_20:
	tbnz	w19, #0, LBB2_23
; %bb.21:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB2_61
; %bb.22:
	add	w8, w8, #1
	str	w8, [x19]
LBB2_23:
	tbnz	w0, #0, LBB2_26
; %bb.24:
	ldr	w8, [x0]
	cmp	w8, #1
	b.lt	LBB2_63
; %bb.25:
	add	w8, w8, #1
	str	w8, [x0]
LBB2_26:
	tbnz	w21, #0, LBB2_29
; %bb.27:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB2_65
; %bb.28:
	sub	w8, w8, #1
	str	w8, [x21]
LBB2_29:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB2_59
; %bb.30:
	add	w8, w8, #1
	str	w8, [x20]
LBB2_31:
	mov	x1, x20
	mov	x2, x20
	bl	_l_Lean_Data_Trie_insert___redArg
	mov	x22, x0
	ldr	x8, [x19, #8]
	ands	x23, x8, #0x7fffffffffffffff
	b.eq	LBB2_49
; %bb.32:
	mov	w24, #24                        ; =0x18
	mov	w25, #-1                        ; =0xffffffff
LBB2_33:                                ; =>This Inner Loop Header: Depth=1
	ldr	x21, [x19, x24]
	tbnz	w21, #0, LBB2_36
; %bb.34:                               ;   in Loop: Header=BB2_33 Depth=1
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB2_46
; %bb.35:                               ;   in Loop: Header=BB2_33 Depth=1
	add	w8, w8, #1
	str	w8, [x21]
LBB2_36:                                ;   in Loop: Header=BB2_33 Depth=1
	cmp	x21, x20
	b.eq	LBB2_39
; %bb.37:                               ;   in Loop: Header=BB2_33 Depth=1
	ldr	x8, [x20, #8]
	ldr	x9, [x21, #8]
	cmp	x8, x9
	b.ne	LBB2_43
; %bb.38:                               ;   in Loop: Header=BB2_33 Depth=1
	mov	x0, x20
	mov	x1, x21
	bl	_lean_string_eq_cold
	ldr	w8, [x21]
	cmp	w8, #2
	b.ge	LBB2_40
	b	LBB2_44
LBB2_39:                                ;   in Loop: Header=BB2_33 Depth=1
	mov	w0, #1                          ; =0x1
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB2_44
LBB2_40:                                ;   in Loop: Header=BB2_33 Depth=1
	sub	w8, w8, #1
	str	w8, [x21]
LBB2_41:                                ;   in Loop: Header=BB2_33 Depth=1
	tbnz	w0, #0, LBB2_52
; %bb.42:                               ;   in Loop: Header=BB2_33 Depth=1
	add	x24, x24, #8
	subs	x23, x23, #1
	b.ne	LBB2_33
	b	LBB2_49
LBB2_43:                                ;   in Loop: Header=BB2_33 Depth=1
	mov	w0, #0                          ; =0x0
	ldr	w8, [x21]
	cmp	w8, #2
	b.ge	LBB2_40
LBB2_44:                                ;   in Loop: Header=BB2_33 Depth=1
	cbz	w8, LBB2_41
; %bb.45:                               ;   in Loop: Header=BB2_33 Depth=1
	mov	x26, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x26
	b	LBB2_41
LBB2_46:                                ;   in Loop: Header=BB2_33 Depth=1
	cbz	w8, LBB2_36
; %bb.47:                               ;   in Loop: Header=BB2_33 Depth=1
	ldadd	w25, w8, [x21]
	b	LBB2_36
LBB2_48:
	mov	x0, x19
	mov	x1, x20
	bl	_lean_array_push
	stp	x22, x0, [x21, #8]
	b	LBB2_56
LBB2_49:
	mov	x0, x19
	mov	x1, x20
	bl	_lean_array_push
	mov	x19, x0
	b	LBB2_54
LBB2_50:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB2_67
; %bb.51:
	sub	w8, w8, #1
	str	w8, [x20]
	str	x22, [x21, #8]
	b	LBB2_56
LBB2_52:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB2_70
; %bb.53:
	sub	w8, w8, #1
	str	w8, [x20]
LBB2_54:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_72
; %bb.55:
	mov	x21, x0
Lloh0:
	adrp	x8, lCPI2_0@PAGE
Lloh1:
	ldr	d0, [x8, lCPI2_0@PAGEOFF]
	str	d0, [x0]
	stp	x22, x19, [x0, #8]
LBB2_56:
	mov	x0, x21
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB2_57:
	cbz	w8, LBB2_3
; %bb.58:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB2_3
LBB2_59:
	cbz	w8, LBB2_31
; %bb.60:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB2_31
LBB2_61:
	cbz	w8, LBB2_23
; %bb.62:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB2_23
LBB2_63:
	cbz	w8, LBB2_26
; %bb.64:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x0]
	b	LBB2_26
LBB2_65:
	cbz	w8, LBB2_29
; %bb.66:
	mov	x22, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB2_29
LBB2_67:
	cbz	w8, LBB2_69
; %bb.68:
	mov	x0, x20
	bl	_lean_dec_ref_cold
LBB2_69:
	str	x22, [x21, #8]
	b	LBB2_56
LBB2_70:
	cbz	w8, LBB2_54
; %bb.71:
	mov	x0, x20
	bl	_lean_dec_ref_cold
	b	LBB2_54
LBB2_72:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___Array_contains___at___T_insert_spec__0_spec__0___boxed
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x20, x1
	mov	x19, x0
	ldr	x21, [x2, #8]
	tbnz	w2, #0, LBB3_3
; %bb.1:
	ldr	w8, [x2]
	cmp	w8, #2
	b.lt	LBB3_34
; %bb.2:
	sub	w8, w8, #1
	str	w8, [x2]
LBB3_3:
	ldr	x22, [x3, #8]
	tbnz	w3, #0, LBB3_6
; %bb.4:
	ldr	w8, [x3]
	cmp	w8, #2
	b.lt	LBB3_36
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x3]
LBB3_6:
	subs	x23, x22, x21
	b.ne	LBB3_8
; %bb.7:
	mov	w21, #1                         ; =0x1
	b	LBB3_25
LBB3_8:
	add	x8, x20, x21, lsl #3
	add	x24, x8, #24
	mov	w25, #-1                        ; =0xffffffff
	mov	w21, #1                         ; =0x1
LBB3_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x22, [x24]
	tbnz	w22, #0, LBB3_12
; %bb.10:                               ;   in Loop: Header=BB3_9 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB3_22
; %bb.11:                               ;   in Loop: Header=BB3_9 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB3_12:                                ;   in Loop: Header=BB3_9 Depth=1
	cmp	x22, x19
	b.eq	LBB3_15
; %bb.13:                               ;   in Loop: Header=BB3_9 Depth=1
	ldr	x8, [x19, #8]
	ldr	x9, [x22, #8]
	cmp	x8, x9
	b.ne	LBB3_19
; %bb.14:                               ;   in Loop: Header=BB3_9 Depth=1
	mov	x0, x19
	mov	x1, x22
	bl	_lean_string_eq_cold
	ldr	w8, [x22]
	cmp	w8, #2
	b.ge	LBB3_16
	b	LBB3_20
LBB3_15:                                ;   in Loop: Header=BB3_9 Depth=1
	mov	w0, #1                          ; =0x1
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB3_20
LBB3_16:                                ;   in Loop: Header=BB3_9 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
LBB3_17:                                ;   in Loop: Header=BB3_9 Depth=1
	cbnz	w0, LBB3_24
; %bb.18:                               ;   in Loop: Header=BB3_9 Depth=1
	add	x24, x24, #8
	subs	x23, x23, #1
	b.ne	LBB3_9
	b	LBB3_25
LBB3_19:                                ;   in Loop: Header=BB3_9 Depth=1
	mov	w0, #0                          ; =0x0
	ldr	w8, [x22]
	cmp	w8, #2
	b.ge	LBB3_16
LBB3_20:                                ;   in Loop: Header=BB3_9 Depth=1
	cbz	w8, LBB3_17
; %bb.21:                               ;   in Loop: Header=BB3_9 Depth=1
	mov	x26, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x26
	b	LBB3_17
LBB3_22:                                ;   in Loop: Header=BB3_9 Depth=1
	cbz	w8, LBB3_12
; %bb.23:                               ;   in Loop: Header=BB3_9 Depth=1
	ldadd	w25, w8, [x22]
	b	LBB3_12
LBB3_24:
	mov	w21, #3                         ; =0x3
LBB3_25:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB3_30
; %bb.26:
	sub	w8, w8, #1
	str	w8, [x20]
LBB3_27:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB3_32
; %bb.28:
	sub	w8, w8, #1
	str	w8, [x19]
LBB3_29:
	mov	x0, x21
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB3_30:
	cbz	w8, LBB3_27
; %bb.31:
	mov	x0, x20
	bl	_lean_dec_ref_cold
	b	LBB3_27
LBB3_32:
	cbz	w8, LBB3_29
; %bb.33:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB3_29
LBB3_34:
	cbz	w8, LBB3_3
; %bb.35:
	mov	x0, x2
	mov	x22, x3
	bl	_lean_dec_ref_cold
	mov	x3, x22
	b	LBB3_3
LBB3_36:
	cbz	w8, LBB3_6
; %bb.37:
	mov	x0, x3
	bl	_lean_dec_ref_cold
	b	LBB3_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_contains___at___T_insert_spec__0___boxed ; -- Begin function l_Array_contains___at___T_insert_spec__0___boxed
	.globl	_l_Array_contains___at___T_insert_spec__0___boxed
	.p2align	2
_l_Array_contains___at___T_insert_spec__0___boxed: ; @l_Array_contains___at___T_insert_spec__0___boxed
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x1
	mov	x19, x0
	ldr	x8, [x0, #8]
	ands	x23, x8, #0x7fffffffffffffff
	b.eq	LBB4_17
; %bb.1:
	add	x24, x19, #24
	mov	w25, #-1                        ; =0xffffffff
	mov	w20, #1                         ; =0x1
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x22, [x24]
	tbnz	w22, #0, LBB4_5
; %bb.3:                                ;   in Loop: Header=BB4_2 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB4_15
; %bb.4:                                ;   in Loop: Header=BB4_2 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB4_5:                                 ;   in Loop: Header=BB4_2 Depth=1
	cmp	x22, x21
	b.eq	LBB4_8
; %bb.6:                                ;   in Loop: Header=BB4_2 Depth=1
	ldr	x8, [x21, #8]
	ldr	x9, [x22, #8]
	cmp	x8, x9
	b.ne	LBB4_12
; %bb.7:                                ;   in Loop: Header=BB4_2 Depth=1
	mov	x0, x21
	mov	x1, x22
	bl	_lean_string_eq_cold
	ldr	w8, [x22]
	cmp	w8, #2
	b.ge	LBB4_9
	b	LBB4_13
LBB4_8:                                 ;   in Loop: Header=BB4_2 Depth=1
	mov	w0, #1                          ; =0x1
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB4_13
LBB4_9:                                 ;   in Loop: Header=BB4_2 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
LBB4_10:                                ;   in Loop: Header=BB4_2 Depth=1
	cbnz	w0, LBB4_23
; %bb.11:                               ;   in Loop: Header=BB4_2 Depth=1
	add	x24, x24, #8
	subs	x23, x23, #1
	b.ne	LBB4_2
	b	LBB4_18
LBB4_12:                                ;   in Loop: Header=BB4_2 Depth=1
	mov	w0, #0                          ; =0x0
	ldr	w8, [x22]
	cmp	w8, #2
	b.ge	LBB4_9
LBB4_13:                                ;   in Loop: Header=BB4_2 Depth=1
	cbz	w8, LBB4_10
; %bb.14:                               ;   in Loop: Header=BB4_2 Depth=1
	mov	x26, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x26
	b	LBB4_10
LBB4_15:                                ;   in Loop: Header=BB4_2 Depth=1
	cbz	w8, LBB4_5
; %bb.16:                               ;   in Loop: Header=BB4_2 Depth=1
	ldadd	w25, w8, [x22]
	b	LBB4_5
LBB4_17:
	mov	w20, #1                         ; =0x1
LBB4_18:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB4_24
LBB4_19:
	sub	w8, w8, #1
	str	w8, [x21]
LBB4_20:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB4_26
; %bb.21:
	sub	w8, w8, #1
	str	w8, [x19]
LBB4_22:
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB4_23:
	mov	w20, #3                         ; =0x3
	ldr	w8, [x21]
	cmp	w8, #2
	b.ge	LBB4_19
LBB4_24:
	cbz	w8, LBB4_20
; %bb.25:
	mov	x0, x21
	bl	_lean_dec_ref_cold
	b	LBB4_20
LBB4_26:
	cbz	w8, LBB4_22
; %bb.27:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB4_22
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0 ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_lean_string_lt
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
lCPI6_0:
	.long	1                               ; 0x1
	.long	4110417944                      ; 0xf5000018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-96]!             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset b8, -88
	.cfi_offset b9, -96
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Lloh2:
	adrp	x8, lCPI6_0@PAGE
Lloh3:
	ldr	d8, [x8, lCPI6_0@PAGEOFF]
	mov	w23, #2                         ; =0x2
	mov	w24, #-1                        ; =0xffffffff
	mov	w25, #1                         ; =0x1
Lloh4:
	adrp	x26, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed@PAGE
Lloh5:
	add	x26, x26, _l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed@PAGEOFF
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	tbz	w20, #0, LBB6_22
; %bb.2:                                ;   in Loop: Header=BB6_1 Depth=1
	tbz	w21, #0, LBB6_23
; %bb.3:                                ;   in Loop: Header=BB6_1 Depth=1
	cmp	x20, x21
	b.hs	LBB6_50
LBB6_4:                                 ;   in Loop: Header=BB6_1 Depth=1
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB6_51
; %bb.5:                                ;   in Loop: Header=BB6_1 Depth=1
	mov	x1, x0
	str	d8, [x0]
	str	x26, [x0, #8]
	str	w23, [x0, #16]
	tbnz	w20, #0, LBB6_8
; %bb.6:                                ;   in Loop: Header=BB6_1 Depth=1
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB6_33
; %bb.7:                                ;   in Loop: Header=BB6_1 Depth=1
	add	w8, w8, #1
	str	w8, [x20]
LBB6_8:                                 ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x19
	mov	x2, x20
	mov	x3, x21
	bl	_l_Array_qpartition___redArg
	ldr	x22, [x0, #8]
	tbnz	w22, #0, LBB6_11
; %bb.9:                                ;   in Loop: Header=BB6_1 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB6_35
; %bb.10:                               ;   in Loop: Header=BB6_1 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB6_11:                                ;   in Loop: Header=BB6_1 Depth=1
	ldr	x19, [x0, #16]
	tbnz	w19, #0, LBB6_14
; %bb.12:                               ;   in Loop: Header=BB6_1 Depth=1
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB6_37
; %bb.13:                               ;   in Loop: Header=BB6_1 Depth=1
	add	w8, w8, #1
	str	w8, [x19]
LBB6_14:                                ;   in Loop: Header=BB6_1 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB6_24
; %bb.15:                               ;   in Loop: Header=BB6_1 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
LBB6_16:                                ;   in Loop: Header=BB6_1 Depth=1
	tbz	w21, #0, LBB6_26
; %bb.17:                               ;   in Loop: Header=BB6_1 Depth=1
	tbz	w22, #0, LBB6_28
; %bb.18:                               ;   in Loop: Header=BB6_1 Depth=1
	cmp	x22, x21
	b.hs	LBB6_47
; %bb.19:                               ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x19
	mov	x1, x20
	mov	x2, x22
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	mov	x19, x0
LBB6_20:                                ;   in Loop: Header=BB6_1 Depth=1
	lsr	x8, x22, #1
	adds	x0, x8, #1
	b.mi	LBB6_32
; %bb.21:                               ;   in Loop: Header=BB6_1 Depth=1
	orr	x20, x25, x0, lsl #1
	b	LBB6_1
LBB6_22:                                ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x20
	mov	x1, x21
	bl	_lean_nat_big_lt
	tbnz	w0, #0, LBB6_4
	b	LBB6_41
LBB6_23:                                ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x20
	mov	x1, x21
	bl	_lean_nat_big_lt
	tbnz	w0, #0, LBB6_4
	b	LBB6_50
LBB6_24:                                ;   in Loop: Header=BB6_1 Depth=1
	cbz	w8, LBB6_16
; %bb.25:                               ;   in Loop: Header=BB6_1 Depth=1
	bl	_lean_dec_ref_cold
	b	LBB6_16
LBB6_26:                                ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x21
	mov	x1, x22
	bl	_lean_nat_big_le
	tbnz	w0, #0, LBB6_44
; %bb.27:                               ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x19
	mov	x1, x20
	mov	x2, x22
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	mov	x19, x0
	tbnz	w22, #0, LBB6_20
	b	LBB6_30
LBB6_28:                                ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x21
	mov	x1, x22
	bl	_lean_nat_big_le
	tbnz	w0, #0, LBB6_45
; %bb.29:                               ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x19
	mov	x1, x20
	mov	x2, x22
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	mov	x19, x0
LBB6_30:                                ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x22
	mov	w1, #3                          ; =0x3
	bl	_lean_nat_big_add
	mov	x20, x0
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB6_39
; %bb.31:                               ;   in Loop: Header=BB6_1 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
	b	LBB6_1
LBB6_32:                                ;   in Loop: Header=BB6_1 Depth=1
	bl	_lean_big_usize_to_nat
	mov	x20, x0
	b	LBB6_1
LBB6_33:                                ;   in Loop: Header=BB6_1 Depth=1
	cbz	w8, LBB6_8
; %bb.34:                               ;   in Loop: Header=BB6_1 Depth=1
	ldadd	w24, w8, [x20]
	b	LBB6_8
LBB6_35:                                ;   in Loop: Header=BB6_1 Depth=1
	cbz	w8, LBB6_11
; %bb.36:                               ;   in Loop: Header=BB6_1 Depth=1
	ldadd	w24, w8, [x22]
	b	LBB6_11
LBB6_37:                                ;   in Loop: Header=BB6_1 Depth=1
	cbz	w8, LBB6_14
; %bb.38:                               ;   in Loop: Header=BB6_1 Depth=1
	ldadd	w24, w8, [x19]
	b	LBB6_14
LBB6_39:                                ;   in Loop: Header=BB6_1 Depth=1
	cbz	w8, LBB6_1
; %bb.40:                               ;   in Loop: Header=BB6_1 Depth=1
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB6_1
LBB6_41:
	ldr	w8, [x20]
	cmp	w8, #2
	b.ge	LBB6_49
LBB6_42:
	cbz	w8, LBB6_50
; %bb.43:
	mov	x0, x20
	bl	_lean_dec_ref_cold
	b	LBB6_50
LBB6_44:
	tbnz	w22, #0, LBB6_47
LBB6_45:
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB6_52
; %bb.46:
	sub	w8, w8, #1
	str	w8, [x22]
LBB6_47:
	tbnz	w20, #0, LBB6_50
; %bb.48:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB6_42
LBB6_49:
	sub	w8, w8, #1
	str	w8, [x20]
LBB6_50:
	mov	x0, x19
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #96               ; 16-byte Folded Reload
	ret
LBB6_51:
	bl	_lean_internal_panic_out_of_memory
LBB6_52:
	cbz	w8, LBB6_47
; %bb.53:
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB6_47
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdr	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg___lam__0___boxed
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x1
	mov	x19, x0
	bl	_lean_string_lt
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB7_5
; %bb.1:
	sub	w8, w8, #1
	str	w8, [x20]
LBB7_2:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB7_7
; %bb.3:
	sub	w8, w8, #1
	str	w8, [x19]
LBB7_4:
	cmp	w0, #0
	mov	w8, #3                          ; =0x3
	csinc	x0, x8, xzr, ne
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB7_5:
	cbz	w8, LBB7_2
; %bb.6:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB7_2
LBB7_7:
	cbz	w8, LBB7_4
; %bb.8:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	b	LBB7_4
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0 ; -- Begin function l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0
	.globl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0
	.p2align	2
_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0: ; @l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0
	.cfi_startproc
; %bb.0:
	mov	x0, x1
	mov	x1, x2
	mov	x2, x3
	b	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_sorted         ; -- Begin function l_Array_sorted
	.globl	_l_Array_sorted
	.p2align	2
_l_Array_sorted:                        ; @l_Array_sorted
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0, #8]
	tst	x8, #0x7fffffffffffffff
	b.eq	LBB9_2
; %bb.1:
	lsl	x8, x8, #1
	sub	x2, x8, #1
	mov	w1, #1                          ; =0x1
	b	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
LBB9_2:
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
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x2
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	tbnz	w19, #0, LBB10_3
; %bb.1:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB10_4
; %bb.2:
	sub	w8, w8, #1
	str	w8, [x19]
LBB10_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB10_4:
	cbz	w8, LBB10_3
; %bb.5:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x19
	bl	_lean_dec_ref_cold
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
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
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x3
	mov	x19, x0
	mov	x0, x1
	mov	x1, x2
	mov	x2, x3
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	tbnz	w20, #0, LBB11_3
; %bb.1:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB11_7
; %bb.2:
	sub	w8, w8, #1
	str	w8, [x20]
LBB11_3:
	tbnz	w19, #0, LBB11_6
; %bb.4:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB11_9
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x19]
LBB11_6:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB11_7:
	cbz	w8, LBB11_3
; %bb.8:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x20
	bl	_lean_dec_ref_cold
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	b	LBB11_3
LBB11_9:
	cbz	w8, LBB11_6
; %bb.10:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x4
	subs	x22, x3, x2
	b.ne	LBB12_2
LBB12_1:
	mov	x0, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB12_2:
	mov	x20, x0
	add	x8, x1, x2, lsl #3
	add	x23, x8, #24
	mov	w24, #-1                        ; =0xffffffff
	b	LBB12_7
LBB12_3:                                ;   in Loop: Header=BB12_7 Depth=1
	add	w8, w8, #1
	str	w8, [x21]
LBB12_4:                                ;   in Loop: Header=BB12_7 Depth=1
	mov	x0, x20
	mov	x1, x21
	bl	_l_String_isPrefixOf
	cbz	w0, LBB12_11
; %bb.5:                                ;   in Loop: Header=BB12_7 Depth=1
	mov	x0, x19
	mov	x1, x21
	bl	_lean_array_push
	mov	x19, x0
LBB12_6:                                ;   in Loop: Header=BB12_7 Depth=1
	add	x23, x23, #8
	subs	x22, x22, #1
	b.eq	LBB12_1
LBB12_7:                                ; =>This Inner Loop Header: Depth=1
	ldr	x21, [x23]
	tbnz	w21, #0, LBB12_4
; %bb.8:                                ;   in Loop: Header=BB12_7 Depth=1
	ldr	w8, [x21]
	cmp	w8, #1
	b.ge	LBB12_3
; %bb.9:                                ;   in Loop: Header=BB12_7 Depth=1
	cbz	w8, LBB12_4
; %bb.10:                               ;   in Loop: Header=BB12_7 Depth=1
	ldadd	w24, w8, [x21]
	b	LBB12_4
LBB12_11:                               ;   in Loop: Header=BB12_7 Depth=1
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB12_13
; %bb.12:                               ;   in Loop: Header=BB12_7 Depth=1
	sub	w8, w8, #1
	str	w8, [x21]
	b	LBB12_6
LBB12_13:                               ;   in Loop: Header=BB12_7 Depth=1
	cbz	w8, LBB12_6
; %bb.14:                               ;   in Loop: Header=BB12_7 Depth=1
	mov	x0, x21
	bl	_lean_dec_ref_cold
	b	LBB12_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_findPrefix     ; -- Begin function l_Array_findPrefix
	.globl	_l_Array_findPrefix
	.p2align	2
_l_Array_findPrefix:                    ; @l_Array_findPrefix
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	ldr	x8, [x0, #8]
Lloh6:
	adrp	x9, __MergedGlobals@PAGE+8
Lloh7:
	ldr	x20, [x9, __MergedGlobals@PAGEOFF+8]
	ands	x22, x8, #0x7fffffffffffffff
	b.eq	LBB13_14
; %bb.1:
	mov	x19, x1
	add	x23, x0, #24
	mov	w24, #-1                        ; =0xffffffff
	b	LBB13_6
LBB13_2:                                ;   in Loop: Header=BB13_6 Depth=1
	add	w8, w8, #1
	str	w8, [x21]
LBB13_3:                                ;   in Loop: Header=BB13_6 Depth=1
	mov	x0, x19
	mov	x1, x21
	bl	_l_String_isPrefixOf
	cbz	w0, LBB13_10
; %bb.4:                                ;   in Loop: Header=BB13_6 Depth=1
	mov	x0, x20
	mov	x1, x21
	bl	_lean_array_push
	mov	x20, x0
LBB13_5:                                ;   in Loop: Header=BB13_6 Depth=1
	add	x23, x23, #8
	subs	x22, x22, #1
	b.eq	LBB13_14
LBB13_6:                                ; =>This Inner Loop Header: Depth=1
	ldr	x21, [x23]
	tbnz	w21, #0, LBB13_3
; %bb.7:                                ;   in Loop: Header=BB13_6 Depth=1
	ldr	w8, [x21]
	cmp	w8, #1
	b.ge	LBB13_2
; %bb.8:                                ;   in Loop: Header=BB13_6 Depth=1
	cbz	w8, LBB13_3
; %bb.9:                                ;   in Loop: Header=BB13_6 Depth=1
	ldadd	w24, w8, [x21]
	b	LBB13_3
LBB13_10:                               ;   in Loop: Header=BB13_6 Depth=1
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB13_12
; %bb.11:                               ;   in Loop: Header=BB13_6 Depth=1
	sub	w8, w8, #1
	str	w8, [x21]
	b	LBB13_5
LBB13_12:                               ;   in Loop: Header=BB13_6 Depth=1
	cbz	w8, LBB13_5
; %bb.13:                               ;   in Loop: Header=BB13_6 Depth=1
	mov	x0, x21
	bl	_lean_dec_ref_cold
	b	LBB13_5
LBB13_14:
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___Array_findPrefix_spec__0___boxed
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x4
	mov	x21, x1
	mov	x20, x0
	ldr	x22, [x2, #8]
	tbnz	w2, #0, LBB14_3
; %bb.1:
	ldr	w8, [x2]
	cmp	w8, #2
	b.lt	LBB14_29
; %bb.2:
	sub	w8, w8, #1
	str	w8, [x2]
LBB14_3:
	ldr	x23, [x3, #8]
	tbnz	w3, #0, LBB14_6
; %bb.4:
	ldr	w8, [x3]
	cmp	w8, #2
	b.lt	LBB14_31
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x3]
LBB14_6:
	subs	x23, x23, x22
	b.ne	LBB14_12
LBB14_7:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB14_25
; %bb.8:
	sub	w8, w8, #1
	str	w8, [x21]
LBB14_9:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB14_27
; %bb.10:
	sub	w8, w8, #1
	str	w8, [x20]
LBB14_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB14_12:
	add	x8, x21, x22, lsl #3
	add	x24, x8, #24
	mov	w25, #-1                        ; =0xffffffff
	b	LBB14_17
LBB14_13:                               ;   in Loop: Header=BB14_17 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB14_14:                               ;   in Loop: Header=BB14_17 Depth=1
	mov	x0, x20
	mov	x1, x22
	bl	_l_String_isPrefixOf
	cbz	w0, LBB14_21
; %bb.15:                               ;   in Loop: Header=BB14_17 Depth=1
	mov	x0, x19
	mov	x1, x22
	bl	_lean_array_push
	mov	x19, x0
LBB14_16:                               ;   in Loop: Header=BB14_17 Depth=1
	add	x24, x24, #8
	subs	x23, x23, #1
	b.eq	LBB14_7
LBB14_17:                               ; =>This Inner Loop Header: Depth=1
	ldr	x22, [x24]
	tbnz	w22, #0, LBB14_14
; %bb.18:                               ;   in Loop: Header=BB14_17 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.ge	LBB14_13
; %bb.19:                               ;   in Loop: Header=BB14_17 Depth=1
	cbz	w8, LBB14_14
; %bb.20:                               ;   in Loop: Header=BB14_17 Depth=1
	ldadd	w25, w8, [x22]
	b	LBB14_14
LBB14_21:                               ;   in Loop: Header=BB14_17 Depth=1
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB14_23
; %bb.22:                               ;   in Loop: Header=BB14_17 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
	b	LBB14_16
LBB14_23:                               ;   in Loop: Header=BB14_17 Depth=1
	cbz	w8, LBB14_16
; %bb.24:                               ;   in Loop: Header=BB14_17 Depth=1
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB14_16
LBB14_25:
	cbz	w8, LBB14_9
; %bb.26:
	mov	x0, x21
	bl	_lean_dec_ref_cold
	b	LBB14_9
LBB14_27:
	cbz	w8, LBB14_11
; %bb.28:
	mov	x0, x20
	bl	_lean_dec_ref_cold
	b	LBB14_11
LBB14_29:
	cbz	w8, LBB14_3
; %bb.30:
	mov	x0, x2
	mov	x23, x3
	bl	_lean_dec_ref_cold
	mov	x3, x23
	b	LBB14_3
LBB14_31:
	cbz	w8, LBB14_6
; %bb.32:
	mov	x0, x3
	bl	_lean_dec_ref_cold
	b	LBB14_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_findPrefix___boxed ; -- Begin function l_Array_findPrefix___boxed
	.globl	_l_Array_findPrefix___boxed
	.p2align	2
_l_Array_findPrefix___boxed:            ; @l_Array_findPrefix___boxed
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x1
	mov	x19, x0
	ldr	x8, [x0, #8]
Lloh8:
	adrp	x9, __MergedGlobals@PAGE+8
Lloh9:
	ldr	x20, [x9, __MergedGlobals@PAGEOFF+8]
	ands	x23, x8, #0x7fffffffffffffff
	b.eq	LBB15_14
; %bb.1:
	add	x24, x19, #24
	mov	w25, #-1                        ; =0xffffffff
	b	LBB15_6
LBB15_2:                                ;   in Loop: Header=BB15_6 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB15_3:                                ;   in Loop: Header=BB15_6 Depth=1
	mov	x0, x21
	mov	x1, x22
	bl	_l_String_isPrefixOf
	cbz	w0, LBB15_10
; %bb.4:                                ;   in Loop: Header=BB15_6 Depth=1
	mov	x0, x20
	mov	x1, x22
	bl	_lean_array_push
	mov	x20, x0
LBB15_5:                                ;   in Loop: Header=BB15_6 Depth=1
	add	x24, x24, #8
	subs	x23, x23, #1
	b.eq	LBB15_14
LBB15_6:                                ; =>This Inner Loop Header: Depth=1
	ldr	x22, [x24]
	tbnz	w22, #0, LBB15_3
; %bb.7:                                ;   in Loop: Header=BB15_6 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.ge	LBB15_2
; %bb.8:                                ;   in Loop: Header=BB15_6 Depth=1
	cbz	w8, LBB15_3
; %bb.9:                                ;   in Loop: Header=BB15_6 Depth=1
	ldadd	w25, w8, [x22]
	b	LBB15_3
LBB15_10:                               ;   in Loop: Header=BB15_6 Depth=1
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB15_12
; %bb.11:                               ;   in Loop: Header=BB15_6 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
	b	LBB15_5
LBB15_12:                               ;   in Loop: Header=BB15_6 Depth=1
	cbz	w8, LBB15_5
; %bb.13:                               ;   in Loop: Header=BB15_6 Depth=1
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB15_5
LBB15_14:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB15_19
; %bb.15:
	sub	w8, w8, #1
	str	w8, [x21]
LBB15_16:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB15_21
; %bb.17:
	sub	w8, w8, #1
	str	w8, [x19]
LBB15_18:
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB15_19:
	cbz	w8, LBB15_16
; %bb.20:
	mov	x0, x21
	bl	_lean_dec_ref_cold
	b	LBB15_16
LBB15_21:
	cbz	w8, LBB15_18
; %bb.22:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB15_18
	.loh AdrpLdr	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
lCPI16_0:
	.long	1                               ; 0x1
	.long	16842768                        ; 0x1010010
lCPI16_1:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-96]!             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset b8, -88
	.cfi_offset b9, -96
	subs	x23, x4, x5
	b.ls	LBB16_20
; %bb.1:
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	add	x8, x3, x5, lsl #3
	add	x24, x8, #24
	mov	w25, #-1                        ; =0xffffffff
LBB16_2:                                ; =>This Inner Loop Header: Depth=1
	ldr	x22, [x24]
	tbnz	w22, #0, LBB16_5
; %bb.3:                                ;   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB16_13
; %bb.4:                                ;   in Loop: Header=BB16_2 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB16_5:                                ;   in Loop: Header=BB16_2 Depth=1
	cmp	x22, x21
	b.eq	LBB16_15
; %bb.6:                                ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x22, #8]
	ldr	x9, [x21, #8]
	cmp	x8, x9
	b.ne	LBB16_8
; %bb.7:                                ;   in Loop: Header=BB16_2 Depth=1
	mov	x0, x22
	mov	x1, x21
	bl	_lean_string_eq_cold
	tbnz	w0, #0, LBB16_15
LBB16_8:                                ;   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB16_11
; %bb.9:                                ;   in Loop: Header=BB16_2 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
LBB16_10:                               ;   in Loop: Header=BB16_2 Depth=1
	add	x24, x24, #8
	subs	x23, x23, #1
	b.ne	LBB16_2
	b	LBB16_19
LBB16_11:                               ;   in Loop: Header=BB16_2 Depth=1
	cbz	w8, LBB16_10
; %bb.12:                               ;   in Loop: Header=BB16_2 Depth=1
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB16_10
LBB16_13:                               ;   in Loop: Header=BB16_2 Depth=1
	cbz	w8, LBB16_5
; %bb.14:                               ;   in Loop: Header=BB16_2 Depth=1
	ldadd	w25, w8, [x22]
	b	LBB16_5
LBB16_15:
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB16_25
; %bb.16:
	mov	x20, x0
Lloh10:
	adrp	x8, lCPI16_0@PAGE
Lloh11:
	ldr	d8, [x8, lCPI16_0@PAGEOFF]
	str	d8, [x0]
	str	x22, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB16_25
; %bb.17:
	mov	x21, x0
	str	d8, [x0]
	str	x20, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB16_25
; %bb.18:
	mov	x6, x0
Lloh12:
	adrp	x8, lCPI16_1@PAGE
Lloh13:
	ldr	d0, [x8, lCPI16_1@PAGEOFF]
	str	d0, [x0]
	stp	x21, x19, [x0, #8]
	b	LBB16_22
LBB16_19:
	mov	x6, x20
LBB16_20:
	ldr	w8, [x6]
	cmp	w8, #1
	b.lt	LBB16_23
; %bb.21:
	add	w8, w8, #1
	str	w8, [x6]
LBB16_22:
	mov	x0, x6
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #96               ; 16-byte Folded Reload
	ret
LBB16_23:
	cbz	w8, LBB16_22
; %bb.24:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x6]
	b	LBB16_22
LBB16_25:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh10, Lloh11
	.loh AdrpLdr	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
lCPI17_0:
	.long	1                               ; 0x1
	.long	196640                          ; 0x30020
lCPI17_1:
	.long	1                               ; 0x1
	.long	16842768                        ; 0x1010010
lCPI17_2:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	.globl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	.p2align	2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg: ; @l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-112]!            ; 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x19, x3
	mov	x22, x2
	mov	x23, x1
	mov	x21, x0
	mov	x0, x5
Lloh14:
	adrp	x8, lCPI17_0@PAGE
Lloh15:
	ldr	d8, [x8, lCPI17_0@PAGEOFF]
	mov	w28, #1                         ; =0x1
	adrp	x27, __MergedGlobals@PAGE+16
LBB17_1:                                ; =>This Inner Loop Header: Depth=1
	tbnz	w4, #0, LBB17_3
; %bb.2:                                ;   in Loop: Header=BB17_1 Depth=1
	ldrb	w8, [x4, #7]
	cbnz	w8, LBB17_4
	b	LBB17_102
LBB17_3:                                ;   in Loop: Header=BB17_1 Depth=1
	lsr	x8, x4, #1
	cbz	w8, LBB17_102
LBB17_4:                                ;   in Loop: Header=BB17_1 Depth=1
	ldr	x20, [x4, #8]
	tbnz	w20, #0, LBB17_7
; %bb.5:                                ;   in Loop: Header=BB17_1 Depth=1
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB17_68
; %bb.6:                                ;   in Loop: Header=BB17_1 Depth=1
	add	w8, w8, #1
	str	w8, [x20]
LBB17_7:                                ;   in Loop: Header=BB17_1 Depth=1
	ldr	x24, [x4, #16]
	tbnz	w24, #0, LBB17_10
; %bb.8:                                ;   in Loop: Header=BB17_1 Depth=1
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB17_70
; %bb.9:                                ;   in Loop: Header=BB17_1 Depth=1
	add	w8, w8, #1
	str	w8, [x24]
LBB17_10:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w8, [x4]
	cmp	w8, #2
	b.lt	LBB17_62
; %bb.11:                               ;   in Loop: Header=BB17_1 Depth=1
	sub	w8, w8, #1
	str	w8, [x4]
LBB17_12:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	x25, [x21, #8]
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB17_64
; %bb.13:                               ;   in Loop: Header=BB17_1 Depth=1
	add	w8, w8, #1
	str	w8, [x21]
LBB17_14:                               ;   in Loop: Header=BB17_1 Depth=1
	bl	_lean_inc_heartbeat
	mov	w0, #32                         ; =0x20
	bl	_mi_malloc_small
	cbz	x0, LBB17_181
; %bb.15:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x26, x0
	lsl	x8, x25, #1
	str	d8, [x0]
	sub	x8, x8, #1
	stp	x21, x28, [x0, #8]
	str	x8, [x0, #24]
	mov	x1, x20
	mov	w2, #1                          ; =0x1
	bl	_l_Substring_nextn
	mov	x25, x0
	ldr	w8, [x26]
	cmp	w8, #2
	b.lt	LBB17_66
; %bb.16:                               ;   in Loop: Header=BB17_1 Depth=1
	sub	w8, w8, #1
	str	w8, [x26]
LBB17_17:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x0, x21
	mov	w1, #1                          ; =0x1
	mov	x2, x25
	bl	_lean_string_utf8_extract
	mov	x20, x0
	tbnz	w25, #0, LBB17_20
; %bb.18:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB17_72
; %bb.19:                               ;   in Loop: Header=BB17_1 Depth=1
	sub	w8, w8, #1
	str	w8, [x25]
LBB17_20:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	x1, [x27, __MergedGlobals@PAGEOFF+16]
	ldr	x4, [x23, #8]
	mov	x0, x20
	mov	w2, #1                          ; =0x1
	mov	x3, x23
	mov	x5, #0                          ; =0x0
	mov	x6, x1
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	ldr	w9, [x0]
	ldr	x8, [x0, #8]
	cmp	w9, #1
	b.ne	LBB17_26
; %bb.21:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	x9, [x0, #16]
	tbnz	w9, #0, LBB17_24
; %bb.22:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w10, [x9]
	cmp	w10, #2
	b.lt	LBB17_74
; %bb.23:                               ;   in Loop: Header=BB17_1 Depth=1
	sub	w10, w10, #1
	str	w10, [x9]
LBB17_24:                               ;   in Loop: Header=BB17_1 Depth=1
	tbnz	w8, #0, LBB17_34
; %bb.25:                               ;   in Loop: Header=BB17_1 Depth=1
	ldrb	w9, [x8, #7]
	cbnz	w9, LBB17_35
	b	LBB17_61
LBB17_26:                               ;   in Loop: Header=BB17_1 Depth=1
	tbnz	w8, #0, LBB17_29
; %bb.27:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w9, [x8]
	cmp	w9, #1
	b.lt	LBB17_76
; %bb.28:                               ;   in Loop: Header=BB17_1 Depth=1
	add	w9, w9, #1
	str	w9, [x8]
LBB17_29:                               ;   in Loop: Header=BB17_1 Depth=1
	tbnz	w0, #0, LBB17_32
; %bb.30:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w9, [x0]
	cmp	w9, #2
	b.lt	LBB17_78
; %bb.31:                               ;   in Loop: Header=BB17_1 Depth=1
	sub	w9, w9, #1
	str	w9, [x0]
LBB17_32:                               ;   in Loop: Header=BB17_1 Depth=1
	tbnz	w8, #0, LBB17_38
; %bb.33:                               ;   in Loop: Header=BB17_1 Depth=1
	ldrb	w9, [x8, #7]
	cbnz	w9, LBB17_39
	b	LBB17_91
LBB17_34:                               ;   in Loop: Header=BB17_1 Depth=1
	lsr	x9, x8, #1
	cbz	w9, LBB17_61
LBB17_35:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w9, [x8]
	ldr	x25, [x8, #8]
	cmp	w9, #1
	b.ne	LBB17_46
; %bb.36:                               ;   in Loop: Header=BB17_1 Depth=1
	tbnz	w25, #0, LBB17_58
; %bb.37:                               ;   in Loop: Header=BB17_1 Depth=1
	ldrb	w9, [x25, #7]
	cbz	w9, LBB17_59
	b	LBB17_136
LBB17_38:                               ;   in Loop: Header=BB17_1 Depth=1
	lsr	x9, x8, #1
	cbz	w9, LBB17_91
LBB17_39:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	x25, [x8, #8]
	tbnz	w25, #0, LBB17_42
; %bb.40:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w9, [x25]
	cmp	w9, #1
	b.lt	LBB17_80
; %bb.41:                               ;   in Loop: Header=BB17_1 Depth=1
	add	w9, w9, #1
	str	w9, [x25]
LBB17_42:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w9, [x8]
	subs	w10, w9, #1
	b.ne	LBB17_54
; %bb.43:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	x0, [x8, #8]
	tbnz	w0, #0, LBB17_86
; %bb.44:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w9, [x0]
	cmp	w9, #2
	b.lt	LBB17_84
; %bb.45:                               ;   in Loop: Header=BB17_1 Depth=1
	sub	w9, w9, #1
	str	w9, [x0]
	str	x28, [x8, #8]
	tbz	w25, #0, LBB17_57
	b	LBB17_87
LBB17_46:                               ;   in Loop: Header=BB17_1 Depth=1
	tbnz	w25, #0, LBB17_49
; %bb.47:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w9, [x25]
	cmp	w9, #1
	b.lt	LBB17_98
; %bb.48:                               ;   in Loop: Header=BB17_1 Depth=1
	add	w9, w9, #1
	str	w9, [x25]
LBB17_49:                               ;   in Loop: Header=BB17_1 Depth=1
	tbnz	w8, #0, LBB17_52
; %bb.50:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB17_100
; %bb.51:                               ;   in Loop: Header=BB17_1 Depth=1
	sub	w9, w9, #1
	str	w9, [x8]
LBB17_52:                               ;   in Loop: Header=BB17_1 Depth=1
	tbnz	w25, #0, LBB17_60
; %bb.53:                               ;   in Loop: Header=BB17_1 Depth=1
	ldrb	w8, [x25, #7]
	cbz	w8, LBB17_61
	b	LBB17_126
LBB17_54:                               ;   in Loop: Header=BB17_1 Depth=1
	cmp	w9, #2
	b.lt	LBB17_82
; %bb.55:                               ;   in Loop: Header=BB17_1 Depth=1
	str	w10, [x8]
LBB17_56:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	w8, #1                          ; =0x1
	tbnz	w25, #0, LBB17_87
LBB17_57:                               ;   in Loop: Header=BB17_1 Depth=1
	ldrb	w9, [x25, #7]
	cbz	w9, LBB17_88
	b	LBB17_106
LBB17_58:                               ;   in Loop: Header=BB17_1 Depth=1
	lsr	x9, x25, #1
	cbnz	w9, LBB17_136
LBB17_59:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x25, x0
	mov	x0, x8
	bl	_lean_free_object
	mov	x0, x25
	b	LBB17_61
LBB17_60:                               ;   in Loop: Header=BB17_1 Depth=1
	lsr	x8, x25, #1
	cbnz	w8, LBB17_126
LBB17_61:                               ;   in Loop: Header=BB17_1 Depth=1
	bl	_lean_free_object
	b	LBB17_91
LBB17_62:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w8, LBB17_12
; %bb.63:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x0, x4
	bl	_lean_dec_ref_cold
	b	LBB17_12
LBB17_64:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w8, LBB17_14
; %bb.65:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x21]
	b	LBB17_14
LBB17_66:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w8, LBB17_17
; %bb.67:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x0, x26
	bl	_lean_dec_ref_cold
	b	LBB17_17
LBB17_68:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w8, LBB17_7
; %bb.69:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB17_7
LBB17_70:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w8, LBB17_10
; %bb.71:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x24]
	b	LBB17_10
LBB17_72:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w8, LBB17_20
; %bb.73:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x0, x25
	bl	_lean_dec_ref_cold
	b	LBB17_20
LBB17_74:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w10, LBB17_24
; %bb.75:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x25, x0
	mov	x26, x8
	mov	x0, x9
	bl	_lean_dec_ref_cold
	mov	x8, x26
	mov	x0, x25
	b	LBB17_24
LBB17_76:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w9, LBB17_29
; %bb.77:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	w9, #-1                         ; =0xffffffff
	ldadd	w9, w9, [x8]
	b	LBB17_29
LBB17_78:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w9, LBB17_32
; %bb.79:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x25, x8
	bl	_lean_dec_ref_cold
	mov	x8, x25
	b	LBB17_32
LBB17_80:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w9, LBB17_42
; %bb.81:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	w9, #-1                         ; =0xffffffff
	ldadd	w9, w9, [x25]
	b	LBB17_42
LBB17_82:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w9, LBB17_56
; %bb.83:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x0, x8
	bl	_lean_dec_ref_cold
	mov	w8, #1                          ; =0x1
	tbz	w25, #0, LBB17_57
	b	LBB17_87
LBB17_84:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w9, LBB17_86
; %bb.85:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x26, x8
	bl	_lean_dec_ref_cold
	mov	x8, x26
LBB17_86:                               ;   in Loop: Header=BB17_1 Depth=1
	str	x28, [x8, #8]
	tbz	w25, #0, LBB17_57
LBB17_87:                               ;   in Loop: Header=BB17_1 Depth=1
	lsr	x9, x25, #1
	cbnz	w9, LBB17_106
LBB17_88:                               ;   in Loop: Header=BB17_1 Depth=1
	tbnz	w8, #0, LBB17_91
; %bb.89:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB17_96
; %bb.90:                               ;   in Loop: Header=BB17_1 Depth=1
	sub	w9, w9, #1
	str	w9, [x8]
LBB17_91:                               ;   in Loop: Header=BB17_1 Depth=1
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB17_94
; %bb.92:                               ;   in Loop: Header=BB17_1 Depth=1
	sub	w8, w8, #1
	str	w8, [x20]
LBB17_93:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x0, x22
	mov	x4, x24
	b	LBB17_1
LBB17_94:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x0, x22
	mov	x4, x24
	cbz	w8, LBB17_1
; %bb.95:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x0, x20
	bl	_lean_dec_ref_cold
	b	LBB17_93
LBB17_96:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w9, LBB17_91
; %bb.97:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	x0, x8
	bl	_lean_dec_ref_cold
	b	LBB17_91
LBB17_98:                               ;   in Loop: Header=BB17_1 Depth=1
	cbz	w9, LBB17_49
; %bb.99:                               ;   in Loop: Header=BB17_1 Depth=1
	mov	w9, #-1                         ; =0xffffffff
	ldadd	w9, w9, [x25]
	b	LBB17_49
LBB17_100:                              ;   in Loop: Header=BB17_1 Depth=1
	cbz	w9, LBB17_52
; %bb.101:                              ;   in Loop: Header=BB17_1 Depth=1
	mov	x26, x0
	mov	x0, x8
	bl	_lean_dec_ref_cold
	mov	x0, x26
	b	LBB17_52
LBB17_102:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB17_157
; %bb.103:
	sub	w8, w8, #1
	str	w8, [x21]
LBB17_104:
	ldr	w8, [x0]
	cmp	w8, #1
	b.lt	LBB17_159
; %bb.105:
	add	w8, w8, #1
	str	w8, [x0]
	b	LBB17_156
LBB17_106:
	tbnz	w24, #0, LBB17_109
; %bb.107:
	ldr	w9, [x24]
	cmp	w9, #2
	b.lt	LBB17_163
; %bb.108:
	sub	w9, w9, #1
	str	w9, [x24]
LBB17_109:
	ldr	w9, [x21]
	cmp	w9, #2
	b.lt	LBB17_161
; %bb.110:
	sub	w9, w9, #1
	str	w9, [x21]
LBB17_111:
	ldr	w9, [x25]
	subs	w10, w9, #1
	b.ne	LBB17_116
; %bb.112:
	ldr	x0, [x25, #8]
	tbnz	w0, #0, LBB17_115
; %bb.113:
	ldr	w9, [x0]
	cmp	w9, #2
	b.lt	LBB17_172
; %bb.114:
	sub	w9, w9, #1
	str	w9, [x0]
LBB17_115:
	mov	w9, #1                          ; =0x1
	str	x9, [x25, #8]
	tbnz	w25, #0, LBB17_118
	b	LBB17_120
LBB17_116:
	cmp	w9, #2
	b.lt	LBB17_165
; %bb.117:
	str	w10, [x25]
	mov	w25, #1                         ; =0x1
	tbz	w25, #0, LBB17_120
LBB17_118:
	mov	x21, x8
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB17_181
; %bb.119:
	mov	x25, x0
Lloh16:
	adrp	x8, lCPI17_1@PAGE
Lloh17:
	ldr	d0, [x8, lCPI17_1@PAGEOFF]
	str	d0, [x0]
	mov	x8, x21
LBB17_120:
	str	x20, [x25, #8]
	tbz	w8, #0, LBB17_123
; %bb.121:
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB17_181
; %bb.122:
	mov	x8, x0
Lloh18:
	adrp	x9, lCPI17_1@PAGE
Lloh19:
	ldr	d0, [x9, lCPI17_1@PAGEOFF]
	str	d0, [x0]
LBB17_123:
	mov	x20, x8
	str	x25, [x8, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB17_181
; %bb.124:
Lloh20:
	adrp	x8, lCPI17_2@PAGE
Lloh21:
	ldr	d0, [x8, lCPI17_2@PAGEOFF]
	str	d0, [x0]
	str	x20, [x0, #8]
LBB17_125:
	str	x19, [x0, #16]
	b	LBB17_156
LBB17_126:
	tbnz	w24, #0, LBB17_129
; %bb.127:
	ldr	w8, [x24]
	cmp	w8, #2
	b.lt	LBB17_174
; %bb.128:
	sub	w8, w8, #1
	str	w8, [x24]
LBB17_129:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB17_168
; %bb.130:
	sub	w8, w8, #1
	str	w8, [x21]
LBB17_131:
	ldr	w8, [x25]
	subs	w9, w8, #1
	b.ne	LBB17_145
; %bb.132:
	ldr	x8, [x25, #8]
	tbnz	w8, #0, LBB17_135
; %bb.133:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB17_182
; %bb.134:
	sub	w9, w9, #1
	str	w9, [x8]
LBB17_135:
	mov	w8, #1                          ; =0x1
	str	x8, [x25, #8]
	mov	x21, x0
	tbnz	w25, #0, LBB17_147
	b	LBB17_149
LBB17_136:
	tbnz	w24, #0, LBB17_139
; %bb.137:
	ldr	w9, [x24]
	cmp	w9, #2
	b.lt	LBB17_179
; %bb.138:
	sub	w9, w9, #1
	str	w9, [x24]
LBB17_139:
	ldr	w9, [x21]
	cmp	w9, #2
	b.lt	LBB17_170
; %bb.140:
	sub	w9, w9, #1
	str	w9, [x21]
LBB17_141:
	ldr	w9, [x25]
	subs	w10, w9, #1
	b.ne	LBB17_151
; %bb.142:
	ldr	x8, [x25, #8]
	tbnz	w8, #0, LBB17_186
; %bb.143:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB17_184
; %bb.144:
	sub	w9, w9, #1
	str	w9, [x8]
	str	x20, [x25, #8]
	b	LBB17_125
LBB17_145:
	cmp	w8, #2
	b.lt	LBB17_176
; %bb.146:
	str	w9, [x25]
	mov	w25, #1                         ; =0x1
	mov	x21, x0
	tbz	w25, #0, LBB17_149
LBB17_147:
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB17_181
; %bb.148:
	mov	x25, x0
Lloh22:
	adrp	x8, lCPI17_1@PAGE
Lloh23:
	ldr	d0, [x8, lCPI17_1@PAGEOFF]
	str	d0, [x0]
LBB17_149:
	str	x20, [x25, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB17_181
; %bb.150:
	mov	x8, x0
Lloh24:
	adrp	x9, lCPI17_1@PAGE
Lloh25:
	ldr	d0, [x9, lCPI17_1@PAGEOFF]
	str	d0, [x0]
	str	x25, [x0, #8]
	mov	x0, x21
	stp	x8, x19, [x21, #8]
	b	LBB17_156
LBB17_151:
	mov	x22, x8
	mov	x21, x0
	tbnz	w25, #0, LBB17_154
; %bb.152:
	cmp	w9, #2
	b.lt	LBB17_187
; %bb.153:
	str	w10, [x25]
LBB17_154:
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB17_181
; %bb.155:
Lloh26:
	adrp	x8, lCPI17_1@PAGE
Lloh27:
	ldr	d0, [x8, lCPI17_1@PAGEOFF]
	str	d0, [x0]
	str	x20, [x0, #8]
	str	x0, [x22, #8]
	mov	x0, x21
	str	x19, [x21, #16]
LBB17_156:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #112              ; 16-byte Folded Reload
	ret
LBB17_157:
	cbz	w8, LBB17_104
; %bb.158:
	mov	x19, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x19
	b	LBB17_104
LBB17_159:
	cbz	w8, LBB17_156
; %bb.160:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x0]
	b	LBB17_156
LBB17_161:
	cbz	w9, LBB17_111
; %bb.162:
	mov	x22, x8
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x8, x22
	b	LBB17_111
LBB17_163:
	cbz	w9, LBB17_109
; %bb.164:
	mov	x22, x8
	mov	x0, x24
	bl	_lean_dec_ref_cold
	mov	x8, x22
	b	LBB17_109
LBB17_165:
	mov	x21, x8
	cbz	w9, LBB17_167
; %bb.166:
	mov	x0, x25
	bl	_lean_dec_ref_cold
LBB17_167:
	mov	w25, #1                         ; =0x1
	mov	x8, x21
	tbnz	w25, #0, LBB17_118
	b	LBB17_120
LBB17_168:
	cbz	w8, LBB17_131
; %bb.169:
	mov	x22, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB17_131
LBB17_170:
	cbz	w9, LBB17_141
; %bb.171:
	mov	x22, x0
	mov	x23, x8
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x8, x23
	mov	x0, x22
	b	LBB17_141
LBB17_172:
	cbz	w9, LBB17_115
; %bb.173:
	mov	x21, x8
	bl	_lean_dec_ref_cold
	mov	x8, x21
	b	LBB17_115
LBB17_174:
	cbz	w8, LBB17_129
; %bb.175:
	mov	x22, x0
	mov	x0, x24
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB17_129
LBB17_176:
	mov	x21, x0
	cbz	w8, LBB17_178
; %bb.177:
	mov	x0, x25
	bl	_lean_dec_ref_cold
LBB17_178:
	mov	w25, #1                         ; =0x1
	tbnz	w25, #0, LBB17_147
	b	LBB17_149
LBB17_179:
	cbz	w9, LBB17_139
; %bb.180:
	mov	x22, x0
	mov	x23, x8
	mov	x0, x24
	bl	_lean_dec_ref_cold
	mov	x8, x23
	mov	x0, x22
	b	LBB17_139
LBB17_181:
	bl	_lean_internal_panic_out_of_memory
LBB17_182:
	cbz	w9, LBB17_135
; %bb.183:
	mov	x21, x0
	mov	x0, x8
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB17_135
LBB17_184:
	cbz	w9, LBB17_186
; %bb.185:
	mov	x21, x0
	mov	x0, x8
	bl	_lean_dec_ref_cold
	mov	x0, x21
LBB17_186:
	str	x20, [x25, #8]
	b	LBB17_125
LBB17_187:
	cbz	w9, LBB17_154
; %bb.188:
	mov	x0, x25
	bl	_lean_dec_ref_cold
	b	LBB17_154
	.loh AdrpLdr	Lloh14, Lloh15
	.loh AdrpLdr	Lloh16, Lloh17
	.loh AdrpLdr	Lloh18, Lloh19
	.loh AdrpLdr	Lloh20, Lloh21
	.loh AdrpLdr	Lloh22, Lloh23
	.loh AdrpLdr	Lloh24, Lloh25
	.loh AdrpLdr	Lloh26, Lloh27
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1 ; -- Begin function l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1
	.globl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1
	.p2align	2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1: ; @l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1
	.cfi_startproc
; %bb.0:
	mov	x4, x5
	mov	x5, x6
	b	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
lCPI19_0:
	.long	1                               ; 0x1
	.long	196640                          ; 0x30020
lCPI19_1:
	.long	1                               ; 0x1
	.long	16842768                        ; 0x1010010
lCPI19_2:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	.globl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	.p2align	2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg: ; @l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x26, x6
	mov	x19, x3
	mov	x23, x2
	mov	x24, x1
	mov	x21, x0
	tbnz	w5, #0, LBB19_37
; %bb.1:
	ldrb	w8, [x5, #7]
	cbz	w8, LBB19_38
LBB19_2:
	ldr	x20, [x5, #8]
	tbnz	w20, #0, LBB19_5
; %bb.3:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB19_140
; %bb.4:
	add	w8, w8, #1
	str	w8, [x20]
LBB19_5:
	ldr	x22, [x5, #16]
	tbnz	w22, #0, LBB19_8
; %bb.6:
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB19_142
; %bb.7:
	add	w8, w8, #1
	str	w8, [x22]
LBB19_8:
	ldr	w8, [x5]
	cmp	w8, #2
	b.lt	LBB19_130
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x5]
LBB19_10:
	ldr	x25, [x21, #8]
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB19_132
; %bb.11:
	add	w8, w8, #1
	str	w8, [x21]
LBB19_12:
	bl	_lean_inc_heartbeat
	mov	w0, #32                         ; =0x20
	bl	_mi_malloc_small
	cbz	x0, LBB19_188
; %bb.13:
	mov	x26, x0
Lloh28:
	adrp	x8, lCPI19_0@PAGE
Lloh29:
	ldr	d0, [x8, lCPI19_0@PAGEOFF]
	lsl	x8, x25, #1
	sub	x8, x8, #1
	str	d0, [x0]
	mov	w9, #1                          ; =0x1
	stp	x21, x9, [x0, #8]
	str	x8, [x0, #24]
	mov	x1, x20
	mov	w2, #1                          ; =0x1
	bl	_l_Substring_nextn
	mov	x25, x0
	ldr	w8, [x26]
	cmp	w8, #2
	b.lt	LBB19_134
; %bb.14:
	sub	w8, w8, #1
	str	w8, [x26]
LBB19_15:
	mov	x0, x21
	mov	w1, #1                          ; =0x1
	mov	x2, x25
	bl	_lean_string_utf8_extract
	mov	x20, x0
	tbnz	w25, #0, LBB19_18
; %bb.16:
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB19_144
; %bb.17:
	sub	w8, w8, #1
	str	w8, [x25]
LBB19_18:
Lloh30:
	adrp	x8, __MergedGlobals@PAGE+16
Lloh31:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+16]
	ldr	x4, [x24, #8]
	mov	x0, x20
	mov	w2, #1                          ; =0x1
	mov	x3, x24
	mov	x5, #0                          ; =0x0
	mov	x6, x1
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	mov	x26, x0
	ldr	w8, [x0]
	ldr	x25, [x0, #8]
	cmp	w8, #1
	b.ne	LBB19_42
; %bb.19:
	ldr	x0, [x26, #16]
	tbnz	w0, #0, LBB19_22
; %bb.20:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB19_146
; %bb.21:
	sub	w8, w8, #1
	str	w8, [x0]
LBB19_22:
	tbnz	w25, #0, LBB19_50
; %bb.23:
	ldrb	w8, [x25, #7]
	cbz	w8, LBB19_51
LBB19_24:
	ldr	w8, [x25]
	ldr	x27, [x25, #8]
	cmp	w8, #1
	b.ne	LBB19_76
; %bb.25:
	tbnz	w27, #0, LBB19_112
; %bb.26:
	ldrb	w8, [x27, #7]
	cbz	w8, LBB19_113
LBB19_27:
	tbnz	w22, #0, LBB19_30
; %bb.28:
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB19_174
; %bb.29:
	sub	w8, w8, #1
	str	w8, [x22]
LBB19_30:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB19_158
; %bb.31:
	sub	w8, w8, #1
	str	w8, [x21]
LBB19_32:
	ldr	w8, [x27]
	subs	w9, w8, #1
	b.ne	LBB19_116
; %bb.33:
	ldr	x0, [x27, #8]
	tbnz	w0, #0, LBB19_36
; %bb.34:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB19_182
; %bb.35:
	sub	w8, w8, #1
	str	w8, [x0]
LBB19_36:
	str	x20, [x27, #8]
	b	LBB19_121
LBB19_37:
	lsr	x8, x5, #1
	cbnz	w8, LBB19_2
LBB19_38:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB19_136
; %bb.39:
	sub	w8, w8, #1
	str	w8, [x21]
LBB19_40:
	ldr	w8, [x26]
	cmp	w8, #1
	b.lt	LBB19_138
; %bb.41:
	add	w8, w8, #1
	str	w8, [x26]
	b	LBB19_129
LBB19_42:
	tbnz	w25, #0, LBB19_45
; %bb.43:
	ldr	w8, [x25]
	cmp	w8, #1
	b.lt	LBB19_148
; %bb.44:
	add	w8, w8, #1
	str	w8, [x25]
LBB19_45:
	tbnz	w26, #0, LBB19_48
; %bb.46:
	ldr	w8, [x26]
	cmp	w8, #2
	b.lt	LBB19_150
; %bb.47:
	sub	w8, w8, #1
	str	w8, [x26]
LBB19_48:
	tbnz	w25, #0, LBB19_54
; %bb.49:
	ldrb	w8, [x25, #7]
	cbnz	w8, LBB19_55
	b	LBB19_101
LBB19_50:
	lsr	x8, x25, #1
	cbnz	w8, LBB19_24
LBB19_51:
	mov	x0, x26
	bl	_lean_free_object
	ldr	w8, [x20]
	cmp	w8, #2
	b.ge	LBB19_102
LBB19_52:
	cbz	w8, LBB19_103
; %bb.53:
	mov	x0, x20
	bl	_lean_dec_ref_cold
	b	LBB19_103
LBB19_54:
	lsr	x8, x25, #1
	cbz	w8, LBB19_101
LBB19_55:
	ldr	x26, [x25, #8]
	tbnz	w26, #0, LBB19_58
; %bb.56:
	ldr	w8, [x26]
	cmp	w8, #1
	b.lt	LBB19_154
; %bb.57:
	add	w8, w8, #1
	str	w8, [x26]
LBB19_58:
	ldr	w8, [x25]
	subs	w9, w8, #1
	b.ne	LBB19_94
; %bb.59:
	ldr	x0, [x25, #8]
	tbnz	w0, #0, LBB19_62
; %bb.60:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB19_166
; %bb.61:
	sub	w8, w8, #1
	str	w8, [x0]
LBB19_62:
	mov	w8, #1                          ; =0x1
	str	x8, [x25, #8]
	tbz	w26, #0, LBB19_97
LBB19_63:
	lsr	x8, x26, #1
	cbz	w8, LBB19_98
LBB19_64:
	tbnz	w22, #0, LBB19_67
; %bb.65:
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB19_160
; %bb.66:
	sub	w8, w8, #1
	str	w8, [x22]
LBB19_67:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB19_152
; %bb.68:
	sub	w8, w8, #1
	str	w8, [x21]
LBB19_69:
	ldr	w8, [x26]
	subs	w9, w8, #1
	b.ne	LBB19_104
; %bb.70:
	ldr	x0, [x26, #8]
	tbnz	w0, #0, LBB19_73
; %bb.71:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB19_176
; %bb.72:
	sub	w8, w8, #1
	str	w8, [x0]
LBB19_73:
	mov	w8, #1                          ; =0x1
	str	x8, [x26, #8]
	tbz	w26, #0, LBB19_107
LBB19_74:
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB19_188
; %bb.75:
	mov	x26, x0
Lloh32:
	adrp	x8, lCPI19_1@PAGE
Lloh33:
	ldr	d0, [x8, lCPI19_1@PAGEOFF]
	str	d0, [x0]
	str	x20, [x0, #8]
	tbz	w25, #0, LBB19_110
	b	LBB19_108
LBB19_76:
	tbnz	w27, #0, LBB19_79
; %bb.77:
	ldr	w8, [x27]
	cmp	w8, #1
	b.lt	LBB19_168
; %bb.78:
	add	w8, w8, #1
	str	w8, [x27]
LBB19_79:
	tbnz	w25, #0, LBB19_82
; %bb.80:
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB19_170
; %bb.81:
	sub	w8, w8, #1
	str	w8, [x25]
LBB19_82:
	tbnz	w27, #0, LBB19_114
; %bb.83:
	ldrb	w8, [x27, #7]
	cbz	w8, LBB19_115
LBB19_84:
	tbnz	w22, #0, LBB19_87
; %bb.85:
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB19_178
; %bb.86:
	sub	w8, w8, #1
	str	w8, [x22]
LBB19_87:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB19_162
; %bb.88:
	sub	w8, w8, #1
	str	w8, [x21]
LBB19_89:
	ldr	w8, [x27]
	subs	w9, w8, #1
	b.ne	LBB19_122
; %bb.90:
	ldr	x0, [x27, #8]
	tbnz	w0, #0, LBB19_93
; %bb.91:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB19_184
; %bb.92:
	sub	w8, w8, #1
	str	w8, [x0]
LBB19_93:
	mov	w8, #1                          ; =0x1
	str	x8, [x27, #8]
	tbnz	w27, #0, LBB19_125
	b	LBB19_127
LBB19_94:
	cmp	w8, #2
	b.lt	LBB19_156
; %bb.95:
	str	w9, [x25]
LBB19_96:
	mov	w25, #1                         ; =0x1
	tbnz	w26, #0, LBB19_63
LBB19_97:
	ldrb	w8, [x26, #7]
	cbnz	w8, LBB19_64
LBB19_98:
	tbnz	w25, #0, LBB19_101
; %bb.99:
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB19_172
; %bb.100:
	sub	w8, w8, #1
	str	w8, [x25]
LBB19_101:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB19_52
LBB19_102:
	sub	w8, w8, #1
	str	w8, [x20]
LBB19_103:
	mov	x0, x21
	mov	x1, x24
	mov	x2, x23
	mov	x3, x19
	mov	x4, x22
	mov	x5, x23
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	b	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
LBB19_104:
	cmp	w8, #2
	b.lt	LBB19_164
; %bb.105:
	str	w9, [x26]
LBB19_106:
	mov	w26, #1                         ; =0x1
	tbnz	w26, #0, LBB19_74
LBB19_107:
	str	x20, [x26, #8]
	tbz	w25, #0, LBB19_110
LBB19_108:
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB19_188
; %bb.109:
	mov	x25, x0
Lloh34:
	adrp	x8, lCPI19_1@PAGE
Lloh35:
	ldr	d0, [x8, lCPI19_1@PAGEOFF]
	str	d0, [x0]
LBB19_110:
	str	x26, [x25, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB19_188
; %bb.111:
	mov	x26, x0
Lloh36:
	adrp	x8, lCPI19_2@PAGE
Lloh37:
	ldr	d0, [x8, lCPI19_2@PAGEOFF]
	str	d0, [x0]
	str	x25, [x0, #8]
	b	LBB19_121
LBB19_112:
	lsr	x8, x27, #1
	cbnz	w8, LBB19_27
LBB19_113:
	mov	x0, x25
	bl	_lean_free_object
	mov	x0, x26
	bl	_lean_free_object
	ldr	w8, [x20]
	cmp	w8, #2
	b.ge	LBB19_102
	b	LBB19_52
LBB19_114:
	lsr	x8, x27, #1
	cbnz	w8, LBB19_84
LBB19_115:
	mov	x0, x26
	bl	_lean_free_object
	ldr	w8, [x20]
	cmp	w8, #2
	b.ge	LBB19_102
	b	LBB19_52
LBB19_116:
	tbnz	w27, #0, LBB19_119
; %bb.117:
	cmp	w8, #2
	b.lt	LBB19_186
; %bb.118:
	str	w9, [x27]
LBB19_119:
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB19_188
; %bb.120:
Lloh38:
	adrp	x8, lCPI19_1@PAGE
Lloh39:
	ldr	d0, [x8, lCPI19_1@PAGEOFF]
	str	d0, [x0]
	str	x20, [x0, #8]
	str	x0, [x25, #8]
LBB19_121:
	str	x19, [x26, #16]
	b	LBB19_129
LBB19_122:
	cmp	w8, #2
	b.lt	LBB19_180
; %bb.123:
	str	w9, [x27]
LBB19_124:
	mov	w27, #1                         ; =0x1
	tbz	w27, #0, LBB19_127
LBB19_125:
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB19_188
; %bb.126:
	mov	x27, x0
Lloh40:
	adrp	x8, lCPI19_1@PAGE
Lloh41:
	ldr	d0, [x8, lCPI19_1@PAGEOFF]
	str	d0, [x0]
LBB19_127:
	str	x20, [x27, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #16                         ; =0x10
	bl	_mi_malloc_small
	cbz	x0, LBB19_188
; %bb.128:
Lloh42:
	adrp	x8, lCPI19_1@PAGE
Lloh43:
	ldr	d0, [x8, lCPI19_1@PAGEOFF]
	str	d0, [x0]
	str	x27, [x0, #8]
	stp	x0, x19, [x26, #8]
LBB19_129:
	mov	x0, x26
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB19_130:
	cbz	w8, LBB19_10
; %bb.131:
	mov	x0, x5
	bl	_lean_dec_ref_cold
	b	LBB19_10
LBB19_132:
	cbz	w8, LBB19_12
; %bb.133:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x21]
	b	LBB19_12
LBB19_134:
	cbz	w8, LBB19_15
; %bb.135:
	mov	x0, x26
	bl	_lean_dec_ref_cold
	b	LBB19_15
LBB19_136:
	cbz	w8, LBB19_40
; %bb.137:
	mov	x0, x21
	bl	_lean_dec_ref_cold
	b	LBB19_40
LBB19_138:
	cbz	w8, LBB19_129
; %bb.139:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x26]
	b	LBB19_129
LBB19_140:
	cbz	w8, LBB19_5
; %bb.141:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB19_5
LBB19_142:
	cbz	w8, LBB19_8
; %bb.143:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB19_8
LBB19_144:
	cbz	w8, LBB19_18
; %bb.145:
	mov	x0, x25
	bl	_lean_dec_ref_cold
	b	LBB19_18
LBB19_146:
	cbz	w8, LBB19_22
; %bb.147:
	bl	_lean_dec_ref_cold
	b	LBB19_22
LBB19_148:
	cbz	w8, LBB19_45
; %bb.149:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x25]
	b	LBB19_45
LBB19_150:
	cbz	w8, LBB19_48
; %bb.151:
	mov	x0, x26
	bl	_lean_dec_ref_cold
	b	LBB19_48
LBB19_152:
	cbz	w8, LBB19_69
; %bb.153:
	mov	x0, x21
	bl	_lean_dec_ref_cold
	b	LBB19_69
LBB19_154:
	cbz	w8, LBB19_58
; %bb.155:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x26]
	b	LBB19_58
LBB19_156:
	cbz	w8, LBB19_96
; %bb.157:
	mov	x0, x25
	bl	_lean_dec_ref_cold
	b	LBB19_96
LBB19_158:
	cbz	w8, LBB19_32
; %bb.159:
	mov	x0, x21
	bl	_lean_dec_ref_cold
	b	LBB19_32
LBB19_160:
	cbz	w8, LBB19_67
; %bb.161:
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB19_67
LBB19_162:
	cbz	w8, LBB19_89
; %bb.163:
	mov	x0, x21
	bl	_lean_dec_ref_cold
	b	LBB19_89
LBB19_164:
	cbz	w8, LBB19_106
; %bb.165:
	mov	x0, x26
	bl	_lean_dec_ref_cold
	b	LBB19_106
LBB19_166:
	cbz	w8, LBB19_62
; %bb.167:
	bl	_lean_dec_ref_cold
	mov	w8, #1                          ; =0x1
	str	x8, [x25, #8]
	tbnz	w26, #0, LBB19_63
	b	LBB19_97
LBB19_168:
	cbz	w8, LBB19_79
; %bb.169:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x27]
	b	LBB19_79
LBB19_170:
	cbz	w8, LBB19_82
; %bb.171:
	mov	x0, x25
	bl	_lean_dec_ref_cold
	b	LBB19_82
LBB19_172:
	cbz	w8, LBB19_101
; %bb.173:
	mov	x0, x25
	bl	_lean_dec_ref_cold
	b	LBB19_101
LBB19_174:
	cbz	w8, LBB19_30
; %bb.175:
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB19_30
LBB19_176:
	cbz	w8, LBB19_73
; %bb.177:
	bl	_lean_dec_ref_cold
	mov	w8, #1                          ; =0x1
	str	x8, [x26, #8]
	tbz	w26, #0, LBB19_107
	b	LBB19_74
LBB19_178:
	cbz	w8, LBB19_87
; %bb.179:
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB19_87
LBB19_180:
	cbz	w8, LBB19_124
; %bb.181:
	mov	x0, x27
	bl	_lean_dec_ref_cold
	b	LBB19_124
LBB19_182:
	cbz	w8, LBB19_36
; %bb.183:
	bl	_lean_dec_ref_cold
	b	LBB19_36
LBB19_184:
	cbz	w8, LBB19_93
; %bb.185:
	bl	_lean_dec_ref_cold
	mov	w8, #1                          ; =0x1
	str	x8, [x27, #8]
	tbnz	w27, #0, LBB19_125
	b	LBB19_127
LBB19_186:
	cbz	w8, LBB19_119
; %bb.187:
	mov	x0, x27
	bl	_lean_dec_ref_cold
	b	LBB19_119
LBB19_188:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh28, Lloh29
	.loh AdrpLdr	Lloh30, Lloh31
	.loh AdrpLdr	Lloh32, Lloh33
	.loh AdrpLdr	Lloh34, Lloh35
	.loh AdrpLdr	Lloh36, Lloh37
	.loh AdrpLdr	Lloh38, Lloh39
	.loh AdrpLdr	Lloh40, Lloh41
	.loh AdrpLdr	Lloh42, Lloh43
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1 ; -- Begin function l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1
	.globl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1
	.p2align	2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1: ; @l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1
	.cfi_startproc
; %bb.0:
	b	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_matchPrefix    ; -- Begin function l_Array_matchPrefix
	.globl	_l_Array_matchPrefix
	.p2align	2
_l_Array_matchPrefix:                   ; @l_Array_matchPrefix
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x1
	mov	x19, x0
	ldr	x8, [x1, #24]
	and	x8, x8, #0x7fffffffffffffff
	adds	x0, x8, #1
	b.mi	LBB21_6
; %bb.1:
	mov	w8, #1                          ; =0x1
	orr	x0, x8, x0, lsl #1
	bl	_l_List_range
	bl	_l_List_reverse___redArg
	mov	x21, x0
Lloh44:
	adrp	x8, __MergedGlobals@PAGE+16
Lloh45:
	ldr	x2, [x8, __MergedGlobals@PAGEOFF+16]
	tbnz	w21, #0, LBB21_7
LBB21_2:
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB21_27
; %bb.3:
	add	w8, w8, #1
	str	w8, [x21]
LBB21_4:
	mov	x0, x20
	mov	x1, x19
	mov	w3, #1                          ; =0x1
	mov	x5, x21
	mov	x6, x2
	bl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB21_29
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x21]
	b	LBB21_8
LBB21_6:
	bl	_lean_big_usize_to_nat
	bl	_l_List_range
	bl	_l_List_reverse___redArg
	mov	x21, x0
Lloh46:
	adrp	x8, __MergedGlobals@PAGE+16
Lloh47:
	ldr	x2, [x8, __MergedGlobals@PAGEOFF+16]
	tbz	w21, #0, LBB21_2
LBB21_7:
	mov	x0, x20
	mov	x1, x19
	mov	w3, #1                          ; =0x1
	mov	x5, x21
	mov	x6, x2
	bl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
LBB21_8:
	ldr	x19, [x0, #8]
	tbnz	w19, #0, LBB21_11
; %bb.9:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB21_31
; %bb.10:
	add	w8, w8, #1
	str	w8, [x19]
LBB21_11:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB21_23
; %bb.12:
	sub	w8, w8, #1
	str	w8, [x0]
LBB21_13:
	tbnz	w19, #0, LBB21_21
; %bb.14:
	ldrb	w8, [x19, #7]
	cbz	w8, LBB21_22
LBB21_15:
	ldr	x0, [x19, #8]
	tbnz	w0, #0, LBB21_18
; %bb.16:
	ldr	w8, [x0]
	cmp	w8, #1
	b.lt	LBB21_33
; %bb.17:
	add	w8, w8, #1
	str	w8, [x0]
LBB21_18:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB21_25
; %bb.19:
	sub	w8, w8, #1
	str	w8, [x19]
LBB21_20:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB21_21:
	lsr	x8, x19, #1
	cbnz	w8, LBB21_15
LBB21_22:
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB21_23:
	cbz	w8, LBB21_13
; %bb.24:
	bl	_lean_dec_ref_cold
	b	LBB21_13
LBB21_25:
	cbz	w8, LBB21_20
; %bb.26:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB21_27:
	cbz	w8, LBB21_4
; %bb.28:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x21]
	b	LBB21_4
LBB21_29:
	cbz	w8, LBB21_8
; %bb.30:
	mov	x19, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x19
	b	LBB21_8
LBB21_31:
	cbz	w8, LBB21_11
; %bb.32:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB21_11
LBB21_33:
	cbz	w8, LBB21_18
; %bb.34:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x0]
	b	LBB21_18
	.loh AdrpLdr	Lloh44, Lloh45
	.loh AdrpLdr	Lloh46, Lloh47
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x22, x6
	mov	x8, x4
	mov	x21, x3
	mov	x20, x1
	mov	x19, x0
	ldr	x4, [x4, #8]
	tbnz	w8, #0, LBB22_3
; %bb.1:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB22_23
; %bb.2:
	sub	w9, w9, #1
	str	w9, [x8]
LBB22_3:
	ldr	x23, [x5, #8]
	tbnz	w5, #0, LBB22_6
; %bb.4:
	ldr	w8, [x5]
	cmp	w8, #2
	b.lt	LBB22_25
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x5]
LBB22_6:
	mov	x0, x19
	mov	x1, x20
	mov	x3, x21
	mov	x5, x23
	mov	x6, x22
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB22_15
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x22]
LBB22_8:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB22_17
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x21]
LBB22_10:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB22_19
; %bb.11:
	sub	w8, w8, #1
	str	w8, [x20]
LBB22_12:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB22_21
; %bb.13:
	sub	w8, w8, #1
	str	w8, [x19]
LBB22_14:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB22_15:
	cbz	w8, LBB22_8
; %bb.16:
	mov	x23, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x23
	b	LBB22_8
LBB22_17:
	cbz	w8, LBB22_10
; %bb.18:
	mov	x22, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB22_10
LBB22_19:
	cbz	w8, LBB22_12
; %bb.20:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB22_12
LBB22_21:
	cbz	w8, LBB22_14
; %bb.22:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB22_23:
	cbz	w9, LBB22_3
; %bb.24:
	mov	x0, x8
	stp	x5, x2, [sp]                    ; 16-byte Folded Spill
	mov	x23, x4
	bl	_lean_dec_ref_cold
	ldp	x5, x2, [sp]                    ; 16-byte Folded Reload
	mov	x4, x23
	b	LBB22_3
LBB22_25:
	cbz	w8, LBB22_6
; %bb.26:
	mov	x0, x5
	stp	x4, x2, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x4, x2, [sp]                    ; 16-byte Folded Reload
	b	LBB22_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed ; -- Begin function l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed
	.globl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed
	.p2align	2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed: ; @l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg___boxed
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x21, x5
	mov	x20, x2
	mov	x19, x1
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB23_7
; %bb.1:
	sub	w8, w8, #1
	str	w8, [x21]
LBB23_2:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB23_9
; %bb.3:
	sub	w8, w8, #1
	str	w8, [x20]
LBB23_4:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB23_11
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x19]
LBB23_6:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB23_7:
	cbz	w8, LBB23_2
; %bb.8:
	mov	x22, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB23_2
LBB23_9:
	cbz	w8, LBB23_4
; %bb.10:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB23_4
LBB23_11:
	cbz	w8, LBB23_6
; %bb.12:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed ; -- Begin function l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed
	.globl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed
	.p2align	2
_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed: ; @l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___boxed
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x22, x6
	mov	x21, x4
	mov	x20, x2
	mov	x19, x1
	mov	x4, x5
	mov	x5, x6
	bl	_l_List_forIn_x27_loop___at___List_forIn_x27_loop___at___Array_matchPrefix_spec__1_spec__1___redArg
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB24_10
; %bb.1:
	sub	w8, w8, #1
	str	w8, [x22]
LBB24_2:
	tbnz	w21, #0, LBB24_5
; %bb.3:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB24_16
; %bb.4:
	sub	w8, w8, #1
	str	w8, [x21]
LBB24_5:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB24_12
; %bb.6:
	sub	w8, w8, #1
	str	w8, [x20]
LBB24_7:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB24_14
; %bb.8:
	sub	w8, w8, #1
	str	w8, [x19]
LBB24_9:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB24_10:
	cbz	w8, LBB24_2
; %bb.11:
	mov	x23, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x23
	b	LBB24_2
LBB24_12:
	cbz	w8, LBB24_7
; %bb.13:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB24_7
LBB24_14:
	cbz	w8, LBB24_9
; %bb.15:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB24_16:
	cbz	w8, LBB24_5
; %bb.17:
	mov	x22, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB24_5
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed ; -- Begin function l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed
	.globl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed
	.p2align	2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed: ; @l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg___boxed
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x22, x6
	mov	x21, x4
	mov	x20, x2
	mov	x19, x1
	bl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB25_10
; %bb.1:
	sub	w8, w8, #1
	str	w8, [x22]
LBB25_2:
	tbnz	w21, #0, LBB25_5
; %bb.3:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB25_16
; %bb.4:
	sub	w8, w8, #1
	str	w8, [x21]
LBB25_5:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB25_12
; %bb.6:
	sub	w8, w8, #1
	str	w8, [x20]
LBB25_7:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB25_14
; %bb.8:
	sub	w8, w8, #1
	str	w8, [x19]
LBB25_9:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB25_10:
	cbz	w8, LBB25_2
; %bb.11:
	mov	x23, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x23
	b	LBB25_2
LBB25_12:
	cbz	w8, LBB25_7
; %bb.13:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB25_7
LBB25_14:
	cbz	w8, LBB25_9
; %bb.15:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB25_16:
	cbz	w8, LBB25_5
; %bb.17:
	mov	x22, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB25_5
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed ; -- Begin function l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed
	.globl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed
	.p2align	2
_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed: ; @l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___boxed
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x22, x6
	mov	x21, x4
	mov	x20, x2
	mov	x19, x1
	bl	_l_List_forIn_x27_loop___at___Array_matchPrefix_spec__1___redArg
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB26_10
; %bb.1:
	sub	w8, w8, #1
	str	w8, [x22]
LBB26_2:
	tbnz	w21, #0, LBB26_5
; %bb.3:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB26_16
; %bb.4:
	sub	w8, w8, #1
	str	w8, [x21]
LBB26_5:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB26_12
; %bb.6:
	sub	w8, w8, #1
	str	w8, [x20]
LBB26_7:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB26_14
; %bb.8:
	sub	w8, w8, #1
	str	w8, [x19]
LBB26_9:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB26_10:
	cbz	w8, LBB26_2
; %bb.11:
	mov	x23, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x23
	b	LBB26_2
LBB26_12:
	cbz	w8, LBB26_7
; %bb.13:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB26_7
LBB26_14:
	cbz	w8, LBB26_9
; %bb.15:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB26_16:
	cbz	w8, LBB26_5
; %bb.17:
	mov	x22, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB26_5
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_Array_matchPrefix___boxed ; -- Begin function l_Array_matchPrefix___boxed
	.globl	_l_Array_matchPrefix___boxed
	.p2align	2
_l_Array_matchPrefix___boxed:           ; @l_Array_matchPrefix___boxed
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	bl	_l_Array_matchPrefix
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB27_3
; %bb.1:
	sub	w8, w8, #1
	str	w8, [x19]
LBB27_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB27_3:
	cbz	w8, LBB27_2
; %bb.4:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0 ; -- Begin function l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	.globl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	.p2align	2
_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0: ; @l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x0
	mov	x0, x1
	bl	_lean_get_stdout
	ldr	x20, [x0, #8]
	tbnz	w20, #0, LBB28_3
; %bb.1:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB28_18
; %bb.2:
	add	w8, w8, #1
	str	w8, [x20]
LBB28_3:
	ldr	x2, [x0, #16]
	tbnz	w2, #0, LBB28_6
; %bb.4:
	ldr	w8, [x2]
	cmp	w8, #1
	b.lt	LBB28_20
; %bb.5:
	add	w8, w8, #1
	str	w8, [x2]
LBB28_6:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB28_14
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x0]
LBB28_8:
	ldr	x0, [x20, #40]
	ldr	w8, [x0]
	cmp	w8, #1
	b.lt	LBB28_16
; %bb.9:
	add	w8, w8, #1
	str	w8, [x0]
LBB28_10:
	tbnz	w20, #0, LBB28_13
; %bb.11:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB28_22
; %bb.12:
	sub	w8, w8, #1
	str	w8, [x20]
LBB28_13:
	mov	x1, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_lean_apply_2
LBB28_14:
	cbz	w8, LBB28_8
; %bb.15:
	mov	x21, x2
	bl	_lean_dec_ref_cold
	mov	x2, x21
	b	LBB28_8
LBB28_16:
	cbz	w8, LBB28_10
; %bb.17:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x0]
	b	LBB28_10
LBB28_18:
	cbz	w8, LBB28_3
; %bb.19:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB28_3
LBB28_20:
	cbz	w8, LBB28_6
; %bb.21:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x2]
	b	LBB28_6
LBB28_22:
	cbz	w8, LBB28_13
; %bb.23:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x20
	mov	x20, x2
	bl	_lean_dec_ref_cold
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_lean_apply_2
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_IO_println___at___T_check_spec__0 ; -- Begin function l_IO_println___at___T_check_spec__0
	.globl	_l_IO_println___at___T_check_spec__0
	.p2align	2
_l_IO_println___at___T_check_spec__0:   ; @l_IO_println___at___T_check_spec__0
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
lCPI30_0:
	.long	1                               ; 0x1
	.long	4110417944                      ; 0xf5000018
lCPI30_1:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x21, x6
	mov	x19, x0
	subs	x27, x4, x3
	b.ne	LBB30_7
; %bb.1:
	mov	x22, x5
LBB30_2:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB30_145
; %bb.3:
	sub	w8, w8, #1
	str	w8, [x19]
LBB30_4:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB30_150
; %bb.5:
Lloh48:
	adrp	x8, lCPI30_1@PAGE
Lloh49:
	ldr	d0, [x8, lCPI30_1@PAGEOFF]
	str	d0, [x0]
	stp	x22, x21, [x0, #8]
LBB30_6:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB30_7:
	mov	x20, x1
	add	x8, x2, x3, lsl #3
	add	x28, x8, #24
Lloh50:
	adrp	x26, _l_instDecidableEqString___boxed@GOTPAGE
Lloh51:
	ldr	x26, [x26, _l_instDecidableEqString___boxed@GOTPAGEOFF]
Lloh52:
	adrp	x8, lCPI30_0@PAGE
Lloh53:
	ldr	d8, [x8, lCPI30_0@PAGEOFF]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB30_12
LBB30_8:                                ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x21]
LBB30_9:                                ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB30_106
; %bb.10:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
LBB30_11:                               ;   in Loop: Header=BB30_12 Depth=1
	add	x28, x28, #8
	subs	x27, x27, #1
	b.eq	LBB30_2
LBB30_12:                               ; =>This Inner Loop Header: Depth=1
	ldr	x22, [x28]
	tbnz	w22, #0, LBB30_15
; %bb.13:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB30_108
; %bb.14:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB30_15:                               ;   in Loop: Header=BB30_12 Depth=1
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB30_150
; %bb.16:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	x25, x0
	str	d8, [x0]
	str	x26, [x0, #8]
	mov	w8, #2                          ; =0x2
	str	w8, [x0, #16]
	ldr	x8, [x22, #8]
	ldr	w9, [x19]
	cmp	w9, #1
	b.lt	LBB30_96
; %bb.17:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w9, w9, #1
	str	w9, [x19]
LBB30_18:                               ;   in Loop: Header=BB30_12 Depth=1
	lsl	x8, x8, #1
	sub	x3, x8, #1
	mov	x0, x22
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	bl	_l_Lean_Data_Trie_matchPrefix___redArg
	mov	x24, x0
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB30_98
; %bb.19:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB30_20:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	x0, x20
	mov	x1, x22
	bl	_l_Array_matchPrefix
	mov	x23, x0
	tbnz	w23, #0, LBB30_23
; %bb.21:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x23]
	cmp	w8, #1
	b.lt	LBB30_110
; %bb.22:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x23]
LBB30_23:                               ;   in Loop: Header=BB30_12 Depth=1
	tbnz	w24, #0, LBB30_26
; %bb.24:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB30_112
; %bb.25:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x24]
LBB30_26:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_l_Option_instDecidableEq_decEq___redArg
	cbz	w0, LBB30_33
; %bb.27:                               ;   in Loop: Header=BB30_12 Depth=1
	tbnz	w23, #0, LBB30_30
; %bb.28:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x23]
	cmp	w8, #2
	b.lt	LBB30_117
; %bb.29:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x23]
LBB30_30:                               ;   in Loop: Header=BB30_12 Depth=1
	tbnz	w24, #0, LBB30_73
; %bb.31:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x24]
	cmp	w8, #2
	b.lt	LBB30_119
; %bb.32:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x24]
	b	LBB30_73
LBB30_33:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh54:
	adrp	x25, __MergedGlobals@PAGE+24
Lloh55:
	add	x25, x25, __MergedGlobals@PAGEOFF+24
	ldr	x0, [x25]
	mov	x1, x22
	bl	_lean_string_append
	ldr	x1, [x25, #8]
	bl	_lean_string_append
	tbnz	w24, #0, LBB30_59
; %bb.34:                               ;   in Loop: Header=BB30_12 Depth=1
	ldrb	w8, [x24, #7]
	cbz	w8, LBB30_60
LBB30_35:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	x25, [x24, #8]
	tbnz	w25, #0, LBB30_38
; %bb.36:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x25]
	cmp	w8, #1
	b.lt	LBB30_137
; %bb.37:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x25]
LBB30_38:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	x20, x0
	ldr	w8, [x24]
	cmp	w8, #2
	b.lt	LBB30_125
; %bb.39:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x24]
LBB30_40:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh56:
	adrp	x8, __MergedGlobals@PAGE+48
Lloh57:
	ldr	x26, [x8, __MergedGlobals@PAGEOFF+48]
	mov	x0, x25
	bl	_l_addParenHeuristic
	mov	x24, x0
	mov	x0, x26
	mov	x1, x24
	bl	_lean_string_append
	ldr	w8, [x24]
	cmp	w8, #2
	b.lt	LBB30_127
; %bb.41:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x24]
Lloh58:
	adrp	x26, _l_instDecidableEqString___boxed@GOTPAGE
Lloh59:
	ldr	x26, [x26, _l_instDecidableEqString___boxed@GOTPAGEOFF]
LBB30_42:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh60:
	adrp	x8, __MergedGlobals@PAGE+56
Lloh61:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+56]
	bl	_lean_string_append
	mov	x24, x0
	mov	x0, x20
	ldr	x20, [sp, #8]                   ; 8-byte Folded Reload
	mov	x1, x24
	bl	_lean_string_append
	ldr	w8, [x24]
	cmp	w8, #2
	b.lt	LBB30_61
LBB30_43:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x24]
LBB30_44:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh62:
	adrp	x8, __MergedGlobals@PAGE+64
Lloh63:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+64]
	bl	_lean_string_append
	tbnz	w23, #0, LBB30_63
; %bb.45:                               ;   in Loop: Header=BB30_12 Depth=1
	ldrb	w8, [x23, #7]
	cbz	w8, LBB30_64
LBB30_46:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	x24, [x23, #8]
	tbnz	w24, #0, LBB30_49
; %bb.47:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB30_139
; %bb.48:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x24]
LBB30_49:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	x26, x0
	ldr	w8, [x23]
	cmp	w8, #2
	b.lt	LBB30_129
; %bb.50:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x23]
LBB30_51:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh64:
	adrp	x8, __MergedGlobals@PAGE+48
Lloh65:
	ldr	x25, [x8, __MergedGlobals@PAGEOFF+48]
	mov	x0, x24
	bl	_l_addParenHeuristic
	mov	x23, x0
	mov	x0, x25
	mov	x1, x23
	bl	_lean_string_append
	ldr	w8, [x23]
	cmp	w8, #2
	b.lt	LBB30_131
; %bb.52:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x23]
LBB30_53:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh66:
	adrp	x8, __MergedGlobals@PAGE+56
Lloh67:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+56]
	bl	_lean_string_append
	mov	x23, x0
	mov	x0, x26
Lloh68:
	adrp	x26, _l_instDecidableEqString___boxed@GOTPAGE
Lloh69:
	ldr	x26, [x26, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	mov	x1, x23
	bl	_lean_string_append
	ldr	w8, [x23]
	cmp	w8, #2
	b.lt	LBB30_65
LBB30_54:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x23]
LBB30_55:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh70:
	adrp	x8, __MergedGlobals@PAGE+96
Lloh71:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+96]
	bl	_lean_string_append
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x21
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbnz	w0, #0, LBB30_67
; %bb.56:                               ;   in Loop: Header=BB30_12 Depth=1
	ldrb	w8, [x0, #7]
	cbz	w8, LBB30_68
LBB30_57:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB30_133
; %bb.58:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
	b	LBB30_86
LBB30_59:                               ;   in Loop: Header=BB30_12 Depth=1
	lsr	x8, x24, #1
	cbnz	w8, LBB30_35
LBB30_60:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh72:
	adrp	x8, __MergedGlobals@PAGE+40
Lloh73:
	ldr	x24, [x8, __MergedGlobals@PAGEOFF+40]
	mov	x1, x24
	bl	_lean_string_append
	ldr	w8, [x24]
	cmp	w8, #2
	b.ge	LBB30_43
LBB30_61:                               ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_44
; %bb.62:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	x20, x0
	mov	x0, x24
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldr	x20, [sp, #8]                   ; 8-byte Folded Reload
	b	LBB30_44
LBB30_63:                               ;   in Loop: Header=BB30_12 Depth=1
	lsr	x8, x23, #1
	cbnz	w8, LBB30_46
LBB30_64:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh74:
	adrp	x8, __MergedGlobals@PAGE+40
Lloh75:
	ldr	x23, [x8, __MergedGlobals@PAGEOFF+40]
	mov	x1, x23
	bl	_lean_string_append
	ldr	w8, [x23]
	cmp	w8, #2
	b.ge	LBB30_54
LBB30_65:                               ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_55
; %bb.66:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	x20, x0
	mov	x0, x23
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldr	x20, [sp, #8]                   ; 8-byte Folded Reload
	b	LBB30_55
LBB30_67:                               ;   in Loop: Header=BB30_12 Depth=1
	lsr	x8, x0, #1
	cbnz	w8, LBB30_57
LBB30_68:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	x21, [x0, #16]
	tbnz	w21, #0, LBB30_71
; %bb.69:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB30_141
; %bb.70:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x21]
LBB30_71:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB30_135
; %bb.72:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
LBB30_73:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh76:
	adrp	x8, __MergedGlobals@PAGE+72
Lloh77:
	ldr	x0, [x8, __MergedGlobals@PAGEOFF+72]
	mov	x1, x22
	bl	_lean_string_append
	mov	x24, x0
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB30_150
; %bb.74:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	x23, x0
	str	d8, [x0]
	str	x26, [x0, #8]
	mov	w8, #2                          ; =0x2
	str	w8, [x0, #16]
Lloh78:
	adrp	x8, __MergedGlobals@PAGE+80
Lloh79:
	ldr	x2, [x8, __MergedGlobals@PAGEOFF+80]
	ldr	x8, [x24, #8]
	ldr	w9, [x19]
	cmp	w9, #1
	b.lt	LBB30_100
; %bb.75:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w9, w9, #1
	str	w9, [x19]
LBB30_76:                               ;   in Loop: Header=BB30_12 Depth=1
	lsl	x8, x8, #1
	sub	x3, x8, #1
	mov	x0, x24
	mov	x1, x19
	bl	_l_Lean_Data_Trie_matchPrefix___redArg
	mov	x25, x0
	ldr	w8, [x24]
	cmp	w8, #2
	b.lt	LBB30_102
; %bb.77:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x24]
LBB30_78:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB30_104
; %bb.79:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB30_80:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	x0, x20
	mov	x1, x22
	bl	_l_Array_matchPrefix
	mov	x2, x0
	mov	x0, x23
	mov	x1, x25
	bl	_l_Option_instDecidableEq_decEq___redArg
	cbz	w0, LBB30_83
; %bb.81:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB30_114
; %bb.82:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
	mov	w22, #1                         ; =0x1
	b	LBB30_11
LBB30_83:                               ;   in Loop: Header=BB30_12 Depth=1
Lloh80:
	adrp	x8, __MergedGlobals@PAGE+88
Lloh81:
	ldr	x0, [x8, __MergedGlobals@PAGEOFF+88]
	mov	x1, x22
	bl	_lean_string_append
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB30_121
; %bb.84:                               ;   in Loop: Header=BB30_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
LBB30_85:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x21
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
LBB30_86:                               ;   in Loop: Header=BB30_12 Depth=1
	tbnz	w0, #0, LBB30_88
; %bb.87:                               ;   in Loop: Header=BB30_12 Depth=1
	ldrb	w8, [x0, #7]
	cbz	w8, LBB30_89
	b	LBB30_143
LBB30_88:                               ;   in Loop: Header=BB30_12 Depth=1
	lsr	x8, x0, #1
	cbnz	w8, LBB30_143
LBB30_89:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	x22, [x0, #8]
	tbnz	w22, #0, LBB30_92
; %bb.90:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB30_123
; %bb.91:                               ;   in Loop: Header=BB30_12 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB30_92:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	x21, [x0, #16]
	tbnz	w21, #0, LBB30_9
; %bb.93:                               ;   in Loop: Header=BB30_12 Depth=1
	ldr	w8, [x21]
	cmp	w8, #1
	b.ge	LBB30_8
; %bb.94:                               ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_9
; %bb.95:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x21]
	b	LBB30_9
LBB30_96:                               ;   in Loop: Header=BB30_12 Depth=1
	cbz	w9, LBB30_18
; %bb.97:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	w9, #-1                         ; =0xffffffff
	ldadd	w9, w9, [x19]
	b	LBB30_18
LBB30_98:                               ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_20
; %bb.99:                               ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB30_20
LBB30_100:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w9, LBB30_76
; %bb.101:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w9, #-1                         ; =0xffffffff
	ldadd	w9, w9, [x19]
	b	LBB30_76
LBB30_102:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_78
; %bb.103:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x0, x24
	bl	_lean_dec_ref_cold
	b	LBB30_78
LBB30_104:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_80
; %bb.105:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB30_80
LBB30_106:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_11
; %bb.107:                              ;   in Loop: Header=BB30_12 Depth=1
	bl	_lean_dec_ref_cold
	b	LBB30_11
LBB30_108:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_15
; %bb.109:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB30_15
LBB30_110:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_23
; %bb.111:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x23]
	b	LBB30_23
LBB30_112:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_26
; %bb.113:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x24]
	b	LBB30_26
LBB30_114:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_116
; %bb.115:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x0, x22
	bl	_lean_dec_ref_cold
LBB30_116:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w22, #1                         ; =0x1
	b	LBB30_11
LBB30_117:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_30
; %bb.118:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x0, x23
	bl	_lean_dec_ref_cold
	b	LBB30_30
LBB30_119:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_73
; %bb.120:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x0, x24
	b	LBB30_136
LBB30_121:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_85
; %bb.122:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x20, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldr	x20, [sp, #8]                   ; 8-byte Folded Reload
	b	LBB30_85
LBB30_123:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_92
; %bb.124:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB30_92
LBB30_125:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_40
; %bb.126:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x0, x24
	bl	_lean_dec_ref_cold
	b	LBB30_40
LBB30_127:                              ;   in Loop: Header=BB30_12 Depth=1
Lloh82:
	adrp	x26, _l_instDecidableEqString___boxed@GOTPAGE
Lloh83:
	ldr	x26, [x26, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	cbz	w8, LBB30_42
; %bb.128:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x25, x0
	mov	x0, x24
	bl	_lean_dec_ref_cold
	mov	x0, x25
	b	LBB30_42
LBB30_129:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_51
; %bb.130:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x0, x23
	bl	_lean_dec_ref_cold
	b	LBB30_51
LBB30_131:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_53
; %bb.132:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x20, x0
	mov	x0, x23
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldr	x20, [sp, #8]                   ; 8-byte Folded Reload
	b	LBB30_53
LBB30_133:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_86
; %bb.134:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	x20, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldr	x20, [sp, #8]                   ; 8-byte Folded Reload
	b	LBB30_86
LBB30_135:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_73
LBB30_136:                              ;   in Loop: Header=BB30_12 Depth=1
	bl	_lean_dec_ref_cold
	b	LBB30_73
LBB30_137:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_38
; %bb.138:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x25]
	b	LBB30_38
LBB30_139:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_49
; %bb.140:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x24]
	b	LBB30_49
LBB30_141:                              ;   in Loop: Header=BB30_12 Depth=1
	cbz	w8, LBB30_71
; %bb.142:                              ;   in Loop: Header=BB30_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x21]
	b	LBB30_71
LBB30_143:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB30_147
; %bb.144:
	sub	w8, w8, #1
	str	w8, [x19]
	b	LBB30_6
LBB30_145:
	cbz	w8, LBB30_4
; %bb.146:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB30_4
LBB30_147:
	mov	x20, x0
	cbz	w8, LBB30_149
; %bb.148:
	mov	x0, x19
	bl	_lean_dec_ref_cold
LBB30_149:
	mov	x0, x20
	b	LBB30_6
LBB30_150:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh48, Lloh49
	.loh AdrpLdr	Lloh52, Lloh53
	.loh AdrpLdrGot	Lloh50, Lloh51
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpLdr	Lloh56, Lloh57
	.loh AdrpLdrGot	Lloh58, Lloh59
	.loh AdrpLdr	Lloh60, Lloh61
	.loh AdrpLdr	Lloh62, Lloh63
	.loh AdrpLdr	Lloh64, Lloh65
	.loh AdrpLdrGot	Lloh68, Lloh69
	.loh AdrpLdr	Lloh66, Lloh67
	.loh AdrpLdr	Lloh70, Lloh71
	.loh AdrpLdr	Lloh72, Lloh73
	.loh AdrpLdr	Lloh74, Lloh75
	.loh AdrpLdr	Lloh76, Lloh77
	.loh AdrpLdr	Lloh78, Lloh79
	.loh AdrpLdr	Lloh80, Lloh81
	.loh AdrpLdrGot	Lloh82, Lloh83
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
lCPI31_0:
	.long	1                               ; 0x1
	.long	4110417944                      ; 0xf5000018
lCPI31_1:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x24, x6
	mov	x19, x0
	cmp	x3, x4
	b.ne	LBB31_5
; %bb.1:
	mov	x25, x5
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB31_85
; %bb.2:
	sub	w8, w8, #1
	str	w8, [x19]
LBB31_3:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB31_152
; %bb.4:
Lloh84:
	adrp	x8, lCPI31_1@PAGE
Lloh85:
	ldr	d0, [x8, lCPI31_1@PAGEOFF]
	str	d0, [x0]
	stp	x25, x24, [x0, #8]
	b	LBB31_84
LBB31_5:
	mov	x20, x4
	mov	x23, x3
	mov	x22, x2
	mov	x21, x1
	add	x8, x2, x3, lsl #3
	ldr	x25, [x8, #24]
	tbnz	w25, #0, LBB31_8
; %bb.6:
	ldr	w8, [x25]
	cmp	w8, #1
	b.lt	LBB31_97
; %bb.7:
	add	w8, w8, #1
	str	w8, [x25]
LBB31_8:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB31_152
; %bb.9:
	mov	x28, x0
Lloh86:
	adrp	x8, lCPI31_0@PAGE
Lloh87:
	ldr	d8, [x8, lCPI31_0@PAGEOFF]
	str	d8, [x0]
Lloh88:
	adrp	x8, _l_instDecidableEqString___boxed@GOTPAGE
Lloh89:
	ldr	x8, [x8, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	str	x8, [x0, #8]
	mov	w8, #2                          ; =0x2
	str	w8, [x0, #16]
	ldr	x8, [x25, #8]
	lsl	x8, x8, #1
	sub	x3, x8, #1
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB31_87
; %bb.10:
	add	w8, w8, #1
	str	w8, [x19]
LBB31_11:
	mov	x0, x25
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	bl	_l_Lean_Data_Trie_matchPrefix___redArg
	mov	x27, x0
	ldr	w8, [x25]
	cmp	w8, #1
	b.lt	LBB31_89
; %bb.12:
	add	w8, w8, #1
	str	w8, [x25]
LBB31_13:
	mov	x0, x21
	mov	x1, x25
	bl	_l_Array_matchPrefix
	mov	x26, x0
	tbnz	w26, #0, LBB31_16
; %bb.14:
	ldr	w8, [x26]
	cmp	w8, #1
	b.lt	LBB31_99
; %bb.15:
	add	w8, w8, #1
	str	w8, [x26]
LBB31_16:
	tbnz	w27, #0, LBB31_19
; %bb.17:
	ldr	w8, [x27]
	cmp	w8, #1
	b.lt	LBB31_101
; %bb.18:
	add	w8, w8, #1
	str	w8, [x27]
LBB31_19:
	mov	x0, x28
	mov	x1, x27
	mov	x2, x26
	bl	_l_Option_instDecidableEq_decEq___redArg
	cbz	w0, LBB31_26
; %bb.20:
	tbnz	w26, #0, LBB31_23
; %bb.21:
	ldr	w8, [x26]
	cmp	w8, #2
	b.lt	LBB31_109
; %bb.22:
	sub	w8, w8, #1
	str	w8, [x26]
LBB31_23:
	tbnz	w27, #0, LBB31_68
; %bb.24:
	ldr	w8, [x27]
	cmp	w8, #2
	b.lt	LBB31_111
; %bb.25:
	sub	w8, w8, #1
	str	w8, [x27]
	b	LBB31_68
LBB31_26:
	str	x21, [sp, #24]                  ; 8-byte Folded Spill
Lloh90:
	adrp	x21, __MergedGlobals@PAGE+24
Lloh91:
	add	x21, x21, __MergedGlobals@PAGEOFF+24
	ldr	x0, [x21]
	mov	x1, x25
	bl	_lean_string_append
	ldr	x1, [x21, #8]
	bl	_lean_string_append
	tbnz	w27, #0, LBB31_54
; %bb.27:
	ldrb	w8, [x27, #7]
	adrp	x9, __MergedGlobals@PAGE+48
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	cbz	w8, LBB31_55
LBB31_28:
	ldr	x28, [x27, #8]
	tbnz	w28, #0, LBB31_31
; %bb.29:
	ldr	w8, [x28]
	cmp	w8, #1
	b.lt	LBB31_141
; %bb.30:
	add	w8, w8, #1
	str	w8, [x28]
LBB31_31:
	stp	x22, x20, [sp, #8]              ; 16-byte Folded Spill
	ldr	w8, [x27]
	mov	x20, x0
	cmp	w8, #2
	b.lt	LBB31_115
; %bb.32:
	sub	w8, w8, #1
	str	w8, [x27]
LBB31_33:
	mov	x22, x9
	ldr	x21, [x9, __MergedGlobals@PAGEOFF+48]
	mov	x0, x28
	bl	_l_addParenHeuristic
	mov	x27, x0
	mov	x0, x21
	mov	x1, x27
	bl	_lean_string_append
	ldr	w8, [x27]
	cmp	w8, #2
	b.lt	LBB31_117
; %bb.34:
	sub	w8, w8, #1
	str	w8, [x27]
LBB31_35:
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
LBB31_36:
Lloh92:
	adrp	x8, __MergedGlobals@PAGE+56
Lloh93:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+56]
	bl	_lean_string_append
	mov	x27, x0
	mov	x0, x20
	ldp	x28, x20, [sp, #8]              ; 16-byte Folded Reload
	mov	x1, x27
	bl	_lean_string_append
	ldr	w8, [x27]
	cmp	w8, #2
	b.lt	LBB31_56
LBB31_37:
	sub	w8, w8, #1
	str	w8, [x27]
LBB31_38:
Lloh94:
	adrp	x8, __MergedGlobals@PAGE+64
Lloh95:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+64]
	bl	_lean_string_append
	tbnz	w26, #0, LBB31_58
; %bb.39:
	ldrb	w8, [x26, #7]
	mov	x9, x22
	mov	x22, x28
	cbz	w8, LBB31_59
LBB31_40:
	ldr	x27, [x26, #8]
	tbnz	w27, #0, LBB31_43
; %bb.41:
	ldr	w8, [x27]
	cmp	w8, #1
	b.lt	LBB31_143
; %bb.42:
	add	w8, w8, #1
	str	w8, [x27]
LBB31_43:
	mov	x28, x20
	mov	x20, x22
	ldr	w8, [x26]
	mov	x22, x0
	cmp	w8, #2
	b.lt	LBB31_119
; %bb.44:
	sub	w8, w8, #1
	str	w8, [x26]
LBB31_45:
	ldr	x21, [x9, __MergedGlobals@PAGEOFF+48]
	mov	x0, x27
	bl	_l_addParenHeuristic
	mov	x26, x0
	mov	x0, x21
	mov	x1, x26
	bl	_lean_string_append
	ldr	w8, [x26]
	cmp	w8, #2
	b.lt	LBB31_121
; %bb.46:
	sub	w8, w8, #1
	str	w8, [x26]
LBB31_47:
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
LBB31_48:
Lloh96:
	adrp	x8, __MergedGlobals@PAGE+56
Lloh97:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+56]
	bl	_lean_string_append
	mov	x26, x0
	mov	x0, x22
	mov	x22, x20
	mov	x20, x28
	mov	x1, x26
	bl	_lean_string_append
	ldr	w8, [x26]
	cmp	w8, #2
	b.lt	LBB31_60
LBB31_49:
	sub	w8, w8, #1
	str	w8, [x26]
LBB31_50:
Lloh98:
	adrp	x8, __MergedGlobals@PAGE+96
Lloh99:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+96]
	bl	_lean_string_append
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x24
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbnz	w0, #0, LBB31_62
; %bb.51:
	ldrb	w8, [x0, #7]
	cbz	w8, LBB31_63
LBB31_52:
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB31_123
; %bb.53:
	sub	w8, w8, #1
	str	w8, [x25]
	tbz	w0, #0, LBB31_81
	b	LBB31_126
LBB31_54:
	lsr	x8, x27, #1
	adrp	x9, __MergedGlobals@PAGE+48
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	cbnz	w8, LBB31_28
LBB31_55:
	mov	x28, x22
	mov	x22, x9
Lloh100:
	adrp	x8, __MergedGlobals@PAGE+40
Lloh101:
	ldr	x27, [x8, __MergedGlobals@PAGEOFF+40]
	mov	x1, x27
	bl	_lean_string_append
	ldr	w8, [x27]
	cmp	w8, #2
	b.ge	LBB31_37
LBB31_56:
	cbz	w8, LBB31_38
; %bb.57:
	mov	x21, x0
	mov	x0, x27
	bl	_lean_dec_ref_cold
	mov	x0, x21
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	b	LBB31_38
LBB31_58:
	lsr	x8, x26, #1
	mov	x9, x22
	mov	x22, x28
	cbnz	w8, LBB31_40
LBB31_59:
Lloh102:
	adrp	x8, __MergedGlobals@PAGE+40
Lloh103:
	ldr	x26, [x8, __MergedGlobals@PAGEOFF+40]
	mov	x1, x26
	bl	_lean_string_append
	ldr	w8, [x26]
	cmp	w8, #2
	b.ge	LBB31_49
LBB31_60:
	cbz	w8, LBB31_50
; %bb.61:
	mov	x21, x0
	mov	x0, x26
	bl	_lean_dec_ref_cold
	mov	x0, x21
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	b	LBB31_50
LBB31_62:
	lsr	x8, x0, #1
	cbnz	w8, LBB31_52
LBB31_63:
	ldr	x24, [x0, #16]
	tbnz	w24, #0, LBB31_66
; %bb.64:
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB31_149
; %bb.65:
	add	w8, w8, #1
	str	w8, [x24]
LBB31_66:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB31_139
; %bb.67:
	sub	w8, w8, #1
	str	w8, [x0]
LBB31_68:
Lloh104:
	adrp	x8, __MergedGlobals@PAGE+72
Lloh105:
	ldr	x0, [x8, __MergedGlobals@PAGEOFF+72]
	mov	x1, x25
	bl	_lean_string_append
	mov	x27, x0
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB31_152
; %bb.69:
	mov	x26, x0
	str	d8, [x0]
Lloh106:
	adrp	x8, _l_instDecidableEqString___boxed@GOTPAGE
Lloh107:
	ldr	x8, [x8, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	str	x8, [x0, #8]
	mov	w8, #2                          ; =0x2
	str	w8, [x0, #16]
Lloh108:
	adrp	x8, __MergedGlobals@PAGE+80
Lloh109:
	ldr	x2, [x8, __MergedGlobals@PAGEOFF+80]
	ldr	x8, [x27, #8]
	lsl	x8, x8, #1
	sub	x3, x8, #1
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB31_91
; %bb.70:
	add	w8, w8, #1
	str	w8, [x19]
LBB31_71:
	mov	x0, x27
	mov	x1, x19
	bl	_l_Lean_Data_Trie_matchPrefix___redArg
	mov	x28, x0
	ldr	w8, [x27]
	cmp	w8, #2
	b.lt	LBB31_93
; %bb.72:
	sub	w8, w8, #1
	str	w8, [x27]
LBB31_73:
	ldr	w8, [x25]
	cmp	w8, #1
	b.lt	LBB31_95
; %bb.74:
	add	w8, w8, #1
	str	w8, [x25]
LBB31_75:
	mov	x0, x21
	mov	x1, x25
	bl	_l_Array_matchPrefix
	mov	x2, x0
	mov	x0, x26
	mov	x1, x28
	bl	_l_Option_instDecidableEq_decEq___redArg
	cbz	w0, LBB31_78
; %bb.76:
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB31_103
; %bb.77:
	sub	w8, w8, #1
	str	w8, [x25]
	mov	w5, #1                          ; =0x1
	b	LBB31_135
LBB31_78:
Lloh110:
	adrp	x8, __MergedGlobals@PAGE+88
Lloh111:
	ldr	x0, [x8, __MergedGlobals@PAGEOFF+88]
	mov	x1, x25
	bl	_lean_string_append
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB31_113
; %bb.79:
	sub	w8, w8, #1
	str	w8, [x25]
LBB31_80:
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x24
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbnz	w0, #0, LBB31_126
LBB31_81:
	ldrb	w8, [x0, #7]
	cbz	w8, LBB31_127
LBB31_82:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB31_106
; %bb.83:
	sub	w8, w8, #1
	str	w8, [x19]
LBB31_84:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB31_85:
	cbz	w8, LBB31_3
; %bb.86:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB31_3
LBB31_87:
	cbz	w8, LBB31_11
; %bb.88:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB31_11
LBB31_89:
	cbz	w8, LBB31_13
; %bb.90:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x25]
	b	LBB31_13
LBB31_91:
	cbz	w8, LBB31_71
; %bb.92:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB31_71
LBB31_93:
	cbz	w8, LBB31_73
; %bb.94:
	mov	x0, x27
	bl	_lean_dec_ref_cold
	b	LBB31_73
LBB31_95:
	cbz	w8, LBB31_75
; %bb.96:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x25]
	b	LBB31_75
LBB31_97:
	cbz	w8, LBB31_8
; %bb.98:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x25]
	b	LBB31_8
LBB31_99:
	cbz	w8, LBB31_16
; %bb.100:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x26]
	b	LBB31_16
LBB31_101:
	cbz	w8, LBB31_19
; %bb.102:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x27]
	b	LBB31_19
LBB31_103:
	cbz	w8, LBB31_105
; %bb.104:
	mov	x0, x25
	bl	_lean_dec_ref_cold
LBB31_105:
	mov	w5, #1                          ; =0x1
	b	LBB31_135
LBB31_106:
	mov	x20, x0
	cbz	w8, LBB31_108
; %bb.107:
	mov	x0, x19
	bl	_lean_dec_ref_cold
LBB31_108:
	mov	x0, x20
	b	LBB31_84
LBB31_109:
	cbz	w8, LBB31_23
; %bb.110:
	mov	x0, x26
	bl	_lean_dec_ref_cold
	b	LBB31_23
LBB31_111:
	cbz	w8, LBB31_68
; %bb.112:
	mov	x0, x27
	bl	_lean_dec_ref_cold
	b	LBB31_68
LBB31_113:
	cbz	w8, LBB31_80
; %bb.114:
	mov	x26, x21
	mov	x21, x0
	mov	x0, x25
	bl	_lean_dec_ref_cold
	mov	x0, x21
	mov	x21, x26
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x24
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbz	w0, #0, LBB31_81
	b	LBB31_126
LBB31_115:
	cbz	w8, LBB31_33
; %bb.116:
	mov	x0, x27
	mov	x21, x9
	bl	_lean_dec_ref_cold
	mov	x9, x21
	b	LBB31_33
LBB31_117:
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	cbz	w8, LBB31_36
; %bb.118:
	mov	x21, x0
	mov	x0, x27
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB31_35
LBB31_119:
	cbz	w8, LBB31_45
; %bb.120:
	mov	x0, x26
	mov	x21, x9
	bl	_lean_dec_ref_cold
	mov	x9, x21
	b	LBB31_45
LBB31_121:
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	cbz	w8, LBB31_48
; %bb.122:
	mov	x21, x0
	mov	x0, x26
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB31_47
LBB31_123:
	mov	x21, x0
	cbz	w8, LBB31_125
; %bb.124:
	mov	x0, x25
	bl	_lean_dec_ref_cold
LBB31_125:
	mov	x0, x21
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	tbz	w0, #0, LBB31_81
LBB31_126:
	lsr	x8, x0, #1
	cbnz	w8, LBB31_82
LBB31_127:
	ldr	x5, [x0, #8]
	tbnz	w5, #0, LBB31_130
; %bb.128:
	ldr	w8, [x5]
	cmp	w8, #1
	b.lt	LBB31_145
; %bb.129:
	add	w8, w8, #1
	str	w8, [x5]
LBB31_130:
	ldr	x24, [x0, #16]
	tbnz	w24, #0, LBB31_133
; %bb.131:
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB31_147
; %bb.132:
	add	w8, w8, #1
	str	w8, [x24]
LBB31_133:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB31_136
; %bb.134:
	sub	w8, w8, #1
	str	w8, [x0]
LBB31_135:
	add	x3, x23, #1
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	mov	x4, x20
	mov	x6, x24
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #144
	b	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
LBB31_136:
	mov	x25, x21
	mov	x21, x5
	cbz	w8, LBB31_138
; %bb.137:
	bl	_lean_dec_ref_cold
LBB31_138:
	mov	x5, x21
	mov	x21, x25
	b	LBB31_135
LBB31_139:
	cbz	w8, LBB31_151
; %bb.140:
	bl	_lean_dec_ref_cold
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	b	LBB31_68
LBB31_141:
	cbz	w8, LBB31_31
; %bb.142:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x28]
	b	LBB31_31
LBB31_143:
	cbz	w8, LBB31_43
; %bb.144:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x27]
	b	LBB31_43
LBB31_145:
	cbz	w8, LBB31_130
; %bb.146:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x5]
	b	LBB31_130
LBB31_147:
	cbz	w8, LBB31_133
; %bb.148:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x24]
	b	LBB31_133
LBB31_149:
	cbz	w8, LBB31_66
; %bb.150:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x24]
	b	LBB31_66
LBB31_151:
	ldr	x21, [sp, #24]                  ; 8-byte Folded Reload
	b	LBB31_68
LBB31_152:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh84, Lloh85
	.loh AdrpLdrGot	Lloh88, Lloh89
	.loh AdrpAdrp	Lloh86, Lloh88
	.loh AdrpLdr	Lloh86, Lloh87
	.loh AdrpAdd	Lloh90, Lloh91
	.loh AdrpLdr	Lloh92, Lloh93
	.loh AdrpLdr	Lloh94, Lloh95
	.loh AdrpLdr	Lloh96, Lloh97
	.loh AdrpLdr	Lloh98, Lloh99
	.loh AdrpLdr	Lloh100, Lloh101
	.loh AdrpLdr	Lloh102, Lloh103
	.loh AdrpLdr	Lloh104, Lloh105
	.loh AdrpLdr	Lloh108, Lloh109
	.loh AdrpLdrGot	Lloh106, Lloh107
	.loh AdrpLdr	Lloh110, Lloh111
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
lCPI32_0:
	.long	1                               ; 0x1
	.long	4110417944                      ; 0xf5000018
lCPI32_1:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x19, x0
	stp	x4, x6, [sp, #16]               ; 16-byte Folded Spill
	cmp	x3, x4
	b.ne	LBB32_7
; %bb.1:
	mov	x24, x5
LBB32_2:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB32_74
; %bb.3:
	sub	w8, w8, #1
	str	w8, [x19]
LBB32_4:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB32_79
; %bb.5:
Lloh112:
	adrp	x8, lCPI32_1@PAGE
Lloh113:
	ldr	d0, [x8, lCPI32_1@PAGEOFF]
	str	d0, [x0]
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	stp	x24, x8, [x0, #8]
LBB32_6:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB32_7:
	mov	x22, x3
	mov	x23, x1
	add	x9, x2, #24
	add	x8, x1, #24
	stp	x8, x9, [sp]                    ; 16-byte Folded Spill
Lloh114:
	adrp	x8, lCPI32_0@PAGE
Lloh115:
	ldr	d8, [x8, lCPI32_0@PAGEOFF]
	b	LBB32_12
LBB32_8:                                ;   in Loop: Header=BB32_12 Depth=1
	ldr	w8, [x24]
	cmp	w8, #2
	b.lt	LBB32_60
; %bb.9:                                ;   in Loop: Header=BB32_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x24]
LBB32_10:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	w24, #1                         ; =0x1
LBB32_11:                               ;   in Loop: Header=BB32_12 Depth=1
	add	x22, x22, #1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	cmp	x22, x8
	b.eq	LBB32_2
LBB32_12:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB32_26 Depth 2
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x24, [x8, x22, lsl #3]
	tbnz	w24, #0, LBB32_15
; %bb.13:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB32_62
; %bb.14:                               ;   in Loop: Header=BB32_12 Depth=1
	add	w8, w8, #1
	str	w8, [x24]
LBB32_15:                               ;   in Loop: Header=BB32_12 Depth=1
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB32_79
; %bb.16:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	x26, x0
	str	d8, [x0]
Lloh116:
	adrp	x8, _l_instDecidableEqString___boxed@GOTPAGE
Lloh117:
	ldr	x8, [x8, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	str	x8, [x0, #8]
	mov	w8, #2                          ; =0x2
	str	w8, [x0, #16]
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB32_54
; %bb.17:                               ;   in Loop: Header=BB32_12 Depth=1
	add	w8, w8, #1
	str	w8, [x19]
LBB32_18:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	x0, x19
	mov	x1, x24
	bl	_l_Lean_Data_Trie_findPrefix___redArg
	mov	x25, x0
	ldr	x8, [x0, #8]
	tst	x8, #0x7fffffffffffffff
	b.eq	LBB32_20
; %bb.19:                               ;   in Loop: Header=BB32_12 Depth=1
	lsl	x8, x8, #1
	sub	x2, x8, #1
	mov	x0, x25
	mov	w1, #1                          ; =0x1
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	mov	x25, x0
LBB32_20:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	x20, x23
	ldr	x8, [x23, #8]
Lloh118:
	adrp	x9, __MergedGlobals@PAGE+8
Lloh119:
	ldr	x27, [x9, __MergedGlobals@PAGEOFF+8]
	ands	x23, x8, #0x7fffffffffffffff
	b.eq	LBB32_34
; %bb.21:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	x21, [sp]                       ; 8-byte Folded Reload
	b	LBB32_26
LBB32_22:                               ;   in Loop: Header=BB32_26 Depth=2
	add	w8, w8, #1
	str	w8, [x28]
LBB32_23:                               ;   in Loop: Header=BB32_26 Depth=2
	mov	x0, x24
	mov	x1, x28
	bl	_l_String_isPrefixOf
	cbz	w0, LBB32_30
; %bb.24:                               ;   in Loop: Header=BB32_26 Depth=2
	mov	x0, x27
	mov	x1, x28
	bl	_lean_array_push
	mov	x27, x0
LBB32_25:                               ;   in Loop: Header=BB32_26 Depth=2
	add	x21, x21, #8
	subs	x23, x23, #1
	b.eq	LBB32_34
LBB32_26:                               ;   Parent Loop BB32_12 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x28, [x21]
	tbnz	w28, #0, LBB32_23
; %bb.27:                               ;   in Loop: Header=BB32_26 Depth=2
	ldr	w8, [x28]
	cmp	w8, #1
	b.ge	LBB32_22
; %bb.28:                               ;   in Loop: Header=BB32_26 Depth=2
	cbz	w8, LBB32_23
; %bb.29:                               ;   in Loop: Header=BB32_26 Depth=2
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x28]
	b	LBB32_23
LBB32_30:                               ;   in Loop: Header=BB32_26 Depth=2
	ldr	w8, [x28]
	cmp	w8, #2
	b.lt	LBB32_32
; %bb.31:                               ;   in Loop: Header=BB32_26 Depth=2
	sub	w8, w8, #1
	str	w8, [x28]
	b	LBB32_25
LBB32_32:                               ;   in Loop: Header=BB32_26 Depth=2
	cbz	w8, LBB32_25
; %bb.33:                               ;   in Loop: Header=BB32_26 Depth=2
	mov	x0, x28
	bl	_lean_dec_ref_cold
	b	LBB32_25
LBB32_34:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	x8, [x27, #8]
	tst	x8, #0x7fffffffffffffff
	b.eq	LBB32_36
; %bb.35:                               ;   in Loop: Header=BB32_12 Depth=1
	lsl	x8, x8, #1
	sub	x2, x8, #1
	mov	x0, x27
	mov	w1, #1                          ; =0x1
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	mov	x27, x0
LBB32_36:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	x23, x20
	mov	x0, x26
	mov	x1, x25
	mov	x2, x27
	bl	_l_Array_instDecidableEq___redArg
	ldr	w8, [x27]
	cmp	w8, #2
	b.lt	LBB32_56
; %bb.37:                               ;   in Loop: Header=BB32_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x27]
LBB32_38:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB32_58
; %bb.39:                               ;   in Loop: Header=BB32_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x25]
LBB32_40:                               ;   in Loop: Header=BB32_12 Depth=1
	cbnz	w0, LBB32_8
; %bb.41:                               ;   in Loop: Header=BB32_12 Depth=1
Lloh120:
	adrp	x8, __MergedGlobals@PAGE+104
Lloh121:
	ldr	x0, [x8, __MergedGlobals@PAGEOFF+104]
	mov	x1, x24
	bl	_lean_string_append
	ldr	w8, [x24]
	cmp	w8, #2
	b.lt	LBB32_64
; %bb.42:                               ;   in Loop: Header=BB32_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x24]
LBB32_43:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbnz	w0, #0, LBB32_45
; %bb.44:                               ;   in Loop: Header=BB32_12 Depth=1
	ldrb	w8, [x0, #7]
	cbz	w8, LBB32_46
	b	LBB32_72
LBB32_45:                               ;   in Loop: Header=BB32_12 Depth=1
	lsr	x8, x0, #1
	cbnz	w8, LBB32_72
LBB32_46:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	x24, [x0, #8]
	tbnz	w24, #0, LBB32_49
; %bb.47:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB32_68
; %bb.48:                               ;   in Loop: Header=BB32_12 Depth=1
	add	w8, w8, #1
	str	w8, [x24]
LBB32_49:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	x8, [x0, #16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	tbnz	w8, #0, LBB32_52
; %bb.50:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w8, [x9]
	cmp	w8, #1
	b.lt	LBB32_70
; %bb.51:                               ;   in Loop: Header=BB32_12 Depth=1
	add	w8, w8, #1
	str	w8, [x9]
LBB32_52:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB32_66
; %bb.53:                               ;   in Loop: Header=BB32_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
	b	LBB32_11
LBB32_54:                               ;   in Loop: Header=BB32_12 Depth=1
	cbz	w8, LBB32_18
; %bb.55:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB32_18
LBB32_56:                               ;   in Loop: Header=BB32_12 Depth=1
	cbz	w8, LBB32_38
; %bb.57:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	x21, x0
	mov	x0, x27
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB32_38
LBB32_58:                               ;   in Loop: Header=BB32_12 Depth=1
	cbz	w8, LBB32_40
; %bb.59:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	x21, x0
	mov	x0, x25
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB32_40
LBB32_60:                               ;   in Loop: Header=BB32_12 Depth=1
	cbz	w8, LBB32_10
; %bb.61:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	x0, x24
	bl	_lean_dec_ref_cold
	b	LBB32_10
LBB32_62:                               ;   in Loop: Header=BB32_12 Depth=1
	cbz	w8, LBB32_15
; %bb.63:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x24]
	b	LBB32_15
LBB32_64:                               ;   in Loop: Header=BB32_12 Depth=1
	cbz	w8, LBB32_43
; %bb.65:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	x21, x0
	mov	x0, x24
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB32_43
LBB32_66:                               ;   in Loop: Header=BB32_12 Depth=1
	cbz	w8, LBB32_11
; %bb.67:                               ;   in Loop: Header=BB32_12 Depth=1
	bl	_lean_dec_ref_cold
	b	LBB32_11
LBB32_68:                               ;   in Loop: Header=BB32_12 Depth=1
	cbz	w8, LBB32_49
; %bb.69:                               ;   in Loop: Header=BB32_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x24]
	b	LBB32_49
LBB32_70:                               ;   in Loop: Header=BB32_12 Depth=1
	cbz	w8, LBB32_52
; %bb.71:                               ;   in Loop: Header=BB32_12 Depth=1
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	w9, #-1                         ; =0xffffffff
	ldadd	w9, w8, [x8]
	b	LBB32_52
LBB32_72:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB32_76
; %bb.73:
	sub	w8, w8, #1
	str	w8, [x19]
	b	LBB32_6
LBB32_74:
	cbz	w8, LBB32_4
; %bb.75:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB32_4
LBB32_76:
	mov	x20, x0
	cbz	w8, LBB32_78
; %bb.77:
	mov	x0, x19
	bl	_lean_dec_ref_cold
LBB32_78:
	mov	x0, x20
	b	LBB32_6
LBB32_79:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh112, Lloh113
	.loh AdrpLdr	Lloh114, Lloh115
	.loh AdrpLdrGot	Lloh116, Lloh117
	.loh AdrpLdr	Lloh118, Lloh119
	.loh AdrpLdr	Lloh120, Lloh121
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
lCPI33_0:
	.long	1                               ; 0x1
	.long	4110417944                      ; 0xf5000018
lCPI33_1:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x24, x6
	mov	x19, x0
	cmp	x3, x4
	b.ne	LBB33_6
; %bb.1:
	mov	x25, x5
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB33_55
; %bb.2:
	sub	w8, w8, #1
	str	w8, [x19]
LBB33_3:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB33_79
; %bb.4:
Lloh122:
	adrp	x8, lCPI33_1@PAGE
Lloh123:
	ldr	d0, [x8, lCPI33_1@PAGEOFF]
	str	d0, [x0]
	stp	x25, x24, [x0, #8]
LBB33_5:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB33_6:
	mov	x20, x4
	mov	x22, x2
	mov	x23, x1
	str	x3, [sp, #24]                   ; 8-byte Folded Spill
	add	x8, x2, x3, lsl #3
	ldr	x25, [x8, #24]
	tbnz	w25, #0, LBB33_9
; %bb.7:
	ldr	w8, [x25]
	cmp	w8, #1
	b.lt	LBB33_65
; %bb.8:
	add	w8, w8, #1
	str	w8, [x25]
LBB33_9:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB33_79
; %bb.10:
	mov	x26, x0
Lloh124:
	adrp	x8, lCPI33_0@PAGE
Lloh125:
	ldr	d0, [x8, lCPI33_0@PAGEOFF]
Lloh126:
	adrp	x8, _l_instDecidableEqString___boxed@GOTPAGE
Lloh127:
	ldr	x8, [x8, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	str	d0, [x0]
	str	x8, [x0, #8]
	mov	w8, #2                          ; =0x2
	str	w8, [x0, #16]
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB33_57
; %bb.11:
	add	w8, w8, #1
	str	w8, [x19]
LBB33_12:
	mov	x0, x19
	mov	x1, x25
	bl	_l_Lean_Data_Trie_findPrefix___redArg
	mov	x27, x0
	ldr	x8, [x0, #8]
	tst	x8, #0x7fffffffffffffff
	b.eq	LBB33_14
; %bb.13:
	lsl	x8, x8, #1
	sub	x2, x8, #1
	mov	x0, x27
	mov	w1, #1                          ; =0x1
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	mov	x27, x0
LBB33_14:
	stp	x22, x20, [sp, #8]              ; 16-byte Folded Spill
	ldr	x8, [x23, #8]
Lloh128:
	adrp	x9, __MergedGlobals@PAGE+8
Lloh129:
	ldr	x28, [x9, __MergedGlobals@PAGEOFF+8]
	mov	x9, x23
	ands	x23, x8, #0x7fffffffffffffff
	b.eq	LBB33_28
; %bb.15:
	mov	x20, x9
	add	x21, x9, #24
	b	LBB33_20
LBB33_16:                               ;   in Loop: Header=BB33_20 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB33_17:                               ;   in Loop: Header=BB33_20 Depth=1
	mov	x0, x25
	mov	x1, x22
	bl	_l_String_isPrefixOf
	cbz	w0, LBB33_24
; %bb.18:                               ;   in Loop: Header=BB33_20 Depth=1
	mov	x0, x28
	mov	x1, x22
	bl	_lean_array_push
	mov	x28, x0
LBB33_19:                               ;   in Loop: Header=BB33_20 Depth=1
	add	x21, x21, #8
	subs	x23, x23, #1
	b.eq	LBB33_29
LBB33_20:                               ; =>This Inner Loop Header: Depth=1
	ldr	x22, [x21]
	tbnz	w22, #0, LBB33_17
; %bb.21:                               ;   in Loop: Header=BB33_20 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.ge	LBB33_16
; %bb.22:                               ;   in Loop: Header=BB33_20 Depth=1
	cbz	w8, LBB33_17
; %bb.23:                               ;   in Loop: Header=BB33_20 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB33_17
LBB33_24:                               ;   in Loop: Header=BB33_20 Depth=1
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB33_26
; %bb.25:                               ;   in Loop: Header=BB33_20 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
	b	LBB33_19
LBB33_26:                               ;   in Loop: Header=BB33_20 Depth=1
	cbz	w8, LBB33_19
; %bb.27:                               ;   in Loop: Header=BB33_20 Depth=1
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB33_19
LBB33_28:
	mov	x20, x9
LBB33_29:
	ldr	x8, [x28, #8]
	tst	x8, #0x7fffffffffffffff
	b.eq	LBB33_31
; %bb.30:
	lsl	x8, x8, #1
	sub	x2, x8, #1
	mov	x0, x28
	mov	w1, #1                          ; =0x1
	bl	_l___private_Init_Data_Array_QSort_Basic_0__Array_qsort_sort___at___Array_sorted_spec__0___redArg
	mov	x28, x0
LBB33_31:
	mov	x0, x26
	mov	x1, x27
	mov	x2, x28
	bl	_l_Array_instDecidableEq___redArg
	ldr	w8, [x28]
	cmp	w8, #2
	b.lt	LBB33_59
; %bb.32:
	sub	w8, w8, #1
	str	w8, [x28]
LBB33_33:
	ldr	w8, [x27]
	cmp	w8, #2
	b.lt	LBB33_61
; %bb.34:
	sub	w8, w8, #1
	str	w8, [x27]
LBB33_35:
	cbz	w0, LBB33_40
; %bb.36:
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB33_63
; %bb.37:
	sub	w8, w8, #1
	str	w8, [x25]
LBB33_38:
	mov	w5, #1                          ; =0x1
LBB33_39:
	ldp	x4, x8, [sp, #16]               ; 16-byte Folded Reload
	add	x3, x8, #1
	mov	x0, x19
	mov	x1, x20
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x6, x24
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	b	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
LBB33_40:
Lloh130:
	adrp	x8, __MergedGlobals@PAGE+104
Lloh131:
	ldr	x0, [x8, __MergedGlobals@PAGEOFF+104]
	mov	x1, x25
	bl	_lean_string_append
	ldr	w8, [x25]
	cmp	w8, #2
	b.lt	LBB33_67
; %bb.41:
	sub	w8, w8, #1
	str	w8, [x25]
LBB33_42:
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x24
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbnz	w0, #0, LBB33_46
; %bb.43:
	ldrb	w8, [x0, #7]
	cbz	w8, LBB33_47
LBB33_44:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB33_69
; %bb.45:
	sub	w8, w8, #1
	str	w8, [x19]
	b	LBB33_5
LBB33_46:
	lsr	x8, x0, #1
	cbnz	w8, LBB33_44
LBB33_47:
	ldr	x5, [x0, #8]
	tbnz	w5, #0, LBB33_50
; %bb.48:
	ldr	w8, [x5]
	cmp	w8, #1
	b.lt	LBB33_75
; %bb.49:
	add	w8, w8, #1
	str	w8, [x5]
LBB33_50:
	ldr	x24, [x0, #16]
	tbnz	w24, #0, LBB33_53
; %bb.51:
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB33_77
; %bb.52:
	add	w8, w8, #1
	str	w8, [x24]
LBB33_53:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB33_72
; %bb.54:
	sub	w8, w8, #1
	str	w8, [x0]
	b	LBB33_39
LBB33_55:
	cbz	w8, LBB33_3
; %bb.56:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB33_3
LBB33_57:
	cbz	w8, LBB33_12
; %bb.58:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB33_12
LBB33_59:
	cbz	w8, LBB33_33
; %bb.60:
	mov	x21, x0
	mov	x0, x28
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB33_33
LBB33_61:
	cbz	w8, LBB33_35
; %bb.62:
	mov	x21, x0
	mov	x0, x27
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB33_35
LBB33_63:
	cbz	w8, LBB33_38
; %bb.64:
	mov	x0, x25
	bl	_lean_dec_ref_cold
	b	LBB33_38
LBB33_65:
	cbz	w8, LBB33_9
; %bb.66:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x25]
	b	LBB33_9
LBB33_67:
	cbz	w8, LBB33_42
; %bb.68:
	mov	x21, x0
	mov	x0, x25
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB33_42
LBB33_69:
	mov	x20, x0
	cbz	w8, LBB33_71
; %bb.70:
	mov	x0, x19
	bl	_lean_dec_ref_cold
LBB33_71:
	mov	x0, x20
	b	LBB33_5
LBB33_72:
	mov	x21, x5
	cbz	w8, LBB33_74
; %bb.73:
	bl	_lean_dec_ref_cold
LBB33_74:
	mov	x5, x21
	b	LBB33_39
LBB33_75:
	cbz	w8, LBB33_50
; %bb.76:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x5]
	b	LBB33_50
LBB33_77:
	cbz	w8, LBB33_53
; %bb.78:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x24]
	b	LBB33_53
LBB33_79:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh122, Lloh123
	.loh AdrpLdrGot	Lloh126, Lloh127
	.loh AdrpAdrp	Lloh124, Lloh126
	.loh AdrpLdr	Lloh124, Lloh125
	.loh AdrpLdr	Lloh128, Lloh129
	.loh AdrpLdr	Lloh130, Lloh131
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
lCPI34_0:
	.long	1                               ; 0x1
	.long	4110417944                      ; 0xf5000018
lCPI34_1:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-112]!            ; 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x20, x6
	mov	x19, x0
	subs	x26, x4, x3
	b.ne	LBB34_7
; %bb.1:
	mov	x22, x5
LBB34_2:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB34_70
; %bb.3:
	sub	w8, w8, #1
	str	w8, [x19]
LBB34_4:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB34_75
; %bb.5:
Lloh132:
	adrp	x8, lCPI34_1@PAGE
Lloh133:
	ldr	d0, [x8, lCPI34_1@PAGEOFF]
	str	d0, [x0]
	stp	x22, x20, [x0, #8]
LBB34_6:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #112              ; 16-byte Folded Reload
	ret
LBB34_7:
	mov	x21, x1
	add	x8, x2, x3, lsl #3
	add	x27, x8, #24
Lloh134:
	adrp	x8, lCPI34_0@PAGE
Lloh135:
	ldr	d8, [x8, lCPI34_0@PAGEOFF]
	mov	w28, #2                         ; =0x2
	b	LBB34_12
LBB34_8:                                ;   in Loop: Header=BB34_12 Depth=1
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB34_50
; %bb.9:                                ;   in Loop: Header=BB34_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
LBB34_10:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	w22, #1                         ; =0x1
LBB34_11:                               ;   in Loop: Header=BB34_12 Depth=1
	add	x27, x27, #8
	subs	x26, x26, #1
	b.eq	LBB34_2
LBB34_12:                               ; =>This Inner Loop Header: Depth=1
	ldr	x22, [x27]
	tbnz	w22, #0, LBB34_15
; %bb.13:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB34_54
; %bb.14:                               ;   in Loop: Header=BB34_12 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB34_15:                               ;   in Loop: Header=BB34_12 Depth=1
Lloh136:
	adrp	x8, __MergedGlobals@PAGE+16
Lloh137:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+16]
	ldr	x4, [x21, #8]
	mov	x0, x22
	mov	w2, #1                          ; =0x1
	mov	x3, x21
	mov	x5, #0                          ; =0x0
	mov	x6, x1
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	ldr	x23, [x0, #8]
	tbnz	w23, #0, LBB34_18
; %bb.16:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	w8, [x23]
	cmp	w8, #1
	b.lt	LBB34_56
; %bb.17:                               ;   in Loop: Header=BB34_12 Depth=1
	add	w8, w8, #1
	str	w8, [x23]
LBB34_18:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB34_46
; %bb.19:                               ;   in Loop: Header=BB34_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
LBB34_20:                               ;   in Loop: Header=BB34_12 Depth=1
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB34_75
; %bb.21:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	x24, x0
	str	d8, [x0]
Lloh138:
	adrp	x8, _l_instDecidableEqString___boxed@GOTPAGE
Lloh139:
	ldr	x8, [x8, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	str	x8, [x0, #8]
	str	w28, [x0, #16]
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB34_48
; %bb.22:                               ;   in Loop: Header=BB34_12 Depth=1
	add	w8, w8, #1
	str	w8, [x19]
LBB34_23:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	x0, x19
	mov	x1, x22
	bl	_l_Lean_Data_Trie_find_x3f___redArg
	mov	x25, x0
	tbnz	w23, #0, LBB34_30
; %bb.24:                               ;   in Loop: Header=BB34_12 Depth=1
	ldrb	w8, [x23, #7]
	cbz	w8, LBB34_31
LBB34_25:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	x2, [x23, #8]
	tbnz	w2, #0, LBB34_28
; %bb.26:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	w8, [x2]
	cmp	w8, #1
	b.lt	LBB34_62
; %bb.27:                               ;   in Loop: Header=BB34_12 Depth=1
	add	w8, w8, #1
	str	w8, [x2]
LBB34_28:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	w8, [x23]
	cmp	w8, #2
	b.lt	LBB34_52
; %bb.29:                               ;   in Loop: Header=BB34_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x23]
	b	LBB34_32
LBB34_30:                               ;   in Loop: Header=BB34_12 Depth=1
	lsr	x8, x23, #1
	cbnz	w8, LBB34_25
LBB34_31:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	w2, #1                          ; =0x1
LBB34_32:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	x0, x24
	mov	x1, x25
	bl	_l_Option_instDecidableEq_decEq___redArg
	cbnz	w0, LBB34_8
; %bb.33:                               ;   in Loop: Header=BB34_12 Depth=1
Lloh140:
	adrp	x8, __MergedGlobals@PAGE+112
Lloh141:
	ldr	x0, [x8, __MergedGlobals@PAGEOFF+112]
	mov	x1, x22
	bl	_lean_string_append
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB34_58
; %bb.34:                               ;   in Loop: Header=BB34_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
LBB34_35:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x20
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbnz	w0, #0, LBB34_37
; %bb.36:                               ;   in Loop: Header=BB34_12 Depth=1
	ldrb	w8, [x0, #7]
	cbz	w8, LBB34_38
	b	LBB34_68
LBB34_37:                               ;   in Loop: Header=BB34_12 Depth=1
	lsr	x8, x0, #1
	cbnz	w8, LBB34_68
LBB34_38:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	x22, [x0, #8]
	tbnz	w22, #0, LBB34_41
; %bb.39:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB34_64
; %bb.40:                               ;   in Loop: Header=BB34_12 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB34_41:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	x20, [x0, #16]
	tbnz	w20, #0, LBB34_44
; %bb.42:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB34_66
; %bb.43:                               ;   in Loop: Header=BB34_12 Depth=1
	add	w8, w8, #1
	str	w8, [x20]
LBB34_44:                               ;   in Loop: Header=BB34_12 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB34_60
; %bb.45:                               ;   in Loop: Header=BB34_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
	b	LBB34_11
LBB34_46:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_20
; %bb.47:                               ;   in Loop: Header=BB34_12 Depth=1
	bl	_lean_dec_ref_cold
	b	LBB34_20
LBB34_48:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_23
; %bb.49:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB34_23
LBB34_50:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_10
; %bb.51:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	x0, x22
	bl	_lean_dec_ref_cold
	b	LBB34_10
LBB34_52:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_32
; %bb.53:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	x0, x23
	mov	x23, x2
	bl	_lean_dec_ref_cold
	mov	x2, x23
	b	LBB34_32
LBB34_54:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_15
; %bb.55:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB34_15
LBB34_56:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_18
; %bb.57:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x23]
	b	LBB34_18
LBB34_58:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_35
; %bb.59:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	x23, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x23
	b	LBB34_35
LBB34_60:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_11
; %bb.61:                               ;   in Loop: Header=BB34_12 Depth=1
	bl	_lean_dec_ref_cold
	b	LBB34_11
LBB34_62:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_28
; %bb.63:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x2]
	b	LBB34_28
LBB34_64:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_41
; %bb.65:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB34_41
LBB34_66:                               ;   in Loop: Header=BB34_12 Depth=1
	cbz	w8, LBB34_44
; %bb.67:                               ;   in Loop: Header=BB34_12 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB34_44
LBB34_68:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB34_72
; %bb.69:
	sub	w8, w8, #1
	str	w8, [x19]
	b	LBB34_6
LBB34_70:
	cbz	w8, LBB34_4
; %bb.71:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB34_4
LBB34_72:
	mov	x20, x0
	cbz	w8, LBB34_74
; %bb.73:
	mov	x0, x19
	bl	_lean_dec_ref_cold
LBB34_74:
	mov	x0, x20
	b	LBB34_6
LBB34_75:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh132, Lloh133
	.loh AdrpLdr	Lloh134, Lloh135
	.loh AdrpLdr	Lloh136, Lloh137
	.loh AdrpLdrGot	Lloh138, Lloh139
	.loh AdrpLdr	Lloh140, Lloh141
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
lCPI35_0:
	.long	1                               ; 0x1
	.long	4110417944                      ; 0xf5000018
lCPI35_1:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x6
	mov	x19, x0
	cmp	x3, x4
	b.ne	LBB35_6
; %bb.1:
	mov	x23, x5
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB35_30
; %bb.2:
	sub	w8, w8, #1
	str	w8, [x19]
LBB35_3:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB35_74
; %bb.4:
Lloh142:
	adrp	x8, lCPI35_1@PAGE
Lloh143:
	ldr	d0, [x8, lCPI35_1@PAGEOFF]
	str	d0, [x0]
	stp	x23, x20, [x0, #8]
LBB35_5:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB35_6:
	mov	x22, x3
	mov	x21, x1
	add	x8, x2, x3, lsl #3
	ldr	x23, [x8, #24]
	tbnz	w23, #0, LBB35_9
; %bb.7:
	ldr	w8, [x23]
	cmp	w8, #1
	b.lt	LBB35_56
; %bb.8:
	add	w8, w8, #1
	str	w8, [x23]
LBB35_9:
	mov	x27, x2
	mov	x28, x4
Lloh144:
	adrp	x8, __MergedGlobals@PAGE+16
Lloh145:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+16]
	ldr	x4, [x21, #8]
	mov	x0, x23
	mov	w2, #1                          ; =0x1
	mov	x3, x21
	mov	x5, #0                          ; =0x0
	mov	x6, x1
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___Array_matchPrefix_spec__0
	ldr	x24, [x0, #8]
	tbnz	w24, #0, LBB35_12
; %bb.10:
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB35_58
; %bb.11:
	add	w8, w8, #1
	str	w8, [x24]
LBB35_12:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB35_32
; %bb.13:
	sub	w8, w8, #1
	str	w8, [x0]
LBB35_14:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB35_74
; %bb.15:
	mov	x25, x0
Lloh146:
	adrp	x8, lCPI35_0@PAGE
Lloh147:
	ldr	d0, [x8, lCPI35_0@PAGEOFF]
Lloh148:
	adrp	x8, _l_instDecidableEqString___boxed@GOTPAGE
Lloh149:
	ldr	x8, [x8, _l_instDecidableEqString___boxed@GOTPAGEOFF]
	str	d0, [x0]
	str	x8, [x0, #8]
	mov	w8, #2                          ; =0x2
	str	w8, [x0, #16]
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB35_34
; %bb.16:
	add	w8, w8, #1
	str	w8, [x19]
LBB35_17:
	mov	x0, x19
	mov	x1, x23
	bl	_l_Lean_Data_Trie_find_x3f___redArg
	mov	x26, x0
	tbnz	w24, #0, LBB35_24
; %bb.18:
	ldrb	w8, [x24, #7]
	cbz	w8, LBB35_25
LBB35_19:
	ldr	x2, [x24, #8]
	tbnz	w2, #0, LBB35_22
; %bb.20:
	ldr	w8, [x2]
	cmp	w8, #1
	b.lt	LBB35_62
; %bb.21:
	add	w8, w8, #1
	str	w8, [x2]
LBB35_22:
	ldr	w8, [x24]
	cmp	w8, #2
	b.lt	LBB35_36
; %bb.23:
	sub	w8, w8, #1
	str	w8, [x24]
	mov	x0, x25
	mov	x1, x26
	bl	_l_Option_instDecidableEq_decEq___redArg
	cbnz	w0, LBB35_26
	b	LBB35_39
LBB35_24:
	lsr	x8, x24, #1
	cbnz	w8, LBB35_19
LBB35_25:
	mov	w2, #1                          ; =0x1
	mov	x0, x25
	mov	x1, x26
	bl	_l_Option_instDecidableEq_decEq___redArg
	cbz	w0, LBB35_39
LBB35_26:
	ldr	w8, [x23]
	cmp	w8, #2
	b.lt	LBB35_54
; %bb.27:
	sub	w8, w8, #1
	str	w8, [x23]
LBB35_28:
	mov	w5, #1                          ; =0x1
	mov	x4, x28
	mov	x2, x27
LBB35_29:
	add	x3, x22, #1
	mov	x0, x19
	mov	x1, x21
	mov	x6, x20
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
LBB35_30:
	cbz	w8, LBB35_3
; %bb.31:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB35_3
LBB35_32:
	cbz	w8, LBB35_14
; %bb.33:
	bl	_lean_dec_ref_cold
	b	LBB35_14
LBB35_34:
	cbz	w8, LBB35_17
; %bb.35:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB35_17
LBB35_36:
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	cbz	w8, LBB35_38
; %bb.37:
	mov	x0, x24
	bl	_lean_dec_ref_cold
LBB35_38:
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x25
	mov	x1, x26
	bl	_l_Option_instDecidableEq_decEq___redArg
	cbnz	w0, LBB35_26
LBB35_39:
Lloh150:
	adrp	x8, __MergedGlobals@PAGE+112
Lloh151:
	ldr	x0, [x8, __MergedGlobals@PAGEOFF+112]
	mov	x1, x23
	bl	_lean_string_append
	ldr	w8, [x23]
	cmp	w8, #2
	b.lt	LBB35_60
; %bb.40:
	sub	w8, w8, #1
	str	w8, [x23]
LBB35_41:
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x20
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbnz	w0, #0, LBB35_45
; %bb.42:
	ldrb	w8, [x0, #7]
	mov	x4, x28
	mov	x2, x27
	cbz	w8, LBB35_46
LBB35_43:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB35_64
; %bb.44:
	sub	w8, w8, #1
	str	w8, [x19]
	b	LBB35_5
LBB35_45:
	lsr	x8, x0, #1
	mov	x4, x28
	mov	x2, x27
	cbnz	w8, LBB35_43
LBB35_46:
	ldr	x5, [x0, #8]
	tbnz	w5, #0, LBB35_49
; %bb.47:
	ldr	w8, [x5]
	cmp	w8, #1
	b.lt	LBB35_70
; %bb.48:
	add	w8, w8, #1
	str	w8, [x5]
LBB35_49:
	ldr	x20, [x0, #16]
	tbnz	w20, #0, LBB35_52
; %bb.50:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB35_72
; %bb.51:
	add	w8, w8, #1
	str	w8, [x20]
LBB35_52:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB35_67
; %bb.53:
	sub	w8, w8, #1
	str	w8, [x0]
	b	LBB35_29
LBB35_54:
	cbz	w8, LBB35_28
; %bb.55:
	mov	x0, x23
	bl	_lean_dec_ref_cold
	b	LBB35_28
LBB35_56:
	cbz	w8, LBB35_9
; %bb.57:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x23]
	b	LBB35_9
LBB35_58:
	cbz	w8, LBB35_12
; %bb.59:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x24]
	b	LBB35_12
LBB35_60:
	cbz	w8, LBB35_41
; %bb.61:
	mov	x24, x0
	mov	x0, x23
	bl	_lean_dec_ref_cold
	mov	x0, x24
	b	LBB35_41
LBB35_62:
	cbz	w8, LBB35_22
; %bb.63:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x2]
	b	LBB35_22
LBB35_64:
	mov	x20, x0
	cbz	w8, LBB35_66
; %bb.65:
	mov	x0, x19
	bl	_lean_dec_ref_cold
LBB35_66:
	mov	x0, x20
	b	LBB35_5
LBB35_67:
	mov	x23, x5
	cbz	w8, LBB35_69
; %bb.68:
	bl	_lean_dec_ref_cold
LBB35_69:
	mov	x4, x28
	mov	x2, x27
	mov	x5, x23
	b	LBB35_29
LBB35_70:
	cbz	w8, LBB35_49
; %bb.71:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x5]
	b	LBB35_49
LBB35_72:
	cbz	w8, LBB35_52
; %bb.73:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB35_52
LBB35_74:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh142, Lloh143
	.loh AdrpLdr	Lloh144, Lloh145
	.loh AdrpLdrGot	Lloh148, Lloh149
	.loh AdrpAdrp	Lloh146, Lloh148
	.loh AdrpLdr	Lloh146, Lloh147
	.loh AdrpLdr	Lloh150, Lloh151
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l_T_check
lCPI36_0:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_l_T_check
	.globl	_l_T_check
	.p2align	2
_l_T_check:                             ; @l_T_check
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x6, x1
	mov	x20, x0
	ldr	x19, [x0, #8]
	tbnz	w19, #0, LBB36_3
; %bb.1:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB36_76
; %bb.2:
	add	w8, w8, #1
	str	w8, [x19]
LBB36_3:
	ldr	x21, [x20, #16]
	tbnz	w21, #0, LBB36_6
; %bb.4:
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB36_78
; %bb.5:
	add	w8, w8, #1
	str	w8, [x21]
LBB36_6:
	ldr	w8, [x20]
	subs	w9, w8, #1
	b.ne	LBB36_14
; %bb.7:
	ldr	x0, [x20, #8]
	tbnz	w0, #0, LBB36_10
; %bb.8:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB36_82
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x0]
LBB36_10:
	mov	w8, #1                          ; =0x1
	str	x8, [x20, #8]
	ldr	x0, [x20, #16]
	tbnz	w0, #0, LBB36_13
; %bb.11:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB36_84
; %bb.12:
	sub	w8, w8, #1
	str	w8, [x0]
LBB36_13:
	mov	w8, #1                          ; =0x1
	str	x8, [x20, #16]
Lloh152:
	adrp	x8, _l_keys@PAGE
Lloh153:
	ldr	x22, [x8, _l_keys@PAGEOFF]
Lloh154:
	adrp	x23, __MergedGlobals@PAGE
Lloh155:
	add	x23, x23, __MergedGlobals@PAGEOFF
	ldrb	w8, [x23]
	cbnz	w8, LBB36_17
	b	LBB36_36
LBB36_14:
	cmp	w8, #2
	b.lt	LBB36_80
; %bb.15:
	str	w9, [x20]
LBB36_16:
	mov	w20, #1                         ; =0x1
Lloh156:
	adrp	x8, _l_keys@PAGE
Lloh157:
	ldr	x22, [x8, _l_keys@PAGEOFF]
Lloh158:
	adrp	x23, __MergedGlobals@PAGE
Lloh159:
	add	x23, x23, __MergedGlobals@PAGEOFF
	ldrb	w8, [x23]
	cbz	w8, LBB36_36
LBB36_17:
	ldrb	w8, [x23, #1]
	cbz	w8, LBB36_36
; %bb.18:
Lloh160:
	adrp	x8, __MergedGlobals@PAGE+120
Lloh161:
	ldr	x4, [x8, __MergedGlobals@PAGEOFF+120]
	tbnz	w19, #0, LBB36_21
; %bb.19:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB36_86
; %bb.20:
	add	w8, w8, #1
	str	w8, [x19]
LBB36_21:
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	mov	x3, #0                          ; =0x0
	mov	w5, #1                          ; =0x1
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	tbnz	w0, #0, LBB36_30
; %bb.22:
	ldrb	w8, [x0, #7]
	cbz	w8, LBB36_31
LBB36_23:
	tbnz	w20, #0, LBB36_26
; %bb.24:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB36_93
; %bb.25:
	sub	w8, w8, #1
	str	w8, [x20]
LBB36_26:
	tbnz	w21, #0, LBB36_29
; %bb.27:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB36_95
; %bb.28:
	sub	w8, w8, #1
	str	w8, [x21]
LBB36_29:
	tbz	w19, #0, LBB36_111
	b	LBB36_113
LBB36_30:
	lsr	x8, x0, #1
	cbnz	w8, LBB36_23
LBB36_31:
	ldr	x6, [x0, #16]
	tbnz	w6, #0, LBB36_34
; %bb.32:
	ldr	w8, [x6]
	cmp	w8, #1
	b.lt	LBB36_116
; %bb.33:
	add	w8, w8, #1
	str	w8, [x6]
LBB36_34:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB36_88
; %bb.35:
	sub	w8, w8, #1
	str	w8, [x0]
LBB36_36:
	ldrb	w8, [x23]
	cbz	w8, LBB36_56
LBB36_37:
	ldrb	w9, [x23, #1]
	cbz	w9, LBB36_56
; %bb.38:
Lloh162:
	adrp	x8, __MergedGlobals@PAGE+120
Lloh163:
	ldr	x4, [x8, __MergedGlobals@PAGEOFF+120]
	tbnz	w19, #0, LBB36_41
; %bb.39:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB36_91
; %bb.40:
	add	w8, w8, #1
	str	w8, [x19]
LBB36_41:
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	mov	x3, #0                          ; =0x0
	mov	w5, #1                          ; =0x1
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	tbnz	w0, #0, LBB36_49
; %bb.42:
	ldrb	w8, [x0, #7]
	cbz	w8, LBB36_50
LBB36_43:
	tbnz	w20, #0, LBB36_46
; %bb.44:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB36_106
; %bb.45:
	sub	w8, w8, #1
	str	w8, [x20]
LBB36_46:
	tbnz	w21, #0, LBB36_110
; %bb.47:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB36_108
; %bb.48:
	sub	w8, w8, #1
	str	w8, [x21]
	tbnz	w19, #0, LBB36_113
	b	LBB36_111
LBB36_49:
	lsr	x8, x0, #1
	cbnz	w8, LBB36_43
LBB36_50:
	ldr	x6, [x0, #16]
	tbnz	w6, #0, LBB36_53
; %bb.51:
	ldr	w8, [x6]
	cmp	w8, #1
	b.lt	LBB36_125
; %bb.52:
	add	w8, w8, #1
	str	w8, [x6]
LBB36_53:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB36_104
; %bb.54:
	sub	w8, w8, #1
	str	w8, [x0]
LBB36_55:
	adrp	x8, __MergedGlobals@PAGE
	ldrb	w8, [x8, __MergedGlobals@PAGEOFF]
LBB36_56:
	cbz	w8, LBB36_64
; %bb.57:
	adrp	x8, __MergedGlobals@PAGE+1
	ldrb	w8, [x8, __MergedGlobals@PAGEOFF+1]
	cbz	w8, LBB36_70
; %bb.58:
	tbnz	w20, #0, LBB36_61
; %bb.59:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB36_118
; %bb.60:
	sub	w8, w8, #1
	str	w8, [x20]
LBB36_61:
Lloh164:
	adrp	x8, __MergedGlobals@PAGE+120
Lloh165:
	ldr	x4, [x8, __MergedGlobals@PAGEOFF+120]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	mov	x3, #0                          ; =0x0
	mov	w5, #1                          ; =0x1
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	tbnz	w21, #0, LBB36_113
; %bb.62:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB36_120
; %bb.63:
	sub	w8, w8, #1
	str	w8, [x21]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB36_64:
	tbnz	w21, #0, LBB36_67
; %bb.65:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB36_123
; %bb.66:
	sub	w8, w8, #1
	str	w8, [x21]
LBB36_67:
	tbnz	w19, #0, LBB36_99
; %bb.68:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB36_97
; %bb.69:
	sub	w8, w8, #1
	str	w8, [x19]
	b	LBB36_99
LBB36_70:
	tbnz	w21, #0, LBB36_73
; %bb.71:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB36_127
; %bb.72:
	sub	w8, w8, #1
	str	w8, [x21]
LBB36_73:
	tbnz	w19, #0, LBB36_99
; %bb.74:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB36_97
; %bb.75:
	sub	w8, w8, #1
	str	w8, [x19]
	tbnz	w20, #0, LBB36_100
	b	LBB36_102
LBB36_76:
	cbz	w8, LBB36_3
; %bb.77:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB36_3
LBB36_78:
	cbz	w8, LBB36_6
; %bb.79:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x21]
	b	LBB36_6
LBB36_80:
	cbz	w8, LBB36_16
; %bb.81:
	mov	x0, x20
	mov	x20, x6
	bl	_lean_dec_ref_cold
	mov	x6, x20
	b	LBB36_16
LBB36_82:
	cbz	w8, LBB36_10
; %bb.83:
	mov	x22, x6
	bl	_lean_dec_ref_cold
	mov	x6, x22
	b	LBB36_10
LBB36_84:
	cbz	w8, LBB36_13
; %bb.85:
	mov	x22, x6
	bl	_lean_dec_ref_cold
	mov	x6, x22
	b	LBB36_13
LBB36_86:
	cbz	w8, LBB36_21
; %bb.87:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB36_21
LBB36_88:
	str	x6, [sp, #8]                    ; 8-byte Folded Spill
	cbz	w8, LBB36_90
; %bb.89:
	bl	_lean_dec_ref_cold
LBB36_90:
	ldr	x6, [sp, #8]                    ; 8-byte Folded Reload
	ldrb	w8, [x23]
	cbnz	w8, LBB36_37
	b	LBB36_56
LBB36_91:
	cbz	w8, LBB36_41
; %bb.92:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB36_41
LBB36_93:
	cbz	w8, LBB36_26
; %bb.94:
	mov	x22, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB36_26
LBB36_95:
	cbz	w8, LBB36_29
; %bb.96:
	mov	x20, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x20
	b	LBB36_29
LBB36_97:
	cbz	w8, LBB36_99
; %bb.98:
	mov	x0, x19
	mov	x19, x6
	bl	_lean_dec_ref_cold
	mov	x6, x19
LBB36_99:
	tbz	w20, #0, LBB36_102
LBB36_100:
	mov	x19, x6
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB36_129
; %bb.101:
	mov	x20, x0
Lloh166:
	adrp	x8, lCPI36_0@PAGE
Lloh167:
	ldr	d0, [x8, lCPI36_0@PAGEOFF]
	str	d0, [x0]
	mov	x6, x19
LBB36_102:
	mov	w8, #1                          ; =0x1
	stp	x8, x6, [x20, #8]
LBB36_103:
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB36_104:
	cbz	w8, LBB36_55
; %bb.105:
	mov	x23, x6
	bl	_lean_dec_ref_cold
	mov	x6, x23
	b	LBB36_55
LBB36_106:
	cbz	w8, LBB36_46
; %bb.107:
	mov	x22, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x22
	b	LBB36_46
LBB36_108:
	cbz	w8, LBB36_110
; %bb.109:
	mov	x20, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x20
LBB36_110:
	tbnz	w19, #0, LBB36_113
LBB36_111:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB36_114
; %bb.112:
	sub	w8, w8, #1
	str	w8, [x19]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB36_113:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB36_114:
	mov	x20, x0
	cbz	w8, LBB36_103
; %bb.115:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB36_103
LBB36_116:
	cbz	w8, LBB36_34
; %bb.117:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x6]
	b	LBB36_34
LBB36_118:
	cbz	w8, LBB36_61
; %bb.119:
	mov	x0, x20
	mov	x20, x6
	bl	_lean_dec_ref_cold
	mov	x6, x20
	b	LBB36_61
LBB36_120:
	mov	x19, x0
	cbz	w8, LBB36_122
; %bb.121:
	mov	x0, x21
	bl	_lean_dec_ref_cold
LBB36_122:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB36_123:
	cbz	w8, LBB36_67
; %bb.124:
	mov	x0, x21
	mov	x21, x6
	bl	_lean_dec_ref_cold
	mov	x6, x21
	b	LBB36_67
LBB36_125:
	cbz	w8, LBB36_53
; %bb.126:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x6]
	b	LBB36_53
LBB36_127:
	cbz	w8, LBB36_73
; %bb.128:
	mov	x0, x21
	mov	x21, x6
	bl	_lean_dec_ref_cold
	mov	x6, x21
	b	LBB36_73
LBB36_129:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpLdr	Lloh152, Lloh153
	.loh AdrpAdd	Lloh158, Lloh159
	.loh AdrpLdr	Lloh156, Lloh157
	.loh AdrpLdr	Lloh160, Lloh161
	.loh AdrpLdr	Lloh162, Lloh163
	.loh AdrpLdr	Lloh164, Lloh165
	.loh AdrpLdr	Lloh166, Lloh167
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x8, x3
	mov	x20, x2
	mov	x19, x1
	ldr	x3, [x3, #8]
	tbnz	w8, #0, LBB37_3
; %bb.1:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB37_15
; %bb.2:
	sub	w9, w9, #1
	str	w9, [x8]
LBB37_3:
	ldr	x21, [x4, #8]
	tbnz	w4, #0, LBB37_6
; %bb.4:
	ldr	w8, [x4]
	cmp	w8, #2
	b.lt	LBB37_17
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x4]
LBB37_6:
	mov	x1, x19
	mov	x2, x20
	mov	x4, x21
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2_spec__2
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB37_11
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x20]
LBB37_8:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB37_13
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x19]
LBB37_10:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB37_11:
	cbz	w8, LBB37_8
; %bb.12:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB37_8
LBB37_13:
	cbz	w8, LBB37_10
; %bb.14:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB37_15:
	cbz	w9, LBB37_3
; %bb.16:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x8
	mov	x21, x5
	stp	x4, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x4, x3, [sp]                    ; 16-byte Folded Reload
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	mov	x5, x21
	b	LBB37_3
LBB37_17:
	cbz	w8, LBB37_6
; %bb.18:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x4
	stp	x5, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	ldp	x5, x3, [sp]                    ; 16-byte Folded Reload
	b	LBB37_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x8, x3
	mov	x20, x2
	mov	x19, x1
	ldr	x3, [x3, #8]
	tbnz	w8, #0, LBB38_3
; %bb.1:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB38_15
; %bb.2:
	sub	w9, w9, #1
	str	w9, [x8]
LBB38_3:
	ldr	x21, [x4, #8]
	tbnz	w4, #0, LBB38_6
; %bb.4:
	ldr	w8, [x4]
	cmp	w8, #2
	b.lt	LBB38_17
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x4]
LBB38_6:
	mov	x1, x19
	mov	x2, x20
	mov	x4, x21
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__2
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB38_11
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x20]
LBB38_8:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB38_13
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x19]
LBB38_10:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB38_11:
	cbz	w8, LBB38_8
; %bb.12:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB38_8
LBB38_13:
	cbz	w8, LBB38_10
; %bb.14:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB38_15:
	cbz	w9, LBB38_3
; %bb.16:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x8
	mov	x21, x5
	stp	x4, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x4, x3, [sp]                    ; 16-byte Folded Reload
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	mov	x5, x21
	b	LBB38_3
LBB38_17:
	cbz	w8, LBB38_6
; %bb.18:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x4
	stp	x5, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	ldp	x5, x3, [sp]                    ; 16-byte Folded Reload
	b	LBB38_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x8, x3
	mov	x20, x2
	mov	x19, x1
	ldr	x3, [x3, #8]
	tbnz	w8, #0, LBB39_3
; %bb.1:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB39_15
; %bb.2:
	sub	w9, w9, #1
	str	w9, [x8]
LBB39_3:
	ldr	x21, [x4, #8]
	tbnz	w4, #0, LBB39_6
; %bb.4:
	ldr	w8, [x4]
	cmp	w8, #2
	b.lt	LBB39_17
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x4]
LBB39_6:
	mov	x1, x19
	mov	x2, x20
	mov	x4, x21
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4_spec__4
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB39_11
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x20]
LBB39_8:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB39_13
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x19]
LBB39_10:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB39_11:
	cbz	w8, LBB39_8
; %bb.12:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB39_8
LBB39_13:
	cbz	w8, LBB39_10
; %bb.14:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB39_15:
	cbz	w9, LBB39_3
; %bb.16:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x8
	mov	x21, x5
	stp	x4, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x4, x3, [sp]                    ; 16-byte Folded Reload
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	mov	x5, x21
	b	LBB39_3
LBB39_17:
	cbz	w8, LBB39_6
; %bb.18:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x4
	stp	x5, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	ldp	x5, x3, [sp]                    ; 16-byte Folded Reload
	b	LBB39_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x8, x3
	mov	x20, x2
	mov	x19, x1
	ldr	x3, [x3, #8]
	tbnz	w8, #0, LBB40_3
; %bb.1:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB40_15
; %bb.2:
	sub	w9, w9, #1
	str	w9, [x8]
LBB40_3:
	ldr	x21, [x4, #8]
	tbnz	w4, #0, LBB40_6
; %bb.4:
	ldr	w8, [x4]
	cmp	w8, #2
	b.lt	LBB40_17
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x4]
LBB40_6:
	mov	x1, x19
	mov	x2, x20
	mov	x4, x21
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__4
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB40_11
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x20]
LBB40_8:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB40_13
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x19]
LBB40_10:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB40_11:
	cbz	w8, LBB40_8
; %bb.12:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB40_8
LBB40_13:
	cbz	w8, LBB40_10
; %bb.14:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB40_15:
	cbz	w9, LBB40_3
; %bb.16:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x8
	mov	x21, x5
	stp	x4, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x4, x3, [sp]                    ; 16-byte Folded Reload
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	mov	x5, x21
	b	LBB40_3
LBB40_17:
	cbz	w8, LBB40_6
; %bb.18:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x4
	stp	x5, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	ldp	x5, x3, [sp]                    ; 16-byte Folded Reload
	b	LBB40_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x8, x3
	mov	x20, x2
	mov	x19, x1
	ldr	x3, [x3, #8]
	tbnz	w8, #0, LBB41_3
; %bb.1:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB41_15
; %bb.2:
	sub	w9, w9, #1
	str	w9, [x8]
LBB41_3:
	ldr	x21, [x4, #8]
	tbnz	w4, #0, LBB41_6
; %bb.4:
	ldr	w8, [x4]
	cmp	w8, #2
	b.lt	LBB41_17
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x4]
LBB41_6:
	mov	x1, x19
	mov	x2, x20
	mov	x4, x21
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at_____private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6_spec__6
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB41_11
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x20]
LBB41_8:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB41_13
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x19]
LBB41_10:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB41_11:
	cbz	w8, LBB41_8
; %bb.12:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB41_8
LBB41_13:
	cbz	w8, LBB41_10
; %bb.14:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB41_15:
	cbz	w9, LBB41_3
; %bb.16:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x8
	mov	x21, x5
	stp	x4, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x4, x3, [sp]                    ; 16-byte Folded Reload
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	mov	x5, x21
	b	LBB41_3
LBB41_17:
	cbz	w8, LBB41_6
; %bb.18:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x4
	stp	x5, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	ldp	x5, x3, [sp]                    ; 16-byte Folded Reload
	b	LBB41_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x8, x3
	mov	x20, x2
	mov	x19, x1
	ldr	x3, [x3, #8]
	tbnz	w8, #0, LBB42_3
; %bb.1:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB42_15
; %bb.2:
	sub	w9, w9, #1
	str	w9, [x8]
LBB42_3:
	ldr	x21, [x4, #8]
	tbnz	w4, #0, LBB42_6
; %bb.4:
	ldr	w8, [x4]
	cmp	w8, #2
	b.lt	LBB42_17
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x4]
LBB42_6:
	mov	x1, x19
	mov	x2, x20
	mov	x4, x21
	bl	_l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___T_check_spec__6
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB42_11
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x20]
LBB42_8:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB42_13
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x19]
LBB42_10:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB42_11:
	cbz	w8, LBB42_8
; %bb.12:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB42_8
LBB42_13:
	cbz	w8, LBB42_10
; %bb.14:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB42_15:
	cbz	w9, LBB42_3
; %bb.16:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x8
	mov	x21, x5
	stp	x4, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x4, x3, [sp]                    ; 16-byte Folded Reload
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	mov	x5, x21
	b	LBB42_3
LBB42_17:
	cbz	w8, LBB42_6
; %bb.18:
	stp	x6, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x4
	stp	x5, x3, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x6, x0, [sp, #16]               ; 16-byte Folded Reload
	ldp	x5, x3, [sp]                    ; 16-byte Folded Reload
	b	LBB42_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x20, x4
	mov	x19, x3
	subs	x22, x1, x2
	b.ls	LBB43_36
; %bb.1:
	add	x8, x0, x2, lsl #3
	add	x23, x8, #24
	mov	w24, #-1                        ; =0xffffffff
	adrp	x25, __MergedGlobals@PAGE+128
LBB43_2:                                ; =>This Inner Loop Header: Depth=1
	ldr	x21, [x23]
	tbnz	w21, #0, LBB43_5
; %bb.3:                                ;   in Loop: Header=BB43_2 Depth=1
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB43_30
; %bb.4:                                ;   in Loop: Header=BB43_2 Depth=1
	add	w8, w8, #1
	str	w8, [x21]
LBB43_5:                                ;   in Loop: Header=BB43_2 Depth=1
	ldr	x0, [x25, __MergedGlobals@PAGEOFF+128]
	mov	x1, x21
	bl	_lean_string_append
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x20
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbnz	w0, #0, LBB43_7
; %bb.6:                                ;   in Loop: Header=BB43_2 Depth=1
	ldrb	w8, [x0, #7]
	cbz	w8, LBB43_8
	b	LBB43_38
LBB43_7:                                ;   in Loop: Header=BB43_2 Depth=1
	lsr	x8, x0, #1
	cbnz	w8, LBB43_38
LBB43_8:                                ;   in Loop: Header=BB43_2 Depth=1
	ldr	x20, [x0, #16]
	tbnz	w20, #0, LBB43_11
; %bb.9:                                ;   in Loop: Header=BB43_2 Depth=1
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB43_32
; %bb.10:                               ;   in Loop: Header=BB43_2 Depth=1
	add	w8, w8, #1
	str	w8, [x20]
LBB43_11:                               ;   in Loop: Header=BB43_2 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB43_24
; %bb.12:                               ;   in Loop: Header=BB43_2 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
LBB43_13:                               ;   in Loop: Header=BB43_2 Depth=1
	mov	x0, x19
	mov	x1, x21
	bl	_l_T_insert
	mov	x19, x0
	ldr	w8, [x0]
	cmp	w8, #1
	b.lt	LBB43_26
; %bb.14:                               ;   in Loop: Header=BB43_2 Depth=1
	add	w8, w8, #1
	str	w8, [x19]
LBB43_15:                               ;   in Loop: Header=BB43_2 Depth=1
	mov	x0, x19
	mov	x1, x20
	bl	_l_T_check
	tbnz	w0, #0, LBB43_17
; %bb.16:                               ;   in Loop: Header=BB43_2 Depth=1
	ldrb	w8, [x0, #7]
	cbz	w8, LBB43_18
	b	LBB43_56
LBB43_17:                               ;   in Loop: Header=BB43_2 Depth=1
	lsr	x8, x0, #1
	cbnz	w8, LBB43_56
LBB43_18:                               ;   in Loop: Header=BB43_2 Depth=1
	ldr	x20, [x0, #16]
	tbnz	w20, #0, LBB43_21
; %bb.19:                               ;   in Loop: Header=BB43_2 Depth=1
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB43_34
; %bb.20:                               ;   in Loop: Header=BB43_2 Depth=1
	add	w8, w8, #1
	str	w8, [x20]
LBB43_21:                               ;   in Loop: Header=BB43_2 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB43_28
; %bb.22:                               ;   in Loop: Header=BB43_2 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
LBB43_23:                               ;   in Loop: Header=BB43_2 Depth=1
	add	x23, x23, #8
	subs	x22, x22, #1
	b.ne	LBB43_2
	b	LBB43_36
LBB43_24:                               ;   in Loop: Header=BB43_2 Depth=1
	cbz	w8, LBB43_13
; %bb.25:                               ;   in Loop: Header=BB43_2 Depth=1
	bl	_lean_dec_ref_cold
	b	LBB43_13
LBB43_26:                               ;   in Loop: Header=BB43_2 Depth=1
	cbz	w8, LBB43_15
; %bb.27:                               ;   in Loop: Header=BB43_2 Depth=1
	ldadd	w24, w8, [x19]
	b	LBB43_15
LBB43_28:                               ;   in Loop: Header=BB43_2 Depth=1
	cbz	w8, LBB43_23
; %bb.29:                               ;   in Loop: Header=BB43_2 Depth=1
	bl	_lean_dec_ref_cold
	b	LBB43_23
LBB43_30:                               ;   in Loop: Header=BB43_2 Depth=1
	cbz	w8, LBB43_5
; %bb.31:                               ;   in Loop: Header=BB43_2 Depth=1
	ldadd	w24, w8, [x21]
	b	LBB43_5
LBB43_32:                               ;   in Loop: Header=BB43_2 Depth=1
	cbz	w8, LBB43_11
; %bb.33:                               ;   in Loop: Header=BB43_2 Depth=1
	ldadd	w24, w8, [x20]
	b	LBB43_11
LBB43_34:                               ;   in Loop: Header=BB43_2 Depth=1
	cbz	w8, LBB43_21
; %bb.35:                               ;   in Loop: Header=BB43_2 Depth=1
	ldadd	w24, w8, [x20]
	b	LBB43_21
LBB43_36:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB43_69
; %bb.37:
	mov	w8, #24                         ; =0x18
	movk	w8, #2, lsl #16
	b	LBB43_54
LBB43_38:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB43_70
; %bb.39:
	sub	w8, w8, #1
	str	w8, [x21]
LBB43_40:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB43_72
; %bb.41:
	sub	w8, w8, #1
	str	w8, [x19]
LBB43_42:
	ldr	w8, [x0]
	cmp	w8, #1
	b.eq	LBB43_55
; %bb.43:
	ldp	x19, x20, [x0, #8]
	tbnz	w20, #0, LBB43_46
; %bb.44:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB43_76
; %bb.45:
	add	w8, w8, #1
	str	w8, [x20]
LBB43_46:
	tbnz	w19, #0, LBB43_49
; %bb.47:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB43_78
; %bb.48:
	add	w8, w8, #1
	str	w8, [x19]
LBB43_49:
	tbnz	w0, #0, LBB43_52
; %bb.50:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB43_80
; %bb.51:
	sub	w8, w8, #1
	str	w8, [x0]
LBB43_52:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB43_69
LBB43_53:
	mov	w8, #24                         ; =0x18
	movk	w8, #258, lsl #16
LBB43_54:
	mov	w9, #1                          ; =0x1
	stp	w9, w8, [x0]
	stp	x19, x20, [x0, #8]
LBB43_55:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB43_56:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB43_74
; %bb.57:
	sub	w8, w8, #1
	str	w8, [x19]
LBB43_58:
	ldr	w8, [x0]
	cmp	w8, #1
	b.eq	LBB43_55
; %bb.59:
	ldp	x19, x20, [x0, #8]
	tbnz	w20, #0, LBB43_62
; %bb.60:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB43_82
; %bb.61:
	add	w8, w8, #1
	str	w8, [x20]
LBB43_62:
	tbnz	w19, #0, LBB43_65
; %bb.63:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB43_84
; %bb.64:
	add	w8, w8, #1
	str	w8, [x19]
LBB43_65:
	tbnz	w0, #0, LBB43_68
; %bb.66:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB43_86
; %bb.67:
	sub	w8, w8, #1
	str	w8, [x0]
LBB43_68:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbnz	x0, LBB43_53
LBB43_69:
	bl	_lean_internal_panic_out_of_memory
LBB43_70:
	cbz	w8, LBB43_40
; %bb.71:
	mov	x20, x0
	mov	x0, x21
	bl	_lean_dec_ref_cold
	mov	x0, x20
	b	LBB43_40
LBB43_72:
	cbz	w8, LBB43_42
; %bb.73:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	b	LBB43_42
LBB43_74:
	cbz	w8, LBB43_58
; %bb.75:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	b	LBB43_58
LBB43_76:
	cbz	w8, LBB43_46
; %bb.77:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB43_46
LBB43_78:
	cbz	w8, LBB43_49
; %bb.79:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB43_49
LBB43_80:
	cbz	w8, LBB43_52
; %bb.81:
	bl	_lean_dec_ref_cold
	b	LBB43_52
LBB43_82:
	cbz	w8, LBB43_62
; %bb.83:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB43_62
LBB43_84:
	cbz	w8, LBB43_65
; %bb.85:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB43_65
LBB43_86:
	cbz	w8, LBB43_68
; %bb.87:
	bl	_lean_dec_ref_cold
	b	LBB43_68
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1 ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x5
	subs	x21, x2, x3
	b.ls	LBB44_48
; %bb.1:
	mov	x22, x0
	add	x8, x1, x3, lsl #3
	add	x23, x8, #24
	adrp	x24, __MergedGlobals@PAGE+136
	mov	w25, #-1                        ; =0xffffffff
	adrp	x26, _l_T_empty@PAGE
LBB44_2:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x24, __MergedGlobals@PAGEOFF+136]
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x19
	bl	_l_IO_print___at___IO_println___at___T_check_spec__0_spec__0
	tbnz	w0, #0, LBB44_4
; %bb.3:                                ;   in Loop: Header=BB44_2 Depth=1
	ldrb	w8, [x0, #7]
	cbz	w8, LBB44_5
	b	LBB44_51
LBB44_4:                                ;   in Loop: Header=BB44_2 Depth=1
	lsr	x8, x0, #1
	cbnz	w8, LBB44_51
LBB44_5:                                ;   in Loop: Header=BB44_2 Depth=1
	ldr	x1, [x0, #16]
	tbnz	w1, #0, LBB44_8
; %bb.6:                                ;   in Loop: Header=BB44_2 Depth=1
	ldr	w8, [x1]
	cmp	w8, #1
	b.lt	LBB44_40
; %bb.7:                                ;   in Loop: Header=BB44_2 Depth=1
	add	w8, w8, #1
	str	w8, [x1]
LBB44_8:                                ;   in Loop: Header=BB44_2 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB44_32
; %bb.9:                                ;   in Loop: Header=BB44_2 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
LBB44_10:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	x19, [x26, _l_T_empty@PAGEOFF]
	mov	x0, x19
	bl	_l_T_check
	tbnz	w0, #0, LBB44_12
; %bb.11:                               ;   in Loop: Header=BB44_2 Depth=1
	ldrb	w8, [x0, #7]
	cbz	w8, LBB44_13
	b	LBB44_51
LBB44_12:                               ;   in Loop: Header=BB44_2 Depth=1
	lsr	x8, x0, #1
	cbnz	w8, LBB44_51
LBB44_13:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	x4, [x0, #16]
	tbnz	w4, #0, LBB44_16
; %bb.14:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	w8, [x4]
	cmp	w8, #1
	b.lt	LBB44_42
; %bb.15:                               ;   in Loop: Header=BB44_2 Depth=1
	add	w8, w8, #1
	str	w8, [x4]
LBB44_16:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB44_34
; %bb.17:                               ;   in Loop: Header=BB44_2 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
LBB44_18:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	x20, [x23]
	tbnz	w20, #0, LBB44_21
; %bb.19:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB44_44
; %bb.20:                               ;   in Loop: Header=BB44_2 Depth=1
	add	w8, w8, #1
	str	w8, [x20]
LBB44_21:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	x1, [x20, #8]
	mov	x0, x20
	mov	x2, #0                          ; =0x0
	mov	x3, x19
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB44_36
; %bb.22:                               ;   in Loop: Header=BB44_2 Depth=1
	sub	w8, w8, #1
	str	w8, [x20]
LBB44_23:                               ;   in Loop: Header=BB44_2 Depth=1
	tbnz	w0, #0, LBB44_25
; %bb.24:                               ;   in Loop: Header=BB44_2 Depth=1
	ldrb	w8, [x0, #7]
	cbz	w8, LBB44_26
	b	LBB44_52
LBB44_25:                               ;   in Loop: Header=BB44_2 Depth=1
	lsr	x8, x0, #1
	cbnz	w8, LBB44_52
LBB44_26:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	x19, [x0, #16]
	tbnz	w19, #0, LBB44_29
; %bb.27:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB44_46
; %bb.28:                               ;   in Loop: Header=BB44_2 Depth=1
	add	w8, w8, #1
	str	w8, [x19]
LBB44_29:                               ;   in Loop: Header=BB44_2 Depth=1
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB44_38
; %bb.30:                               ;   in Loop: Header=BB44_2 Depth=1
	sub	w8, w8, #1
	str	w8, [x0]
LBB44_31:                               ;   in Loop: Header=BB44_2 Depth=1
	add	x23, x23, #8
	subs	x21, x21, #1
	b.ne	LBB44_2
	b	LBB44_64
LBB44_32:                               ;   in Loop: Header=BB44_2 Depth=1
	cbz	w8, LBB44_10
; %bb.33:                               ;   in Loop: Header=BB44_2 Depth=1
	mov	x19, x1
	bl	_lean_dec_ref_cold
	mov	x1, x19
	b	LBB44_10
LBB44_34:                               ;   in Loop: Header=BB44_2 Depth=1
	cbz	w8, LBB44_18
; %bb.35:                               ;   in Loop: Header=BB44_2 Depth=1
	mov	x20, x4
	bl	_lean_dec_ref_cold
	mov	x4, x20
	b	LBB44_18
LBB44_36:                               ;   in Loop: Header=BB44_2 Depth=1
	cbz	w8, LBB44_23
; %bb.37:                               ;   in Loop: Header=BB44_2 Depth=1
	mov	x19, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x19
	b	LBB44_23
LBB44_38:                               ;   in Loop: Header=BB44_2 Depth=1
	cbz	w8, LBB44_31
; %bb.39:                               ;   in Loop: Header=BB44_2 Depth=1
	bl	_lean_dec_ref_cold
	b	LBB44_31
LBB44_40:                               ;   in Loop: Header=BB44_2 Depth=1
	cbz	w8, LBB44_8
; %bb.41:                               ;   in Loop: Header=BB44_2 Depth=1
	ldadd	w25, w8, [x1]
	b	LBB44_8
LBB44_42:                               ;   in Loop: Header=BB44_2 Depth=1
	cbz	w8, LBB44_16
; %bb.43:                               ;   in Loop: Header=BB44_2 Depth=1
	ldadd	w25, w8, [x4]
	b	LBB44_16
LBB44_44:                               ;   in Loop: Header=BB44_2 Depth=1
	cbz	w8, LBB44_21
; %bb.45:                               ;   in Loop: Header=BB44_2 Depth=1
	ldadd	w25, w8, [x20]
	b	LBB44_21
LBB44_46:                               ;   in Loop: Header=BB44_2 Depth=1
	cbz	w8, LBB44_29
; %bb.47:                               ;   in Loop: Header=BB44_2 Depth=1
	ldadd	w25, w8, [x19]
	b	LBB44_29
LBB44_48:
	mov	x20, x4
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB44_65
LBB44_49:
	mov	w8, #24                         ; =0x18
	movk	w8, #2, lsl #16
LBB44_50:
	mov	w9, #1                          ; =0x1
	stp	w9, w8, [x0]
	stp	x20, x19, [x0, #8]
LBB44_51:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB44_52:
	ldr	w8, [x0]
	cmp	w8, #1
	b.eq	LBB44_51
; %bb.53:
	ldp	x20, x19, [x0, #8]
	tbnz	w19, #0, LBB44_56
; %bb.54:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB44_66
; %bb.55:
	add	w8, w8, #1
	str	w8, [x19]
LBB44_56:
	tbnz	w20, #0, LBB44_59
; %bb.57:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB44_68
; %bb.58:
	add	w8, w8, #1
	str	w8, [x20]
LBB44_59:
	tbnz	w0, #0, LBB44_62
; %bb.60:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB44_70
; %bb.61:
	sub	w8, w8, #1
	str	w8, [x0]
LBB44_62:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB44_65
; %bb.63:
	mov	w8, #24                         ; =0x18
	movk	w8, #258, lsl #16
	b	LBB44_50
LBB44_64:
	mov	x20, x22
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbnz	x0, LBB44_49
LBB44_65:
	bl	_lean_internal_panic_out_of_memory
LBB44_66:
	cbz	w8, LBB44_56
; %bb.67:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB44_56
LBB44_68:
	cbz	w8, LBB44_59
; %bb.69:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB44_59
LBB44_70:
	cbz	w8, LBB44_62
; %bb.71:
	bl	_lean_dec_ref_cold
	b	LBB44_62
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function _lean_main
lCPI45_0:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__lean_main
	.globl	__lean_main
	.p2align	2
__lean_main:                            ; @_lean_main
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x5, x0
Lloh168:
	adrp	x8, __MergedGlobals@PAGE+144
Lloh169:
	add	x8, x8, __MergedGlobals@PAGEOFF+144
	ldp	x1, x2, [x8]
	mov	w0, #1                          ; =0x1
	mov	x3, #0                          ; =0x0
	mov	w4, #1                          ; =0x1
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	tbnz	w0, #0, LBB45_3
; %bb.1:
	ldrb	w8, [x0, #7]
	cbz	w8, LBB45_4
LBB45_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB45_3:
	lsr	x8, x0, #1
	cbnz	w8, LBB45_2
LBB45_4:
	ldr	w8, [x0]
	cmp	w8, #1
	b.ne	LBB45_9
; %bb.5:
	ldr	x8, [x0, #8]
	tbnz	w8, #0, LBB45_8
; %bb.6:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB45_17
; %bb.7:
	sub	w9, w9, #1
	str	w9, [x8]
LBB45_8:
	mov	w8, #1                          ; =0x1
	str	x8, [x0, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB45_9:
	ldr	x19, [x0, #16]
	tbnz	w19, #0, LBB45_12
; %bb.10:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB45_19
; %bb.11:
	add	w8, w8, #1
	str	w8, [x19]
LBB45_12:
	tbnz	w0, #0, LBB45_15
; %bb.13:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB45_21
; %bb.14:
	sub	w8, w8, #1
	str	w8, [x0]
LBB45_15:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB45_23
; %bb.16:
Lloh170:
	adrp	x8, lCPI45_0@PAGE
Lloh171:
	ldr	d0, [x8, lCPI45_0@PAGEOFF]
	str	d0, [x0]
	mov	w8, #1                          ; =0x1
	stp	x8, x19, [x0, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB45_17:
	cbz	w9, LBB45_8
; %bb.18:
	mov	x19, x0
	mov	x0, x8
	bl	_lean_dec_ref_cold
	mov	x0, x19
	mov	w8, #1                          ; =0x1
	str	x8, [x19, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB45_19:
	cbz	w8, LBB45_12
; %bb.20:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB45_12
LBB45_21:
	cbz	w8, LBB45_15
; %bb.22:
	bl	_lean_dec_ref_cold
	b	LBB45_15
LBB45_23:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpLdr	Lloh170, Lloh171
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x8, x1
	mov	x19, x0
	ldr	x1, [x1, #8]
	tbnz	w8, #0, LBB46_3
; %bb.1:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB46_11
; %bb.2:
	sub	w9, w9, #1
	str	w9, [x8]
LBB46_3:
	ldr	x20, [x2, #8]
	tbnz	w2, #0, LBB46_6
; %bb.4:
	ldr	w8, [x2]
	cmp	w8, #2
	b.lt	LBB46_13
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x2]
LBB46_6:
	mov	x0, x19
	mov	x2, x20
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__0
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB46_9
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x19]
LBB46_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB46_9:
	cbz	w8, LBB46_8
; %bb.10:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB46_11:
	cbz	w9, LBB46_3
; %bb.12:
	mov	x0, x8
	stp	x1, x4, [sp, #16]               ; 16-byte Folded Spill
	mov	x20, x3
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x2, x1, [sp, #8]                ; 16-byte Folded Reload
	mov	x3, x20
	ldr	x4, [sp, #24]                   ; 8-byte Folded Reload
	b	LBB46_3
LBB46_13:
	cbz	w8, LBB46_6
; %bb.14:
	mov	x0, x2
	stp	x1, x4, [sp, #16]               ; 16-byte Folded Spill
	str	x3, [sp, #8]                    ; 8-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x3, x1, [sp, #8]                ; 16-byte Folded Reload
	ldr	x4, [sp, #24]                   ; 8-byte Folded Reload
	b	LBB46_6
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed ; -- Begin function l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed
	.globl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed
	.p2align	2
_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed: ; @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x8, x2
	mov	x19, x1
	ldr	x2, [x2, #8]
	tbnz	w8, #0, LBB47_3
; %bb.1:
	ldr	w9, [x8]
	cmp	w9, #2
	b.lt	LBB47_11
; %bb.2:
	sub	w9, w9, #1
	str	w9, [x8]
LBB47_3:
	ldr	x20, [x3, #8]
	tbnz	w3, #0, LBB47_6
; %bb.4:
	ldr	w8, [x3]
	cmp	w8, #2
	b.lt	LBB47_13
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x3]
LBB47_6:
	mov	x1, x19
	mov	x3, x20
	bl	_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___main_spec__1
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB47_9
; %bb.7:
	sub	w8, w8, #1
	str	w8, [x19]
LBB47_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB47_9:
	cbz	w8, LBB47_8
; %bb.10:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB47_11:
	cbz	w9, LBB47_3
; %bb.12:
	stp	x5, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x8
	mov	x20, x4
	stp	x3, x2, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x3, x2, [sp]                    ; 16-byte Folded Reload
	ldp	x5, x0, [sp, #16]               ; 16-byte Folded Reload
	mov	x4, x20
	b	LBB47_3
LBB47_13:
	cbz	w8, LBB47_6
; %bb.14:
	stp	x5, x0, [sp, #16]               ; 16-byte Folded Spill
	mov	x0, x3
	stp	x4, x2, [sp]                    ; 16-byte Folded Spill
	bl	_lean_dec_ref_cold
	ldp	x5, x0, [sp, #16]               ; 16-byte Folded Reload
	ldp	x4, x2, [sp]                    ; 16-byte Folded Reload
	b	LBB47_6
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function initialize_trie
lCPI48_0:
	.quad	0                               ; 0x0
	.quad	12                              ; 0xc
lCPI48_2:
	.quad	0                               ; 0x0
	.quad	9                               ; 0x9
lCPI48_3:
	.quad	0                               ; 0x0
	.quad	2                               ; 0x2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
lCPI48_1:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_initialize_trie
	.globl	_initialize_trie
	.p2align	2
_initialize_trie:                       ; @initialize_trie
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-80]!             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	adrp	x8, __MergedGlobals@PAGE+2
	ldrb	w9, [x8, __MergedGlobals@PAGEOFF+2]
	cmp	w9, #1
	b.ne	LBB48_3
; %bb.1:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB48_24
LBB48_2:
Lloh172:
	adrp	x8, lCPI48_1@PAGE
Lloh173:
	ldr	d0, [x8, lCPI48_1@PAGEOFF]
	str	d0, [x0]
	mov	w8, #1                          ; =0x1
	stp	x8, x8, [x0, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #80               ; 16-byte Folded Reload
	ret
LBB48_3:
	mov	w9, #1                          ; =0x1
	strb	w9, [x8, __MergedGlobals@PAGEOFF+2]
	mov	x19, x0
	mov	w1, #1                          ; =0x1
	bl	_initialize_Init
	ldrb	w8, [x0, #7]
	cmp	w8, #1
	b.eq	LBB48_7
; %bb.4:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB48_16
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x0]
LBB48_6:
	mov	x0, x19
	mov	w1, #1                          ; =0x1
	bl	_initialize_Lean_Data_Trie
	ldrb	w8, [x0, #7]
	cmp	w8, #1
	b.ne	LBB48_8
LBB48_7:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #80               ; 16-byte Folded Reload
	ret
LBB48_8:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB48_18
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x0]
LBB48_10:
	mov	w19, #-167772160                ; =0xf6000000
Lloh174:
	adrp	x0, l_.str@PAGE
Lloh175:
	add	x0, x0, l_.str@PAGEOFF
	mov	x1, #0                          ; =0x0
	mov	x2, #0                          ; =0x0
	bl	_lean_mk_string_unchecked
Lloh176:
	adrp	x21, __MergedGlobals@PAGE+160
Lloh177:
	add	x21, x21, __MergedGlobals@PAGEOFF+160
	str	x0, [x21]
	bl	_lean_mark_persistent
Lloh178:
	adrp	x0, l_.str.1@PAGE
Lloh179:
	add	x0, x0, l_.str.1@PAGEOFF
	mov	w20, #1                         ; =0x1
	mov	w1, #1                          ; =0x1
	mov	w2, #1                          ; =0x1
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #8]
	bl	_lean_mark_persistent
Lloh180:
	adrp	x0, l_.str.2@PAGE
Lloh181:
	add	x0, x0, l_.str.2@PAGEOFF
	mov	w1, #5                          ; =0x5
	mov	w2, #5                          ; =0x5
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #16]
	bl	_lean_mark_persistent
Lloh182:
	adrp	x0, l_.str.3@PAGE
Lloh183:
	add	x0, x0, l_.str.3@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #6                          ; =0x6
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #24]
	bl	_lean_mark_persistent
Lloh184:
	adrp	x0, l_.str.4@PAGE
Lloh185:
	add	x0, x0, l_.str.4@PAGEOFF
	mov	w1, #7                          ; =0x7
	mov	w2, #7                          ; =0x7
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #32]
	bl	_lean_mark_persistent
Lloh186:
	adrp	x0, l_.str.5@PAGE
Lloh187:
	add	x0, x0, l_.str.5@PAGEOFF
	mov	w1, #10                         ; =0xa
	mov	w2, #10                         ; =0xa
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #40]
	bl	_lean_mark_persistent
Lloh188:
	adrp	x0, l_.str.6@PAGE
Lloh189:
	add	x0, x0, l_.str.6@PAGEOFF
	mov	w1, #5                          ; =0x5
	mov	w2, #5                          ; =0x5
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #48]
	bl	_lean_mark_persistent
Lloh190:
	adrp	x0, l_.str.7@PAGE
Lloh191:
	add	x0, x0, l_.str.7@PAGEOFF
	mov	w1, #5                          ; =0x5
	mov	w2, #5                          ; =0x5
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #56]
	bl	_lean_mark_persistent
Lloh192:
	adrp	x0, l_.str.8@PAGE
Lloh193:
	add	x0, x0, l_.str.8@PAGEOFF
	mov	w1, #3                          ; =0x3
	mov	w2, #2                          ; =0x2
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #64]
	bl	_lean_mark_persistent
Lloh194:
	adrp	x0, l_.str.9@PAGE
Lloh195:
	add	x0, x0, l_.str.9@PAGEOFF
	mov	w1, #3                          ; =0x3
	mov	w2, #2                          ; =0x2
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #72]
	bl	_lean_mark_persistent
Lloh196:
	adrp	x0, l_.str.10@PAGE
Lloh197:
	add	x0, x0, l_.str.10@PAGEOFF
	mov	w1, #3                          ; =0x3
	mov	w2, #2                          ; =0x2
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #80]
	bl	_lean_mark_persistent
Lloh198:
	adrp	x0, l_.str.11@PAGE
Lloh199:
	add	x0, x0, l_.str.11@PAGEOFF
	mov	w1, #4                          ; =0x4
	mov	w2, #1                          ; =0x1
	bl	_lean_mk_string_unchecked
	str	x0, [x21, #88]
	bl	_lean_mark_persistent
	mov	w0, #120                        ; =0x78
	bl	_lean_alloc_object
	str	w20, [x0]
	lsr	w8, w19, #16
	strh	w8, [x0, #6]
Lloh200:
	adrp	x8, lCPI48_0@PAGE
Lloh201:
	ldr	q0, [x8, lCPI48_0@PAGEOFF]
	stur	q0, [x0, #8]
	str	x0, [x21, #96]
	bl	_lean_mark_persistent
	ldr	x1, [x21]
	ldr	x0, [x21, #96]
	bl	_lean_array_push
	str	x0, [x21, #104]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #8]
	ldr	x0, [x21, #104]
	bl	_lean_array_push
	str	x0, [x21, #112]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #16]
	ldr	x0, [x21, #112]
	bl	_lean_array_push
	str	x0, [x21, #120]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #24]
	ldr	x0, [x21, #120]
	bl	_lean_array_push
	str	x0, [x21, #128]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #32]
	ldr	x0, [x21, #128]
	bl	_lean_array_push
	str	x0, [x21, #136]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #40]
	ldr	x0, [x21, #136]
	bl	_lean_array_push
	str	x0, [x21, #144]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #48]
	ldr	x0, [x21, #144]
	bl	_lean_array_push
	str	x0, [x21, #152]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #56]
	ldr	x0, [x21, #152]
	bl	_lean_array_push
	str	x0, [x21, #160]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #64]
	ldr	x0, [x21, #160]
	bl	_lean_array_push
	str	x0, [x21, #168]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #72]
	ldr	x0, [x21, #168]
	bl	_lean_array_push
	str	x0, [x21, #176]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #80]
	ldr	x0, [x21, #176]
	bl	_lean_array_push
	str	x0, [x21, #184]
	bl	_lean_mark_persistent
	ldr	x1, [x21, #88]
	ldr	x0, [x21, #184]
	bl	_lean_array_push
	str	x0, [x21, #192]
	bl	_lean_mark_persistent
	ldr	x0, [x21, #192]
	adrp	x22, _l_keys@PAGE
	str	x0, [x22, _l_keys@PAGEOFF]
	bl	_lean_mark_persistent
	mov	w0, #1                          ; =0x1
	bl	_l_Lean_Data_Trie_empty
	str	x0, [x21, #200]
	bl	_lean_mark_persistent
	mov	w0, #1                          ; =0x1
	bl	_l_Array_empty
	str	x0, [x21, #208]
	bl	_lean_mark_persistent
	ldp	x21, x23, [x21, #200]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB48_24
; %bb.11:
Lloh202:
	adrp	x8, lCPI48_1@PAGE
Lloh203:
	ldr	d8, [x8, lCPI48_1@PAGEOFF]
	str	d8, [x0]
	stp	x21, x23, [x0, #8]
Lloh204:
	adrp	x21, __MergedGlobals@PAGE+8
Lloh205:
	add	x21, x21, __MergedGlobals@PAGEOFF+8
	str	x0, [x21, #368]
	bl	_lean_mark_persistent
	ldr	x0, [x21, #368]
	adrp	x8, _l_T_empty@PAGE
	str	x0, [x8, _l_T_empty@PAGEOFF]
	bl	_lean_mark_persistent
	mov	w0, #24                         ; =0x18
	bl	_lean_alloc_object
	ldrh	w8, [x0, #4]
	orr	w8, w8, w19
	stp	w20, w8, [x0]
	stp	xzr, xzr, [x0, #8]
	str	x0, [x21]
	bl	_lean_mark_persistent
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB48_24
; %bb.12:
	str	d8, [x0]
	mov	w21, #1                         ; =0x1
	stp	x21, x21, [x0, #8]
Lloh206:
	adrp	x20, __MergedGlobals@PAGE+16
Lloh207:
	add	x20, x20, __MergedGlobals@PAGEOFF+16
	str	x0, [x20]
	bl	_lean_mark_persistent
Lloh208:
	adrp	x0, l_.str.12@PAGE
Lloh209:
	add	x0, x0, l_.str.12@PAGEOFF
	mov	w1, #10                         ; =0xa
	mov	w2, #10                         ; =0xa
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #56]
	bl	_lean_mark_persistent
	ldr	x8, [x20, #56]
	ldr	x8, [x8, #8]
	lsl	x8, x8, #1
	sub	x0, x8, #1
	str	x0, [x20, #64]
	bl	_lean_mark_persistent
Lloh210:
	adrp	x0, l_.str.13@PAGE
Lloh211:
	add	x0, x0, l_.str.13@PAGEOFF
	mov	w1, #41                         ; =0x29
	mov	w2, #41                         ; =0x29
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #72]
	bl	_lean_mark_persistent
Lloh212:
	adrp	x0, l_.str.14@PAGE
Lloh213:
	add	x0, x0, l_.str.14@PAGEOFF
	mov	w1, #1                          ; =0x1
	mov	w2, #1                          ; =0x1
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #80]
	bl	_lean_mark_persistent
Lloh214:
	adrp	x0, l_.str.15@PAGE
Lloh215:
	add	x0, x0, l_.str.15@PAGEOFF
	mov	w1, #27                         ; =0x1b
	mov	w2, #27                         ; =0x1b
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #8]
	bl	_lean_mark_persistent
Lloh216:
	adrp	x0, l_.str.16@PAGE
Lloh217:
	add	x0, x0, l_.str.16@PAGEOFF
	mov	w1, #7                          ; =0x7
	mov	w2, #7                          ; =0x7
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #16]
	bl	_lean_mark_persistent
Lloh218:
	adrp	x0, l_.str.17@PAGE
Lloh219:
	add	x0, x0, l_.str.17@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #6                          ; =0x6
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #48]
	bl	_lean_mark_persistent
Lloh220:
	adrp	x0, l_.str.18@PAGE
Lloh221:
	add	x0, x0, l_.str.18@PAGEOFF
	mov	w1, #4                          ; =0x4
	mov	w2, #4                          ; =0x4
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #24]
	bl	_lean_mark_persistent
Lloh222:
	adrp	x0, l_.str.19@PAGE
Lloh223:
	add	x0, x0, l_.str.19@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #6                          ; =0x6
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #32]
	bl	_lean_mark_persistent
Lloh224:
	adrp	x0, l_.str.20@PAGE
Lloh225:
	add	x0, x0, l_.str.20@PAGEOFF
	mov	w1, #1                          ; =0x1
	mov	w2, #1                          ; =0x1
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #40]
	bl	_lean_mark_persistent
Lloh226:
	adrp	x0, l_.str.21@PAGE
Lloh227:
	add	x0, x0, l_.str.21@PAGEOFF
	mov	w1, #26                         ; =0x1a
	mov	w2, #26                         ; =0x1a
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #88]
	bl	_lean_mark_persistent
Lloh228:
	adrp	x0, l_.str.22@PAGE
Lloh229:
	add	x0, x0, l_.str.22@PAGEOFF
	mov	w1, #21                         ; =0x15
	mov	w2, #21                         ; =0x15
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #96]
	bl	_lean_mark_persistent
	ldr	x8, [x22, _l_keys@PAGEOFF]
	ldr	x8, [x8, #8]
	orr	x0, x21, x8, lsl #1
	str	x0, [x20, #368]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #368]
	tbz	w1, #0, LBB48_20
; %bb.13:
	cmp	x1, #1
	cset	w0, hi
	adrp	x8, __MergedGlobals@PAGE
	strb	w0, [x8, __MergedGlobals@PAGEOFF]
	tbz	w1, #0, LBB48_21
LBB48_14:
	mov	w0, #1                          ; =0x1
	adrp	x8, __MergedGlobals@PAGE+1
	strb	w0, [x8, __MergedGlobals@PAGEOFF+1]
	tbnz	w1, #0, LBB48_22
LBB48_15:
	mov	x0, x1
	bl	_lean_usize_of_big_nat
	b	LBB48_23
LBB48_16:
	cbz	w8, LBB48_6
; %bb.17:
	bl	_lean_dec_ref_cold
	b	LBB48_6
LBB48_18:
	cbz	w8, LBB48_10
; %bb.19:
	bl	_lean_dec_ref_cold
	b	LBB48_10
LBB48_20:
	mov	w0, #1                          ; =0x1
	bl	_lean_nat_big_lt
Lloh230:
	adrp	x8, __MergedGlobals@PAGE+384
Lloh231:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+384]
Lloh232:
	adrp	x8, __MergedGlobals@PAGE
	strb	w0, [x8, __MergedGlobals@PAGEOFF]
	tbnz	w1, #0, LBB48_14
LBB48_21:
	mov	x0, x1
	bl	_lean_nat_big_le
Lloh233:
	adrp	x8, __MergedGlobals@PAGE+384
Lloh234:
	ldr	x1, [x8, __MergedGlobals@PAGEOFF+384]
Lloh235:
	adrp	x8, __MergedGlobals@PAGE+1
	strb	w0, [x8, __MergedGlobals@PAGEOFF+1]
	tbz	w1, #0, LBB48_15
LBB48_22:
	lsr	x0, x1, #1
LBB48_23:
Lloh236:
	adrp	x20, __MergedGlobals@PAGE+120
Lloh237:
	add	x20, x20, __MergedGlobals@PAGEOFF+120
	str	x0, [x20]
Lloh238:
	adrp	x0, l_.str.23@PAGE
Lloh239:
	add	x0, x0, l_.str.23@PAGEOFF
	mov	w1, #10                         ; =0xa
	mov	w2, #10                         ; =0xa
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #8]
	bl	_lean_mark_persistent
Lloh240:
	adrp	x0, l_.str.24@PAGE
Lloh241:
	add	x0, x0, l_.str.24@PAGEOFF
	mov	w1, #14                         ; =0xe
	mov	w2, #14                         ; =0xe
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #16]
	bl	_lean_mark_persistent
	mov	w0, #96                         ; =0x60
	bl	_lean_alloc_object
	mov	w21, #1                         ; =0x1
	ldrh	w8, [x0, #4]
	orr	w8, w8, w19
	stp	w21, w8, [x0]
Lloh242:
	adrp	x8, lCPI48_2@PAGE
Lloh243:
	ldr	q0, [x8, lCPI48_2@PAGEOFF]
	stur	q0, [x0, #8]
	str	x0, [x20, #272]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #56]
	ldr	x0, [x20, #272]
	bl	_lean_array_push
	str	x0, [x20, #280]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #88]
	ldr	x0, [x20, #280]
	bl	_lean_array_push
	str	x0, [x20, #288]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #72]
	ldr	x0, [x20, #288]
	bl	_lean_array_push
	str	x0, [x20, #296]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #48]
	ldr	x0, [x20, #296]
	bl	_lean_array_push
	str	x0, [x20, #304]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #104]
	ldr	x0, [x20, #304]
	bl	_lean_array_push
	str	x0, [x20, #312]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #112]
	ldr	x0, [x20, #312]
	bl	_lean_array_push
	str	x0, [x20, #320]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #128]
	ldr	x0, [x20, #320]
	bl	_lean_array_push
	str	x0, [x20, #328]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #40]
	ldr	x0, [x20, #328]
	bl	_lean_array_push
	str	x0, [x20, #336]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #112]
	ldr	x0, [x20, #336]
	bl	_lean_array_push
	str	x0, [x20, #344]
	bl	_lean_mark_persistent
Lloh244:
	adrp	x0, l_.str.25@PAGE
Lloh245:
	add	x0, x0, l_.str.25@PAGEOFF
	mov	w1, #8                          ; =0x8
	mov	w2, #8                          ; =0x8
	bl	_lean_mk_string_unchecked
	str	x0, [x20, #352]
	bl	_lean_mark_persistent
	mov	w0, #40                         ; =0x28
	bl	_lean_alloc_object
	ldrh	w8, [x0, #4]
	orr	w8, w8, w19
	stp	w21, w8, [x0]
Lloh246:
	adrp	x8, lCPI48_3@PAGE
Lloh247:
	ldr	q0, [x8, lCPI48_3@PAGEOFF]
	stur	q0, [x0, #8]
	str	x0, [x20, #360]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #40]
	ldr	x0, [x20, #360]
	bl	_lean_array_push
	str	x0, [x20, #368]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #352]
	ldr	x0, [x20, #368]
	bl	_lean_array_push
	str	x0, [x20, #376]
	bl	_lean_mark_persistent
	ldr	x1, [x20, #344]
	ldr	x0, [x20, #360]
	bl	_lean_array_push
	str	x0, [x20, #384]
	bl	_lean_mark_persistent
	ldp	x1, x0, [x20, #376]
	bl	_lean_array_push
	str	x0, [x20, #24]
	bl	_lean_mark_persistent
	ldr	x8, [x20, #24]
	ldr	x8, [x8, #8]
	str	x8, [x20, #32]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbnz	x0, LBB48_2
LBB48_24:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh172, Lloh173
	.loh AdrpLdr	Lloh200, Lloh201
	.loh AdrpAdd	Lloh198, Lloh199
	.loh AdrpAdd	Lloh196, Lloh197
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpAdd	Lloh192, Lloh193
	.loh AdrpAdd	Lloh190, Lloh191
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpAdd	Lloh186, Lloh187
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpAdd	Lloh180, Lloh181
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpAdd	Lloh204, Lloh205
	.loh AdrpLdr	Lloh202, Lloh203
	.loh AdrpAdd	Lloh228, Lloh229
	.loh AdrpAdd	Lloh226, Lloh227
	.loh AdrpAdd	Lloh224, Lloh225
	.loh AdrpAdd	Lloh222, Lloh223
	.loh AdrpAdd	Lloh220, Lloh221
	.loh AdrpAdd	Lloh218, Lloh219
	.loh AdrpAdd	Lloh216, Lloh217
	.loh AdrpAdd	Lloh214, Lloh215
	.loh AdrpAdd	Lloh212, Lloh213
	.loh AdrpAdd	Lloh210, Lloh211
	.loh AdrpAdd	Lloh208, Lloh209
	.loh AdrpAdd	Lloh206, Lloh207
	.loh AdrpAdrp	Lloh230, Lloh232
	.loh AdrpLdr	Lloh230, Lloh231
	.loh AdrpAdrp	Lloh233, Lloh235
	.loh AdrpLdr	Lloh233, Lloh234
	.loh AdrpLdr	Lloh246, Lloh247
	.loh AdrpAdd	Lloh244, Lloh245
	.loh AdrpLdr	Lloh242, Lloh243
	.loh AdrpAdd	Lloh240, Lloh241
	.loh AdrpAdd	Lloh238, Lloh239
	.loh AdrpAdd	Lloh236, Lloh237
	.cfi_endproc
                                        ; -- End function
	.private_extern	_main                   ; -- Begin function main
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	bl	_lean_setup_args
	bl	_lean_initialize
	mov	w0, #0                          ; =0x0
	bl	_lean_set_panic_messages
	mov	w0, #1                          ; =0x1
	bl	_initialize_trie
	mov	x19, x0
	mov	w0, #1                          ; =0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mark_end_initialization
	ldrb	w8, [x19, #7]
	cbnz	w8, LBB49_4
; %bb.1:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB49_10
; %bb.2:
	sub	w8, w8, #1
	str	w8, [x19]
LBB49_3:
	bl	_lean_init_task_manager
	mov	w0, #1                          ; =0x1
	bl	__lean_main
	mov	x19, x0
LBB49_4:
	bl	_lean_finalize_task_manager
	ldrb	w8, [x19, #7]
	cbnz	w8, LBB49_7
; %bb.5:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB49_12
; %bb.6:
	mov	w0, #0                          ; =0x0
	sub	w8, w8, #1
	str	w8, [x19]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB49_7:
	mov	x0, x19
	bl	_lean_io_result_show_error
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB49_14
; %bb.8:
	sub	w8, w8, #1
	str	w8, [x19]
LBB49_9:
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB49_10:
	cbz	w8, LBB49_3
; %bb.11:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB49_3
LBB49_12:
	cbz	w8, LBB49_16
; %bb.13:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB49_14:
	cbz	w8, LBB49_9
; %bb.15:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB49_16:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	_l_keys                 ; @l_keys
	.comm	_l_keys,8,3
	.private_extern	_l_T_empty              ; @l_T_empty
	.comm	_l_T_empty,8,3
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.space	1

l_.str.1:                               ; @.str.1
	.asciz	"h"

l_.str.2:                               ; @.str.2
	.asciz	"hello"

l_.str.3:                               ; @.str.3
	.asciz	"helloo"

l_.str.4:                               ; @.str.4
	.asciz	"hellooo"

l_.str.5:                               ; @.str.5
	.asciz	"helloooooo"

l_.str.6:                               ; @.str.6
	.asciz	"hella"

l_.str.7:                               ; @.str.7
	.asciz	"hellx"

l_.str.8:                               ; @.str.8
	.asciz	"h\303\266"

l_.str.9:                               ; @.str.9
	.asciz	"h\303\274"

l_.str.10:                              ; @.str.10
	.asciz	"h\303\244"

l_.str.11:                              ; @.str.11
	.asciz	"\360\237\222\251"

l_.str.12:                              ; @.str.12
	.asciz	"somePrefix"

l_.str.13:                              ; @.str.13
	.asciz	"matchPrefix differs (with prefix): key = "

l_.str.14:                              ; @.str.14
	.asciz	" "

l_.str.15:                              ; @.str.15
	.asciz	"matchPrefix differs: key = "

l_.str.16:                              ; @.str.16
	.asciz	", got: "

l_.str.17:                              ; @.str.17
	.asciz	" exp: "

l_.str.18:                              ; @.str.18
	.asciz	"none"

l_.str.19:                              ; @.str.19
	.asciz	"(some "

l_.str.20:                              ; @.str.20
	.asciz	")"

l_.str.21:                              ; @.str.21
	.asciz	"findPrefix differs: key = "

l_.str.22:                              ; @.str.22
	.asciz	"find? differs: key = "

l_.str.23:                              ; @.str.23
	.asciz	"Inserting "

l_.str.24:                              ; @.str.24
	.asciz	"Resetting trie"

l_.str.25:                              ; @.str.25
	.asciz	"helooooo"

.zerofill __DATA,__bss,__MergedGlobals,512,3 ; @_MergedGlobals
.subsections_via_symbols
