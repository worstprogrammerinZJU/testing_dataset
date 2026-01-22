	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_prime                          ; -- Begin function prime
	.p2align	2
_prime:                                 ; @prime
	.cfi_startproc
; %bb.0:
	cmp	w0, #9
	b.ge	LBB0_2
; %bb.1:
	mov	w0, #1                          ; =0x1
	ret
LBB0_2:
	mov	w8, #3                          ; =0x3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	udiv	w9, w0, w8
	msub	w9, w9, w8, w0
	cbz	w9, LBB0_6
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	add	w8, w8, #2
	mul	w9, w8, w8
	cmp	w9, w0
	b.le	LBB0_3
; %bb.5:
	mov	w0, #1                          ; =0x1
	ret
LBB0_6:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
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
	add	x21, sp, #28
	str	x21, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cbz	w8, LBB1_15
; %bb.1:
Lloh2:
	adrp	x19, l_.str@PAGE
Lloh3:
	add	x19, x19, l_.str@PAGEOFF
Lloh4:
	adrp	x20, l_.str.1@PAGE
Lloh5:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	stp	x9, x11, [sp, #8]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	str	x21, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #28]
	cbz	w8, LBB1_15
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
                                        ;       Child Loop BB1_9 Depth 3
                                        ;       Child Loop BB1_13 Depth 3
	cmp	w8, #6
	b.lt	LBB1_3
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	add	w9, w8, w8, lsr #31
	asr	w10, w9, #1
	mov	w9, #3                          ; =0x3
	b	LBB1_7
LBB1_6:                                 ;   in Loop: Header=BB1_7 Depth=2
	add	w9, w9, #2
	cmp	w9, w10
	b.gt	LBB1_3
LBB1_7:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_9 Depth 3
                                        ;       Child Loop BB1_13 Depth 3
	cmp	w9, #9
	b.lo	LBB1_11
; %bb.8:                                ;   in Loop: Header=BB1_7 Depth=2
	mov	w11, #5                         ; =0x5
LBB1_9:                                 ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	sub	w12, w11, #2
	udiv	w13, w9, w12
	msub	w12, w13, w12, w9
	cbz	w12, LBB1_6
; %bb.10:                               ;   in Loop: Header=BB1_9 Depth=3
	mul	w12, w11, w11
	add	w11, w11, #2
	cmp	w12, w9
	b.ls	LBB1_9
LBB1_11:                                ;   in Loop: Header=BB1_7 Depth=2
	sub	w11, w8, w9
	cmp	w11, #9
	b.lt	LBB1_2
; %bb.12:                               ;   in Loop: Header=BB1_7 Depth=2
	mov	w12, #5                         ; =0x5
LBB1_13:                                ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	sub	w13, w12, #2
	udiv	w14, w11, w13
	msub	w13, w14, w13, w11
	cbz	w13, LBB1_6
; %bb.14:                               ;   in Loop: Header=BB1_13 Depth=3
	mul	w13, w12, w12
	add	w12, w12, #2
	cmp	w13, w11
	b.le	LBB1_13
	b	LBB1_2
LBB1_15:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
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
	.asciz	"%d = %d + %d\n"

.subsections_via_symbols
