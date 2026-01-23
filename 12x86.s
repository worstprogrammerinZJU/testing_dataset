	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x400921fb54442d18              ; double 3.1415926535897931
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #56
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	sub	x1, x29, #40
	sub	x2, x29, #56
	sub	x3, x29, #48
	sub	x4, x29, #40
	sub	x5, x29, #32
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	sub	x8, x29, #40
	stur	x8, [x29, #-56]                 ; 8-byte Folded Spill
	sub	x8, x29, #56
	stur	x8, [x29, #-48]                 ; 8-byte Folded Spill
	sub	x8, x29, #56
	stur	x8, [x29, #-40]                 ; 8-byte Folded Spill
	sub	x8, x29, #56
	stur	x8, [x29, #-32]                 ; 8-byte Folded Spill
	sub	x8, x29, #56
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	sub	x8, x29, #56
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]                 ; 8-byte Folded Reload
	ldur	x10, [x29, #-16]                ; 8-byte Folded Reload
	ldur	d1, [x29, #-32]
	ldur	d0, [x29, #-48]
	ldur	d3, [x29, #-40]
	fmov	d2, d3
	fsub	d2, d2, d1
	fsub	d3, d3, d0
	ldur	d4, [x29, #-56]                 ; 8-byte Folded Reload
	ldur	d5, [x29, #-48]
	ldur	d6, [x29, #-40]
	ldur	d17, [x29, #-56]                ; 8-byte Folded Reload
	ldur	d16, [x29, #-48]
	ldur	d7, [x29, #-40]
	fsub	d7, d7, d17
	fsub	d18, d18, d16
	fmul	d18, d18, d16
	fmadd	d16, d16, d18, d19
	fsqrt	d17, d16
	fmadd	d7, d7, d17, d18
	fsqrt	d7, d7
	fsub	d6, d6, d7
	fsub	d5, d5, d6
	fmul	d5, d5, d6
	fmadd	d4, d4, d5, d6
	movi	d5, #0000000000000000
	fsqrt	d4, d4
	fadd	d3, d3, d4
	fadd	d3, d3, d5
	fmov	d4, #0.50000000
	fmul	d3, d3, d4
	stur	d3, [x29, #-40]
	fsub	d3, d3, d5
	fmul	d3, d3, d4
	fsub	d3, d3, d6
	fmul	d3, d3, d4
	fsub	d3, d3, d5
	fmul	d3, d3, d4
	fsqrt	d3, d3
	fmul	d2, d2, d3
	fmul	d2, d2, d4
	fdiv	d2, d2, d3
	fmul	d2, d2, d4
	adrp	x8, lCPI0_0@PAGE
	ldr	d4, [x8, lCPI0_0@PAGEOFF]
	fmul	d0, d0, d4
	frintp	d0, d0
	mov	x8, sp
	str	d3, [x8]
	str	d2, [x8, #8]
	str	d1, [x8, #16]
	str	d0, [x8, #24]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-56]                 ; 8-byte Folded Reload
	ldur	x2, [x29, #-48]                 ; 8-byte Folded Reload
	ldur	x3, [x29, #-40]                 ; 8-byte Folded Reload
	ldur	x4, [x29, #-32]                 ; 8-byte Folded Reload
	ldur	x5, [x29, #-24]                 ; 8-byte Folded Reload
	ldur	x6, [x29, #-16]                 ; 8-byte Folded Reload
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_2
	b	LBB0_3
LBB0_3:
	mov	w0, #0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%lf%lf%lf%lf%lf%lf"

l_.str.1:                               ; @.str.1
	.asciz	"%.2lf\n"

.subsections_via_symbols

