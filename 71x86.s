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
	mov	x9, sp
	sub	x8, x29, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [x9]
	sub	x8, x29, #4
	str	x8, [x9, #8]
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [x9, #16]
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	scvtf	d1, w8
	fmov	d0, #8.00000000
	fmadd	d0, d0, d1, d0
	fsqrt	d0, d0
	fmov	d1, #1.00000000
	fsub	d0, d0, d1
	fcmp	d0, d0
	cset	w8, ne
	and	w9, w8, #0x1
	mov	w8, #0
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ucvtf	d0, w9
	fcmp	d0, d0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	subs	w8, w8, #1
	ldur	w9, [x29, #-4]
