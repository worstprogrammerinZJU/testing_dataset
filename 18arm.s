	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #448
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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
Lloh3:
	adrp	x20, _words@GOTPAGE
Lloh4:
	ldr	x20, [x20, _words@GOTPAGEOFF]
	str	x20, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_30
; %bb.1:
Lloh7:
	adrp	x21, _m@GOTPAGE
Lloh8:
	ldr	x21, [x21, _m@GOTPAGEOFF]
Lloh9:
	adrp	x22, l_.str@PAGE
Lloh10:
	add	x22, x22, l_.str@PAGEOFF
	mov	w28, #30                        ; =0x1e
Lloh11:
	adrp	x23, l_.str.1@PAGE
Lloh12:
	add	x23, x23, l_.str.1@PAGEOFF
Lloh13:
	adrp	x24, _n@GOTPAGE
Lloh14:
	ldr	x24, [x24, _n@GOTPAGEOFF]
Lloh15:
	adrp	x25, _wordt@GOTPAGE
Lloh16:
	ldr	x25, [x25, _wordt@GOTPAGEOFF]
Lloh17:
	adrp	x26, _c@GOTPAGE
Lloh18:
	ldr	x26, [x26, _c@GOTPAGEOFF]
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
	str	x20, [sp]
	mov	x0, x22
	bl	_scanf
	cmn	w0, #1
Lloh19:
	adrp	x23, l_.str.1@PAGE
Lloh20:
	add	x23, x23, l_.str.1@PAGEOFF
	b.eq	LBB0_30
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_7 Depth 2
                                        ;     Child Loop BB0_13 Depth 2
                                        ;       Child Loop BB0_17 Depth 3
                                        ;     Child Loop BB0_23 Depth 2
                                        ;     Child Loop BB0_29 Depth 2
	mov	w8, #1                          ; =0x1
	str	w8, [x21]
	add	x8, x20, #30
	str	x8, [sp]
	mov	x0, x22
	bl	_scanf
	ldrsw	x19, [x21]
                                        ; kill: def $w19 killed $w19 killed $x19 def $x19
	smaddl	x0, w19, w28, x20
	mov	x1, x23
	bl	_strcmp
	cbz	w0, LBB0_5
LBB0_4:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sxtw	x8, w19
	add	x8, x8, #1
	str	w8, [x21]
	madd	x8, x8, x28, x20
	str	x8, [sp]
	mov	x0, x22
	bl	_scanf
	ldrsw	x19, [x21]
	smaddl	x0, w19, w28, x20
	mov	x1, x23
	bl	_strcmp
                                        ; kill: def $w19 killed $w19 killed $x19 def $x19
	cbnz	w0, LBB0_4
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	str	wzr, [x24]
	str	x25, [sp]
	mov	x0, x22
	bl	_scanf
	ldr	w19, [x24]
	smaddl	x0, w19, w28, x25
	mov	x1, x23
	bl	_strcmp
	cbz	w0, LBB0_9
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
                                        ; kill: def $w19 killed $w19 killed $x19 def $x19
LBB0_7:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sxtw	x8, w19
	add	x8, x8, #1
	str	w8, [x24]
	madd	x8, x8, x28, x25
	str	x8, [sp]
	mov	x0, x22
	bl	_scanf
	ldr	w19, [x24]
	smaddl	x0, w19, w28, x25
	mov	x1, x23
	bl	_strcmp
	cbnz	w0, LBB0_7
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	sxtw	x8, w19
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
                                        ; kill: def $w19 killed $w19 killed $x19 def $x19
	b	LBB0_10
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	sxtw	x8, w19
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
LBB0_10:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x0, x26
	mov	w1, #40804                      ; =0x9f64
	bl	_bzero
	ldr	w8, [x21]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	cmp	w8, #1
	b.lt	LBB0_19
; %bb.11:                               ;   in Loop: Header=BB0_3 Depth=1
	add	w8, w19, #1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	add	x20, x9, #1
	sub	x25, x8, #1
Lloh21:
	adrp	x26, _c@GOTPAGE
Lloh22:
	ldr	x26, [x26, _c@GOTPAGEOFF]
	mov	w22, #1                         ; =0x1
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=2
	add	x22, x22, #1
	add	x26, x26, #404
	cmp	x22, x20
	b.eq	LBB0_19
LBB0_13:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_17 Depth 3
	cmp	w19, #1
	b.lt	LBB0_12
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=2
Lloh23:
	adrp	x8, _words@GOTPAGE
Lloh24:
	ldr	x8, [x8, _words@GOTPAGEOFF]
	madd	x8, x22, x28, x8
	sub	x23, x8, #30
	mov	x21, x26
	mov	x27, x25
Lloh25:
	adrp	x24, _wordt@GOTPAGE
Lloh26:
	ldr	x24, [x24, _wordt@GOTPAGEOFF]
	b	LBB0_17
LBB0_15:                                ;   in Loop: Header=BB0_17 Depth=3
	ldr	w8, [x21, #4]
	ldr	w9, [x21, #404]
	cmp	w8, w9
	csel	w8, w8, w9, gt
LBB0_16:                                ;   in Loop: Header=BB0_17 Depth=3
	str	w8, [x21, #408]
	add	x24, x24, #30
	add	x21, x21, #4
	subs	x27, x27, #1
	b.eq	LBB0_12
LBB0_17:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_13 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x0, x23
	mov	x1, x24
	bl	_strcmp
	cbnz	w0, LBB0_15
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=3
	ldr	w8, [x21]
	add	w8, w8, #1
	b	LBB0_16
LBB0_19:                                ;   in Loop: Header=BB0_3 Depth=1
Lloh27:
	adrp	x26, _c@GOTPAGE
Lloh28:
	ldr	x26, [x26, _c@GOTPAGEOFF]
	mov	w16, #404                       ; =0x194
	ldp	x9, x8, [sp, #8]                ; 16-byte Folded Reload
	smaddl	x8, w8, w16, x26
	ldr	w23, [x8, x9, lsl #2]
Lloh29:
	adrp	x21, _m@GOTPAGE
Lloh30:
	ldr	x21, [x21, _m@GOTPAGEOFF]
	ldr	w13, [x21]
Lloh31:
	adrp	x24, _n@GOTPAGE
Lloh32:
	ldr	x24, [x24, _n@GOTPAGEOFF]
	ldr	w9, [x24]
	smaddl	x8, w13, w16, x26
	ldr	w10, [x8, w9, sxtw #2]
Lloh33:
	adrp	x20, _words@GOTPAGE
Lloh34:
	ldr	x20, [x20, _words@GOTPAGEOFF]
Lloh35:
	adrp	x22, l_.str@PAGE
Lloh36:
	add	x22, x22, l_.str@PAGEOFF
Lloh37:
	adrp	x25, _wordt@GOTPAGE
Lloh38:
	ldr	x25, [x25, _wordt@GOTPAGEOFF]
	add	x17, sp, #28
Lloh39:
	adrp	x27, l_.str.2@PAGE
Lloh40:
	add	x27, x27, l_.str.2@PAGEOFF
	cbz	w10, LBB0_27
; %bb.20:                               ;   in Loop: Header=BB0_3 Depth=1
	sxtw	x12, w13
	sxtw	x14, w9
	mov	x8, x23
                                        ; kill: def $w13 killed $w13 killed $x13 def $x13
                                        ; kill: def $w9 killed $w9 killed $x9 def $x9
	b	LBB0_23
LBB0_21:                                ;   in Loop: Header=BB0_23 Depth=2
	str	w11, [x21]
LBB0_22:                                ;   in Loop: Header=BB0_23 Depth=2
	sxtw	x12, w11
	sxtw	x14, w9
	smaddl	x10, w11, w16, x26
	ldr	w10, [x10, w9, sxtw #2]
	mov	x13, x11
	cbz	w10, LBB0_27
LBB0_23:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sxtw	x11, w13
	sub	x11, x11, #1
	madd	x15, x11, x16, x26
                                        ; kill: def $w11 killed $w11 killed $x11 def $x11
	ldr	w14, [x15, x14, lsl #2]
	cmp	w10, w14
	b.eq	LBB0_21
; %bb.24:                               ;   in Loop: Header=BB0_23 Depth=2
                                        ; kill: def $w9 killed $w9 killed $x9 def $x9
	sxtw	x9, w9
	sub	x9, x9, #1
	madd	x12, x12, x16, x26
	ldr	w12, [x12, x9, lsl #2]
                                        ; kill: def $w9 killed $w9 killed $x9 def $x9
	cmp	w10, w12
	b.ne	LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_23 Depth=2
	str	w9, [x24]
	mov	x11, x13
	b	LBB0_22
LBB0_26:                                ;   in Loop: Header=BB0_23 Depth=2
	str	w11, [x21]
	str	w9, [x24]
	sxtw	x8, w8
	sub	x8, x8, #1
	str	w11, [x17, x8, lsl #2]
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
	b	LBB0_22
LBB0_27:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w23, #1
	b.lt	LBB0_2
; %bb.28:                               ;   in Loop: Header=BB0_3 Depth=1
	add	x19, sp, #28
LBB0_29:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsw	x8, [x19], #4
	smaddl	x8, w8, w28, x20
	str	x8, [sp]
	mov	x0, x27
	bl	_printf
	subs	x23, x23, #1
	b.ne	LBB0_29
	b	LBB0_2
LBB0_30:
	ldur	x8, [x29, #-96]
Lloh41:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh42:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh43:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_32
; %bb.31:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #448
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_32:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGot	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh7, Lloh8
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpLdrGot	Lloh21, Lloh22
	.loh AdrpLdrGot	Lloh25, Lloh26
	.loh AdrpLdrGot	Lloh23, Lloh24
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpLdrGot	Lloh37, Lloh38
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpLdrGot	Lloh33, Lloh34
	.loh AdrpLdrGot	Lloh31, Lloh32
	.loh AdrpLdrGot	Lloh29, Lloh30
	.loh AdrpLdrGot	Lloh27, Lloh28
	.loh AdrpLdrGotLdr	Lloh41, Lloh42, Lloh43
	.cfi_endproc
                                        ; -- End function
	.globl	_LCS                            ; -- Begin function LCS
	.p2align	2
_LCS:                                   ; @LCS
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
Lloh44:
	adrp	x0, _c@GOTPAGE
Lloh45:
	ldr	x0, [x0, _c@GOTPAGEOFF]
	mov	w1, #40804                      ; =0x9f64
	bl	_bzero
Lloh46:
	adrp	x8, _m@GOTPAGE
Lloh47:
	ldr	x8, [x8, _m@GOTPAGEOFF]
Lloh48:
	ldr	w8, [x8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	cmp	w8, #1
	b.lt	LBB1_9
; %bb.1:
Lloh49:
	adrp	x8, _n@GOTPAGE
Lloh50:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh51:
	ldr	w24, [x8]
	add	w8, w24, #1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	add	x25, x9, #1
	sub	x19, x8, #1
Lloh52:
	adrp	x23, _c@GOTPAGE
Lloh53:
	ldr	x23, [x23, _c@GOTPAGEOFF]
	mov	w28, #1                         ; =0x1
Lloh54:
	adrp	x22, _wordt@GOTPAGE
Lloh55:
	ldr	x22, [x22, _wordt@GOTPAGEOFF]
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	add	x28, x28, #1
	add	x23, x23, #404
	cmp	x28, x25
	b.eq	LBB1_9
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
	cmp	w24, #1
	b.lt	LBB1_2
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	w8, #30                         ; =0x1e
Lloh56:
	adrp	x9, _words@GOTPAGE
Lloh57:
	ldr	x9, [x9, _words@GOTPAGEOFF]
	madd	x8, x28, x8, x9
	sub	x20, x8, #30
	mov	x27, x23
	mov	x21, x22
	mov	x26, x19
	b	LBB1_7
LBB1_5:                                 ;   in Loop: Header=BB1_7 Depth=2
	ldr	w8, [x27, #4]
	ldr	w9, [x27, #404]
	cmp	w8, w9
	csel	w8, w8, w9, gt
LBB1_6:                                 ;   in Loop: Header=BB1_7 Depth=2
	str	w8, [x27, #408]
	add	x21, x21, #30
	add	x27, x27, #4
	subs	x26, x26, #1
	b.eq	LBB1_2
LBB1_7:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x20
	mov	x1, x21
	bl	_strcmp
	cbnz	w0, LBB1_5
; %bb.8:                                ;   in Loop: Header=BB1_7 Depth=2
	ldr	w8, [x27]
	add	w8, w8, #1
	b	LBB1_6
LBB1_9:
Lloh58:
	adrp	x8, _n@GOTPAGE
Lloh59:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh60:
	ldrsw	x8, [x8]
	mov	w9, #404                        ; =0x194
Lloh61:
	adrp	x10, _c@GOTPAGE
Lloh62:
	ldr	x10, [x10, _c@GOTPAGEOFF]
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	smaddl	x9, w11, w9, x10
	ldr	w0, [x9, x8, lsl #2]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpLdrGotLdr	Lloh46, Lloh47, Lloh48
	.loh AdrpLdrGot	Lloh44, Lloh45
	.loh AdrpLdrGot	Lloh54, Lloh55
	.loh AdrpLdrGot	Lloh52, Lloh53
	.loh AdrpLdrGotLdr	Lloh49, Lloh50, Lloh51
	.loh AdrpLdrGot	Lloh56, Lloh57
	.loh AdrpLdrGot	Lloh61, Lloh62
	.loh AdrpLdrGotLdr	Lloh58, Lloh59, Lloh60
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

	.comm	_words,3030,0                   ; @words
	.comm	_m,4,2                          ; @m
l_.str.1:                               ; @.str.1
	.asciz	"#"

	.comm	_n,4,2                          ; @n
	.comm	_wordt,3030,0                   ; @wordt
	.comm	_c,40804,2                      ; @c
l_.str.2:                               ; @.str.2
	.asciz	"%s "

.subsections_via_symbols
