	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x3ff9e3779b97f4a8              ; double 1.6180339887498949E+0
lCPI0_1:
	.quad	0x3fe3c6ef372fe950              ; double 0.6180339887498949
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	sub	x8, x29, #8
	str	x8, [x9]
	sub	x8, x29, #4
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	adrp	x11, l_.str@PAGE
	add	x11, x11, l_.str@PAGEOFF
	adrp	x10, l_.str@PAGE
	add	x10, x10, l_.str@PAGEOFF
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	sub	x9, x29, #8
	str	x9, [x11]
	sub	x9, x29, #4
	str	x9, [x10]
	sub	x9, x29, #4
	str	x9, [x11]
	sub	x9, x29, #8
	str	x9, [x10]
	ldr	x8, [x10]
	ldr	x9, [x9]
	ldr	x10, [x10]
	ldr	x11, [x11]
	ldr	x12, [x12]
	ldr	x13, [x13]
	ldr	x14, [x14]
	ldr	x15, [x15]
	ldr	x16, [x16]
	ldr	x17, [x17]
	ldr	x0, [x16]
	ldur	w16, [x29, #-4]
	orr	w16, w16, w17
	subs	w16, w16, #1
	cset	w16, ne
	and	w16, w16, #0x1
	ands	w16, w16, #0x1
	fcsel	d1, d1, d0, ne
	adrp	x16, lCPI0_0@PAGE
	ldr	d0, [x16, lCPI0_0@PAGEOFF]
	fmul	d1, d1, d0
	fcvtzs	w16, d1
	add	w8, w8, w16
	ldr	x9, [x10]
	ldr	x10, [x9]
	ldr	x9, [x10]
	ldr	x10, [x10]
	ldr	x11, [x11]
	ldr	x12, [x12]
	ldr	x13, [x13]
	ldr	x14, [x14]
	ldr	x15, [x15]
	ldr	x16, [x16]
	ldur	w17, [x29, #-4]
	orr	w17, w17, w18
	subs	w17, w17, #1
	cset	w17, ne
	and	w17, w17, #0x1
	ands	w17, w17, #0x1
	fcsel	d1, d1, d0, ne
	fcvtzs	w9, d1
	add	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	bl	_puts
	ldr	x10, [x10]
	sub	x8, x29, #4
	str	x8, [x10]
	ldr	x8, [x10]
	ldr	x9, [x8]
	mov	x8, sp
	str	x10, [x8]
	str	x9, [x8, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	stur	w9, [x29, #-8]
	stur	w8, [x29, #-4]
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, le
	and	w8, w8, #0x1
	adrp	x9, lCPI0_1@PAGE
	ldr	d1, [x9, lCPI0_1@PAGEOFF]
	fmov	d0, #1.00000000
	ands	w8, w8, #0x1
	fcsel	d1, d1, d0, ne
	fcvtzs	w9, d1
	add	w8, w8, w9
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	b	LBB0_7
LBB0_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
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

