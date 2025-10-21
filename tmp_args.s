	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_foo                            ; -- Begin function foo
	.p2align	2
_foo:                                   ; @foo
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	ldr	x8, [sp, #80]
	str	x0, [sp, #72]
	str	x1, [sp, #64]
	str	x2, [sp, #56]
	str	x3, [sp, #48]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	str	x7, [sp, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #72]
	ldr	x9, [sp, #64]
	add	x8, x8, x9
	ldr	x9, [sp, #56]
	add	x8, x8, x9
	ldr	x9, [sp, #48]
	add	x8, x8, x9
	ldr	x9, [sp, #40]
	add	x8, x8, x9
	ldr	x9, [sp, #32]
	add	x8, x8, x9
	ldr	x9, [sp, #24]
	add	x8, x8, x9
	ldr	x9, [sp, #16]
	add	x8, x8, x9
	ldr	x9, [sp, #8]
	add	x0, x8, x9
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
