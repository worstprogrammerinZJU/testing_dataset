	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_snuc                           ; -- Begin function snuc
	.p2align	2
_snuc:                                  ; @snuc
	.cfi_startproc
; %bb.0:
	cmp	w2, #1
	b.lt	LBB0_4
; %bb.1:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x3
	mov	x20, x0
	add	w22, w2, w0
	add	w8, w1, #1
	add	w9, w2, w1
	cmp	w9, w8
	csinc	w8, w9, w1, gt
	mvn	w9, w1
	add	w23, w8, w9
Lloh0:
	adrp	x8, _p@PAGE
Lloh1:
	add	x8, x8, _p@PAGEOFF
	mov	w9, #100                        ; =0x64
	smaddl	x8, w0, w9, x8
	add	x21, x8, w1, sxtw
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	add	x2, x23, #1
	mov	x0, x21
	mov	x1, x19
	bl	_memset
	add	w20, w20, #1
	add	x21, x21, #100
	cmp	w20, w22
	b.lt	LBB0_2
; %bb.3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
LBB0_4:
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_test                           ; -- Begin function test
	.p2align	2
_test:                                  ; @test
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
                                        ; kill: def $w1 killed $w1 def $x1
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w2, #1
	b.lt	LBB1_5
; %bb.1:
	mov	w8, #0                          ; =0x0
	add	w12, w2, w0
	add	w10, w2, w1
	sxtw	x9, w1
	sxtw	x10, w10
	sxtw	x11, w0
	sxtw	x12, w12
Lloh2:
	adrp	x13, _p@PAGE
Lloh3:
	add	x13, x13, _p@PAGEOFF
	mov	w14, #100                       ; =0x64
	smaddl	x13, w0, w14, x13
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_3 Depth 2
	mov	x14, x9
LBB1_3:                                 ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w15, [x13, x14]
	cmp	w15, #0
	cinc	w8, w8, ne
	add	x14, x14, #1
	cmp	x14, x10
	b.lt	LBB1_3
; %bb.4:                                ;   in Loop: Header=BB1_2 Depth=1
	add	x11, x11, #1
	add	x13, x13, #100
	cmp	x11, x12
	b.lt	LBB1_2
	b	LBB1_6
LBB1_5:
	mov	w8, #0                          ; =0x0
LBB1_6:
	str	x8, [sp]
Lloh4:
	adrp	x0, l_.str@PAGE
Lloh5:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
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
	add	x8, sp, #60
	str	x8, [sp]
Lloh6:
	adrp	x0, l_.str@PAGE
Lloh7:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #60]
	cmp	w8, #1
	b.lt	LBB2_18
; %bb.1:
	mov	w22, #0                         ; =0x0
	add	x23, sp, #48
	add	x24, sp, #52
	add	x25, sp, #56
Lloh8:
	adrp	x19, l_.str.1@PAGE
Lloh9:
	add	x19, x19, l_.str.1@PAGEOFF
	add	x26, sp, #42
	mov	w28, #100                       ; =0x64
	b	LBB2_5
LBB2_2:                                 ;   in Loop: Header=BB2_5 Depth=1
	mov	w8, #0                          ; =0x0
LBB2_3:                                 ;   in Loop: Header=BB2_5 Depth=1
	str	x8, [sp]
Lloh10:
	adrp	x0, l_.str@PAGE
Lloh11:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
LBB2_4:                                 ;   in Loop: Header=BB2_5 Depth=1
	add	w22, w22, #1
	ldr	w8, [sp, #60]
	cmp	w22, w8
	b.ge	LBB2_18
LBB2_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_15 Depth 2
                                        ;       Child Loop BB2_16 Depth 3
                                        ;     Child Loop BB2_9 Depth 2
                                        ;     Child Loop BB2_12 Depth 2
	stp	x24, x23, [sp, #16]
	stp	x26, x25, [sp]
	mov	x0, x19
	bl	_scanf
	ldrb	w8, [sp, #42]
	ldr	w9, [sp, #48]
	cmp	w8, #66
	b.eq	LBB2_10
; %bb.6:                                ;   in Loop: Header=BB2_5 Depth=1
	cmp	w8, #87
	b.ne	LBB2_13
; %bb.7:                                ;   in Loop: Header=BB2_5 Depth=1
	cmp	w9, #1
	b.lt	LBB2_4
; %bb.8:                                ;   in Loop: Header=BB2_5 Depth=1
	ldp	w11, w8, [sp, #52]
                                        ; kill: def $w11 killed $w11 def $x11
	sxtw	x11, w11
	sub	w10, w8, #1
	sub	x12, x11, #1
	add	w13, w12, w9
	cmp	w13, w11
	csel	w13, w13, w11, gt
	sub	w20, w13, w11
Lloh12:
	adrp	x11, _p@PAGE
Lloh13:
	add	x11, x11, _p@PAGEOFF
	smaddl	x11, w10, w28, x11
	add	x21, x11, x12
	add	w9, w9, w10
	cmp	w8, w9
	csel	w9, w8, w9, gt
	sub	w8, w9, w8
	add	w27, w8, #1
LBB2_9:                                 ;   Parent Loop BB2_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x1, x20, #1
	mov	x0, x21
	bl	_bzero
	add	x21, x21, #100
	subs	w27, w27, #1
	b.ne	LBB2_9
	b	LBB2_4
LBB2_10:                                ;   in Loop: Header=BB2_5 Depth=1
	cmp	w9, #1
	b.lt	LBB2_4
; %bb.11:                               ;   in Loop: Header=BB2_5 Depth=1
	ldp	w11, w8, [sp, #52]
                                        ; kill: def $w11 killed $w11 def $x11
	sxtw	x11, w11
	sub	w10, w8, #1
	sub	x12, x11, #1
	add	w13, w12, w9
	cmp	w13, w11
	csel	w13, w13, w11, gt
	sub	w20, w13, w11
Lloh14:
	adrp	x11, _p@PAGE
Lloh15:
	add	x11, x11, _p@PAGEOFF
	smaddl	x11, w10, w28, x11
	add	x21, x11, x12
	add	w9, w9, w10
	cmp	w8, w9
	csel	w9, w8, w9, gt
	sub	w8, w9, w8
	add	w27, w8, #1
LBB2_12:                                ;   Parent Loop BB2_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x2, x20, #1
	mov	x0, x21
	mov	w1, #1                          ; =0x1
	bl	_memset
	add	x21, x21, #100
	subs	w27, w27, #1
	b.ne	LBB2_12
	b	LBB2_4
LBB2_13:                                ;   in Loop: Header=BB2_5 Depth=1
	cmp	w9, #1
	b.lt	LBB2_2
; %bb.14:                               ;   in Loop: Header=BB2_5 Depth=1
	mov	w8, #0                          ; =0x0
	ldp	w10, w11, [sp, #52]
                                        ; kill: def $w10 killed $w10 def $x10
	sxtw	x10, w10
	sub	x10, x10, #1
	sub	w13, w11, #1
	add	w12, w13, w9
	add	w9, w10, w9
	sxtw	x9, w9
	sxtw	x11, w13
	sxtw	x12, w12
Lloh16:
	adrp	x14, _p@PAGE
Lloh17:
	add	x14, x14, _p@PAGEOFF
	smaddl	x13, w13, w28, x14
LBB2_15:                                ;   Parent Loop BB2_5 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_16 Depth 3
	mov	x14, x10
LBB2_16:                                ;   Parent Loop BB2_5 Depth=1
                                        ;     Parent Loop BB2_15 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrb	w15, [x13, x14]
	cmp	w15, #0
	cinc	w8, w8, ne
	add	x14, x14, #1
	cmp	x14, x9
	b.lt	LBB2_16
; %bb.17:                               ;   in Loop: Header=BB2_15 Depth=2
	add	x11, x11, #1
	add	x13, x13, #100
	cmp	x11, x12
	b.lt	LBB2_15
	b	LBB2_3
LBB2_18:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.globl	_p                              ; @p
.zerofill __DATA,__common,_p,10000,0
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d\n"

l_.str.1:                               ; @.str.1
	.asciz	"%s %d%d%d"

.subsections_via_symbols
