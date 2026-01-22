	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
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
	add	x21, sp, #12
	str	x21, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
Lloh2:
	adrp	x0, l_str@PAGE
Lloh3:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_6
; %bb.1:
	mov	w22, #1                         ; =0x1
Lloh4:
	adrp	x19, l_.str.2@PAGE
Lloh5:
	add	x19, x19, l_.str.2@PAGEOFF
Lloh6:
	adrp	x23, l_str.8@PAGE
Lloh7:
	add	x23, x23, l_str.8@PAGEOFF
Lloh8:
	adrp	x24, l_str.9@PAGE
Lloh9:
	add	x24, x24, l_str.9@PAGEOFF
Lloh10:
	adrp	x25, l_str.10@PAGE
Lloh11:
	add	x25, x25, l_str.10@PAGEOFF
Lloh12:
	adrp	x20, l_.str@PAGE
Lloh13:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldr	w8, [sp, #12]
	cmp	w8, #1
	csel	w9, wzr, w26, eq
	cmp	w9, w8
	csel	x8, x24, x23, gt
	csel	x0, x25, x8, eq
	bl	_puts
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_6
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	asr	w9, w8, #1
	add	w9, w9, #3
	tst	w8, #0x1
	csinc	w26, w9, wzr, eq
	cinc	w9, w22, ne
	cmp	w8, #9
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w10, #3                         ; =0x3
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	udiv	w11, w8, w10
	msub	w12, w11, w10, w8
	add	w13, w10, w26
	add	w11, w13, w11
	cmp	w12, #0
	csel	w26, w11, w26, eq
	add	w10, w10, w9
	mul	w11, w10, w10
	cmp	w11, w8
	b.le	LBB0_5
	b	LBB0_2
LBB0_6:
Lloh14:
	adrp	x0, l_str.7@PAGE
Lloh15:
	add	x0, x0, l_str.7@PAGEOFF
	bl	_puts
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%5d  "

l_str:                                  ; @str
	.asciz	"PERFECTION OUTPUT"

l_str.7:                                ; @str.7
	.asciz	"END OF OUTPUT"

l_str.8:                                ; @str.8
	.asciz	"DEFICIENT"

l_str.9:                                ; @str.9
	.asciz	"ABUNDANT"

l_str.10:                               ; @str.10
	.asciz	"PERFECT"

.subsections_via_symbols
