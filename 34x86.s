.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_sentence                       ; -- Begin function sentence
	.p2align	2
_sentence:                              ; @sentence
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	lsl	w8, w0, #8
	add	w8, w8, #1
	and	w9, w8, #0xff
	mov	w8, #-1
	strh	w8, [sp]
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	w8, #1
	and	w9, w8, w9
	mov	w8, #2
	and	w9, w8, #0xff
	mov	w8, #10
	mul	w8, w8, w9
	sturh	w8, [x2, #-10]
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	mov	w8, #2
	and	w9, w8, w9
	mov	w8, #1
	and	w9, w8, w9
	mov	w8, #10
	mul	w8, w8, w9
	sturh	w8, [x2, #-12]
	b	LBB0_4
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	mov	w8, #2
	and	w9, w8, w9
	mov	w8, #1
	and	w9, w8, w9
	mov	w8, #10
	mul	w8, w8, w9
	sturh	w8, [x2, #-14]
	b	LBB0_5
LBB0_5:
	mov	w8, #1
	and	w8, w8, w9
	mov	w9, #2
	and	w8, w8, w9
	mov	w9, #10
	mul	w8, w8, w9
	sturh	w8, [x2, #-16]
	b	LBB0_6
LBB0_6:
	mov	w8, #1
	and	w8, w8, w9
	mov	w9, #10
	and	w8, w8, w9
	mov	w9, #10
	mul	w8, w8, w9
	sturh	w8, [x2, #-18]
	b	LBB0_7
LBB0_7:
	mov	w8, #1
	and	w8, w8, w9
	mov	w9, #2
	and	w8, w8, w9
	mov	w9, #10
	and	w8, w8, w9
	mov	w9, #2
	and	w8, w8, w9
	sturh	w8, [x2, #-18]
	b	LBB0_8
LBB0_8:
	mov	w8, #2
	and	w8, w8, w9
	mov	w9, #10
	and	w8, w8, w9
	mov	w9, #2
	and	w8, w8, w9
	sturh	w8, [x2, #-18]
	b	LBB0_9
LBB0_9:
	mov	w0, #0
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_11
	b	LBB1_10
LBB1_10:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	adrp	x1, _str@GOTPAGE
	ldr	x1, [x1, _str@GOTPAGEOFF]
	mov	w2, #100
	adrp	x3, l_.str.3@PAGE
	add	x3, x3, l_.str.3@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_11
	b	LBB1_11
LBB1_11:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #1
	cset	w8, le
	tbnz	w8, #0, LBB1_9
	b	LBB1_2
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, lt
	tbnz	w8, #0, LBB1_4
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=1
	mov	w8, #0
	and	w8, w8, w9
	mov	w9, #2
	and	w8, w8, w9
	mov	w9, #10
	and	w8, w8, w9
	mov	w9, #2
	and	w8, w8, w9
	sturh	w8, [x2, #-18]
	b	LBB0_4
LBB0_4:
	mov	w0, #0
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_11
	b	LBB1_5
LBB1_5:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, gt
	tbnz	w8, #0, LBB1_7
	b	LBB1_6
LBB1_6:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, gt
	tbnz	w8, #0, LBB1_8
	b	LBB1_7
LBB1_7:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB1_5
	b	LBB1_8
LBB1_8:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB1_6
	b	LBB1_9
LBB1_9:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_11
	b	LBB1_10
LBB1_10:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_11
	b	LBB1_11
LBB1_11:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_11
	b	LBB1_12
LBB1_12:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_12
	b	LBB1_13
LBB1_13:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_13
	b	LBB1_14
LBB1_14:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_14
	b	LBB1_15
LBB1_15:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_15
	b	LBB1_16
LBB1_16:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_16
	b	LBB1_17
LBB1_17:
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_16
	b	LBB1_18
LBB1_18:
	mov	w0, #0
	bl	_sentence
	subs	w