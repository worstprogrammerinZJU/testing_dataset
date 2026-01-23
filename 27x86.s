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
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	str	xzr, [sp, #16]
	str	xzr, [sp, #24]
	str	xzr, [sp, #32]
	str	xzr, [sp, #40]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
	mov	x9, sp
	add	x8, sp, #12
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_21
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_5
LBB0_4:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	sdiv	w9, w8, w8
	mul	w9, w9, w8
	subs	w8, w8, w9
	mov	w9, #1
	sdiv	w8, w8, w9
	add	x8, x8, #1
	str	x8, [sp, #16]
	subs	x8, x8, #1
	cset	w8, hs
	tbnz	w8, #0, LBB0_5
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	mov	x9, x8
	subs	x8, x9, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_12
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_8
LBB0_8:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w8, [sp, #17]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_12
LBB0_12:
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #8]
	adrp	x10, ___stack_chk_guard@GOTPAGE
	ldr	x10, [x10, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x10, [x10]
	subs	x10, x9, x10
	cset	w10, eq
	tbnz	w10, #0, LBB0_14
	b	LBB0_13
LBB0_13:
	bl	___stack_chk_fail
LBB0_14:
	mov	w0, #0
	mov	w1, #0
	mov	x2, #0
	mov	x3, #0
	mov	x4, #0
	mov	x5, #0
	mov	x6, #0
	bl	_bzero
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_16
	b	LBB0_15
LBB0_15:
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #8]
	adrp	x10, ___stack_chk_guard@GOTPAGE
	ldr	x10, [x10, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x10, [x10]
	subs	x10, x9, x10
	cset	w10, eq
	tbnz	w10, #0, LBB0_17
	b	LBB0_16
LBB0_16:
	bl	___stack_chk_fail
LBB0_17:
	mov	w0, #0
	mov	w1, #0
	mov	x2, #0
	mov	x3, #0
	mov	x4, #0
	mov	x5, #0
	mov	x6, #0
	bl	_bzero
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_19
	b	LBB0_18
LBB0_18:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_20
	b	LBB0_21
LBB0_20:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_22
	b	LBB0_22
LBB0_21:
	mov	w0, #0
	mov	w1, #0
	mov	w2, #0
	mov	w3, #0
	mov	w4, #0
	mov	w5, #0
	mov	w6, #0
	bl	_bzero
	ldr	w8, [sp, #4