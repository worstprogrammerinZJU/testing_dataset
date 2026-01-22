	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_Floyd_Warshall                 ; -- Begin function Floyd_Warshall
	.p2align	2
_Floyd_Warshall:                        ; @Floyd_Warshall
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	b.lt	LBB0_11
; %bb.1:
	mov	x8, #0                          ; =0x0
	mov	w9, w0
Lloh0:
	adrp	x10, _Dist@GOTPAGE
Lloh1:
	ldr	x10, [x10, _Dist@GOTPAGEOFF]
	mov	w11, #400                       ; =0x190
	mov	x12, x10
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x8, x8, #1
	add	x12, x12, #400
	cmp	x8, x9
	b.eq	LBB0_11
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_7 Depth 3
	mov	x13, #0                         ; =0x0
	mov	x14, x10
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=2
	add	x13, x13, #1
	add	x14, x14, #400
	cmp	x13, x9
	b.eq	LBB0_2
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_7 Depth 3
	madd	x15, x13, x11, x10
	mov	x16, x9
	mov	x17, x14
	mov	x0, x12
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=3
	add	x0, x0, #4
	add	x17, x17, #4
	subs	x16, x16, #1
	b.eq	LBB0_4
LBB0_7:                                 ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w1, [x15, x8, lsl #2]
	cbz	w1, LBB0_6
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=3
	ldr	w2, [x0]
	cbz	w2, LBB0_6
; %bb.9:                                ;   in Loop: Header=BB0_7 Depth=3
	ldr	w3, [x17]
	add	w1, w2, w1
	cmp	w3, #0
	ccmp	w1, w3, #8, ne
	b.ge	LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=3
	str	w1, [x17]
	b	LBB0_6
LBB0_11:
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
	adrp	x24, _n@GOTPAGE
Lloh3:
	ldr	x24, [x24, _n@GOTPAGEOFF]
	str	x24, [sp]
Lloh4:
	adrp	x0, l_.str@PAGE
Lloh5:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x24]
	cbz	w8, LBB1_38
; %bb.1:
Lloh6:
	adrp	x19, _Dist@GOTPAGE
Lloh7:
	ldr	x19, [x19, _Dist@GOTPAGEOFF]
Lloh8:
	adrp	x20, l_.str@PAGE
Lloh9:
	add	x20, x20, l_.str@PAGEOFF
	add	x26, sp, #24
	add	x27, sp, #28
Lloh10:
	adrp	x21, l_.str.1@PAGE
Lloh11:
	add	x21, x21, l_.str.1@PAGEOFF
	mov	w28, #400                       ; =0x190
	mov	w22, #10000                     ; =0x2710
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	ldr	w9, [sp, #24]
	stp	x9, x8, [sp]
Lloh12:
	adrp	x0, l_.str.3@PAGE
Lloh13:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	str	x24, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [x24]
	cbz	w8, LBB1_38
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
                                        ;       Child Loop BB1_9 Depth 3
                                        ;     Child Loop BB1_14 Depth 2
                                        ;       Child Loop BB1_16 Depth 3
                                        ;         Child Loop BB1_18 Depth 4
                                        ;     Child Loop BB1_25 Depth 2
                                        ;       Child Loop BB1_27 Depth 3
	mov	x0, x19
	mov	w1, #40000                      ; =0x9c40
	bl	_bzero
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB1_11
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x23, #0                         ; =0x0
	b	LBB1_7
LBB1_6:                                 ;   in Loop: Header=BB1_7 Depth=2
	add	x23, x23, #1
	ldrsw	x8, [x24]
	cmp	x23, x8
	b.ge	LBB1_10
LBB1_7:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_9 Depth 3
	add	x8, sp, #20
	str	x8, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.lt	LBB1_6
; %bb.8:                                ;   in Loop: Header=BB1_7 Depth=2
	mov	w22, #0                         ; =0x0
	madd	x25, x23, x28, x19
LBB1_9:                                 ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	stp	x27, x26, [sp]
	mov	x0, x21
	bl	_scanf
	ldp	w8, w9, [sp, #24]
                                        ; kill: def $w9 killed $w9 def $x9
	sxtw	x9, w9
	add	x9, x25, x9, lsl #2
	stur	w8, [x9, #-4]
	add	w22, w22, #1
	ldr	w8, [sp, #20]
	cmp	w22, w8
	b.lt	LBB1_9
	b	LBB1_6
LBB1_10:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	w22, #10000                     ; =0x2710
LBB1_11:                                ;   in Loop: Header=BB1_4 Depth=1
	cmp	w8, #1
	b.lt	LBB1_35
; %bb.12:                               ;   in Loop: Header=BB1_4 Depth=1
	mov	x9, #0                          ; =0x0
	mov	w8, w8
	mov	x10, x19
	b	LBB1_14
LBB1_13:                                ;   in Loop: Header=BB1_14 Depth=2
	add	x9, x9, #1
	add	x10, x10, #400
	cmp	x9, x8
	b.eq	LBB1_22
LBB1_14:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_16 Depth 3
                                        ;         Child Loop BB1_18 Depth 4
	mov	x11, #0                         ; =0x0
	mov	x12, x19
	b	LBB1_16
LBB1_15:                                ;   in Loop: Header=BB1_16 Depth=3
	add	x11, x11, #1
	add	x12, x12, #400
	cmp	x11, x8
	b.eq	LBB1_13
LBB1_16:                                ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_14 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_18 Depth 4
	madd	x13, x11, x28, x19
	mov	x14, x10
	mov	x15, x12
	mov	x16, x8
	b	LBB1_18
LBB1_17:                                ;   in Loop: Header=BB1_18 Depth=4
	add	x15, x15, #4
	add	x14, x14, #4
	subs	x16, x16, #1
	b.eq	LBB1_15
LBB1_18:                                ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_14 Depth=2
                                        ;       Parent Loop BB1_16 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	ldr	w17, [x13, x9, lsl #2]
	cbz	w17, LBB1_17
; %bb.19:                               ;   in Loop: Header=BB1_18 Depth=4
	ldr	w0, [x14]
	cbz	w0, LBB1_17
; %bb.20:                               ;   in Loop: Header=BB1_18 Depth=4
	ldr	w1, [x15]
	add	w17, w0, w17
	cmp	w1, #0
	ccmp	w17, w1, #8, ne
	b.ge	LBB1_17
; %bb.21:                               ;   in Loop: Header=BB1_18 Depth=4
	str	w17, [x15]
	b	LBB1_17
LBB1_22:                                ;   in Loop: Header=BB1_4 Depth=1
	str	w22, [sp, #28]
	cmp	w8, #1
	b.lt	LBB1_36
; %bb.23:                               ;   in Loop: Header=BB1_4 Depth=1
	mov	x9, #0                          ; =0x0
	mov	w11, #10000                     ; =0x2710
	mov	x10, x19
	b	LBB1_25
LBB1_24:                                ;   in Loop: Header=BB1_25 Depth=2
	add	x9, x9, #1
	add	x10, x10, #400
	cmp	x9, x8
	b.eq	LBB1_36
LBB1_25:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_27 Depth 3
	mov	x13, #0                         ; =0x0
	mov	w12, #0                         ; =0x0
	b	LBB1_27
LBB1_26:                                ;   in Loop: Header=BB1_27 Depth=3
	add	x13, x13, #1
	cmp	x8, x13
	b.eq	LBB1_30
LBB1_27:                                ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_25 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cmp	x9, x13
	b.eq	LBB1_26
; %bb.28:                               ;   in Loop: Header=BB1_27 Depth=3
	ldr	w14, [x10, x13, lsl #2]
	cbz	w14, LBB1_31
; %bb.29:                               ;   in Loop: Header=BB1_27 Depth=3
	cmp	w14, w12
	csel	w12, w14, w12, gt
	b	LBB1_26
LBB1_30:                                ;   in Loop: Header=BB1_25 Depth=2
	mov	x13, x8
LBB1_31:                                ;   in Loop: Header=BB1_25 Depth=2
	cmp	w13, w8
	b.ne	LBB1_24
; %bb.32:                               ;   in Loop: Header=BB1_25 Depth=2
	cbz	w12, LBB1_24
; %bb.33:                               ;   in Loop: Header=BB1_25 Depth=2
	cmp	w12, w11
	b.ge	LBB1_24
; %bb.34:                               ;   in Loop: Header=BB1_25 Depth=2
	add	w11, w9, #1
	stp	w11, w12, [sp, #24]
	mov	x11, x12
	b	LBB1_24
LBB1_35:                                ;   in Loop: Header=BB1_4 Depth=1
	str	w22, [sp, #28]
LBB1_36:                                ;   in Loop: Header=BB1_4 Depth=1
	ldr	w8, [sp, #28]
	cmp	w8, w22
	b.ne	LBB1_2
; %bb.37:                               ;   in Loop: Header=BB1_4 Depth=1
Lloh14:
	adrp	x0, l_str@PAGE
Lloh15:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	b	LBB1_3
LBB1_38:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.comm	_Dist,40000,2                   ; @Dist
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_n,4,2                          ; @n
l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

l_.str.3:                               ; @.str.3
	.asciz	"%d %d\n"

l_str:                                  ; @str
	.asciz	"disjoint"

.subsections_via_symbols
