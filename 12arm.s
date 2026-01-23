	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #192
	stp	d9, d8, [sp, #96]               ; 16-byte Folded Spill
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #144]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #160]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset b8, -88
	.cfi_offset b9, -96
	add	x21, sp, #48
	add	x22, sp, #56
	stp	x22, x21, [sp, #32]
	add	x23, sp, #64
	add	x24, sp, #72
	stp	x24, x23, [sp, #16]
	add	x25, sp, #80
	add	x26, sp, #88
	stp	x26, x25, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_3
; %bb.1:
	fmov	d8, #0.50000000
	mov	x8, #11544                      ; =0x2d18
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16393, lsl #48
	fmov	d9, x8
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x20, l_.str@PAGE
Lloh5:
	add	x20, x20, l_.str@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldp	d3, d0, [sp, #48]
	ldp	d4, d1, [sp, #64]
	fsub	d2, d0, d1
	fsub	d5, d3, d4
	fmul	d5, d5, d5
	fmadd	d2, d2, d2, d5
	fsqrt	d2, d2
	ldp	d6, d5, [sp, #80]
	fsub	d0, d5, d0
	fsub	d3, d6, d3
	fmul	d3, d3, d3
	fmadd	d0, d0, d0, d3
	fsqrt	d0, d0
	fsub	d1, d5, d1
	fsub	d3, d6, d4
	fmul	d3, d3, d3
	fmadd	d1, d1, d1, d3
	fsqrt	d1, d1
	fadd	d3, d2, d0
	fadd	d3, d1, d3
	fmul	d3, d3, d8
	str	d3, [sp, #88]
	fsub	d4, d3, d2
	fmul	d4, d3, d4
	fsub	d5, d3, d0
	fmul	d4, d5, d4
	fsub	d3, d3, d1
	fmul	d3, d3, d4
	fsqrt	d3, d3
	fmul	d0, d2, d0
	fmul	d0, d1, d0
	fdiv	d0, d0, d3
	fmul	d0, d0, d8
	fmul	d0, d0, d9
	str	d0, [sp]
	mov	x0, x19
	bl	_printf
	stp	x22, x21, [sp, #32]
	stp	x24, x23, [sp, #16]
	stp	x26, x25, [sp]
	mov	x0, x20
	bl	_scanf
	cmn	w0, #1
	b.ne	LBB0_2
LBB0_3:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #160]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #96]               ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%lf%lf%lf%lf%lf%lf"

l_.str.1:                               ; @.str.1
	.asciz	"%.2lf\n"

.subsections_via_symbols
