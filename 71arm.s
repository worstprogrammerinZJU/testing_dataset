	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	.cfi_offset b10, -72
	.cfi_offset b11, -80
	add	x21, sp, #28
	str	x21, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_3
; %bb.1:
	fmov	d8, #1.00000000
	fmov	d9, #8.00000000
	fmov	d10, #-1.00000000
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
	fmov	d11, #0.50000000
Lloh4:
	adrp	x20, l_.str@PAGE
Lloh5:
	add	x20, x20, l_.str@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	scvtf	d0, w8
	fmadd	d0, d0, d9, d8
	fsqrt	d0, d0
	fadd	d0, d0, d10
	fmul	d0, d0, d11
	fcvtzs	w9, d0
	scvtf	d1, w9
	fcmp	d0, d1
	cinc	w9, w9, ne
	sub	w10, w9, #1
	mul	w10, w10, w9
	add	w10, w10, w10, lsr #31
	sub	w10, w8, w10, asr #1
	sub	w11, w9, w10
	tst	w9, #0x1
	csinc	w9, w10, w11, eq
	csinc	w10, w10, w11, ne
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	cmn	w0, #1
	b.ne	LBB0_2
LBB0_3:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"TERM %d IS %d/%d\n"

.subsections_via_symbols
