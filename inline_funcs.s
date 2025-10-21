	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_test_lean_box                  ; -- Begin function test_lean_box
	.p2align	2
_test_lean_box:                         ; @test_lean_box
	.cfi_startproc
; %bb.0:
	mov	w8, #1                          ; =0x1
	orr	x0, x8, x0, lsl #1
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_test_lean_is_scalar            ; -- Begin function test_lean_is_scalar
	.p2align	2
_test_lean_is_scalar:                   ; @test_lean_is_scalar
	.cfi_startproc
; %bb.0:
	and	w0, w0, #0x1
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_test_lean_unbox                ; -- Begin function test_lean_unbox
	.p2align	2
_test_lean_unbox:                       ; @test_lean_unbox
	.cfi_startproc
; %bb.0:
	lsr	x0, x0, #1
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_test_lean_unbox_uint32         ; -- Begin function test_lean_unbox_uint32
	.p2align	2
_test_lean_unbox_uint32:                ; @test_lean_unbox_uint32
	.cfi_startproc
; %bb.0:
	lsr	x0, x0, #1
                                        ; kill: def $w0 killed $w0 killed $x0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_test_lean_ctor_get             ; -- Begin function test_lean_ctor_get
	.p2align	2
_test_lean_ctor_get:                    ; @test_lean_ctor_get
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
	mov	x19, x1
	mov	x20, x0
	ldr	w8, [x0, #4]
	lsr	w9, w8, #26
	cmp	w9, #61
	b.hs	LBB4_4
LBB4_1:
	mov	w21, #-201326592                ; =0xf4000000
	lsr	w9, w8, #16
	cmp	w19, w9, uxtb
	b.hs	LBB4_5
LBB4_2:
	cmp	w8, w21
	b.hs	LBB4_6
LBB4_3:
	add	x8, x20, w19, uxtw #3
	ldr	x0, [x8, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB4_4:
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
Lloh2:
	adrp	x2, l_.str.2@PAGE
Lloh3:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	w1, #596                        ; =0x254
	bl	_lean_notify_assert
	ldr	w8, [x20, #4]
	b	LBB4_1
LBB4_5:
Lloh4:
	adrp	x0, l_.str@PAGE
Lloh5:
	add	x0, x0, l_.str@PAGEOFF
Lloh6:
	adrp	x2, l_.str.1@PAGE
Lloh7:
	add	x2, x2, l_.str.1@PAGEOFF
	mov	w1, #618                        ; =0x26a
	bl	_lean_notify_assert
	ldr	w8, [x20, #4]
	b	LBB4_2
LBB4_6:
Lloh8:
	adrp	x0, l_.str@PAGE
Lloh9:
	add	x0, x0, l_.str@PAGEOFF
Lloh10:
	adrp	x2, l_.str.2@PAGE
Lloh11:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	w1, #601                        ; =0x259
	bl	_lean_notify_assert
	ldr	w8, [x20, #4]
	cmp	w8, w21
	b.lo	LBB4_3
; %bb.7:
Lloh12:
	adrp	x0, l_.str@PAGE
Lloh13:
	add	x0, x0, l_.str@PAGEOFF
Lloh14:
	adrp	x2, l_.str.2@PAGE
Lloh15:
	add	x2, x2, l_.str.2@PAGEOFF
	mov	w1, #532                        ; =0x214
	bl	_lean_notify_assert
	b	LBB4_3
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.globl	_test_lean_inc                  ; -- Begin function test_lean_inc
	.p2align	2
_test_lean_inc:                         ; @test_lean_inc
	.cfi_startproc
; %bb.0:
	tbnz	w0, #0, LBB5_3
; %bb.1:
	ldr	w8, [x0]
	cmp	w8, #1
	b.lt	LBB5_4
; %bb.2:
	add	w8, w8, #1
	str	w8, [x0]
LBB5_3:
	ret
LBB5_4:
	cbz	w8, LBB5_3
; %bb.5:
	mov	w8, #-1                         ; =0xffffffff
	ldadd	w8, w8, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_test_lean_dec                  ; -- Begin function test_lean_dec
	.p2align	2
_test_lean_dec:                         ; @test_lean_dec
	.cfi_startproc
; %bb.0:
	tbnz	w0, #0, LBB6_5
; %bb.1:
	ldr	w8, [x0]
	cmp	w8, #2
	b.lt	LBB6_3
; %bb.2:
	sub	w8, w8, #1
	str	w8, [x0]
	ret
LBB6_3:
	cbz	w8, LBB6_5
; %bb.4:
	b	_lean_dec_ref_cold
LBB6_5:
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"./build/release/stage1/include/lean/lean.h"

l_.str.1:                               ; @.str.1
	.asciz	"i < lean_ctor_num_objs(o)"

l_.str.2:                               ; @.str.2
	.asciz	"lean_is_ctor(o)"

.subsections_via_symbols
