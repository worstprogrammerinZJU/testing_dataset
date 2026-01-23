.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #48
	str	w0, [sp, #44]
	str	w1, [sp, #48]
	mov	x9, sp
	add	x8, sp, #16
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_18
	b	LBB0_1
LBB0_1:
	mov	x8, sp
	str	xzr, [x8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	mov	w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_18
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;       Child Loop BB0_13 Depth 3
	mov	x8, sp
	str	xzr, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	mov	w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_18
	b	LBB0_3
LBB0_3:                                 ; =>Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	movi	d0, #0000000000000000
	fmov	s1, d0
	fmov	s0, s1
	add	sp, sp, #48
	ret
LBB0_4:                                 ;   in Loop: Header=BB0_4 Depth=1
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_puts
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_4 Depth=1
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_4 Depth=1
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_9
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=1
	subs	w8, w0, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_8:                                 ;   in Loop: Header=BB0_8 Depth=1
	subs	w8, w0, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #16]
	mov	w9, #4096
	sdiv	w8, w8, w9
	scvtf	d0, w8
	fsqrt	d0, d0
	fcvtzs	w8, d0
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_10
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_10 Depth=1
	sxtw	w8, w0
	str	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=1
	sxtw	w8, w1
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_12
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=1
	sxtw	w8, w0
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_13
	b	LBB0_14
LBB0_13:                                ;   in Loop: Header=BB0_14 Depth=1
	sxtw	w8, w1
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_14
	b	LBB0_15
LBB0_14:                                ;   in Loop: Header=BB0_15 Depth=1
	sxtw	w8, w2
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_15
	b	LBB0_16
LBB0_15:                                ;   in Loop: Header=BB0_16 Depth=1
	sxtw	w8, w0
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_16
	b	LBB0_17
LBB0_16:                                ;   in Loop: Header=BB0_17 Depth=1
	sxtw	w8, w3
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_17
	b	LBB0_18
LBB0_17:                                ;   in Loop: Header=BB0_18 Depth=1
	sxtw	w8, w4
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_18
	b	LBB0_19
LBB0_18:                                ;   in Loop: Header=BB0_19 Depth=1
	sxtw	w8, w0
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_19
	b	LBB0_20
LBB0_19:                                ;   in Loop: Header=BB0_20 Depth=1
	sxtw	w8, w4
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_20
	b	LBB0_21
LBB0_20:                                ;   in Loop: Header=BB0_22 Depth=1
	sxtw	w8, w0
	str	w8, [sp, #12]
	ldr	w8, [sp, #