.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.p2align	2
	lsl	x29, sp, #32
	.p2align	2
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	sub	sp, sp, #880
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	mov	x9, sp
	add	x8, sp, #60
	str	x8, [x9]
	add	x8, sp, #64
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #60]
	subs	w8, w8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	str	xzr, [x9]
	str	xzr, [x9, #8]
	mov	w8, #1
	str	w8, [sp, #56]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #56]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	mov	x9, sp
	str	xzr, [sp, #56]
	str	xzr, [sp, #64]
	mov	x8, #1
	str	x8, [sp, #56]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #56]
	subs	w9, w9, #2
	cset	w9, ne
	tbnz	w9, #0, LBB0_11
	b	LBB0_3
LBB0_3:
	mov	x9, sp
	add	x8, x8, #4
	str	x8, [sp, #56]
	mov	x8, #1
	str	x8, [sp, #56]
	ldr	w9, [sp, #64]
	mov	w8, #2
	mul	w8, w8, w9
	str	w8, [sp, #64]
	add	x8, x8, #4
	ldr	w9, [sp, #64]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:
	mov	x8, #2
	mov	x9, x8
	str	x9, [sp, #56]
	str	x8, [sp, #64]
	mov	w8, #2
	mul	w8, w8, x9
	str	w8, [sp, #64]
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #56]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	mov	w0, #0
	b	LBB0_7
LBB0_6:
	mov	x8, sp
	str	xzr, [x8]
	mov	x0, #2
	bl	_scanf
	ldur	x9, [x29, #-32]
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
	add	sp, sp, #880
	add	sp, sp, #400
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_9:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d\n%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols