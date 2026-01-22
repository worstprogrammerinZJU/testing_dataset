	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_find                           ; -- Begin function find
	.p2align	2
_find:                                  ; @find
	.cfi_startproc
; %bb.0:
	mov	x8, x0
Lloh0:
	adrp	x9, _n@GOTPAGE
Lloh1:
	ldr	x9, [x9, _n@GOTPAGEOFF]
Lloh2:
	ldr	w9, [x9]
Lloh3:
	adrp	x10, _p@GOTPAGE
Lloh4:
	ldr	x10, [x10, _p@GOTPAGEOFF]
	str	w0, [x10]
Lloh5:
	adrp	x11, _f@PAGE
Lloh6:
	add	x11, x11, _f@PAGEOFF
	mov	w0, #1                          ; =0x1
	strb	w0, [x11, w8, sxtw]
	cmp	w9, #1
	b.lt	LBB0_15
; %bb.1:
	lsl	w12, w9, #1
Lloh7:
	adrp	x8, _k@GOTPAGE
Lloh8:
	ldr	x8, [x8, _k@GOTPAGEOFF]
	add	w13, w9, #1
	mov	w14, #2                         ; =0x2
Lloh9:
	ldr	w8, [x8]
	cmp	w12, #2
	csel	w12, w12, w14, gt
	sub	x13, x13, #1
	mov	w14, #1                         ; =0x1
	mov	w15, #1                         ; =0x1
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	w16, [x10, x14, lsl #2]
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w16, #1                         ; =0x1
	sub	w15, w16, w15
	add	x14, x14, #1
	cmp	x14, x12
	b.eq	LBB0_14
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	sub	w16, w14, #1
	lsr	w16, w16, #1
	ldr	w16, [x10, w16, uxtw #2]
	cmp	w15, #1
	b.eq	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	sub	w16, w16, w8
	cmp	w16, #1
	csinc	w16, w16, wzr, gt
	cmp	w16, w9
	b.gt	LBB0_13
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	ldrb	w17, [x11, x16]
	cmp	w17, #1
	b.ne	LBB0_10
LBB0_7:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x13, x16
	b.eq	LBB0_13
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	add	x17, x11, x16
	ldrb	w17, [x17, #1]
	add	x16, x16, #1
	cmp	w17, #1
	b.eq	LBB0_7
; %bb.9:                                ;   in Loop: Header=BB0_4 Depth=1
	sub	x17, x16, #1
	cmp	x17, x9
	cset	w17, hs
	b	LBB0_11
LBB0_10:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w17, #0                         ; =0x0
LBB0_11:                                ;   in Loop: Header=BB0_4 Depth=1
	tbnz	w17, #0, LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_4 Depth=1
	str	w16, [x10, x14, lsl #2]
	strb	w0, [x11, w16, uxtw]
	b	LBB0_3
LBB0_13:
	mov	w0, #0                          ; =0x0
                                        ; kill: def $w0 killed $w0 killed $x0
	ret
LBB0_14:
	mov	w0, #1                          ; =0x1
LBB0_15:
                                        ; kill: def $w0 killed $w0 killed $x0
	ret
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGot	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
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
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
Lloh10:
	adrp	x20, _k@GOTPAGE
Lloh11:
	ldr	x20, [x20, _k@GOTPAGEOFF]
Lloh12:
	adrp	x19, _n@GOTPAGE
Lloh13:
	ldr	x19, [x19, _n@GOTPAGEOFF]
	stp	x19, x20, [sp]
Lloh14:
	adrp	x0, l_.str@PAGE
Lloh15:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w21, [x19]
	mov	w22, #1                         ; =0x1
	lsl	w25, w21, #1
Lloh16:
	adrp	x23, _p@GOTPAGE
Lloh17:
	ldr	x23, [x23, _p@GOTPAGEOFF]
Lloh18:
	adrp	x19, _f@PAGE
Lloh19:
	add	x19, x19, _f@PAGEOFF
	cmp	w21, #3
	b.lt	LBB1_16
; %bb.1:
	mov	w8, #2                          ; =0x2
	ldr	w26, [x20]
	cmp	w25, #2
	csel	w27, w25, w8, gt
	mov	x24, x22
	mov	x28, x21
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	mov	w9, #1                          ; =0x1
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	sub	w10, w8, #1
	cmp	w9, #0
	csel	w28, w10, w28, ne
	csel	w24, w24, w8, ne
	add	x2, x21, #1
	mov	x0, x19
	mov	w1, #0                          ; =0x0
	mov	w3, #4097                       ; =0x1001
	bl	___memset_chk
	add	w8, w24, #1
	cmp	w8, w28
	b.ge	LBB1_17
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
                                        ;       Child Loop BB1_10 Depth 3
	add	w8, w24, w28
	lsr	x8, x8, #1
	str	w8, [x23]
	mov	w9, #1                          ; =0x1
	strb	w9, [x19, x8]
	mov	w10, #1                         ; =0x1
	b	LBB1_7
LBB1_5:                                 ;   in Loop: Header=BB1_7 Depth=2
	str	w11, [x23, x9, lsl #2]
LBB1_6:                                 ;   in Loop: Header=BB1_7 Depth=2
	sub	w10, w22, w10
	add	x9, x9, #1
	cmp	x9, x27
	b.eq	LBB1_15
LBB1_7:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_10 Depth 3
	sub	w11, w9, #1
	lsr	w11, w11, #1
	ldr	w11, [x23, w11, uxtw #2]
	cmp	w10, #1
	b.eq	LBB1_5
; %bb.8:                                ;   in Loop: Header=BB1_7 Depth=2
	sub	w11, w11, w26
	cmp	w11, #1
	csinc	w11, w11, wzr, gt
	cmp	w11, w21
	b.gt	LBB1_2
; %bb.9:                                ;   in Loop: Header=BB1_7 Depth=2
	ldrb	w12, [x19, x11]
	cmp	w12, #1
	b.ne	LBB1_13
LBB1_10:                                ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cmp	x21, x11
	b.eq	LBB1_2
; %bb.11:                               ;   in Loop: Header=BB1_10 Depth=3
	add	x12, x19, x11
	ldrb	w12, [x12, #1]
	add	x11, x11, #1
	cmp	w12, #1
	b.eq	LBB1_10
; %bb.12:                               ;   in Loop: Header=BB1_7 Depth=2
	sub	x12, x11, #1
	cmp	x12, x21
	cset	w12, hs
	tbz	w12, #0, LBB1_14
	b	LBB1_2
LBB1_13:                                ;   in Loop: Header=BB1_7 Depth=2
	mov	w12, #0                         ; =0x0
	tbnz	w12, #0, LBB1_2
LBB1_14:                                ;   in Loop: Header=BB1_7 Depth=2
	str	w11, [x23, x9, lsl #2]
	strb	w22, [x19, w11, uxtw]
	b	LBB1_6
LBB1_15:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	w9, #0                          ; =0x0
	b	LBB1_3
LBB1_16:
	mov	w24, #1                         ; =0x1
LBB1_17:
	add	w8, w21, #1
	mov	w9, #2                          ; =0x2
	ldr	w26, [x20]
	cmp	w25, #2
	csel	w25, w25, w9, gt
	sxtw	x20, w8
	sub	x27, x8, #1
LBB1_18:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_22 Depth 2
                                        ;       Child Loop BB1_25 Depth 3
	str	w24, [x23]
	strb	w22, [x19, x24]
	cmp	w21, #1
	b.lt	LBB1_30
; %bb.19:                               ;   in Loop: Header=BB1_18 Depth=1
	mov	w8, #1                          ; =0x1
	mov	w9, #1                          ; =0x1
	b	LBB1_22
LBB1_20:                                ;   in Loop: Header=BB1_22 Depth=2
	str	w10, [x23, x8, lsl #2]
LBB1_21:                                ;   in Loop: Header=BB1_22 Depth=2
	sub	w9, w22, w9
	add	x8, x8, #1
	cmp	x8, x25
	b.eq	LBB1_30
LBB1_22:                                ;   Parent Loop BB1_18 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_25 Depth 3
	sub	w10, w8, #1
	lsr	w10, w10, #1
	ldr	w10, [x23, w10, uxtw #2]
	cmp	w9, #1
	b.eq	LBB1_20
; %bb.23:                               ;   in Loop: Header=BB1_22 Depth=2
	sub	w10, w10, w26
	cmp	w10, #1
	csinc	w10, w10, wzr, gt
	cmp	w10, w21
	b.gt	LBB1_31
; %bb.24:                               ;   in Loop: Header=BB1_22 Depth=2
	ldrb	w11, [x19, x10]
	cmp	w11, #1
	b.ne	LBB1_28
LBB1_25:                                ;   Parent Loop BB1_18 Depth=1
                                        ;     Parent Loop BB1_22 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cmp	x27, x10
	b.eq	LBB1_31
; %bb.26:                               ;   in Loop: Header=BB1_25 Depth=3
	add	x11, x19, x10
	ldrb	w11, [x11, #1]
	add	x10, x10, #1
	cmp	w11, #1
	b.eq	LBB1_25
; %bb.27:                               ;   in Loop: Header=BB1_22 Depth=2
	sub	x11, x10, #1
	cmp	x11, x21
	cset	w11, hs
	tbz	w11, #0, LBB1_29
	b	LBB1_31
LBB1_28:                                ;   in Loop: Header=BB1_22 Depth=2
	mov	w11, #0                         ; =0x0
	tbnz	w11, #0, LBB1_31
LBB1_29:                                ;   in Loop: Header=BB1_22 Depth=2
	str	w10, [x23, x8, lsl #2]
	strb	w22, [x19, w10, uxtw]
	b	LBB1_21
LBB1_30:                                ;   in Loop: Header=BB1_18 Depth=1
	mov	x0, x19
	mov	w1, #0                          ; =0x0
	mov	x2, x20
	mov	w3, #4097                       ; =0x1001
	bl	___memset_chk
	add	x24, x24, #1
	b	LBB1_18
LBB1_31:
	sub	w8, w24, #1
	str	x8, [sp]
Lloh20:
	adrp	x0, l_.str.1@PAGE
Lloh21:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh20, Lloh21
	.cfi_endproc
                                        ; -- End function
	.globl	_f                              ; @f
.zerofill __DATA,__common,_f,4097,0
	.comm	_n,4,2                          ; @n
	.comm	_p,32768,2                      ; @p
	.comm	_k,4,2                          ; @k
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
