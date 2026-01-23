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
	mov	w9, #40160
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #3192
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #44
	mov	w1, #40160
	bl	_bzero
	mov	w8, #1
	mov	x9, sp
	str	x8, [x9]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, _.str@PAGE
	add	x0, x0, _.str@PAGEOFF
	mov	x1, #4
	bl	_printf
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x8, _.str@PAGE
	add	x8, x8, _.str@PAGEOFF
	ldrh	w8, [x8]
	mov	x9, x8
	mov	x8, x9
	mov	x9, #1
	mul	x8, x8, x9
	mov	x9, x8
	mov	x8, #65535
	movk	x8, #65535, lsl #16
	sdiv	x8, x8, x9
	mov	x9, #65535
	movk	x9, #65535, lsl #16
	mul	x9, x8, x9
	mov	x8, x9
	adds	x8, x8, x9
	ldrsb	x9, [x8]
	mov	x8, x9
	subs	x8, x8, x9
	add	x8, x8, #9
	subs	x8, x8, #18
	cset	w8, hi
	tbnz	w8, #0, LBB0_4
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	add	x9, sp, #44
	add	x9, x9, #4
	mov	w8, #1
	str	w8, [x9]
	add	x9, x9, #1
	mov	x8, #10000
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_5
LBB0_5:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	bl	___stack_chk_fail
LBB0_7:
	mov	w0, #0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3192
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_8:
	bl	___stack_chk_fail
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d\n"

.subsections_via_symbols