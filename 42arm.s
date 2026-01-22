	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
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
	add	x21, sp, #12
	str	x21, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_14
; %bb.1:
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x20, l_.str@PAGE
Lloh5:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w8, #1
	ccmp	w11, #0, #0, ne
	cset	w8, eq
	sub	w8, w9, w8
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_14
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;       Child Loop BB0_12 Depth 3
	tbnz	w8, #0, LBB0_7
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x10, x8
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w9, w10, w10, lsr #31
	asr	w10, w9, #1
	tbz	w10, #0, LBB0_5
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	asr	w9, w8, #1
	mov	w11, #1                         ; =0x1
	cmp	w10, #2
	b.lt	LBB0_2
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w11, #0                         ; =0x0
	mov	x9, x8
	mov	x10, x8
	cmp	w10, #2
	b.lt	LBB0_2
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w12, #3                         ; =0x3
	b	LBB0_10
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=2
	add	w12, w12, #2
	cmp	w10, #1
	b.le	LBB0_2
LBB0_10:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_12 Depth 3
	udiv	w13, w10, w12
	msub	w13, w13, w12, w10
	cbnz	w13, LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=2
	sdiv	w11, w9, w12
LBB0_12:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	sdiv	w10, w10, w12
	sdiv	w13, w10, w12
	msub	w13, w13, w12, w10
	cbz	w13, LBB0_12
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=2
	sub	w9, w9, w11
	mov	w11, #1                         ; =0x1
	b	LBB0_9
LBB0_14:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
