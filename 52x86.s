.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x400921fb54442d18              ; double 3.1415926535897931
lCPI0_1:
	.quad	0x4059000000000000              ; double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	sub	x8, x29, #24
	str	x8, [x9]
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
	sub	x8, x29, #24
	str	x8, [x9]
	sub	x8, x29, #16
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	d1, [x29, #-24]
	ldur	d2, [x29, #-16]
	fmov	d0, #2.00000000
	fmul	d2, d0, d2
	fmadd	d0, d0, d1, d2
	adrp	x8, lCPI0_0@PAGE
	ldr	d1, [x8, lCPI0_0@PAGEOFF]
	fmul	d0, d0, d1
	adrp	x8, lCPI0_1@PAGE
	ldr	d1, [x8, lCPI0_1@PAGEOFF]
	fdiv	d0, d0, d1
	fcvtzs	w8, d0
	add	w10, w8, #1
	mov	x9, sp
	str	d1, [x9]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-24]
	subs	w8, w8, #160
	cset	w8, lt
	tbnz	w8, #0, LBB0_2
	b	LBB0_3
LBB0_2:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_puts
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%lf %lf"

l_.str.2:                               ; @.str.2
	.asciz	"Property %d: This property will begin eroding in year %d.\n"

l_str:                                  ; @str
	.asciz	"END OF OUTPUT."

.subsections_via_symbols