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
	mov	x9, sp
	str	x8, [sp, #24]
	str	xzr, [sp, #32]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	add	x8, sp, #24
	str	x8, [x9]
	str	xzr, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	d0, [sp, #24]
	fmov	d1, d0
	fmov	d2, #1.00000000
	fmul	d2, d1, d2
	fmov	d1, #2.00000000
	fadd	d0, d0, d2
	fsqrt	d1, d0
	fmov	d0, #-1.00000000
	fmadd	d0, d0, d1, d2
	fmov	d2, #0.50000000
	fmul	d0, d0, d2
	fcvtzu	w8, d0
	ldur	d0, [x29, #-16]
	fcvt	d1, d0
	fsub	w8, w8, w1
	subs	w8, w8, #1
	mul	w8, w8, w9
	sdiv	w9, w8, w9
	mul	w9, w9, w8
	subs	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ne
	and	w9, w8, #0x1
	fmov	d0, #1.00000000
	ands	w9, w9, #0x1
	csinc	d0, d0, d1, ne
	ldur	d1, [x29, #-16]
	fcvt	d1, d1
	fmul	d0, d0, d1
	subs	d0, d0, d1
	subs	d0, d0, d2
	cset	w8, eq
	and	w10, w8, #0x1
	fmov	d0, #1.00000000
	ands	w10, w10, #0x1
	csel	d0, d0, d1, ne
	ldur	d1, [x29, #-16]
	fcvt	d1, d1
	fmul	d1, d1, d0
	subs	d1, d1, d0
	subs	d1, d1, d2
	cset	w10, eq
	and	w9, w10, #0x1
	ands	w9, w9, #0x1
	csinc	d0, d0, d1, ne
	ldur	d1, [x29, #-16]
	fcvt	d1, d1
	fmul	d0, d0, d1
	subs	d0, d0, d1
	subs	d0, d0, d2
	cset	w8, eq
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w0, eq
	mov	x8, sp
	str	d0, [x8]
	str	d1, [x8, #8]
	str	d0, [x8, #16]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_2
	b	LBB0_3
LBB0_3:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"TERM %d IS %d/%d\n"

.subsections_via_symbols