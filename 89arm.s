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
	mov	w9, #37104                      ; =0x90f0
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #240
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
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	add	x19, sp, #44
	add	x0, sp, #44
	mov	w1, #37044                      ; =0x90b4
	bl	_bzero
	mov	x8, #0                          ; =0x0
	mov	w9, #1                          ; =0x1
	add	x10, sp, #44
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	mov	x11, #0                         ; =0x0
	mov	x12, x10
LBB0_2:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	w9, [x19, x11]
	str	w9, [x10, x11]
	str	w9, [x12], #84
	add	x11, x11, #4
	cmp	x11, #84
	b.ne	LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	add	x8, x8, #1
	add	x10, x10, #1764
	add	x19, x19, #84
	cmp	x8, #21
	b.ne	LBB0_1
; %bb.4:
	mov	x8, #0                          ; =0x0
	mov	w9, #21                         ; =0x15
	stp	w9, w9, [sp, #36]
	mov	w9, #1                          ; =0x1
	add	x10, sp, #44
	mov	w11, #84                        ; =0x54
	mov	w12, #1764                      ; =0x6e4
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	add	x9, x9, #1
	add	x8, x8, #1764
	cmp	x9, #21
	b.eq	LBB0_14
LBB0_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
                                        ;       Child Loop BB0_11 Depth 3
	madd	x13, x9, x12, x10
	mov	x14, x8
	mov	w15, #1                         ; =0x1
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=2
	add	x15, x15, #1
	add	x14, x14, #84
	cmp	x15, #21
	b.eq	LBB0_5
LBB0_8:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_11 Depth 3
	sub	x17, x15, #1
	mov	x16, #-20                       ; =0xffffffffffffffec
	madd	x17, x17, x11, x13
	mov	x0, x14
	mov	w1, #1                          ; =0x1
	b	LBB0_11
LBB0_9:                                 ;   in Loop: Header=BB0_11 Depth=3
	add	x2, x10, x0
	ldr	w3, [x2, #4]
	ldp	w5, w4, [x2, #84]
	add	w3, w3, w4
	add	w3, w3, w5
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=3
	ldr	w2, [x2]
	sub	w2, w3, w2
	add	x3, x10, x0
	str	w2, [x3, #1852]
	add	x1, x1, #1
	add	x0, x0, #4
	adds	x16, x16, #1
	b.hs	LBB0_7
LBB0_11:                                ;   Parent Loop BB0_6 Depth=1
                                        ;     Parent Loop BB0_8 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cmp	x9, x15
	b.hs	LBB0_9
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=3
	add	x2, x16, #21
	cmp	x15, x2
	b.hs	LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_11 Depth=3
	add	x2, x10, x0
	ldr	w3, [x2, #1848]
	ldr	w2, [x2, #1764]
	add	w3, w2, w3
	add	x2, x17, x1, lsl #2
	b	LBB0_10
LBB0_14:
	mov	w8, #21                         ; =0x15
	stp	w8, w8, [sp, #36]
	str	w8, [sp, #32]
	add	x22, sp, #32
	add	x23, sp, #36
	add	x24, sp, #40
	stp	x23, x22, [sp, #8]
	str	x24, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldp	w9, w8, [sp, #36]
	ldr	w10, [sp, #32]
	cmn	w8, #1
	b.ne	LBB0_19
; %bb.15:
	cmn	w9, #1
	b.ne	LBB0_19
; %bb.16:
	cmn	w10, #1
	b.ne	LBB0_19
LBB0_17:
	ldur	x8, [x29, #-96]
Lloh7:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh8:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh9:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_31
; %bb.18:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #240
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_19:
	mov	w11, #37040                     ; =0x90b0
	add	x25, sp, #44
	ldr	w26, [x25, x11]
Lloh10:
	adrp	x19, l_.str.1@PAGE
Lloh11:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh12:
	adrp	x20, l_.str@PAGE
Lloh13:
	add	x20, x20, l_.str@PAGEOFF
	mov	w27, #1764                      ; =0x6e4
	mov	w28, #84                        ; =0x54
Lloh14:
	adrp	x21, l_.str.2@PAGE
Lloh15:
	add	x21, x21, l_.str.2@PAGEOFF
	b	LBB0_22
LBB0_20:                                ;   in Loop: Header=BB0_22 Depth=1
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x19
LBB0_21:                                ;   in Loop: Header=BB0_22 Depth=1
	bl	_printf
	stp	x23, x22, [sp, #8]
	str	x24, [sp]
	mov	x0, x20
	bl	_scanf
	ldp	w9, w8, [sp, #36]
	ldr	w10, [sp, #32]
	cmn	w8, #1
	ccmn	w9, #1, #0, eq
	ccmn	w10, #1, #0, eq
	b.eq	LBB0_17
LBB0_22:                                ; =>This Inner Loop Header: Depth=1
	cmp	w8, #1
	b.lt	LBB0_20
; %bb.23:                               ;   in Loop: Header=BB0_22 Depth=1
	cmp	w9, #1
	b.lt	LBB0_20
; %bb.24:                               ;   in Loop: Header=BB0_22 Depth=1
	cmp	w10, #0
	b.le	LBB0_20
; %bb.25:                               ;   in Loop: Header=BB0_22 Depth=1
	cmp	w8, #20
	b.gt	LBB0_29
; %bb.26:                               ;   in Loop: Header=BB0_22 Depth=1
	cmp	w9, #20
	b.gt	LBB0_29
; %bb.27:                               ;   in Loop: Header=BB0_22 Depth=1
	cmp	w10, #21
	b.ge	LBB0_29
; %bb.28:                               ;   in Loop: Header=BB0_22 Depth=1
	umaddl	x11, w8, w27, x25
	umaddl	x11, w9, w28, x11
	ldr	w11, [x11, w10, uxtw #2]
                                        ; kill: def $w10 killed $w10 killed $x10 def $x10
	str	x11, [sp, #24]
	b	LBB0_30
LBB0_29:                                ;   in Loop: Header=BB0_22 Depth=1
                                        ; kill: def $w10 killed $w10 killed $x10 def $x10
	str	x26, [sp, #24]
LBB0_30:                                ;   in Loop: Header=BB0_22 Depth=1
                                        ; kill: def $w9 killed $w9 killed $x9 def $x9
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x21
	b	LBB0_21
LBB0_31:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d %d %d"

l_.str.1:                               ; @.str.1
	.asciz	"w(%d, %d, %d) = 1\n"

l_.str.2:                               ; @.str.2
	.asciz	"w(%d, %d, %d) = %d\n"

.subsections_via_symbols
