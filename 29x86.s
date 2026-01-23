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
	mov	w9, #41464
	movk	w9, #7, lsl #16
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #123, lsl #12          ; =491520
	sub	sp, sp, #41464
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #44
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_19
	b	LBB0_1
LBB0_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w1, #0
	mov	w2, #0
	bl	_scanf
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_21
	b	LBB0_2
LBB0_2:
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, ge
	and	w10, w8, #0x1
	mov	w9, #-10001
	mov	w8, #0
	ands	w10, w10, #0x1
	csel	w8, w8, w9, ne
	add	w10, w8, w9
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_21
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
	mov	x0, x0
	add	x1, sp, #40
	bl	_scanf
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, ge
	and	w10, w8, #0x1
	mov	w9, #0
	ands	w10, w10, #0x1
	csel	w9, w9, w8, ne
	ldr	w8, [sp, #40]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	bl	___stack_chk_fail
LBB0_8:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	mov	w5, #0
	bl	_scanf
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, ge
	and	w10, w8, #0x1
	mov	w9, #0
	mov	w8, #0
	ands	w10, w10, #0x1
	csel	w8, w8, w9, ne
	ldr	w9, [sp, #40]
	subs	w9, w9, w8
	cset	w9, ge
	tbnz	w9, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	mov	w5, #0
	bl	_scanf
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, ge
	and	w10, w8, #0x1
	mov	w9, #0
	mov	w8, #0
	ands	w10, w10, #0x1
	csel	w8, w8, w9, ne
	ldr	w9, [sp, #40]
	subs	w9, w9, w8
	cset	w9, ge
	tbnz	w9, #0, LBB0_14
	b	LBB0_13
LBB0_13:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	mov	w5, #0
	bl	_scanf
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_15
	b	LBB0