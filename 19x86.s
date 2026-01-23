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
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	x9, sp
	add	x8, sp, #12
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_17
	b	LBB0_1
LBB0_1:
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB0_2
	.p2align	2
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	x9, sp
	mov	x8, #10000
	str	x8, [x9]
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	_printf
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	subs	w8, w8, #120, lsl #12           ; =49152
	cset	w8, gt
	tbnz	w8, #0, LBB0_17
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
                                        ;       Child Loop BB0_12 Depth 3
	mov	x9, sp
	add	x8, sp, #16
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	adrp	x9, l___const.main.c@PAGE
	add	x9, x9, l___const.main.c@PAGEOFF
	ldr	w9, [x9]
	ands	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w9, #1
	add	w8, w9, #1
	subs	w8, w8, #100
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #16]
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #120, lsl #12           ; =49152
	cset	w8, gt
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #120, lsl #12           ; =49152
	subs	w8, w8, #120, lsl #12           ; =49152
	cset	w8, gt
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #16]
	mov	w9, #10000
	subs	w8, w8, #120, lsl #12           ; =49152
	cset	w8, gt
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #120, lsl #12           ; =49152
	cset	w8, gt
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-12]
	mov	w10, #100
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_11
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #16]
	mov	w9, #100
	sdiv	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_13
LBB0_13:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #120, lsl #12           ; =49152
	cset	w8, gt
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #120, lsl #12           ; =49152
	subs	w8, w8, #120, lsl #12           ; =49152
	cset	w8, eq
	tbnz	w8, #0, LBB0_16
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #16]
	subs	w8, w8, #120, lsl #12           ; =49152
	cset	w8, ge
	tbnz	w8, #0, LBB0_17
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_2 Depth=1