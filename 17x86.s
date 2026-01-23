.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x4059000000000000              ; double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	sp, sp, #1072
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #24
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_10
	b	LBB0_1
LBB0_1:
	mov	x8, sp
	str	xzr, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
	mov	x8, sp
	add	x9, sp, #28
	str	x9, [x8]
	str	d0, [x8, #8]
	str	d1, [x8, #16]
	str	d2, [x8, #24]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x9, sp
	mov	x10, #37
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_printf
	mov	w8, #1
	add	w8, w8, #0
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB0_10
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
	mov	x8, sp
	str	xzr, [x8]
	str	d0, [x8, #8]
	str	d1, [x8, #16]
	str	d2, [x8, #24]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x9, sp
	str	xzr, [x9]
	str	d0, [x9, #8]
	str	d1, [x9, #16]
	str	d2, [x9, #24]
	bl	_printf
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
	mov	x8, sp
	str	xzr, [x8]
	str	d0, [x8, #8]
	str	d1, [x8, #16]
	str	d2, [x8, #24]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x9, sp
	str	xzr, [x9]
	str	d0, [x9, #8]
	str	d1, [x9, #16]
	str	d2, [x9, #24]
	bl	_printf
	ldr	w8, [sp, #32]
	sdiv	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ; =>This Loop: Header=BB0_2 Depth=1
	mov	x8, sp
	str	xzr, [x8]
	str	d0, [x8, #8]
	str	d1, [x8, #16]
	str	d2, [x8, #24]
	str	xzr, [x8, #32]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x8, sp
	str	xzr, [x8]
	str	d0, [x8, #8]
	str	d1, [x8, #16]
	str	d2, [x8, #24]
	bl	_printf
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ; =>This Loop: Header=BB0_2 Depth=1
	mov	x8, sp
	str	xzr, [x8]
	str	d0, [x8, #8]
	str	d1, [x8, #16]
	str	d2, [x8, #24]
	str	xzr, [x8, #32]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x8, sp
	str	xzr, [x8]
	str	d0, [x8, #8]
	str	d1, [x8, #16]
	str	d2, [x8, #24]
	bl	_printf
	ldr	w8, [sp, #40]
	sdiv	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ; =>This Loop: Header=BB0_2 Depth=1
	mov	x8, sp
	str	xzr, [x8]
	str	d0, [x8, #8]
	str	d1, [x8, #16]
	str	d2, [x8, #24]
	str	xzr, [x8, #32]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x8, sp
	str	xzr, [x8]
	str	d0, [x8, #8]
	str	d1, [x8, #16]
	str	d2, [x8, #24]
	bl	_printf
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	bl	___stack_chk_fail