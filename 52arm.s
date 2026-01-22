	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
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
	add	x20, sp, #24
	add	x21, sp, #28
	stp	x21, x20, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_5
; %bb.1:
	mov	x8, #59728                      ; =0xe950
	movk	x8, #14127, lsl #16
	movk	x8, #50927, lsl #32
	movk	x8, #16355, lsl #48
	fmov	d8, x8
	mov	x8, #62632                      ; =0xf4a8
	movk	x8, #39831, lsl #16
	movk	x8, #58231, lsl #32
	movk	x8, #16377, lsl #48
	fmov	d9, x8
Lloh2:
	adrp	x22, l_str@PAGE
Lloh3:
	add	x22, x22, l_str@PAGEOFF
Lloh4:
	adrp	x23, l_str.3@PAGE
Lloh5:
	add	x23, x23, l_str.3@PAGEOFF
Lloh6:
	adrp	x19, l_.str@PAGE
Lloh7:
	add	x19, x19, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #28]
	scvtf	d0, w8
	fmul	d0, d0, d8
	fcvtzs	w9, d0
	scvtf	d0, w9
	fmul	d0, d0, d9
	fcvtzs	w10, d0
	cmp	w8, w10
	cinc	w8, w9, ne
	ldr	w9, [sp, #24]
	scvtf	d0, w8
	fmul	d0, d0, d9
	fcvtzs	w10, d0
	add	w8, w8, w10
	cmp	w9, w8
	csel	x0, x23, x22, eq
	bl	_puts
	stp	x21, x20, [sp]
	mov	x0, x19
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldp	w9, w8, [sp, #24]
	cmp	w8, w9
	b.le	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	stp	w8, w9, [sp, #24]
	b	LBB0_2
LBB0_5:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d %d"

l_str:                                  ; @str
	.asciz	"1"

l_str.3:                                ; @str.3
	.asciz	"0"

.subsections_via_symbols
