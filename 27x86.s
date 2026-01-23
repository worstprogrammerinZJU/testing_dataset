	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	xzr, [sp, #16]
	str	xzr, [sp, #24]
	str	xzr, [sp, #32]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
	b	LBB0_21
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	x9, sp
	str	xzr, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
	mov	x9, sp
	add	x8, sp, #12
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_22
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #0
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	mov	w11, #2
	sdiv	w9, w8, w11
	mul	w9, w9, w11
	subs	w8, w8, w9
	add	x9, sp, #16
	strb	w8, [x9, w10, uxtw]
	add	x8, x9, w10, uxtw
	ldur	w9, [x29, #-12]
	add	w9, w9, #1
	str	w9, [x8]
	add	w8, w8, #1
	subs	w8, w8, #3
	cset	w8, hs
	tbnz	w8, #0, LBB0_5
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	str	w0, [sp, #12]
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #0
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_11
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #0
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_8 Depth=2
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, sp, #16
	add	x8, x8, #1
	ldrb	w8, [x8]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_8 Depth=2
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_17
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_18
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_18
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_19
	b	LBB0_18
LBB0_18:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_20
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	add	w8, w0, w8
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_20
	b	LBB0_20
LBB0_20:                                ;   in Loop: Header=BB0_1 Depth=1
	add	x9, sp, #16
	add	x8, x9, #1
	ldrsb	w8, [x8]
	add	w8, w8, #1
	strb	w8, [x9]
	ldur	w8, [x29, #-12]
