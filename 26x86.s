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
	sub	sp, sp, #832
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #8
	mov	x1, #800
	bl	_bzero
	fmov	d0, #1.00000000
	str	d0, [sp, #8]
	str	d0, [sp, #16]
	mov	w0, #6
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x9, sp, #12
	ldr	w8, [x9, x0, lsl #2]
	mov	w10, #6
	mul	w8, w10, w8
	ldr	w9, [x9, x0, lsl #2]
	add	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	mov	x9, #52455
	movk	x9, #33492, lsl #16
	mul	x8, x8, x9
	mov	x9, #65539
	movk	x9, #2051, lsl #16
	mul	x8, x8, x9
	mov	x9, x8
	mov	w8, #2005
	mul	w8, w8, w9
	subs	w8, w8, w9
	str	w8, [sp, #16]
	adds	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	mov	x9, sp
	add	x8, sp, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_3
LBB0_3:
	mov	x9, sp
	add	x8, sp, #4
	str	x8, [x9]
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [sp]
	b	LBB0_4
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #4]
	mov	x9, #34071
	movk	x9, #20861, lsl #16
	mul	x8, x8, x9
	mov	x9, #65539
	movk	x9, #2051, lsl #16
	mul	x8, x8, x9
	mov	x9, x8
	mov	w8, #200
	mul	w8, w8, w9
	subs	w9, w8, #0
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	add	x8, sp, #8
	ldr	w1, [x8, x9, lsl #2]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	x0, sp
	mov	x1, sp
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
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
	add	sp, sp, #832
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols