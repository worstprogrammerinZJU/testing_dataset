.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x4005bf0a8b145769              ; double 2.7182818284590451
lCPI0_1:
	.quad	0x401921fb54442d18              ; double 6.2831853071795862
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
	add	x8, sp, #16
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	add	x8, sp, #12
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_bzero
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, sp
	add	x1, sp, #12
	bl	_scanf
	ldr	w8, [sp, #12]
	fmov	d0, #1.00000000
	subs	w8, w8, #4
	cset	w8, lt
	tbnz	w8, #0, LBB0_5
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	fmov	d0, #0.00000000
	fneg	d0, d0
	fcvtzs	w1, d0
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w8, #1
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, sp
	add	x1, sp, #12
	bl	_scanf
	ldr	w8, [sp, #12]
	fmov	d0, #1.00000000
	subs	w8, w8, #4
	cset	w8, lt
	tbnz	w8, #0, LBB0_5
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	movi	d0, #0000000000000000
	fmov	d1, d0
	fmul	d0, d0, d1
	fsqrt	d0, d0
	bl	_log10
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	d0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, lCPI0_0@PAGE
	ldr	d1, [x8, lCPI0_0@PAGEOFF]
	fdiv	d0, d0, d1
	bl	_log10
	fmov	d1, d0
	ldr	d0, [sp, #8]                    ; 8-byte Folded Reload
	fmov	d2, #1.00000000
	fsub	d0, d0, d2
	fadd	d0, d0, d1
	b	LBB0_5
LBB0_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.section	__TEXT,__const
	.globl	_e                              ; @e
	.p2align	3
_e:
	.quad	0x4005bf0a8b145769              ; double 2.7182818284590451

	.globl	_pi                             ; @pi
	.p2align	3
_pi:
	.quad	0x400921fb54442d18              ; double 3.1415926535897931

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols