	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh0:
	adrp	x20, _n@GOTPAGE
Lloh1:
	ldr	x20, [x20, _n@GOTPAGEOFF]
	str	x20, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
Lloh4:
	adrp	x19, _str@GOTPAGE
Lloh5:
	ldr	x19, [x19, _str@GOTPAGEOFF]
	str	x19, [sp]
Lloh6:
	adrp	x0, l_.str.1@PAGE
Lloh7:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	w10, [x20]
	sxtw	x8, w10
Lloh8:
	adrp	x9, _ing@GOTPAGE
Lloh9:
	ldr	x9, [x9, _ing@GOTPAGEOFF]
	cmp	w10, #1
	b.lt	LBB0_3
; %bb.1:
Lloh10:
	adrp	x11, _str@GOTPAGE
Lloh11:
	ldr	x11, [x11, _str@GOTPAGEOFF]
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11], #1
	add	x13, x9, x10
	sturb	w12, [x13, #-1]
	subs	x10, x10, #1
	b.ne	LBB0_2
LBB0_3:
	strb	wzr, [x9, x8]
Lloh12:
	adrp	x9, _c@PAGE
Lloh13:
	add	x9, x9, _c@PAGEOFF
	cmp	w8, #1
	b.lt	LBB0_11
; %bb.4:
	add	w10, w8, #1
	mov	w11, #10004                     ; =0x2714
	add	x11, x9, x11
	sub	x12, x10, #1
	mov	w13, #1                         ; =0x1
Lloh14:
	adrp	x14, _ing@GOTPAGE
Lloh15:
	ldr	x14, [x14, _ing@GOTPAGEOFF]
	mov	w15, #10002                     ; =0x2712
	mov	x16, x9
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	add	x13, x13, #1
	add	x11, x11, x15
	add	x16, x16, x15
	cmp	x13, x10
	b.eq	LBB0_11
LBB0_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_9 Depth 2
	add	x17, x13, x19
	ldurb	w17, [x17, #-1]
	mov	x0, x16
	mov	x1, x11
	mov	x2, x12
	mov	x3, x14
	b	LBB0_9
LBB0_7:                                 ;   in Loop: Header=BB0_9 Depth=2
	ldrsh	w4, [x0, #2]
	ldursh	w5, [x1, #-2]
	cmp	w4, w5
	csel	w4, w4, w5, gt
LBB0_8:                                 ;   in Loop: Header=BB0_9 Depth=2
	strh	w4, [x1], #2
	add	x0, x0, #2
	subs	x2, x2, #1
	b.eq	LBB0_5
LBB0_9:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w4, [x3], #1
	cmp	w17, w4
	b.ne	LBB0_7
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=2
	ldrh	w4, [x0]
	add	w4, w4, #1
	b	LBB0_8
LBB0_11:
	mov	w10, #10002                     ; =0x2712
	smaddl	x9, w8, w10, x9
	ldrsh	w9, [x9, x8, lsl #1]
	sub	w8, w8, w9
	str	x8, [sp]
Lloh16:
	adrp	x0, l_.str.2@PAGE
Lloh17:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.globl	_LCS                            ; -- Begin function LCS
	.p2align	2
_LCS:                                   ; @LCS
	.cfi_startproc
; %bb.0:
Lloh18:
	adrp	x8, _n@GOTPAGE
Lloh19:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh20:
	ldr	w8, [x8]
Lloh21:
	adrp	x9, _c@PAGE
Lloh22:
	add	x9, x9, _c@PAGEOFF
	cmp	w8, #1
	b.lt	LBB1_8
; %bb.1:
	add	x10, x8, #1
	mov	w11, #10004                     ; =0x2714
	add	x11, x9, x11
	mov	w12, #1                         ; =0x1
Lloh23:
	adrp	x13, _str@GOTPAGE
Lloh24:
	ldr	x13, [x13, _str@GOTPAGEOFF]
Lloh25:
	adrp	x14, _ing@GOTPAGE
Lloh26:
	ldr	x14, [x14, _ing@GOTPAGEOFF]
	mov	w15, #10002                     ; =0x2712
	mov	x16, x9
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	add	x12, x12, #1
	add	x11, x11, x15
	add	x16, x16, x15
	cmp	x12, x10
	b.eq	LBB1_8
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
	add	x17, x12, x13
	ldurb	w17, [x17, #-1]
	mov	x0, x16
	mov	x1, x11
	mov	x2, x14
	mov	x3, x8
	b	LBB1_6
LBB1_4:                                 ;   in Loop: Header=BB1_6 Depth=2
	ldrsh	w4, [x0, #2]
	ldursh	w5, [x1, #-2]
	cmp	w4, w5
	csel	w4, w4, w5, gt
LBB1_5:                                 ;   in Loop: Header=BB1_6 Depth=2
	strh	w4, [x1], #2
	add	x0, x0, #2
	subs	x3, x3, #1
	b.eq	LBB1_2
LBB1_6:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w4, [x2], #1
	cmp	w17, w4
	b.ne	LBB1_4
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=2
	ldrh	w4, [x0]
	add	w4, w4, #1
	b	LBB1_5
LBB1_8:
	mov	w10, #10002                     ; =0x2712
	smaddl	x9, w8, w10, x9
	ldrsh	w0, [x9, w8, sxtw #1]
	ret
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdrGotLdr	Lloh18, Lloh19, Lloh20
	.loh AdrpLdrGot	Lloh25, Lloh26
	.loh AdrpLdrGot	Lloh23, Lloh24
	.cfi_endproc
                                        ; -- End function
	.globl	_c                              ; @c
.zerofill __DATA,__common,_c,50020002,1
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_n,4,2                          ; @n
l_.str.1:                               ; @.str.1
	.asciz	"%s"

	.comm	_str,5001,0                     ; @str
	.comm	_ing,5001,0                     ; @ing
l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
