	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_round                          ; -- Begin function round
	.p2align	2
_round:                                 ; @round
	.cfi_startproc
; %bb.0:
Lloh0:
	adrp	x8, _n@GOTPAGE
Lloh1:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh2:
	ldr	w8, [x8]
Lloh3:
	adrp	x9, _candy@GOTPAGE
Lloh4:
	ldr	x9, [x9, _candy@GOTPAGEOFF]
	cmp	w8, #1
	b.lt	LBB0_3
; %bb.1:
	add	x10, x9, w8, sxtw #2
	ldur	w10, [x10, #-4]
	asr	w12, w10, #1
	mov	x10, x8
	mov	x11, x9
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w13, [x11]
	asr	w13, w13, #1
	add	w12, w13, w12
	and	w14, w12, #0x80000001
	cmp	w14, #1
	cinc	w12, w12, eq
	str	w12, [x11], #4
	mov	x12, x13
	subs	x10, x10, #1
	b.ne	LBB0_2
LBB0_3:
	cmp	w8, #1
	b.le	LBB0_7
; %bb.4:
	ldr	w10, [x9], #4
	sub	x8, x8, #1
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x9], #4
	cmp	w11, w10
	b.ne	LBB0_8
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	subs	x8, x8, #1
	b.ne	LBB0_5
LBB0_7:
	mov	w0, #1                          ; =0x1
	ret
LBB0_8:
	mov	w0, #0                          ; =0x0
	ret
	.loh AdrpLdrGot	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
Lloh5:
	adrp	x21, _n@GOTPAGE
Lloh6:
	ldr	x21, [x21, _n@GOTPAGEOFF]
	str	x21, [sp]
Lloh7:
	adrp	x0, l_.str@PAGE
Lloh8:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x21]
	cbz	w8, LBB1_16
; %bb.1:
Lloh9:
	adrp	x22, _candy@GOTPAGE
Lloh10:
	ldr	x22, [x22, _candy@GOTPAGEOFF]
Lloh11:
	adrp	x19, l_.str@PAGE
Lloh12:
	add	x19, x19, l_.str@PAGEOFF
Lloh13:
	adrp	x20, l_.str.1@PAGE
Lloh14:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	mov	w8, #1                          ; =0x1
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	stp	x8, x12, [sp]
	mov	x0, x20
	bl	_printf
	str	x21, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [x21]
	cbz	w8, LBB1_16
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
                                        ;     Child Loop BB1_10 Depth 2
                                        ;     Child Loop BB1_11 Depth 2
                                        ;       Child Loop BB1_13 Depth 3
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB1_8
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x23, #0                         ; =0x0
	mov	x24, x22
LBB1_6:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x24, [sp]
	mov	x0, x19
	bl	_scanf
	add	x23, x23, #1
	ldrsw	x8, [x21]
	add	x24, x24, #4
	cmp	x23, x8
	b.lt	LBB1_6
; %bb.7:                                ;   in Loop: Header=BB1_4 Depth=1
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
LBB1_8:                                 ;   in Loop: Header=BB1_4 Depth=1
	sxtw	x9, w8
	sub	x9, x9, #1
	mov	w10, w8
	sub	x11, x10, #1
	mov	w8, #1                          ; =0x1
	cmp	w10, #1
	b.lt	LBB1_11
LBB1_9:                                 ;   in Loop: Header=BB1_4 Depth=1
	ldr	w12, [x22, x9, lsl #2]
	asr	w14, w12, #1
	mov	x12, x22
	mov	x13, x10
LBB1_10:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w15, [x12]
	asr	w15, w15, #1
	add	w14, w15, w14
	and	w16, w14, #0x80000001
	cmp	w16, #1
	cinc	w14, w14, eq
	str	w14, [x12], #4
	mov	x14, x15
	subs	x13, x13, #1
	b.ne	LBB1_10
LBB1_11:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_13 Depth 3
	ldr	w12, [x22]
	cmp	w10, #1
	b.le	LBB1_2
; %bb.12:                               ;   in Loop: Header=BB1_11 Depth=2
	add	x13, x22, #4
	mov	x14, x11
LBB1_13:                                ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w15, [x13], #4
	cmp	w15, w12
	b.ne	LBB1_15
; %bb.14:                               ;   in Loop: Header=BB1_13 Depth=3
	subs	x14, x14, #1
	b.ne	LBB1_13
	b	LBB1_3
LBB1_15:                                ;   in Loop: Header=BB1_11 Depth=2
	add	w8, w8, #1
	cmp	w10, #1
	b.ge	LBB1_9
	b	LBB1_11
LBB1_16:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGot	Lloh5, Lloh6
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh9, Lloh10
	.cfi_endproc
                                        ; -- End function
	.comm	_candy,2000,2                   ; @candy
	.comm	_n,4,2                          ; @n
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d\n"

.subsections_via_symbols
