	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
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
	sub	x8, x29, #12
	str	x8, [x9]
	sub	x8, x29, #24
	str	x8, [x9, #8]
	sub	x8, x29, #28
	str	x8, [x9, #16]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_4
	b	LBB0_1
LBB0_1:
	ldur	s1, [x29, #-12]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	adrp	x8, lCPI0_0@PAGE
	ldr	d1, [x8, lCPI0_0@PAGEOFF]
	fdiv	d0, d0, d1
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	ldur	d1, [x29, #-24]
	ldur	w8, [x29, #-28]
	str	w8, [x9, #28]
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	fmov	d1, d0
	ldur	d0, [x29, #-24]
	fmul	d0, d0, d1
	subs	w8, w0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_2
	b	LBB0_3
LBB0_3:
	stur	d0, [x29, #-24]
	b	LBB0_4
LBB0_4:
	stur	w0, [x29, #-12]
	ldur	d0, [x29, #-24]
	fcvtzs	w10, d0
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d %lf %d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols

