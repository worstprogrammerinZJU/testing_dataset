.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.p2align	2
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	w9, #40064
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #3000
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #56
	str	x8, [x9]
	add	x8, sp, #64
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #56]
	subs	w8, w8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	subs	w8, w8, #1
	mov	x12, x8
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	mov	x11, x8
	mov	x10, #1
	mov	x9, sp
	str	x12, [x9]
	str	x11, [x9, #8]
	str	x10, [x9, #16]
	str	x8, [x9, #24]
	mov	w8, #1
	strb	w8, [x9, #30]
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x8, sp
	str	x8, [sp, #56]
	mov	x8, #1
	str	x8, [sp, #64]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	cset	w8, ge
	and	w9, w8, #0x1
	mov	w8, #1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, ne
	ldur	w9, [x29, #-24]
	subs	w9, w9, #1
	cset	w9, ne
	tbnz	w9, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	cset	w8, gt
	and	w9, w8, #0x1
	mov	w8, #1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, ne
	ldur	w9, [x29, #-24]
	subs	w9, w9, #1
	cset	w9, ne
	tbnz	w9, #0, LBB0_5
	b	LBB0_4
LBB0_4:
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	cset	w8, ge
	and	w9, w8, #0x1
	mov	w8, #1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, ne
	ldur	w9, [x29, #-24]
	subs	w9, w9, #1
	cset	w9, ne
	tbnz	w9, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, gt
	and	w9, w8, #0x1
	mov	w8, #1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, ne
	ldur	w9, [x29, #-24]
	subs	w9, w9, #1
	cset	w9, ne
	tbnz	w9, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	bl	___stack_chk_fail
LBB0_7:
	mov	w0, #0
	mov	sp, x29
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_8:
	mov	w8, #1
	movk	w8, #2, lsl #16
	orr	w8, w8, #0x1
	mov	w9, #0
	orr	w8, w8, w9
	ldur	w9, [x29, #-24]
	ldur	w10, [x29, #-16]
	subs	w9, w9, w10
	cset	w9, ge
	and	w9, w9, #0x1
	orr	w8, w8, w9
	ldur	w9, [x29, #-24]
	subs	w9, w9, #1
	cset	w9, ne
	tbnz	w9, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, gt
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, gt
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	cset	w8, ge
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, gt
	and	w8, w8, #0x1
	orr	w8, w8