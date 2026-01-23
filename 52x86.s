	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x4059000000000000              ; double 100
lCPI0_1:
	.quad	0x400921fb54442d18              ; double 3.1415926535897931
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	sub	x8, x29, #28
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	sub	x8, x29, #40
	str	x8, [x9]
	sub	x8, x29, #32
	str	x8, [x9, #8]
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	str	x8, [x9, #16]
	mov	w8, #0
	stur	w8, [x29, #-36]                 ; 4-byte Folded Spill
	str	wzr, [x9, #24]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-36]                 ; 4-byte Folded Reload
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-32]
	fmul	d2, d1, d1
	fmadd	d0, d0, d1, d2
	adrp	x9, lCPI0_1@PAGE
	ldr	d1, [x9, lCPI0_1@PAGEOFF]
	fmul	d0, d0, d1
	adrp	x9, lCPI0_0@PAGE
	ldr	d1, [x9, lCPI0_0@PAGEOFF]
	fdiv	d0, d0, d1
	fcvtzs	w9, d0
	add	w10, w9, #1
	mov	x9, sp
	str	d0, [x9]
	str	x8, [x9, #8]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #16]
	adrp	x0, l_.str.0@PAGE
	add	x0, x0, l_.str.0@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-24]
	b	LBB0_2
LBB0_2:
	adrp	x0, l_str@PAGE
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	mov	w0, #0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
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

