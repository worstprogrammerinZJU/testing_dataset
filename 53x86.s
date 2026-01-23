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
	sub	sp, sp, #784
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #72
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	w1, #676
	bl	___bzero
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	mov	x8, #1
	movk	x8, #8192, lsl #16
	movk	x8, #2, lsl #32
	str	x8, [sp, #72]
	mov	w8, #3
	str	w8, [sp, #76]
	mov	w10, #5
	str	w10, [sp, #80]
	add	x1, sp, #88
	b	LBB0_1
	.p2align	2
LBB0_1:                                 ; =>This Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #76]
	add	w8, w8, #1
	mov	w10, #2
	mul	w9, w10, w8
	subs	w8, w9, #0
	cset	w8, hs
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #80]
	lsl	w9, w8, #2
	add	w9, w9, #1
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #80]
	lsl	w9, w8, #2
	mov	w8, #2
	mul	w9, w8, w9
	mov	w8, #2
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_4
	b	LBB0_5
LBB0_4:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #88]
	ldr	w9, [sp, #92]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_5
	b	LBB0_6
LBB0_5:                                 ; =>This Loop Header: Depth=1
	ldur	w8, [x29, #-74]
	mov	w9, #2
	mul	w9, w8, w9
	add	w8, w8, #1
	subs	w8, w8, w9
	str	w8, [sp, #92]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ; =>This Loop Header: Depth=1
	ldur	w8, [x29, #-72]
	ldur	w9, [x29, #-72]
	mul	w8, w8, w9
	mov	w9, #2
	mul	w9, w8, w9
	mov	w8, #0
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ; =>This Loop Header: Depth=1
	bl	___stack_chk_fail
LBB0_8:
	mov	w0, #0
	add	sp, sp, #784
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_9:
	bl	___stack_chk_fail
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d:"

l_.str.2:                               ; @.str.2
	.asciz	" %d"

l_str:                                  ; @str
	.asciz	"\n"

.subsections_via_symbols