.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	add	x8, sp, #56
	str	x8, [x9]
	sub	x8, x29, #40
	str	x8, [x9, #8]
	sub	x8, x29, #32
	str	x8, [x9, #16]
	sub	x8, x29, #24
	str	x8, [x9, #24]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-24]
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
	mov	x8, #1
	str	x8, [x9, #16]
	bl	_scanf
	ldr	d0, [sp, #64]
	ldur	d1, [x29, #-40]
	fmul	d0, d0, d1
	ldur	d2, [x29, #-48]
	fmul	d0, d0, d2
	ldr	d3, [sp, #56]
	fmul	d0, d0, d3
	fmul	d0, d0, d1
	fmul	d0, d0, d3
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	fsqrt	d1, d0
	fdiv	d0, d0, d1
	mov	x8, sp
	str	d0, [x8]
	str	d1, [x8, #8]
	str	d0, [x8, #16]
	str	d1, [x8, #24]
	str	d0, [x8, #32]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w8, #1
	stur	w8, [x29, #-28]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_2
	b	LBB0_3
LBB0_2:
	mov	w0, #0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
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