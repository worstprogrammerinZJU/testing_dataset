	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_find                           ; -- Begin function find
	.p2align	2
_find:                                  ; @find
	.cfi_startproc
; %bb.0:
	and	w8, w0, #0xff
Lloh0:
	adrp	x11, _s@GOTPAGE
Lloh1:
	ldr	x11, [x11, _s@GOTPAGEOFF]
	ldrb	w12, [x11]
	ldrb	w14, [x11, #1]
	ldrb	w9, [x11, #2]
	cmp	w12, w8
	ccmp	w14, w8, #0, eq
	ccmp	w9, w8, #0, eq
	b.eq	LBB0_9
; %bb.1:
	ldrb	w15, [x11, #3]
	ldrb	w10, [x11, #4]
	ldrb	w13, [x11, #5]
	cmp	w15, w8
	ccmp	w10, w8, #0, eq
	ccmp	w13, w8, #0, eq
	b.eq	LBB0_9
; %bb.2:
	cmp	w14, w8
	cset	w14, eq
	cmp	w12, w8
	cset	w16, eq
	ldrb	w12, [x11, #6]
	cmp	w15, w8
	csel	w15, wzr, w16, ne
	cmp	w12, w8
	csel	w17, wzr, w15, ne
	cset	w15, eq
	ldrb	w0, [x11, #7]
	cmp	w10, w8
	csel	w14, wzr, w14, ne
	csel	w16, wzr, w16, ne
	cmp	w0, w8
	csel	w15, wzr, w15, ne
	csel	w14, wzr, w14, ne
	cmp	w9, w8
	ldrb	w11, [x11, #8]
	ccmp	w13, w8, #0, eq
	cset	w13, eq
	cmp	w11, w8
	csel	w15, wzr, w15, ne
	csel	w13, wzr, w13, ne
	csel	w11, wzr, w16, ne
	mov	w0, #1                          ; =0x1
	tbnz	w17, #0, LBB0_8
; %bb.3:
	tbnz	w15, #0, LBB0_8
; %bb.4:
	tbnz	w14, #0, LBB0_8
; %bb.5:
	tbnz	w13, #0, LBB0_8
; %bb.6:
	tbnz	w11, #0, LBB0_8
; %bb.7:
	cmp	w9, w8
	ccmp	w10, w8, #0, eq
	ccmp	w12, w8, #0, eq
	cset	w0, eq
LBB0_8:
	ret
LBB0_9:
	mov	w0, #1                          ; =0x1
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
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
	str	x8, [sp, #24]
	add	x8, sp, #8
	str	x8, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #8]
	cmp	w8, #1
	b.lt	LBB1_43
; %bb.1:
	mov	w20, #0                         ; =0x0
Lloh7:
	adrp	x21, _s@GOTPAGE
Lloh8:
	ldr	x21, [x21, _s@GOTPAGEOFF]
	add	x22, sp, #14
Lloh9:
	adrp	x19, l_.str.1@PAGE
Lloh10:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh11:
	adrp	x23, l_str.4@PAGE
Lloh12:
	add	x23, x23, l_str.4@PAGEOFF
	mov	w24, #79                        ; =0x4f
	mov	w25, #88                        ; =0x58
Lloh13:
	adrp	x26, l_str@PAGE
Lloh14:
	add	x26, x26, l_str@PAGEOFF
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	mov	x0, x26
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	bl	_puts
	add	w20, w20, #1
	ldr	w8, [sp, #8]
	cmp	w20, w8
	b.ge	LBB1_43
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
                                        ;     Child Loop BB1_9 Depth 2
	mov	x27, #0                         ; =0x0
LBB1_5:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x28, x21, x27
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldrh	w8, [sp, #14]
	strh	w8, [x28]
	ldrb	w8, [sp, #16]
	strb	w8, [x28, #2]
	add	x27, x27, #3
	cmp	x27, #9
	b.ne	LBB1_5
; %bb.6:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x10, #0                         ; =0x0
	mov	w9, #0                          ; =0x0
	mov	w8, #0                          ; =0x0
	b	LBB1_9
LBB1_7:                                 ;   in Loop: Header=BB1_9 Depth=2
	add	w9, w9, #1
LBB1_8:                                 ;   in Loop: Header=BB1_9 Depth=2
	add	x10, x10, #1
	cmp	x10, #9
	b.eq	LBB1_12
LBB1_9:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x21, x10]
	cmp	w11, #79
	b.eq	LBB1_7
; %bb.10:                               ;   in Loop: Header=BB1_9 Depth=2
	cmp	w11, #88
	b.ne	LBB1_8
; %bb.11:                               ;   in Loop: Header=BB1_9 Depth=2
	add	w8, w8, #1
	b	LBB1_8
LBB1_12:                                ;   in Loop: Header=BB1_4 Depth=1
	add	w10, w9, #1
	cmp	w8, w9
	b.eq	LBB1_14
; %bb.13:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w8, w10
	b.ne	LBB1_2
LBB1_14:                                ;   in Loop: Header=BB1_4 Depth=1
	ldrb	w13, [x21]
	ldrb	w14, [x21, #1]
	ldrb	w11, [x21, #2]
	cmp	w13, #88
	b.ne	LBB1_17
; %bb.15:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w14, #88
	b.ne	LBB1_17
; %bb.16:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w11, #88
	b.eq	LBB1_20
LBB1_17:                                ;   in Loop: Header=BB1_4 Depth=1
	ldrb	w12, [x21, #3]
	ldrb	w15, [x21, #4]
	ldrb	w16, [x21, #5]
	cmp	w12, #88
	b.ne	LBB1_31
; %bb.18:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w15, #88
	b.ne	LBB1_31
; %bb.19:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w16, #88
	b.ne	LBB1_31
LBB1_20:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	w12, #1                         ; =0x1
LBB1_21:                                ;   in Loop: Header=BB1_4 Depth=1
	cmp	w13, #79
	b.ne	LBB1_24
; %bb.22:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w14, #79
	b.ne	LBB1_24
; %bb.23:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w11, #79
	b.eq	LBB1_27
LBB1_24:                                ;   in Loop: Header=BB1_4 Depth=1
	ldrb	w16, [x21, #3]
	ldrb	w15, [x21, #4]
	ldrb	w17, [x21, #5]
	cmp	w16, #79
	b.ne	LBB1_37
; %bb.25:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w15, #79
	b.ne	LBB1_37
; %bb.26:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w17, #79
	b.ne	LBB1_37
LBB1_27:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	w13, #1                         ; =0x1
LBB1_28:                                ;   in Loop: Header=BB1_4 Depth=1
	cmp	w8, w9
	csel	w9, wzr, w12, ne
	tbnz	w9, #0, LBB1_2
; %bb.29:                               ;   in Loop: Header=BB1_4 Depth=1
	and	w9, w12, w13
	tbnz	w9, #0, LBB1_2
; %bb.30:                               ;   in Loop: Header=BB1_4 Depth=1
	cmp	w8, w10
	ccmp	w12, #0, #0, eq
	cset	w8, eq
	and	w8, w8, w13
	mov	x0, x23
	cmp	w8, #1
	b.eq	LBB1_2
	b	LBB1_3
LBB1_31:                                ;   in Loop: Header=BB1_4 Depth=1
	and	w0, w16, #0xff
	cmp	w14, #88
	cset	w17, eq
	cmp	w13, #88
	cset	w1, eq
	ldrb	w16, [x21, #6]
	cmp	w12, #88
	csel	w12, wzr, w1, ne
	cmp	w16, #88
	csel	w3, wzr, w12, ne
	cset	w12, eq
	ldrb	w2, [x21, #7]
	cmp	w15, #88
	csel	w17, wzr, w17, ne
	csel	w4, wzr, w1, ne
	cmp	w2, #88
	csel	w12, wzr, w12, ne
	csel	w17, wzr, w17, ne
	cmp	w11, #88
	ldrb	w1, [x21, #8]
	ccmp	w0, w25, #0, eq
	cset	w0, eq
	cmp	w1, #88
	csel	w2, wzr, w12, ne
	csel	w1, wzr, w0, ne
	csel	w0, wzr, w4, ne
	mov	w12, #1                         ; =0x1
	tbnz	w3, #0, LBB1_21
; %bb.32:                               ;   in Loop: Header=BB1_4 Depth=1
	tbnz	w2, #0, LBB1_21
; %bb.33:                               ;   in Loop: Header=BB1_4 Depth=1
	tbnz	w17, #0, LBB1_21
; %bb.34:                               ;   in Loop: Header=BB1_4 Depth=1
	tbnz	w1, #0, LBB1_21
; %bb.35:                               ;   in Loop: Header=BB1_4 Depth=1
	tbnz	w0, #0, LBB1_21
; %bb.36:                               ;   in Loop: Header=BB1_4 Depth=1
	and	w12, w15, #0xff
	cmp	w11, #88
	ccmp	w12, w25, #0, eq
	ccmp	w16, w25, #0, eq
	cset	w12, eq
	b	LBB1_21
LBB1_37:                                ;   in Loop: Header=BB1_4 Depth=1
	and	w17, w17, #0xff
	cmp	w14, #79
	cset	w0, eq
	cmp	w13, #79
	cset	w13, eq
	ldrb	w14, [x21, #6]
	cmp	w16, #79
	csel	w16, wzr, w13, ne
	cmp	w14, #79
	csel	w2, wzr, w16, ne
	cset	w16, eq
	ldrb	w1, [x21, #7]
	cmp	w15, #79
	csel	w0, wzr, w0, ne
	csel	w13, wzr, w13, ne
	cmp	w1, #79
	csel	w1, wzr, w16, ne
	csel	w16, wzr, w0, ne
	cmp	w11, #79
	ldrb	w0, [x21, #8]
	ccmp	w17, w24, #0, eq
	cset	w17, eq
	cmp	w0, #79
	csel	w1, wzr, w1, ne
	csel	w0, wzr, w17, ne
	csel	w17, wzr, w13, ne
	mov	w13, #1                         ; =0x1
	tbnz	w2, #0, LBB1_28
; %bb.38:                               ;   in Loop: Header=BB1_4 Depth=1
	tbnz	w1, #0, LBB1_28
; %bb.39:                               ;   in Loop: Header=BB1_4 Depth=1
	tbnz	w16, #0, LBB1_28
; %bb.40:                               ;   in Loop: Header=BB1_4 Depth=1
	tbnz	w0, #0, LBB1_28
; %bb.41:                               ;   in Loop: Header=BB1_4 Depth=1
	tbnz	w17, #0, LBB1_28
; %bb.42:                               ;   in Loop: Header=BB1_4 Depth=1
	and	w13, w15, #0xff
	cmp	w11, #79
	ccmp	w13, w24, #0, eq
	ccmp	w14, w24, #0, eq
	cset	w13, eq
	b	LBB1_28
LBB1_43:
	ldr	x8, [sp, #24]
Lloh15:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh16:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh17:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_45
; %bb.44:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB1_45:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh15, Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.comm	_s,20,0                         ; @s
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%s"

l_str:                                  ; @str
	.asciz	"no"

l_str.4:                                ; @str.4
	.asciz	"yes"

.subsections_via_symbols
