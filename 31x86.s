.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x3ff9e3779b97f4a8              ; double 1.6180339887498949
lCPI0_1:
	.quad	0x3fe3c6ef372fe950              ; double 0.6180339887498949
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	add	x8, sp, #24
	str	x8, [x9]
	add	x8, sp, #28
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_1
LBB0_1:
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	add	x2, sp, #24
	add	x3, sp, #28
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_5
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	bl	_puts
	ldr	d0, [sp, #24]
	fmov	x8, d0
	mov	x0, x8
	ldr	d0, [sp, #28]
	mov	x8, d0
	mov	x9, sp
	str	x8, [x9]
	ldr	d0, [sp, #28]
	mov	x8, d0
	str	x8, [x9, #8]
	mov	w1, #0
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_4
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	d0, [sp, #24]
	fmov	x8, d0
	str	x8, [sp, #24]
	ldr	d0, [sp, #28]
	fmov	x8, d0
	str	x8, [sp, #28]
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]
	scvtf	d0, w8
	adrp	x8, lCPI0_1@PAGE
	ldr	d1, [x8, lCPI0_1@PAGEOFF]
	fmul	d0, d0, d1
	fcvtzs	x9, d0
	scvtf	d0, x9
	fmov	d1, d0
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	fmul	d0, d0, d1
	fcvtzu	w8, d0
	subs	w8, w8, w9
	cset	w8, ne
	and	w9, w8, #0x1
	mov	w8, #0
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, ne
	scvtf	d0, w8
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	b	LBB0_8
LBB0_8:
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d %d"

l_str:                                  ; @str
	.asciz	"1"

l_str.3:                                ; @str.3
	.asciz	"0"

.subsections_via_symbols