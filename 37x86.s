.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	add	x8, sp, #8
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	x1, [sp, #8]
	mov	x8, x1
	add	x8, x8, #1
	mul	x8, x8, x1
	mov	x4, x1
	adds	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x1
	mov	x8, x2
	udiv	x9, x8, x1
	mul	x9, x9, x1
	subs	x8, x8, x9
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	mov	x9, sp
	add	x8, x0, x1, lsl #1
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%ld"

l_.str.1:                               ; @.str.1
	.asciz	"%ld\n"

.subsections_via_symbols