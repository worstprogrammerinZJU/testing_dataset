	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_pro                            ; -- Begin function pro
	.p2align	2
_pro:                                   ; @pro
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	b.eq	LBB0_3
; %bb.1:
	mov	x8, x0
	mov	w0, #1                          ; =0x1
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	asr	w9, w8, #1
	add	w10, w8, w8, lsl #1
	tst	w8, #0x1
	csinc	w8, w9, w10, eq
	add	w0, w0, #1
	cmp	w8, #1
	b.ne	LBB0_2
LBB0_3:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
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
	add	x22, sp, #24
	add	x23, sp, #28
	stp	x23, x22, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB1_10
; %bb.1:
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x20, l_.str.2@PAGE
Lloh5:
	add	x20, x20, l_.str.2@PAGEOFF
Lloh6:
	adrp	x21, l_.str@PAGE
Lloh7:
	add	x21, x21, l_.str@PAGEOFF
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	stp	x23, x22, [sp]
	mov	x0, x21
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB1_10
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
                                        ;       Child Loop BB1_9 Depth 3
	ldp	w9, w8, [sp, #24]
	stp	x8, x9, [sp]
	mov	x0, x19
	bl	_printf
	ldp	w9, w8, [sp, #24]
	cmp	w8, w9
	b.le	LBB1_5
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	stp	w8, w9, [sp, #24]
LBB1_5:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldp	w9, w10, [sp, #24]
	mov	w8, #1                          ; =0x1
	cmp	w10, w9
	b.le	LBB1_7
	b	LBB1_2
LBB1_6:                                 ;   in Loop: Header=BB1_7 Depth=2
	cmp	w11, w8
	csel	w8, w11, w8, gt
	add	w11, w10, #1
	cmp	w10, w9
	mov	x10, x11
	b.eq	LBB1_2
LBB1_7:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_9 Depth 3
	mov	w11, #1                         ; =0x1
	cmp	w10, #1
	b.eq	LBB1_6
; %bb.8:                                ;   in Loop: Header=BB1_7 Depth=2
	mov	x12, x10
LBB1_9:                                 ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	asr	w13, w12, #1
	add	w14, w12, w12, lsl #1
	tst	w12, #0x1
	csinc	w12, w13, w14, eq
	add	w11, w11, #1
	cmp	w12, #1
	b.ne	LBB1_9
	b	LBB1_6
LBB1_10:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d "

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
