	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ; -- Begin function main
lCPI0_0:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	4                               ; 0x4
	.long	6                               ; 0x6
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
	sub	sp, sp, #832
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #24
	mov	x1, #800
	bl	_bzero
	adrp	x8, lCPI0_0@PAGE
	ldr	q0, [x8, lCPI0_0@PAGEOFF]
	str	q0, [sp, #24]
	mov	w8, #6
	mov	x9, #0
	lsl	x8, x8, #32
	lsr	x8, x8, #32
                                        ; kill: def $w8 killed $w8 killed $x8
	add	w8, w8, #1
	mov	w10, #2005
	udiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	add	x9, sp, #40
	str	w8, [x9, w8, sxtw #2]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #24
	add	x8, x8, #4
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	add	x9, sp, #24
	ldr	w9, [x9, #4]
	add	w8, w8, w9
	mov	w10, #60
	udiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #40]
	b	LBB0_2
LBB0_2:
	mov	x9, sp
	add	x8, sp, #20
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
	add	x8, sp, #20
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	mov	x9, #100
	udiv	x8, x8, x9
	add	x8, sp, #24
	ldr	w9, [x8, x9, lsl #2]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, lBB0_5@PAGE
	add	x0, x0, lBB0_5@PAGEOFF
	bl	_printf
	mov	x9, sp
	add	x8, sp, #20
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
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
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols

