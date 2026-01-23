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
	mov	w9, #4176
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #80
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #56
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #56]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_29
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	adrp	x15, l_.str@PAGE
	add	x15, x15, l_.str@PAGEOFF
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x15, l_.str@PAGE
	add	x15, x15, l_.str@PAGEOFF
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w9, [sp, #64]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #40]
	add	x8, x8, #1
	ldr	w9, [sp, #56]
	subs	x8, x8, w9, uxtw
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_4
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
                                        ;       Child Loop BB0_10 Depth 3
                                        ;       Child Loop BB0_18 Depth 3
                                        ;       Child Loop BB0_24 Depth 3
                                        ;     Child Loop BB0_27 Depth 2
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	x9, sp
	add	x8, sp, #60
	str	x8, [x9]
	add	x8, sp, #36
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #60]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x16, l_.str.2@PAGE
	add	x16, x16, l_.str.2@PAGEOFF
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_6
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_12
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB0_11
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #1
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB0_13
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #1
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_23
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #1
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	subs	w