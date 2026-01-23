.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_dp                             ; -- Begin function dp
	.p2align	2
_dp:                                    ; @dp
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _p@GOTPAGE
	ldr	x8, [x8, _p@GOTPAGEOFF]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	w8, #400
	mul	w10, w8, w0
	adrp	x9, _q@PAGE
	add	x9, x9, _q@PAGEOFF
	ldr	w8, [x9, w10, sxtw #2]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_22
	b	LBB0_1
LBB0_1:
	mov	x8, x1
	stur	w8, [x29, #-4]
	stur	w0, [x29, #-8]
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB0_6
LBB0_2:
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	mov	w8, #1
	stur	w8, [x29, #-12]
	mov	w8, #400
	mul	w10, w8, w9
	adrp	x8, _p@GOTPAGE
	ldr	x8, [x8, _p@GOTPAGEOFF]
	mov	x11, #8
	mul	x11, x11, x10
	ldr	w8, [x8, x11]
	ldr	w10, [x9, x11, lsl #2]
	subs	w8, w8, w10
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_3
LBB0_3:
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	mov	w8, #400
	mul	w10, w8, w0
	adrp	x8, _q@PAGE
	add	x8, x8, _q@PAGEOFF
	ldr	w8, [x8, w10, sxtw #2]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-16]
	adrp	x8, _q@PAGE
	add	x8, x8, _q@PAGEOFF
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	ldur	w8, [x29, #-12]
	mov	w9, #400
	add	w10, w8, #1
	adrp	x8, _q@PAGE
	add	x8, x8, _q@PAGEOFF
	ldr	w8, [x8, w10, uxtw #2]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_6
LBB0_6:
	mov	w8, #1
	stur	w8, [x29, #-16]
	adrp	x8, _q@PAGE
	add	x8, x8, _q@PAGEOFF
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	mov	w8, #400
	movk	w8, #400, lsl #16
	add	w8, w8, #1
	adrp	x9, _q@PAGE
	add	x9, x9, _q@PAGEOFF
	ldr	w8, [x9, w8, uxtw #2]
	subs	w8, w8, w8
	cset	w8, gt
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	mov	w8, #400
	movk	w8, #400, lsl #16
	mov	w0, w8
	mov	w1, #0
	bl	_dp
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldur	w9, [x29, #-16]
	subs	w9, w9, #400
	cset	w9, ge
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	ldursw	x9, [x29, #-16]
	subs	x9, x9, #0
	cset	w9, lt
	tbnz	w9, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	mov	w8, #1
	stur	w8, [x29, #-20]
	adrp	x8, _q@PAGE
	add	x8, x8, _q@PAGEOFF
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_10
LBB0_10:
	mov	w8, #400
	movk	w8, #400, lsl #16
	add	w8, w8, #1
	adrp	x9, _q@PAGE
	add	x9, x9, _q@PAGEOFF
	ldr	w9, [x9, w8, uxtw #2]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	mov	w8, #1
	stur	w8, [x29, #-20]
	adrp	x8, _q@PAGE
	add	x8, x8, _q@PAGEOFF
	ldr	w8, [x8, #4]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_12
LBB0_12:
	adrp	x8, _p@GOTPAGE
	ldr	x8, [x8, _p@GOTPAGEOFF]
	ldr	w8, [x8]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:
	mov	w8, #1
	stur	w8, [x29, #-20]
	adrp	x8, _q@PAGE
	add	x8, x8, _q@PAGEOFF
	ldr	w8, [x8, #4]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_14
LBB0_14:
	mov	w0, #1
	mov	w1, #0
	bl	_dp
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldur	w10, [x29, #-8]
	subs	w8, w8, w10
	cset	w8, ge
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w8,