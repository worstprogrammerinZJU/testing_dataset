.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	sub	x8, x29, #8
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	add	x8, sp, #16
	str	x8, [x9]
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	mov	w9, #2
	sdiv	w8, w8, w9
	subs	w8, w8, #1
	udiv	w8, w8, w9
	mul	w8, w8, w9
	subs	w8, w8, #0
	subs	w8, w8, #1
	udiv	w8, w8, w9
	mul	w8, w8, w9
	subs	w8, w8, #0
	subs	w8, w8, #1
	udiv	w8, w8, w9
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	bl	_memcmp
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	bl	_memcmp
	ldur	w8, [x29, #-8]
	mov	w9, #2
	sdiv	w8, w8, w9
	subs	w8, w8, #1
	mov	w9, #2
	sdiv	w8, w8, w9
	mul	w8, w8, w9
	subs	w8, w8, #0
	subs	w8, w8, #1
	udiv	w8, w8, w9
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	bl	_memcmp
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	bl	_memcmp
	ldur	w8, [x29, #-8]
	mov	w9, #2
	sdiv	w8, w8, w9
	subs	w8, w8, #1
	mov	w9, #2
	sdiv	w8, w8, w9
	mul	w8, w8, w9
	subs	w8, w8, #0
	subs	w8, w8, #1
	udiv	w8, w8, w9
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	bl	_memcmp
	ldur	w8, [x29, #-8]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	bl	_memcmp
	ldur	w8, [x29, #-8]
	mov	w9, #2
	sdiv	w8, w8, w9
	subs	w8, w8, #1
	mov	w9, #2
	sdiv	w8, w8, w9
	mul	w8, w8, w9
	subs	w8, w8, #0
	subs	w8, w8, #1
	udiv	w8, w8, w9
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	bl	_memcmp
	ldur	w8, [x29, #-8]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	bl	_memcmp
	ldur	w8, [x29, #-8]
	mov	w9, #2
	sdiv	w8, w8, w9
	subs	w8, w8, #1
	mov	w9, #2
	sdiv	w8, w8, w9
	mul	w8, w8, w9
	subs	w8, w8, #0
	subs	w8, w8, #1
	udiv	w8, w8, w9
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	bl	_memcmp
	ldur	w8, [x29, #-8]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	bl	_memcmp
	ldur	w8, [x29, #-8]
	mov	w9, #2
	sdiv	w8, w8, w9
	subs	w8, w8, #1
	mov	w9, #2
	sdiv	w8, w8, w9
	mul	w8, w8, w9
	subs	w8, w8, #0
	subs	w8, w8, #1
	udiv	w8, w8, w9
	ldur	w9, [x29, #-8]
	subs	w8, w8,