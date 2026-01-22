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
Lloh0:
	adrp	x19, _s@GOTPAGE
Lloh1:
	ldr	x19, [x19, _s@GOTPAGEOFF]
	str	x19, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_12
; %bb.1:
Lloh4:
	adrp	x20, _t@GOTPAGE
Lloh5:
	ldr	x20, [x20, _t@GOTPAGEOFF]
Lloh6:
	adrp	x21, l_.str@PAGE
Lloh7:
	add	x21, x21, l_.str@PAGEOFF
Lloh8:
	adrp	x22, _c@GOTPAGE
Lloh9:
	ldr	x22, [x22, _c@GOTPAGEOFF]
	mov	w26, #804                       ; =0x324
Lloh10:
	adrp	x23, l_.str.1@PAGE
Lloh11:
	add	x23, x23, l_.str.1@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	smaddl	x8, w24, w26, x22
	ldr	w8, [x8, w25, sxtw #2]
	str	x8, [sp]
	mov	x0, x23
	bl	_printf
	str	x19, [sp]
	mov	x0, x21
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_12
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;       Child Loop BB0_10 Depth 3
	str	x20, [sp]
	mov	x0, x21
	bl	_scanf
	mov	x0, x19
	bl	_strlen
	mov	x24, x0
	mov	x0, x20
	bl	_strlen
	mov	x25, x0
	mov	x0, x22
	mov	w1, #30532                      ; =0x7744
	movk	w1, #2, lsl #16
	bl	_bzero
	cmp	w24, #1
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	add	w9, w25, #1
	add	w8, w24, #1
	sub	x9, x9, #1
	mov	x10, x22
	mov	w11, #1                         ; =0x1
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	add	x11, x11, #1
	add	x10, x10, #804
	cmp	x11, x8
	b.eq	LBB0_2
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_10 Depth 3
	cmp	w25, #1
	b.lt	LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	add	x12, x11, x19
	ldurb	w12, [x12, #-1]
	mov	x13, x10
	mov	x14, x9
	mov	x15, x20
	b	LBB0_10
LBB0_8:                                 ;   in Loop: Header=BB0_10 Depth=3
	ldr	w16, [x13, #4]
	ldr	w17, [x13, #804]
	cmp	w16, w17
	csel	w16, w16, w17, gt
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=3
	str	w16, [x13, #808]
	add	x13, x13, #4
	subs	x14, x14, #1
	b.eq	LBB0_5
LBB0_10:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_6 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrb	w16, [x15], #1
	cmp	w12, w16
	b.ne	LBB0_8
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=3
	ldr	w16, [x13]
	add	w16, w16, #1
	b	LBB0_9
LBB0_12:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_LCS                            ; -- Begin function LCS
	.p2align	2
_LCS:                                   ; @LCS
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x1
	mov	x20, x0
Lloh12:
	adrp	x21, _c@GOTPAGE
Lloh13:
	ldr	x21, [x21, _c@GOTPAGEOFF]
	mov	x0, x21
	mov	w1, #30532                      ; =0x7744
	movk	w1, #2, lsl #16
	bl	_bzero
	cmp	w20, #1
	b.lt	LBB1_9
; %bb.1:
	add	w10, w19, #1
	add	w8, w20, #1
Lloh14:
	adrp	x9, _c@GOTPAGE
Lloh15:
	ldr	x9, [x9, _c@GOTPAGEOFF]
	sub	x10, x10, #1
	mov	w11, #1                         ; =0x1
Lloh16:
	adrp	x12, _s@GOTPAGE
Lloh17:
	ldr	x12, [x12, _s@GOTPAGEOFF]
Lloh18:
	adrp	x13, _t@GOTPAGE
Lloh19:
	ldr	x13, [x13, _t@GOTPAGEOFF]
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	add	x11, x11, #1
	add	x9, x9, #804
	cmp	x11, x8
	b.eq	LBB1_9
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
	cmp	w19, #1
	b.lt	LBB1_2
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	add	x14, x11, x12
	ldurb	w14, [x14, #-1]
	mov	x15, x9
	mov	x16, x13
	mov	x17, x10
	b	LBB1_7
LBB1_5:                                 ;   in Loop: Header=BB1_7 Depth=2
	ldr	w0, [x15, #4]
	ldr	w1, [x15, #804]
	cmp	w0, w1
	csel	w0, w0, w1, gt
LBB1_6:                                 ;   in Loop: Header=BB1_7 Depth=2
	str	w0, [x15, #808]
	add	x15, x15, #4
	subs	x17, x17, #1
	b.eq	LBB1_2
LBB1_7:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w0, [x16], #1
	cmp	w14, w0
	b.ne	LBB1_5
; %bb.8:                                ;   in Loop: Header=BB1_7 Depth=2
	ldr	w0, [x15]
	add	w0, w0, #1
	b	LBB1_6
LBB1_9:
	mov	w8, #804                        ; =0x324
	smaddl	x8, w20, w8, x21
	ldr	w0, [x8, w19, sxtw #2]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

	.comm	_s,201,0                        ; @s
	.comm	_t,201,0                        ; @t
l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

	.comm	_c,161604,2                     ; @c
.subsections_via_symbols
