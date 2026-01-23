	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	sub	x8, x29, #40
	str	x8, [x9]
	sub	x8, x29, #32
	str	x8, [x9, #8]
	sub	x8, x29, #24
	str	x8, [x9, #16]
	sub	x8, x29, #52
	str	x8, [x9, #24]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	sub	x8, x29, #48
	str	x8, [x9]
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	d1, [x29, #-32]
	ldur	d0, [x29, #-24]
	fmul	d0, d0, d1
	ldur	d2, [x29, #-48]
	fmul	d0, d0, d2
	ldur	d3, [x29, #-40]
	fmul	d0, d0, d3
	ldur	d3, [x29, #-40]
	fmul	d2, d2, d3
	ldur	d3, [x29, #-32]
	fmul	d2, d2, d3
	ldur	d3, [x29, #-24]
	fmul	d2, d2, d3
	ldur	d3, [x29, #-32]
	fmul	d2, d2, d3
	ldur	d3, [x29, #-24]
	fmul	d2, d2, d3
	fmov	d3, #1.00000000
	fadd	d2, d2, d3
	fsqrt	d2, d2
	fdiv	d0, d0, d2
	mov	x8, sp
	str	d1, [x8]
	str	d0, [x8, #8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	w8, #1
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	stur	w8, [x29, #-16]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_2
	b	LBB0_2
LBB0_2:
	ldur	w0, [x29, #-12]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%lf%lf%lf%d"

l_.str.1:                               ; @.str.1
	.asciz	"%lf"

l_.str.2:                               ; @.str.2
	.asciz	"%.3lf\n"

.subsections_via_symbols

