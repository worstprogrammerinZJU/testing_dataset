	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	add	x8, sp, #12
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.lt	LBB0_5
; %bb.1:
	mov	w21, #0                         ; =0x0
Lloh2:
	adrp	x19, l_.str@PAGE
Lloh3:
	add	x19, x19, l_.str@PAGEOFF
	add	x22, sp, #8
	mov	x23, #11544                     ; =0x2d18
	movk	x23, #21572, lsl #16
	movk	x23, #8699, lsl #32
	movk	x23, #16409, lsl #48
	mov	x24, #22377                     ; =0x5769
	movk	x24, #35604, lsl #16
	movk	x24, #48906, lsl #32
	movk	x24, #16389, lsl #48
	fmov	d9, #1.00000000
Lloh4:
	adrp	x20, l_.str.1@PAGE
Lloh5:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	fcvtzs	w8, d0
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	add	w21, w21, #1
	ldr	w8, [sp, #12]
	cmp	w21, w8
	b.ge	LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #8]
	fmov	d0, #1.00000000
	cmp	w8, #4
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ucvtf	d10, w8
	fmov	d0, x23
	fmul	d0, d10, d0
	fsqrt	d0, d0
	bl	_log10
	fmov	d8, d0
	fmov	d0, x24
	fdiv	d0, d10, d0
	bl	_log10
	fmadd	d0, d10, d0, d8
	fadd	d0, d0, d9
	b	LBB0_2
LBB0_5:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	_e                              ; @e
	.p2align	3, 0x0
_e:
	.quad	0x4005bf0a8b145769              ; double 2.7182818284590451

	.globl	_pi                             ; @pi
	.p2align	3, 0x0
_pi:
	.quad	0x400921fb54442d18              ; double 3.1415926535897931

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
