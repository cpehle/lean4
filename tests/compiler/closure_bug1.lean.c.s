	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_l_List_foldl___at___List_toString___at___f_spec__0_spec__0 ; -- Begin function l_List_foldl___at___List_toString___at___f_spec__0_spec__0
	.p2align	2
_l_List_foldl___at___List_toString___at___f_spec__0_spec__0: ; @l_List_foldl___at___List_toString___at___f_spec__0_spec__0
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
	mov	w24, #-201326592                ; =0xf4000000
Lloh0:
	adrp	x19, l_.str@PAGE
Lloh1:
	add	x19, x19, l_.str@PAGEOFF
Lloh2:
	adrp	x20, l_.str.1@PAGE
Lloh3:
	add	x20, x20, l_.str.1@PAGEOFF
	mov	w25, #-1                        ; =0xffffffff
	adrp	x26, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGE
Lloh4:
	adrp	x21, l_.str.2@PAGE
Lloh5:
	add	x21, x21, l_.str.2@PAGEOFF
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	tbnz	w1, #0, LBB0_3
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [x1, #7]
	cbnz	w8, LBB0_4
	b	LBB0_35
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	lsr	x8, x1, #1
	cbz	w8, LBB0_35
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [x1, #4]
	cmp	w8, w24
	b.hs	LBB0_20
; %bb.5:                                ;   in Loop: Header=BB0_1 Depth=1
	tst	w8, #0xff0000
	b.eq	LBB0_21
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	cmp	w8, w24
	b.hs	LBB0_22
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x22, [x1, #8]
	tbnz	w22, #0, LBB0_10
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB0_31
; %bb.9:                                ;   in Loop: Header=BB0_1 Depth=1
	add	w8, w8, #1
	str	w8, [x22]
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [x1, #4]
	cmp	w8, w24
	b.hs	LBB0_23
; %bb.11:                               ;   in Loop: Header=BB0_1 Depth=1
	tst	w8, #0xfe0000
	b.eq	LBB0_24
LBB0_12:                                ;   in Loop: Header=BB0_1 Depth=1
	cmp	w8, w24
	b.hs	LBB0_25
LBB0_13:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x27, [x1, #16]
	tbnz	w27, #0, LBB0_16
; %bb.14:                               ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [x27]
	cmp	w8, #1
	b.lt	LBB0_33
; %bb.15:                               ;   in Loop: Header=BB0_1 Depth=1
	add	w8, w8, #1
	str	w8, [x27]
LBB0_16:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [x1]
	cmp	w8, #2
	b.lt	LBB0_27
; %bb.17:                               ;   in Loop: Header=BB0_1 Depth=1
	sub	w8, w8, #1
	str	w8, [x1]
LBB0_18:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x1, [x26, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGEOFF]
	bl	_lean_string_append
	mov	x23, x0
	mov	x0, x22
	bl	_l_Nat_reprFast
	mov	x22, x0
	mov	x0, x23
	mov	x1, x22
	bl	_lean_string_append
	ldr	w8, [x22]
	cmp	w8, #2
	b.lt	LBB0_29
; %bb.19:                               ;   in Loop: Header=BB0_1 Depth=1
	sub	w8, w8, #1
	str	w8, [x22]
	mov	x1, x27
	b	LBB0_1
LBB0_20:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x22, x0
	mov	x0, x19
	mov	x23, x1
	mov	w1, #596                        ; =0x254
	mov	x2, x21
	bl	_lean_notify_assert
	mov	x1, x23
	mov	x0, x22
	ldr	w8, [x23, #4]
	tst	w8, #0xff0000
	b.ne	LBB0_6
LBB0_21:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x22, x0
	mov	x0, x19
	mov	x23, x1
	mov	w1, #623                        ; =0x26f
	mov	x2, x20
	bl	_lean_notify_assert
	mov	x1, x23
	mov	x0, x22
	ldr	w8, [x23, #4]
	cmp	w8, w24
	b.lo	LBB0_7
LBB0_22:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x22, x0
	add	x0, x1, #4
	mov	x23, x1
	bl	_l_List_foldl___at___List_toString___at___f_spec__0_spec__0.cold.1
	mov	x1, x23
	mov	x0, x22
	ldr	x22, [x1, #8]
	tbz	w22, #0, LBB0_8
	b	LBB0_10
LBB0_23:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x23, x0
	mov	x0, x19
	mov	x27, x1
	mov	w1, #596                        ; =0x254
	mov	x2, x21
	bl	_lean_notify_assert
	mov	x1, x27
	mov	x0, x23
	ldr	w8, [x27, #4]
	tst	w8, #0xfe0000
	b.ne	LBB0_12
LBB0_24:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x23, x0
	mov	x0, x19
	mov	x27, x1
	mov	w1, #623                        ; =0x26f
	mov	x2, x20
	bl	_lean_notify_assert
	mov	x1, x27
	mov	x0, x23
	ldr	w8, [x27, #4]
	cmp	w8, w24
	b.lo	LBB0_13
LBB0_25:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x23, x0
	mov	x0, x19
	mov	x27, x1
	mov	w1, #601                        ; =0x259
	mov	x2, x21
	bl	_lean_notify_assert
	mov	x1, x27
	mov	x0, x23
	ldr	w8, [x27, #4]
	cmp	w8, w24
	b.lo	LBB0_13
; %bb.26:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x19
	mov	w1, #532                        ; =0x214
	mov	x2, x21
	bl	_lean_notify_assert
	mov	x1, x27
	mov	x0, x23
	b	LBB0_13
LBB0_27:                                ;   in Loop: Header=BB0_1 Depth=1
	cbz	w8, LBB0_18
; %bb.28:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x23, x0
	mov	x0, x1
	bl	_lean_dec_ref_cold
	mov	x0, x23
	b	LBB0_18
LBB0_29:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x1, x27
	cbz	w8, LBB0_1
; %bb.30:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x23, x0
	mov	x0, x22
	bl	_lean_dec_ref_cold
	mov	x0, x23
	mov	x1, x27
	b	LBB0_1
LBB0_31:                                ;   in Loop: Header=BB0_1 Depth=1
	cbz	w8, LBB0_10
; %bb.32:                               ;   in Loop: Header=BB0_1 Depth=1
	ldadd	w25, w8, [x22]
	b	LBB0_10
LBB0_33:                                ;   in Loop: Header=BB0_1 Depth=1
	cbz	w8, LBB0_16
; %bb.34:                               ;   in Loop: Header=BB0_1 Depth=1
	ldadd	w25, w8, [x27]
	b	LBB0_16
LBB0_35:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_l_List_toString___at___f_spec__0 ; -- Begin function l_List_toString___at___f_spec__0
	.p2align	2
_l_List_toString___at___f_spec__0:      ; @l_List_toString___at___f_spec__0
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
	tbnz	w0, #0, LBB1_20
; %bb.1:
	ldrb	w8, [x0, #7]
	cbz	w8, LBB1_21
LBB1_2:
	ldr	w8, [x0, #4]
	lsr	w9, w8, #26
	cmp	w9, #61
	b.hs	LBB1_22
LBB1_3:
	mov	w20, #-201326592                ; =0xf4000000
	tst	w8, #0xfe0000
	b.eq	LBB1_23
; %bb.4:
	cmp	w8, w20
	b.hs	LBB1_24
LBB1_5:
	ldr	x19, [x0, #16]
	tbnz	w19, #0, LBB1_25
LBB1_6:
	ldrb	w8, [x19, #7]
	cbz	w8, LBB1_26
LBB1_7:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB1_37
; %bb.8:
	add	w8, w8, #1
	str	w8, [x19]
LBB1_9:
	ldr	w8, [x0, #4]
	cmp	w8, w20
	b.hs	LBB1_39
; %bb.10:
	tst	w8, #0xff0000
	b.eq	LBB1_40
LBB1_11:
	cmp	w8, w20
	b.hs	LBB1_41
LBB1_12:
	ldr	x8, [x0, #8]
	tbnz	w8, #0, LBB1_15
LBB1_13:
	ldr	w9, [x8]
	cmp	w9, #1
	b.lt	LBB1_53
; %bb.14:
	add	w9, w9, #1
	str	w9, [x8]
LBB1_15:
	ldr	w9, [x0]
	cmp	w9, #2
	b.lt	LBB1_42
; %bb.16:
	sub	w9, w9, #1
	str	w9, [x0]
LBB1_17:
Lloh6:
	adrp	x9, _l_List_toString___at___f_spec__0___closed__1@PAGE
Lloh7:
	ldr	x21, [x9, _l_List_toString___at___f_spec__0___closed__1@PAGEOFF]
	mov	x0, x8
	bl	_l_Nat_reprFast
	mov	x20, x0
	mov	x0, x21
	mov	x1, x20
	bl	_lean_string_append
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB1_44
; %bb.18:
	sub	w8, w8, #1
	str	w8, [x20]
LBB1_19:
	mov	x1, x19
	bl	_l_List_foldl___at___List_toString___at___f_spec__0_spec__0
	mov	w1, #93                         ; =0x5d
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	_lean_string_push
LBB1_20:
	lsr	x8, x0, #1
	cbnz	w8, LBB1_2
LBB1_21:
Lloh8:
	adrp	x8, _l_List_toString___at___f_spec__0___closed__0@PAGE
Lloh9:
	ldr	x0, [x8, _l_List_toString___at___f_spec__0___closed__0@PAGEOFF]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB1_22:
Lloh10:
	adrp	x8, l_.str@PAGE
Lloh11:
	add	x8, x8, l_.str@PAGEOFF
Lloh12:
	adrp	x2, l_.str.2@PAGE
Lloh13:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	x19, x0
	mov	x0, x8
	mov	w1, #596                        ; =0x254
	bl	_lean_notify_assert
	mov	x0, x19
	ldr	w8, [x19, #4]
	b	LBB1_3
LBB1_23:
Lloh14:
	adrp	x8, l_.str@PAGE
Lloh15:
	add	x8, x8, l_.str@PAGEOFF
Lloh16:
	adrp	x2, l_.str.1@PAGE
Lloh17:
	add	x2, x2, l_.str.1@PAGEOFF
	mov	x19, x0
	mov	x0, x8
	mov	w1, #623                        ; =0x26f
	bl	_lean_notify_assert
	mov	x0, x19
	ldr	w8, [x19, #4]
	cmp	w8, w20
	b.lo	LBB1_5
LBB1_24:
	mov	x19, x0
	add	x0, x0, #4
	bl	_l_List_toString___at___f_spec__0.cold.1
	mov	x0, x19
	ldr	x19, [x0, #16]
	tbz	w19, #0, LBB1_6
LBB1_25:
	lsr	x8, x19, #1
	cbnz	w8, LBB1_7
LBB1_26:
	ldr	w8, [x0, #4]
	cmp	w8, w20
	b.hs	LBB1_46
; %bb.27:
	tst	w8, #0xff0000
	b.eq	LBB1_47
LBB1_28:
	cmp	w8, w20
	b.hs	LBB1_48
LBB1_29:
	ldr	x19, [x0, #8]
	tbnz	w19, #0, LBB1_32
LBB1_30:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB1_55
; %bb.31:
	add	w8, w8, #1
	str	w8, [x19]
LBB1_32:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB1_49
; %bb.33:
	sub	w8, w8, #1
	str	w8, [x0]
LBB1_34:
Lloh18:
	adrp	x8, _l_List_toString___at___f_spec__0___closed__1@PAGE
Lloh19:
	ldr	x20, [x8, _l_List_toString___at___f_spec__0___closed__1@PAGEOFF]
	mov	x0, x19
	bl	_l_Nat_reprFast
	mov	x19, x0
	mov	x0, x20
	mov	x1, x19
	bl	_lean_string_append
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB1_51
; %bb.35:
	sub	w8, w8, #1
	str	w8, [x19]
LBB1_36:
Lloh20:
	adrp	x8, _l_List_toString___at___f_spec__0___closed__2@PAGE
Lloh21:
	ldr	x1, [x8, _l_List_toString___at___f_spec__0___closed__2@PAGEOFF]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	_lean_string_append
LBB1_37:
	cbz	w8, LBB1_9
; %bb.38:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB1_9
LBB1_39:
Lloh22:
	adrp	x8, l_.str@PAGE
Lloh23:
	add	x8, x8, l_.str@PAGEOFF
Lloh24:
	adrp	x2, l_.str.2@PAGE
Lloh25:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	x21, x0
	mov	x0, x8
	mov	w1, #596                        ; =0x254
	bl	_lean_notify_assert
	mov	x0, x21
	ldr	w8, [x21, #4]
	tst	w8, #0xff0000
	b.ne	LBB1_11
LBB1_40:
Lloh26:
	adrp	x8, l_.str@PAGE
Lloh27:
	add	x8, x8, l_.str@PAGEOFF
Lloh28:
	adrp	x2, l_.str.1@PAGE
Lloh29:
	add	x2, x2, l_.str.1@PAGEOFF
	mov	x21, x0
	mov	x0, x8
	mov	w1, #623                        ; =0x26f
	bl	_lean_notify_assert
	mov	x0, x21
	ldr	w8, [x21, #4]
	cmp	w8, w20
	b.lo	LBB1_12
LBB1_41:
	mov	x20, x0
	add	x0, x0, #4
	bl	_l_List_toString___at___f_spec__0.cold.2
	mov	x0, x20
	ldr	x8, [x0, #8]
	tbz	w8, #0, LBB1_13
	b	LBB1_15
LBB1_42:
	cbz	w9, LBB1_17
; %bb.43:
	mov	x20, x8
	bl	_lean_dec_ref_cold
	mov	x8, x20
	b	LBB1_17
LBB1_44:
	cbz	w8, LBB1_19
; %bb.45:
	mov	x21, x0
	mov	x0, x20
	bl	_lean_dec_ref_cold
	mov	x0, x21
	b	LBB1_19
LBB1_46:
Lloh30:
	adrp	x8, l_.str@PAGE
Lloh31:
	add	x8, x8, l_.str@PAGEOFF
Lloh32:
	adrp	x2, l_.str.2@PAGE
Lloh33:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	x19, x0
	mov	x0, x8
	mov	w1, #596                        ; =0x254
	bl	_lean_notify_assert
	mov	x0, x19
	ldr	w8, [x19, #4]
	tst	w8, #0xff0000
	b.ne	LBB1_28
LBB1_47:
Lloh34:
	adrp	x8, l_.str@PAGE
Lloh35:
	add	x8, x8, l_.str@PAGEOFF
Lloh36:
	adrp	x2, l_.str.1@PAGE
Lloh37:
	add	x2, x2, l_.str.1@PAGEOFF
	mov	x19, x0
	mov	x0, x8
	mov	w1, #623                        ; =0x26f
	bl	_lean_notify_assert
	mov	x0, x19
	ldr	w8, [x19, #4]
	cmp	w8, w20
	b.lo	LBB1_29
LBB1_48:
	mov	x19, x0
	add	x0, x0, #4
	bl	_l_List_toString___at___f_spec__0.cold.3
	mov	x0, x19
	ldr	x19, [x0, #8]
	tbz	w19, #0, LBB1_30
	b	LBB1_32
LBB1_49:
	cbz	w8, LBB1_34
; %bb.50:
	bl	_lean_dec_ref_cold
	b	LBB1_34
LBB1_51:
	cbz	w8, LBB1_36
; %bb.52:
	mov	x20, x0
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	x0, x20
	b	LBB1_36
LBB1_53:
	cbz	w9, LBB1_15
; %bb.54:
	mov	w9, #-1                         ; =0xffffffff
	ldadd	w9, w9, [x8]
	b	LBB1_15
LBB1_55:
	cbz	w8, LBB1_32
; %bb.56:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB1_32
	.loh AdrpLdr	Lloh6, Lloh7
	.loh AdrpLdr	Lloh8, Lloh9
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpLdr	Lloh18, Lloh19
	.loh AdrpLdr	Lloh20, Lloh21
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh34, Lloh35
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l_f___lam__0
lCPI2_0:
	.long	1                               ; 0x1
	.long	16908312                        ; 0x1020018
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_l_f___lam__0
	.p2align	2
_l_f___lam__0:                          ; @l_f___lam__0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #208
	stp	d9, d8, [sp, #96]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #112]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #128]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #160]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
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
	str	x7, [sp, #80]                   ; 8-byte Folded Spill
	mov	x20, x6
	mov	x21, x5
	mov	x22, x4
	mov	x23, x3
	mov	x24, x2
	mov	x25, x1
	mov	x26, x0
	ldp	x8, x19, [x29, #80]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x29, #72]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x29, #64]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x8, [x29, #56]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldr	x8, [x29, #48]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldr	x8, [x29, #40]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	ldr	x8, [x29, #32]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldr	x8, [x29, #24]
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	ldr	x8, [x29, #16]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	tbnz	w19, #0, LBB2_3
; %bb.1:
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB2_23
; %bb.2:
	add	w8, w8, #1
	str	w8, [x19]
LBB2_3:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.4:
	mov	x27, x0
Lloh38:
	adrp	x8, lCPI2_0@PAGE
Lloh39:
	ldr	d8, [x8, lCPI2_0@PAGEOFF]
	str	d8, [x0]
	mov	w8, #1                          ; =0x1
	stp	x19, x8, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.5:
	mov	x28, x0
	str	d8, [x0]
	stp	x19, x27, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.6:
	mov	x27, x0
	str	d8, [x0]
	stp	x26, x28, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.7:
	mov	x26, x0
	str	d8, [x0]
	stp	x25, x27, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.8:
	mov	x25, x0
	str	d8, [x0]
	stp	x24, x26, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.9:
	mov	x24, x0
	str	d8, [x0]
	stp	x23, x25, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.10:
	mov	x23, x0
	str	d8, [x0]
	stp	x22, x24, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.11:
	mov	x22, x0
	str	d8, [x0]
	stp	x21, x23, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.12:
	mov	x21, x0
	str	d8, [x0]
	stp	x20, x22, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.13:
	mov	x20, x0
	str	d8, [x0]
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	stp	x8, x21, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.14:
	mov	x19, x0
	str	d8, [x0]
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	stp	x8, x20, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.15:
	mov	x20, x0
	str	d8, [x0]
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	stp	x8, x19, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.16:
	mov	x19, x0
	str	d8, [x0]
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	stp	x8, x20, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.17:
	mov	x20, x0
	str	d8, [x0]
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	stp	x8, x19, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.18:
	mov	x19, x0
	str	d8, [x0]
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	stp	x8, x20, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.19:
	mov	x20, x0
	str	d8, [x0]
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	stp	x8, x19, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.20:
	mov	x19, x0
	str	d8, [x0]
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	stp	x8, x20, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.21:
	mov	x20, x0
	str	d8, [x0]
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	stp	x8, x19, [x0, #8]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB2_25
; %bb.22:
	str	d8, [x0]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	stp	x8, x20, [x0, #8]
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #96]               ; 16-byte Folded Reload
	add	sp, sp, #208
	b	_l_List_toString___at___f_spec__0
LBB2_23:
	cbz	w8, LBB2_3
; %bb.24:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x19]
	b	LBB2_3
LBB2_25:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpLdr	Lloh38, Lloh39
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function l_f
lCPI3_0:
	.long	1                               ; 0x1
	.long	4110418080                      ; 0xf50000a0
lCPI3_1:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_l_f
	.p2align	2
_l_f:                                   ; @l_f
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x28, x27, [sp, #80]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
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
	mov	x19, x0
	tbz	w19, #0, LBB3_22
; %bb.1:
	lsr	x27, x19, #1
	adds	x0, x27, #1
	b.mi	LBB3_23
; %bb.2:
	mov	w8, #1                          ; =0x1
	orr	x10, x8, x0, lsl #1
	adds	x8, x27, #2
	str	x10, [sp, #72]                  ; 8-byte Folded Spill
	b.mi	LBB3_42
; %bb.3:
	mov	w9, #1                          ; =0x1
	orr	x11, x9, x8, lsl #1
	adds	x8, x27, #3
	str	x11, [sp, #64]                  ; 8-byte Folded Spill
	b.mi	LBB3_43
; %bb.4:
	mov	w9, #1                          ; =0x1
	orr	x12, x9, x8, lsl #1
	adds	x8, x27, #4
	str	x12, [sp, #56]                  ; 8-byte Folded Spill
	b.mi	LBB3_44
; %bb.5:
	mov	w9, #1                          ; =0x1
	orr	x13, x9, x8, lsl #1
	adds	x8, x27, #5
	str	x13, [sp, #48]                  ; 8-byte Folded Spill
	b.mi	LBB3_45
; %bb.6:
	mov	w9, #1                          ; =0x1
	orr	x14, x9, x8, lsl #1
	adds	x8, x27, #6
	str	x14, [sp, #40]                  ; 8-byte Folded Spill
	b.mi	LBB3_46
; %bb.7:
	mov	w9, #1                          ; =0x1
	orr	x15, x9, x8, lsl #1
	adds	x8, x27, #7
	str	x15, [sp, #32]                  ; 8-byte Folded Spill
	b.mi	LBB3_47
; %bb.8:
	mov	w9, #1                          ; =0x1
	orr	x16, x9, x8, lsl #1
	adds	x8, x27, #8
	str	x16, [sp, #24]                  ; 8-byte Folded Spill
	b.mi	LBB3_48
; %bb.9:
	mov	w9, #1                          ; =0x1
	orr	x17, x9, x8, lsl #1
	adds	x8, x27, #9
	str	x17, [sp, #16]                  ; 8-byte Folded Spill
	b.mi	LBB3_49
; %bb.10:
	mov	w9, #1                          ; =0x1
	orr	x0, x9, x8, lsl #1
	adds	x8, x27, #10
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b.mi	LBB3_50
; %bb.11:
	mov	w9, #1                          ; =0x1
	orr	x20, x9, x8, lsl #1
	adds	x8, x27, #11
	b.mi	LBB3_51
; %bb.12:
	mov	w9, #1                          ; =0x1
	orr	x21, x9, x8, lsl #1
	adds	x8, x27, #12
	b.mi	LBB3_52
; %bb.13:
	mov	w9, #1                          ; =0x1
	orr	x22, x9, x8, lsl #1
	adds	x8, x27, #13
	b.mi	LBB3_53
; %bb.14:
	mov	w9, #1                          ; =0x1
	orr	x23, x9, x8, lsl #1
	adds	x8, x27, #14
	b.mi	LBB3_54
; %bb.15:
	mov	w9, #1                          ; =0x1
	orr	x24, x9, x8, lsl #1
	adds	x8, x27, #15
	b.mi	LBB3_55
; %bb.16:
	mov	w9, #1                          ; =0x1
	orr	x25, x9, x8, lsl #1
	adds	x8, x27, #16
	b.mi	LBB3_56
; %bb.17:
	mov	w9, #1                          ; =0x1
	orr	x26, x9, x8, lsl #1
	adds	x8, x27, #17
	b.mi	LBB3_57
; %bb.18:
	mov	w9, #1                          ; =0x1
	orr	x27, x9, x8, lsl #1
LBB3_19:
	bl	_lean_inc_heartbeat
	mov	w0, #160                        ; =0xa0
	bl	_mi_malloc_small
	cbz	x0, LBB3_41
; %bb.20:
	mov	x28, x0
Lloh40:
	adrp	x8, lCPI3_0@PAGE
Lloh41:
	ldr	d0, [x8, lCPI3_0@PAGEOFF]
	str	d0, [x0]
Lloh42:
	adrp	x8, _l_f___lam__0___boxed@PAGE
Lloh43:
	add	x8, x8, _l_f___lam__0___boxed@PAGEOFF
	str	x8, [x0, #8]
	mov	w8, #18                         ; =0x12
	movk	w8, #17, lsl #16
	str	w8, [x0, #16]
	stp	x27, x26, [x0, #24]
	stp	x25, x24, [x0, #40]
	stp	x23, x22, [x0, #56]
	stp	x21, x20, [x0, #72]
	ldp	x9, x8, [sp, #8]                ; 16-byte Folded Reload
	stp	x9, x8, [x0, #88]
	ldp	x9, x8, [sp, #24]               ; 16-byte Folded Reload
	stp	x9, x8, [x0, #104]
	ldp	x9, x8, [sp, #40]               ; 16-byte Folded Reload
	stp	x9, x8, [x0, #120]
	ldp	x9, x8, [sp, #56]               ; 16-byte Folded Reload
	stp	x9, x8, [x0, #136]
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x8, [x0, #152]
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB3_41
; %bb.21:
Lloh44:
	adrp	x8, lCPI3_1@PAGE
Lloh45:
	ldr	d0, [x8, lCPI3_1@PAGEOFF]
	str	d0, [x0]
	stp	x19, x28, [x0, #8]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB3_22:
	mov	x0, x19
	mov	w1, #3                          ; =0x3
	bl	_lean_nat_big_add
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	mov	x0, x19
	mov	w1, #5                          ; =0x5
	bl	_lean_nat_big_add
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	mov	x0, x19
	mov	w1, #7                          ; =0x7
	bl	_lean_nat_big_add
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x0, x19
	mov	w1, #9                          ; =0x9
	bl	_lean_nat_big_add
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	mov	x0, x19
	mov	w1, #11                         ; =0xb
	bl	_lean_nat_big_add
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	x0, x19
	mov	w1, #13                         ; =0xd
	bl	_lean_nat_big_add
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x0, x19
	mov	w1, #15                         ; =0xf
	bl	_lean_nat_big_add
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x0, x19
	mov	w1, #17                         ; =0x11
	bl	_lean_nat_big_add
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x19
	mov	w1, #19                         ; =0x13
	bl	_lean_nat_big_add
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x19
	mov	w1, #21                         ; =0x15
	bl	_lean_nat_big_add
	mov	x20, x0
	mov	x0, x19
	mov	w1, #23                         ; =0x17
	bl	_lean_nat_big_add
	mov	x21, x0
	mov	x0, x19
	mov	w1, #25                         ; =0x19
	bl	_lean_nat_big_add
	mov	x22, x0
	mov	x0, x19
	mov	w1, #27                         ; =0x1b
	bl	_lean_nat_big_add
	mov	x23, x0
	mov	x0, x19
	mov	w1, #29                         ; =0x1d
	bl	_lean_nat_big_add
	mov	x24, x0
	mov	x0, x19
	mov	w1, #31                         ; =0x1f
	bl	_lean_nat_big_add
	mov	x25, x0
	mov	x0, x19
	mov	w1, #33                         ; =0x21
	bl	_lean_nat_big_add
	mov	x26, x0
	mov	x0, x19
	mov	w1, #35                         ; =0x23
	bl	_lean_nat_big_add
	b	LBB3_40
LBB3_23:
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	mov	x0, #-9223372036854775807       ; =0x8000000000000001
LBB3_24:
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	add	x0, x27, #3
LBB3_25:
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	add	x0, x27, #4
LBB3_26:
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	add	x0, x27, #5
LBB3_27:
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	add	x0, x27, #6
LBB3_28:
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	add	x0, x27, #7
LBB3_29:
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	add	x0, x27, #8
LBB3_30:
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, x27, #9
LBB3_31:
	bl	_lean_big_usize_to_nat
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, x27, #10
LBB3_32:
	bl	_lean_big_usize_to_nat
	mov	x20, x0
	add	x0, x27, #11
LBB3_33:
	bl	_lean_big_usize_to_nat
	mov	x21, x0
	add	x0, x27, #12
LBB3_34:
	bl	_lean_big_usize_to_nat
	mov	x22, x0
	add	x0, x27, #13
LBB3_35:
	bl	_lean_big_usize_to_nat
	mov	x23, x0
	add	x0, x27, #14
LBB3_36:
	bl	_lean_big_usize_to_nat
	mov	x24, x0
	add	x0, x27, #15
LBB3_37:
	bl	_lean_big_usize_to_nat
	mov	x25, x0
	add	x0, x27, #16
LBB3_38:
	bl	_lean_big_usize_to_nat
	mov	x26, x0
	add	x0, x27, #17
LBB3_39:
	bl	_lean_big_usize_to_nat
LBB3_40:
	mov	x27, x0
	b	LBB3_19
LBB3_41:
	bl	_lean_internal_panic_out_of_memory
LBB3_42:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_24
LBB3_43:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_25
LBB3_44:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_26
LBB3_45:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_27
LBB3_46:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_28
LBB3_47:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_29
LBB3_48:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_30
LBB3_49:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_31
LBB3_50:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_32
LBB3_51:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_33
LBB3_52:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_34
LBB3_53:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_35
LBB3_54:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_36
LBB3_55:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_37
LBB3_56:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_38
LBB3_57:
	mov	x0, #-9223372036854775808       ; =0x8000000000000000
	b	LBB3_39
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdrp	Lloh40, Lloh42
	.loh AdrpLdr	Lloh40, Lloh41
	.loh AdrpLdr	Lloh44, Lloh45
	.cfi_endproc
                                        ; -- End function
	.globl	_l_f___lam__0___boxed           ; -- Begin function l_f___lam__0___boxed
	.p2align	2
_l_f___lam__0___boxed:                  ; @l_f___lam__0___boxed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldp	x8, x1, [x0]
	ldp	x2, x3, [x0, #16]
	ldp	x4, x5, [x0, #32]
	ldp	x6, x7, [x0, #48]
	ldp	q0, q1, [x0, #64]
	ldp	q2, q3, [x0, #96]
	ldp	x9, x10, [x0, #128]
	stp	x9, x10, [sp, #64]
	stp	q2, q3, [sp, #32]
	stp	q0, q1, [sp]
	mov	x0, x8
	bl	_l_f___lam__0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_l_IO_print___at___IO_println___at___main_spec__0_spec__0 ; -- Begin function l_IO_print___at___IO_println___at___main_spec__0_spec__0
	.p2align	2
_l_IO_print___at___IO_println___at___main_spec__0_spec__0: ; @l_IO_print___at___IO_println___at___main_spec__0_spec__0
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
	mov	x19, x0
	mov	x0, x1
	bl	_lean_get_stdout
	mov	x21, x0
	ldr	w8, [x0, #4]
	lsr	w9, w8, #26
	cmp	w9, #61
	b.hs	LBB5_23
LBB5_1:
	mov	w23, #-201326592                ; =0xf4000000
	tst	w8, #0xff0000
	b.eq	LBB5_24
LBB5_2:
	cmp	w8, w23
	b.hs	LBB5_25
LBB5_3:
	ldr	x20, [x21, #8]
	tbnz	w20, #0, LBB5_6
; %bb.4:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB5_39
; %bb.5:
	add	w8, w8, #1
	str	w8, [x20]
LBB5_6:
	ldr	w8, [x21, #4]
	cmp	w8, w23
	b.hs	LBB5_27
LBB5_7:
	tst	w8, #0xfe0000
	b.eq	LBB5_28
LBB5_8:
	cmp	w8, w23
	b.hs	LBB5_29
LBB5_9:
	ldr	x22, [x21, #16]
	tbnz	w22, #0, LBB5_12
; %bb.10:
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB5_41
; %bb.11:
	add	w8, w8, #1
	str	w8, [x22]
LBB5_12:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB5_31
; %bb.13:
	sub	w8, w8, #1
	str	w8, [x21]
LBB5_14:
	ldr	w8, [x20, #4]
	cmp	w8, w23
	b.hs	LBB5_33
LBB5_15:
	and	w9, w8, #0xff0000
	cmp	w9, #64, lsl #12                ; =262144
	b.ls	LBB5_34
LBB5_16:
	cmp	w8, w23
	b.hs	LBB5_35
LBB5_17:
	ldr	x21, [x20, #40]
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB5_37
; %bb.18:
	add	w8, w8, #1
	str	w8, [x21]
LBB5_19:
	tbnz	w20, #0, LBB5_22
; %bb.20:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB5_43
; %bb.21:
	sub	w8, w8, #1
	str	w8, [x20]
LBB5_22:
	mov	x0, x21
	mov	x1, x19
	mov	x2, x22
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	b	_lean_apply_2
LBB5_23:
Lloh46:
	adrp	x0, l_.str@PAGE
Lloh47:
	add	x0, x0, l_.str@PAGEOFF
Lloh48:
	adrp	x2, l_.str.2@PAGE
Lloh49:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_3
	ldr	w8, [x21, #4]
	b	LBB5_1
LBB5_24:
Lloh50:
	adrp	x0, l_.str@PAGE
Lloh51:
	add	x0, x0, l_.str@PAGEOFF
Lloh52:
	adrp	x2, l_.str.1@PAGE
Lloh53:
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_OUTLINED_FUNCTION_2
	ldr	w8, [x21, #4]
	b	LBB5_2
LBB5_25:
Lloh54:
	adrp	x0, l_.str@PAGE
Lloh55:
	add	x0, x0, l_.str@PAGEOFF
Lloh56:
	adrp	x2, l_.str.2@PAGE
Lloh57:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	ldr	w8, [x21, #4]
	cmp	w8, w23
	b.lo	LBB5_3
; %bb.26:
Lloh58:
	adrp	x0, l_.str@PAGE
Lloh59:
	add	x0, x0, l_.str@PAGEOFF
Lloh60:
	adrp	x2, l_.str.2@PAGE
Lloh61:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_4
	b	LBB5_3
LBB5_27:
Lloh62:
	adrp	x0, l_.str@PAGE
Lloh63:
	add	x0, x0, l_.str@PAGEOFF
Lloh64:
	adrp	x2, l_.str.2@PAGE
Lloh65:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_3
	ldr	w8, [x21, #4]
	b	LBB5_7
LBB5_28:
Lloh66:
	adrp	x0, l_.str@PAGE
Lloh67:
	add	x0, x0, l_.str@PAGEOFF
Lloh68:
	adrp	x2, l_.str.1@PAGE
Lloh69:
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_OUTLINED_FUNCTION_2
	ldr	w8, [x21, #4]
	b	LBB5_8
LBB5_29:
Lloh70:
	adrp	x0, l_.str@PAGE
Lloh71:
	add	x0, x0, l_.str@PAGEOFF
Lloh72:
	adrp	x2, l_.str.2@PAGE
Lloh73:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	ldr	w8, [x21, #4]
	cmp	w8, w23
	b.lo	LBB5_9
; %bb.30:
Lloh74:
	adrp	x0, l_.str@PAGE
Lloh75:
	add	x0, x0, l_.str@PAGEOFF
Lloh76:
	adrp	x2, l_.str.2@PAGE
Lloh77:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_4
	b	LBB5_9
LBB5_31:
	cbz	w8, LBB5_14
; %bb.32:
	bl	_OUTLINED_FUNCTION_7
	b	LBB5_14
LBB5_33:
Lloh78:
	adrp	x0, l_.str@PAGE
Lloh79:
	add	x0, x0, l_.str@PAGEOFF
Lloh80:
	adrp	x2, l_.str.2@PAGE
Lloh81:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_3
	ldr	w8, [x20, #4]
	b	LBB5_15
LBB5_34:
Lloh82:
	adrp	x0, l_.str@PAGE
Lloh83:
	add	x0, x0, l_.str@PAGEOFF
Lloh84:
	adrp	x2, l_.str.1@PAGE
Lloh85:
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_OUTLINED_FUNCTION_2
	ldr	w8, [x20, #4]
	b	LBB5_16
LBB5_35:
Lloh86:
	adrp	x0, l_.str@PAGE
Lloh87:
	add	x0, x0, l_.str@PAGEOFF
Lloh88:
	adrp	x2, l_.str.2@PAGE
Lloh89:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	ldr	w8, [x20, #4]
	cmp	w8, w23
	b.lo	LBB5_17
; %bb.36:
Lloh90:
	adrp	x0, l_.str@PAGE
Lloh91:
	add	x0, x0, l_.str@PAGEOFF
Lloh92:
	adrp	x2, l_.str.2@PAGE
Lloh93:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_4
	b	LBB5_17
LBB5_37:
	cbz	w8, LBB5_19
; %bb.38:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x21]
	b	LBB5_19
LBB5_39:
	cbz	w8, LBB5_6
; %bb.40:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB5_6
LBB5_41:
	cbz	w8, LBB5_12
; %bb.42:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB5_12
LBB5_43:
	cbz	w8, LBB5_22
; %bb.44:
	mov	x0, x20
	bl	_lean_dec_ref_cold
	b	LBB5_22
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAdd	Lloh76, Lloh77
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpAdd	Lloh84, Lloh85
	.loh AdrpAdd	Lloh82, Lloh83
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpAdd	Lloh86, Lloh87
	.loh AdrpAdd	Lloh92, Lloh93
	.loh AdrpAdd	Lloh90, Lloh91
	.cfi_endproc
                                        ; -- End function
	.globl	_l_IO_println___at___main_spec__0 ; -- Begin function l_IO_println___at___main_spec__0
	.p2align	2
_l_IO_println___at___main_spec__0:      ; @l_IO_println___at___main_spec__0
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
	b	_l_IO_print___at___IO_println___at___main_spec__0_spec__0
	.cfi_endproc
                                        ; -- End function
	.globl	__lean_main                     ; -- Begin function _lean_main
	.p2align	2
__lean_main:                            ; @_lean_main
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
	mov	x19, x1
	mov	x20, x0
	tbnz	w20, #0, LBB7_2
; %bb.1:
	ldrb	w8, [x20, #7]
	b	LBB7_3
LBB7_2:
	lsr	x8, x20, #1
LBB7_3:
	mov	w22, #-201326592                ; =0xf4000000
	cbnz	w8, LBB7_5
; %bb.4:
Lloh94:
	adrp	x8, _l_main___closed__0@PAGE
Lloh95:
	ldr	x21, [x8, _l_main___closed__0@PAGEOFF]
	b	LBB7_13
LBB7_5:
	ldr	w8, [x20, #4]
	cmp	w8, w22
	b.hs	LBB7_34
LBB7_6:
	tst	w8, #0xff0000
	b.eq	LBB7_35
LBB7_7:
	cmp	w8, w22
	b.hs	LBB7_36
LBB7_8:
	ldr	x21, [x20, #8]
	tbnz	w21, #0, LBB7_11
; %bb.9:
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB7_44
; %bb.10:
	add	w8, w8, #1
	str	w8, [x21]
LBB7_11:
	ldr	w8, [x20]
	cmp	w8, #2
	b.lt	LBB7_38
; %bb.12:
	sub	w8, w8, #1
	str	w8, [x20]
LBB7_13:
	mov	x0, x21
	bl	_l_String_toNat_x21
	mov	x20, x0
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB7_27
; %bb.14:
	sub	w8, w8, #1
	str	w8, [x21]
LBB7_15:
	tbnz	w20, #0, LBB7_18
; %bb.16:
	ldr	w8, [x20]
	cmp	w8, #1
	b.lt	LBB7_40
; %bb.17:
	add	w8, w8, #1
	str	w8, [x20]
LBB7_18:
	mov	x0, x20
	bl	_l_f
	mov	x21, x0
	ldr	w23, [x0, #4]
	cmp	w23, w22
	b.hs	LBB7_29
LBB7_19:
	tst	w23, #0xfe0000
	b.eq	LBB7_30
LBB7_20:
	cmp	w23, w22
	b.hs	LBB7_31
LBB7_21:
	ldr	x22, [x21, #16]
	tbnz	w22, #0, LBB7_24
; %bb.22:
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB7_42
; %bb.23:
	add	w8, w8, #1
	str	w8, [x22]
LBB7_24:
	ldr	w8, [x21]
	cmp	w8, #2
	b.lt	LBB7_32
; %bb.25:
	sub	w8, w8, #1
	str	w8, [x21]
LBB7_26:
	mov	x0, x22
	mov	x1, x20
	bl	_lean_apply_1
	mov	w1, #10                         ; =0xa
	bl	_lean_string_push
	mov	x1, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	b	_l_IO_print___at___IO_println___at___main_spec__0_spec__0
LBB7_27:
	cbz	w8, LBB7_15
; %bb.28:
	bl	_OUTLINED_FUNCTION_7
	b	LBB7_15
LBB7_29:
Lloh96:
	adrp	x0, l_.str@PAGE
Lloh97:
	add	x0, x0, l_.str@PAGEOFF
Lloh98:
	adrp	x2, l_.str.2@PAGE
Lloh99:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_3
	b	LBB7_19
LBB7_30:
Lloh100:
	adrp	x0, l_.str@PAGE
Lloh101:
	add	x0, x0, l_.str@PAGEOFF
Lloh102:
	adrp	x2, l_.str.1@PAGE
Lloh103:
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_OUTLINED_FUNCTION_2
	b	LBB7_20
LBB7_31:
Lloh104:
	adrp	x22, l_.str@PAGE
Lloh105:
	add	x22, x22, l_.str@PAGEOFF
Lloh106:
	adrp	x23, l_.str.2@PAGE
Lloh107:
	add	x23, x23, l_.str.2@PAGEOFF
	mov	x0, x22
	mov	w1, #601                        ; =0x259
	mov	x2, x23
	bl	_lean_notify_assert
	mov	x0, x22
	mov	w1, #532                        ; =0x214
	mov	x2, x23
	bl	_lean_notify_assert
	b	LBB7_21
LBB7_32:
	cbz	w8, LBB7_26
; %bb.33:
	bl	_OUTLINED_FUNCTION_7
	b	LBB7_26
LBB7_34:
Lloh108:
	adrp	x0, l_.str@PAGE
Lloh109:
	add	x0, x0, l_.str@PAGEOFF
Lloh110:
	adrp	x2, l_.str.2@PAGE
Lloh111:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_3
	ldr	w8, [x20, #4]
	b	LBB7_6
LBB7_35:
Lloh112:
	adrp	x0, l_.str@PAGE
Lloh113:
	add	x0, x0, l_.str@PAGEOFF
Lloh114:
	adrp	x2, l_.str.1@PAGE
Lloh115:
	add	x2, x2, l_.str.1@PAGEOFF
	bl	_OUTLINED_FUNCTION_2
	ldr	w8, [x20, #4]
	b	LBB7_7
LBB7_36:
Lloh116:
	adrp	x0, l_.str@PAGE
Lloh117:
	add	x0, x0, l_.str@PAGEOFF
Lloh118:
	adrp	x2, l_.str.2@PAGE
Lloh119:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	ldr	w8, [x20, #4]
	cmp	w8, w22
	b.lo	LBB7_8
; %bb.37:
Lloh120:
	adrp	x0, l_.str@PAGE
Lloh121:
	add	x0, x0, l_.str@PAGEOFF
Lloh122:
	adrp	x2, l_.str.2@PAGE
Lloh123:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_4
	b	LBB7_8
LBB7_38:
	cbz	w8, LBB7_13
; %bb.39:
	mov	x0, x20
	bl	_lean_dec_ref_cold
	b	LBB7_13
LBB7_40:
	cbz	w8, LBB7_18
; %bb.41:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x20]
	b	LBB7_18
LBB7_42:
	cbz	w8, LBB7_24
; %bb.43:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x22]
	b	LBB7_24
LBB7_44:
	cbz	w8, LBB7_11
; %bb.45:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x21]
	b	LBB7_11
	.loh AdrpLdr	Lloh94, Lloh95
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpAdd	Lloh102, Lloh103
	.loh AdrpAdd	Lloh100, Lloh101
	.loh AdrpAdd	Lloh106, Lloh107
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpAdd	Lloh110, Lloh111
	.loh AdrpAdd	Lloh108, Lloh109
	.loh AdrpAdd	Lloh114, Lloh115
	.loh AdrpAdd	Lloh112, Lloh113
	.loh AdrpAdd	Lloh118, Lloh119
	.loh AdrpAdd	Lloh116, Lloh117
	.loh AdrpAdd	Lloh122, Lloh123
	.loh AdrpAdd	Lloh120, Lloh121
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function initialize_closure__bug1
lCPI8_0:
	.long	1                               ; 0x1
	.long	131096                          ; 0x20018
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_initialize_closure__bug1
	.p2align	2
_initialize_closure__bug1:              ; @initialize_closure__bug1
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __G_initialized@PAGE
	ldrb	w9, [x8, __G_initialized@PAGEOFF]
	cmp	w9, #1
	b.eq	LBB8_5
; %bb.1:
	mov	w9, #1                          ; =0x1
	strb	w9, [x8, __G_initialized@PAGEOFF]
	mov	w1, #1                          ; =0x1
	bl	_initialize_Init
	ldrb	w8, [x0, #7]
	cmp	w8, #1
	b.eq	LBB8_7
; %bb.2:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB8_8
; %bb.3:
	sub	w8, w8, #1
	str	w8, [x0]
LBB8_4:
Lloh124:
	adrp	x0, l_.str.8@PAGE
Lloh125:
	add	x0, x0, l_.str.8@PAGEOFF
	mov	w1, #2                          ; =0x2
	mov	w2, #2                          ; =0x2
	bl	_lean_mk_string_unchecked
	adrp	x8, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGE
	str	x0, [x8, _l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
Lloh126:
	adrp	x0, l_.str.9@PAGE
Lloh127:
	add	x0, x0, l_.str.9@PAGEOFF
	mov	w1, #2                          ; =0x2
	mov	w2, #2                          ; =0x2
	bl	_lean_mk_string_unchecked
	adrp	x8, _l_List_toString___at___f_spec__0___closed__0@PAGE
	str	x0, [x8, _l_List_toString___at___f_spec__0___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
Lloh128:
	adrp	x0, l_.str.10@PAGE
Lloh129:
	add	x0, x0, l_.str.10@PAGEOFF
	mov	w1, #1                          ; =0x1
	mov	w2, #1                          ; =0x1
	bl	_lean_mk_string_unchecked
	adrp	x8, _l_List_toString___at___f_spec__0___closed__1@PAGE
	str	x0, [x8, _l_List_toString___at___f_spec__0___closed__1@PAGEOFF]
	bl	_lean_mark_persistent
Lloh130:
	adrp	x0, l_.str.11@PAGE
Lloh131:
	add	x0, x0, l_.str.11@PAGEOFF
	mov	w1, #1                          ; =0x1
	mov	w2, #1                          ; =0x1
	bl	_lean_mk_string_unchecked
	adrp	x8, _l_List_toString___at___f_spec__0___closed__2@PAGE
	str	x0, [x8, _l_List_toString___at___f_spec__0___closed__2@PAGEOFF]
	bl	_lean_mark_persistent
Lloh132:
	adrp	x0, l_.str.12@PAGE
Lloh133:
	add	x0, x0, l_.str.12@PAGEOFF
	mov	w1, #1                          ; =0x1
	mov	w2, #1                          ; =0x1
	bl	_lean_mk_string_unchecked
	adrp	x8, _l_main___closed__0@PAGE
	str	x0, [x8, _l_main___closed__0@PAGEOFF]
	bl	_lean_mark_persistent
LBB8_5:
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB8_10
; %bb.6:
Lloh134:
	adrp	x8, lCPI8_0@PAGE
Lloh135:
	ldr	d0, [x8, lCPI8_0@PAGEOFF]
	str	d0, [x0]
	mov	w8, #1                          ; =0x1
	stp	x8, x8, [x0, #8]
LBB8_7:
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB8_8:
	cbz	w8, LBB8_4
; %bb.9:
	bl	_lean_dec_ref_cold
	b	LBB8_4
LBB8_10:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpAdd	Lloh128, Lloh129
	.loh AdrpAdd	Lloh126, Lloh127
	.loh AdrpAdd	Lloh124, Lloh125
	.loh AdrpLdr	Lloh134, Lloh135
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function main
lCPI9_0:
	.long	1                               ; 0x1
	.long	16908312                        ; 0x1020018
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
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
	mov	x20, x0
	bl	_lean_setup_args
	mov	x21, x0
	bl	_lean_initialize_runtime_module
	mov	w0, #0                          ; =0x0
	bl	_lean_set_panic_messages
	mov	w0, #1                          ; =0x1
	bl	_initialize_closure__bug1
	mov	x19, x0
	mov	w0, #1                          ; =0x1
	bl	_lean_set_panic_messages
	bl	_lean_io_mark_end_initialization
	ldrb	w8, [x19, #7]
	cbz	w8, LBB9_8
LBB9_1:
	bl	_lean_finalize_task_manager
	ldrb	w8, [x19, #7]
	cbnz	w8, LBB9_4
; %bb.2:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB9_31
; %bb.3:
	mov	w0, #0                          ; =0x0
	sub	w8, w8, #1
	str	w8, [x19]
	b	LBB9_7
LBB9_4:
	mov	x0, x19
	bl	_lean_io_result_show_error
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB9_33
; %bb.5:
	sub	w8, w8, #1
	str	w8, [x19]
LBB9_6:
	mov	w0, #1                          ; =0x1
LBB9_7:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #112              ; 16-byte Folded Reload
	ret
LBB9_8:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB9_36
; %bb.9:
	sub	w8, w8, #1
	str	w8, [x19]
LBB9_10:
	bl	_lean_init_task_manager
	cmp	w20, #2
	b.lt	LBB9_29
; %bb.11:
	mov	w23, #-201326592                ; =0xf4000000
	mov	w8, w20
	add	x24, x8, #1
	add	x8, x21, w20, uxtw #3
	sub	x25, x8, #8
	mov	w19, #1                         ; =0x1
Lloh136:
	adrp	x8, lCPI9_0@PAGE
Lloh137:
	ldr	d8, [x8, lCPI9_0@PAGEOFF]
Lloh138:
	adrp	x20, l_.str@PAGE
Lloh139:
	add	x20, x20, l_.str@PAGEOFF
Lloh140:
	adrp	x21, l_.str.1@PAGE
Lloh141:
	add	x21, x21, l_.str.1@PAGEOFF
Lloh142:
	adrp	x22, l_.str.2@PAGE
Lloh143:
	add	x22, x22, l_.str.2@PAGEOFF
LBB9_12:                                ; =>This Inner Loop Header: Depth=1
	mov	x26, x19
	bl	_lean_inc_heartbeat
	mov	w0, #24                         ; =0x18
	bl	_mi_malloc_small
	cbz	x0, LBB9_38
; %bb.13:                               ;   in Loop: Header=BB9_12 Depth=1
	mov	x19, x0
	str	d8, [x0]
	ldr	x0, [x25]
	bl	_lean_mk_string
	ldr	w8, [x19, #4]
	cmp	w8, w23
	b.hs	LBB9_20
; %bb.14:                               ;   in Loop: Header=BB9_12 Depth=1
	tst	w8, #0xff0000
	b.eq	LBB9_21
LBB9_15:                                ;   in Loop: Header=BB9_12 Depth=1
	cmp	w8, w23
	b.hs	LBB9_22
LBB9_16:                                ;   in Loop: Header=BB9_12 Depth=1
	str	x0, [x19, #8]
LBB9_17:                                ;   in Loop: Header=BB9_12 Depth=1
	tst	w8, #0xfe0000
	b.eq	LBB9_25
; %bb.18:                               ;   in Loop: Header=BB9_12 Depth=1
	cmp	w8, w23
	b.hs	LBB9_26
LBB9_19:                                ;   in Loop: Header=BB9_12 Depth=1
	str	x26, [x19, #16]
	sub	x24, x24, #1
	sub	x25, x25, #8
	cmp	x24, #2
	b.hi	LBB9_12
	b	LBB9_30
LBB9_20:                                ;   in Loop: Header=BB9_12 Depth=1
	mov	x27, x0
	mov	x0, x20
	mov	w1, #596                        ; =0x254
	mov	x2, x22
	bl	_lean_notify_assert
	mov	x0, x27
	ldr	w8, [x19, #4]
	tst	w8, #0xff0000
	b.ne	LBB9_15
LBB9_21:                                ;   in Loop: Header=BB9_12 Depth=1
	mov	x27, x0
	mov	x0, x20
	mov	w1, #633                        ; =0x279
	mov	x2, x21
	bl	_lean_notify_assert
	mov	x0, x27
	ldr	w8, [x19, #4]
	cmp	w8, w23
	b.lo	LBB9_16
LBB9_22:                                ;   in Loop: Header=BB9_12 Depth=1
	mov	x27, x0
	mov	x0, x20
	mov	w1, #601                        ; =0x259
	mov	x2, x22
	bl	_lean_notify_assert
	ldr	w8, [x19, #4]
	cmp	w8, w23
	b.lo	LBB9_28
; %bb.23:                               ;   in Loop: Header=BB9_12 Depth=1
	mov	x0, x20
	mov	w1, #532                        ; =0x214
	mov	x2, x22
	bl	_lean_notify_assert
	ldr	w8, [x19, #4]
	str	x27, [x19, #8]
	cmp	w8, w23
	b.lo	LBB9_17
; %bb.24:                               ;   in Loop: Header=BB9_12 Depth=1
	mov	x0, x20
	mov	w1, #596                        ; =0x254
	mov	x2, x22
	bl	_lean_notify_assert
	ldr	w8, [x19, #4]
	b	LBB9_17
LBB9_25:                                ;   in Loop: Header=BB9_12 Depth=1
	mov	x0, x20
	mov	w1, #633                        ; =0x279
	mov	x2, x21
	bl	_lean_notify_assert
	ldr	w8, [x19, #4]
	cmp	w8, w23
	b.lo	LBB9_19
LBB9_26:                                ;   in Loop: Header=BB9_12 Depth=1
	mov	x0, x20
	mov	w1, #601                        ; =0x259
	mov	x2, x22
	bl	_lean_notify_assert
	ldr	w8, [x19, #4]
	cmp	w8, w23
	b.lo	LBB9_19
; %bb.27:                               ;   in Loop: Header=BB9_12 Depth=1
	mov	x0, x20
	mov	w1, #532                        ; =0x214
	mov	x2, x22
	bl	_lean_notify_assert
	b	LBB9_19
LBB9_28:                                ;   in Loop: Header=BB9_12 Depth=1
	str	x27, [x19, #8]
	b	LBB9_17
LBB9_29:
	mov	w19, #1                         ; =0x1
LBB9_30:
	mov	x0, x19
	mov	w1, #1                          ; =0x1
	bl	__lean_main
	mov	x19, x0
	b	LBB9_1
LBB9_31:
	cbz	w8, LBB9_35
; %bb.32:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	mov	w0, #0                          ; =0x0
	b	LBB9_7
LBB9_33:
	cbz	w8, LBB9_6
; %bb.34:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB9_6
LBB9_35:
	mov	w0, #0                          ; =0x0
	b	LBB9_7
LBB9_36:
	cbz	w8, LBB9_10
; %bb.37:
	mov	x0, x19
	bl	_lean_dec_ref_cold
	b	LBB9_10
LBB9_38:
	bl	_lean_internal_panic_out_of_memory
	.loh AdrpAdd	Lloh142, Lloh143
	.loh AdrpAdd	Lloh140, Lloh141
	.loh AdrpAdd	Lloh138, Lloh139
	.loh AdrpLdr	Lloh136, Lloh137
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function l_List_foldl___at___List_toString___at___f_spec__0_spec__0.cold.1
_l_List_foldl___at___List_toString___at___f_spec__0_spec__0.cold.1: ; @l_List_foldl___at___List_toString___at___f_spec__0_spec__0.cold.1
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
Lloh144:
	adrp	x0, l_.str@PAGE
Lloh145:
	add	x0, x0, l_.str@PAGEOFF
Lloh146:
	adrp	x2, l_.str.2@PAGE
Lloh147:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	bl	_OUTLINED_FUNCTION_1
	b.lo	LBB10_2
; %bb.1:
Lloh148:
	adrp	x0, l_.str@PAGE
Lloh149:
	add	x0, x0, l_.str@PAGEOFF
Lloh150:
	adrp	x2, l_.str.2@PAGE
Lloh151:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	w1, #532                        ; =0x214
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	b	_OUTLINED_FUNCTION_5
LBB10_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	b	_OUTLINED_FUNCTION_6
	.loh AdrpAdd	Lloh146, Lloh147
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpAdd	Lloh150, Lloh151
	.loh AdrpAdd	Lloh148, Lloh149
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function l_List_toString___at___f_spec__0.cold.1
_l_List_toString___at___f_spec__0.cold.1: ; @l_List_toString___at___f_spec__0.cold.1
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
Lloh152:
	adrp	x0, l_.str@PAGE
Lloh153:
	add	x0, x0, l_.str@PAGEOFF
Lloh154:
	adrp	x2, l_.str.2@PAGE
Lloh155:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	bl	_OUTLINED_FUNCTION_1
	b.lo	LBB11_2
; %bb.1:
Lloh156:
	adrp	x0, l_.str@PAGE
Lloh157:
	add	x0, x0, l_.str@PAGEOFF
Lloh158:
	adrp	x2, l_.str.2@PAGE
Lloh159:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	w1, #532                        ; =0x214
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	b	_OUTLINED_FUNCTION_5
LBB11_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	b	_OUTLINED_FUNCTION_6
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpAdd	Lloh152, Lloh153
	.loh AdrpAdd	Lloh158, Lloh159
	.loh AdrpAdd	Lloh156, Lloh157
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function l_List_toString___at___f_spec__0.cold.2
_l_List_toString___at___f_spec__0.cold.2: ; @l_List_toString___at___f_spec__0.cold.2
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
Lloh160:
	adrp	x0, l_.str@PAGE
Lloh161:
	add	x0, x0, l_.str@PAGEOFF
Lloh162:
	adrp	x2, l_.str.2@PAGE
Lloh163:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	bl	_OUTLINED_FUNCTION_1
	b.lo	LBB12_2
; %bb.1:
Lloh164:
	adrp	x0, l_.str@PAGE
Lloh165:
	add	x0, x0, l_.str@PAGEOFF
Lloh166:
	adrp	x2, l_.str.2@PAGE
Lloh167:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	w1, #532                        ; =0x214
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	b	_OUTLINED_FUNCTION_5
LBB12_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	b	_OUTLINED_FUNCTION_6
	.loh AdrpAdd	Lloh162, Lloh163
	.loh AdrpAdd	Lloh160, Lloh161
	.loh AdrpAdd	Lloh166, Lloh167
	.loh AdrpAdd	Lloh164, Lloh165
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function l_List_toString___at___f_spec__0.cold.3
_l_List_toString___at___f_spec__0.cold.3: ; @l_List_toString___at___f_spec__0.cold.3
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
Lloh168:
	adrp	x0, l_.str@PAGE
Lloh169:
	add	x0, x0, l_.str@PAGEOFF
Lloh170:
	adrp	x2, l_.str.2@PAGE
Lloh171:
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_OUTLINED_FUNCTION_0
	bl	_OUTLINED_FUNCTION_1
	b.lo	LBB13_2
; %bb.1:
Lloh172:
	adrp	x0, l_.str@PAGE
Lloh173:
	add	x0, x0, l_.str@PAGEOFF
Lloh174:
	adrp	x2, l_.str.2@PAGE
Lloh175:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	w1, #532                        ; =0x214
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	b	_OUTLINED_FUNCTION_5
LBB13_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	b	_OUTLINED_FUNCTION_6
	.loh AdrpAdd	Lloh170, Lloh171
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpAdd	Lloh172, Lloh173
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_0
_OUTLINED_FUNCTION_0:                   ; @OUTLINED_FUNCTION_0 Thunk
	.cfi_startproc
; %bb.0:
	mov	w1, #601                        ; =0x259
	b	_lean_notify_assert
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_1
_OUTLINED_FUNCTION_1:                   ; @OUTLINED_FUNCTION_1 Function
	.cfi_startproc
; %bb.0:
	ldr	w8, [x19]
	lsr	w8, w8, #26
	cmp	w8, #61
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_2
_OUTLINED_FUNCTION_2:                   ; @OUTLINED_FUNCTION_2 Thunk
	.cfi_startproc
; %bb.0:
	mov	w1, #623                        ; =0x26f
	b	_lean_notify_assert
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_3
_OUTLINED_FUNCTION_3:                   ; @OUTLINED_FUNCTION_3 Thunk
	.cfi_startproc
; %bb.0:
	mov	w1, #596                        ; =0x254
	b	_lean_notify_assert
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_4
_OUTLINED_FUNCTION_4:                   ; @OUTLINED_FUNCTION_4 Thunk
	.cfi_startproc
; %bb.0:
	mov	w1, #532                        ; =0x214
	b	_lean_notify_assert
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_5
_OUTLINED_FUNCTION_5:                   ; @OUTLINED_FUNCTION_5 Tail Call
	.cfi_startproc
; %bb.0:
	ldp	x20, x19, [sp], #32
	b	_lean_notify_assert
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_6
_OUTLINED_FUNCTION_6:                   ; @OUTLINED_FUNCTION_6 Tail Call
	.cfi_startproc
; %bb.0:
	ldp	x20, x19, [sp], #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_7
_OUTLINED_FUNCTION_7:                   ; @OUTLINED_FUNCTION_7 Thunk
	.cfi_startproc
; %bb.0:
	mov	x0, x21
	b	_lean_dec_ref_cold
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0,8,3 ; @l_List_foldl___at___List_toString___at___f_spec__0_spec__0___closed__0
.zerofill __DATA,__bss,_l_List_toString___at___f_spec__0___closed__0,8,3 ; @l_List_toString___at___f_spec__0___closed__0
.zerofill __DATA,__bss,_l_List_toString___at___f_spec__0___closed__1,8,3 ; @l_List_toString___at___f_spec__0___closed__1
.zerofill __DATA,__bss,_l_List_toString___at___f_spec__0___closed__2,8,3 ; @l_List_toString___at___f_spec__0___closed__2
.zerofill __DATA,__bss,_l_main___closed__0,8,3 ; @l_main___closed__0
.zerofill __DATA,__bss,__G_initialized,1,0 ; @_G_initialized
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"../../build/release/stage1/include/lean/lean.h"

l_.str.1:                               ; @.str.1
	.asciz	"i < lean_ctor_num_objs(o)"

l_.str.2:                               ; @.str.2
	.asciz	"lean_is_ctor(o)"

l_.str.8:                               ; @.str.8
	.asciz	", "

l_.str.9:                               ; @.str.9
	.asciz	"[]"

l_.str.10:                              ; @.str.10
	.asciz	"["

l_.str.11:                              ; @.str.11
	.asciz	"]"

l_.str.12:                              ; @.str.12
	.asciz	"0"

.subsections_via_symbols
