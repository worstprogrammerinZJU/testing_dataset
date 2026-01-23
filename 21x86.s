	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
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
	mov	w9, #40048
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #3184
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #32
	str	x8, [x9]
	add	x8, sp, #40
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #32]
	subs	w8, w8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	subs	w10, w8, #1
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [x9, #8]
	add	x8, sp, #36
	str	x8, [x9, #16]
	mov	w8, #1
	str	w8, [x9, #24]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	cset	w8, ge
	and	w11, w8, #0x1
	mov	w9, #0
	mov	w8, #1
	ands	w11, w11, #0x1
	csinc	w8, w8, wzr, eq
	subs	w11, w8, #1
	add	w10, w10, #1
	str	w10, [sp, #40]
	str	w8, [sp, #32]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	str	w8, [sp, #36]
	b	LBB0_3
LBB0_3:
	ldrsw	x8, [sp, #40]
	mov	x9, x8
	add	x8, sp, #36
	subs	x8, x8, w9, sxtw
	mov	w9, #1
	str	w9, [x8]
	adds	w8, w0, w8
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_4
LBB0_4:
	b	LBB0_5
LBB0_5:
	b	LBB0_6
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	mov	x9, sp
	add	x8, sp, #36
	str	x8, [x9]
	mov	w8, #1
	str	w8, [x9, #8]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_9
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_6 Depth=1
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	LBB0_13
LBB0_13:
	ldr	w8, [sp, #32]
	subs	w8, w8, #1
	cset	w8, le
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:
	ldrsw	x9, [sp, #36]
	add	x8, sp, #32
	add	x8, x8, x9, lsl #2
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3184
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_16
	b	LBB0_15
LBB0_15:
	bl	___stack_chk_fail
LBB0_16:
	mov	w0, #0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3184
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_17:
	ldrsw	x8, [sp, #40]
	add	x9, sp, #32
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_14
	b	LBB0_18
LBB0_18:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [