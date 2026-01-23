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
	sub	sp, sp, #752
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #36
	mov	x1, #676
	bl	_bzero
	mov	x8, #1
	movk	x8, #2, lsl #32
	str	x8, [sp, #36]
	mov	w8, #3
	str	w8, [sp, #44]
	mov	w9, #3
	str	w9, [sp, #48]
	str	w8, [sp, #52]
	b	LBB0_1
LBB0_1:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #2
	subs	w8, w8, #998
	cset	w8, hs
	tbnz	w8, #0, LBB0_6
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	ldr	w8, [sp, #44]
	mov	w9, #6
	mul	w9, w8, w9
	ldr	w8, [sp, #44]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #44]
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_12
	b	LBB0_4
LBB0_4:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #52]
	mov	w9, #6
	mul	w9, w8, w9
	ldr	w8, [sp, #52]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_4 Depth=2
	ldr	w9, [sp, #52]
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	add	w8, w8, #4
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	subs	w8, w0, w1
	cset	w8, le
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	add	w9, w1, w8
	add	x8, sp, #36
	str	w0, [x8, w9, sxtw #2]
	b	LBB0_8
LBB0_8:
	mov	x9, sp
	add	x8, sp, #28
	str	x8, [x9]
	add	x8, sp, #32
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_26
	b	LBB0_9
LBB0_9:
	mov	w8, #-1
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=1
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	add	x8, sp, #32
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=1
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_puts
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, sp
	add	x10, sp, #28
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_12
	b	LBB0_12
LBB0_12:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_14 Depth 2
                                        ;     Child Loop BB0_23 Depth 2
	ldr	w8, [sp, #28]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	w9, [sp, #32]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	subs	w8, w8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB0_19
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #28]
	mov	w10, #2
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_19
	b	LBB0_14
LBB0_14:                                ;   Parent Loop BB0_12 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #36]
	mov	w10, #2
	udiv	w9, w0, w10
	mul	w9, w9, w10
	subs	w9, w0, w9
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldr	w8, [sp, #36]
	mov	w9, #3
	mul	w9, w8, w9
	add	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_19
	b