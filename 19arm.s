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
	add	x8, sp, #12
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.lt	LBB0_17
; %bb.1:
	mov	w22, #0                         ; =0x0
	add	x23, sp, #8
Lloh2:
	adrp	x19, l_.str@PAGE
Lloh3:
	add	x19, x19, l_.str@PAGEOFF
Lloh4:
	adrp	x24, l___const.main.c@PAGE
Lloh5:
	add	x24, x24, l___const.main.c@PAGEOFF
Lloh6:
	adrp	x20, l_str@PAGE
Lloh7:
	add	x20, x20, l_str@PAGEOFF
Lloh8:
	adrp	x21, l_.str.2@PAGE
Lloh9:
	add	x21, x21, l_.str.2@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #10000                      ; =0x2710
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x8, [sp]
	mov	x0, x21
	bl	_printf
	add	w22, w22, #1
	ldr	w8, [sp, #12]
	cmp	w22, w8
	b.ge	LBB0_17
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
                                        ;       Child Loop BB0_15 Depth 3
	str	x23, [sp]
	mov	x0, x19
	bl	_scanf
	mov	w9, #0                          ; =0x0
	ldr	w8, [sp, #8]
	mov	x10, x24
	mov	w26, #1                         ; =0x1
LBB0_5:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x25, x9
	ldr	w11, [x10], #4
	sub	x26, x26, #1
	add	w9, w9, #2
	cmp	w11, w8
	b.le	LBB0_5
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	cbz	w8, LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	cbnz	x26, LBB0_9
	b	LBB0_2
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x20
	bl	_puts
	cbz	x26, LBB0_2
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	neg	x9, x26
	ldr	w10, [sp, #8]
	neg	w11, w25
	mov	w8, #10000                      ; =0x2710
	b	LBB0_11
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=2
	sub	w25, w25, #2
	add	w11, w11, #2
	sub	w9, w9, #1
	cbz	w9, LBB0_3
LBB0_11:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_15 Depth 3
	sdiv	w12, w10, w9
	msub	w13, w12, w9, w10
	cbnz	w13, LBB0_10
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=2
	scvtf	d0, w12
	fsqrt	d0, d0
	fcvtzs	w13, d0
	cmp	w13, #1
	b.lt	LBB0_10
; %bb.13:                               ;   in Loop: Header=BB0_11 Depth=2
	mul	w14, w9, w12
	lsl	w14, w14, #1
	mul	w15, w13, w25
	add	w15, w15, w12, lsl #1
	b	LBB0_15
LBB0_14:                                ;   in Loop: Header=BB0_15 Depth=3
	add	w15, w15, w11
	subs	w13, w13, #1
	b.le	LBB0_10
LBB0_15:                                ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_11 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	sdiv	w16, w12, w13
	msub	w16, w16, w13, w12
	cbnz	w16, LBB0_14
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=3
	sdiv	w16, w14, w13
	add	w16, w15, w16
	cmp	w8, w16
	csel	w8, w8, w16, lt
	b	LBB0_14
LBB0_17:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.c
l___const.main.c:
	.long	1                               ; 0x1
	.long	8                               ; 0x8
	.long	27                              ; 0x1b
	.long	64                              ; 0x40
	.long	125                             ; 0x7d
	.long	216                             ; 0xd8
	.long	343                             ; 0x157
	.long	512                             ; 0x200
	.long	729                             ; 0x2d9
	.long	1000                            ; 0x3e8

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

l_str:                                  ; @str
	.asciz	"0"

.subsections_via_symbols
