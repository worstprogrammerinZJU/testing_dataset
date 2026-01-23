.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x28, x27, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	xzr, [sp, #88]
	str	xzr, [sp, #96]
	str	xzr, [sp, #104]
	str	xzr, [sp, #112]
	str	xzr, [sp, #120]
	str	wzr, [sp, #80]
	mov	x9, sp
	add	x8, sp, #79
	str	x8, [x9]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	_scanf
	ldrb	w9, [sp, #79]
	sub	x8, x29, #58
	add	x8, x8, w9, uxtw
	add	x8, x8, #205
	ands	x8, x8, #0xff
	cset	w8, ls
	tbnz	w8, #0, LBB0_4
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, sp
	add	x1, sp, #79
	mov	x2, #80
	bl	_scanf
	ldrb	w9, [sp, #79]
	sub	x8, x29, #68
	add	x8, x8, w9, uxtw
	subs	x8, x8, #205
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #55
	sturb	w8, [x29, #-40]
	add	x9, sp, #144
	add	x9, x9, #18
	mov	x8, x9
	subs	x8, x8, #18
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	mov	w8, #80
	sturh	w8, [x29, #-38]
	b	LBB0_4
LBB0_4:
	mov	x9, sp
	add	x8, sp, #79
	str	x8, [x9]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_printf
	mov	w8, #5
	stur	w8, [x29, #-38]
	ldurh	w11, [x29, #-38]
	ldurh	w9, [x29, #-38]
	add	w9, w9, w11, uxth
	ldurh	w8, [x29, #-38]
	add	w8, w8, w9, uxth
	sturh	w8, [x29, #-38]
	subs	w8, w8, #10
	cset	w8, lt
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #55
	sturb	w8, [x29, #-44]
	add	x9, sp, #120
	add	x9, x9, #18
	mov	x8, x9
	subs	x8, x8, #18
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_6
LBB0_6:
	mov	w0, #10
	bl	_putchar
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
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #256]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
LBB0_9:
	bl	___stack_chk_fail
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%c"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

.subsections_via_symbols