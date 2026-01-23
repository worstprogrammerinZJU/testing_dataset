	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x4059000000000000              ; double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	sub	sp, sp, #1072
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #40
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_9
	b	LBB0_1
LBB0_1:
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	mov	x9, sp
	movi	d0, #0000000000000000
	str	d0, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	add	w8, w8, #1
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_9
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	mov	x9, sp
	add	x10, sp, #44
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #0
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	mov	x9, #-1056
	add	x10, x9, #1056
	mov	x9, x8
	add	x9, x9, x10
	mov	x10, sp
	str	x9, [x10]
	str	x8, [x10, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldrsb	w9, [sp, #48]
	add	w9, w8, w9
	add	w8, w8, #1
	str	w8, [sp, #44]
	ldrsw	x8, [sp, #44]
	subs	x8, x8, x9
	cset	w8, lt
	tbnz	w8, #0, LBB0_5
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #44]
	mov	w10, #3
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_9
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #44]
	mov	w9, #3
	udiv	w10, w8, w9
	mul	w10, w10, w9
	subs	w8, w8, w10
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	subs	w8, w8, #1056
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	subs	w8, w8, #1056
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	subs	w8, w8, #1056
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	subs	w8, w8, #1056
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	subs	w8, w8, #1056
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	subs	w8, w8, #1056
	cset	w8, ne
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	subs	w8