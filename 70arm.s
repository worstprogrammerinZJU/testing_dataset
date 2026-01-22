	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
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
Lloh0:
	adrp	x24, _n@GOTPAGE
Lloh1:
	ldr	x24, [x24, _n@GOTPAGEOFF]
	str	x24, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x24]
	cmn	w8, #1
	b.eq	LBB0_39
; %bb.1:
Lloh4:
	adrp	x19, l_.str.1@PAGE
Lloh5:
	add	x19, x19, l_.str.1@PAGEOFF
	mov	w25, #-10000                    ; =0xffffd8f0
Lloh6:
	adrp	x20, l_str@PAGE
Lloh7:
	add	x20, x20, l_str@PAGEOFF
Lloh8:
	adrp	x21, l_.str@PAGE
Lloh9:
	add	x21, x21, l_.str@PAGEOFF
	mov	w26, #-9000                     ; =0xffffdcd8
	mov	w22, #5554                      ; =0x15b2
Lloh10:
	adrp	x28, _d@GOTPAGE
Lloh11:
	ldr	x28, [x28, _d@GOTPAGEOFF]
	mov	w27, #52429                     ; =0xcccd
	movk	w27, #52428, lsl #16
	mov	w23, #10                        ; =0xa
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_12 Depth 2
                                        ;       Child Loop BB0_15 Depth 3
                                        ;       Child Loop BB0_19 Depth 3
                                        ;         Child Loop BB0_22 Depth 4
                                        ;       Child Loop BB0_25 Depth 3
                                        ;       Child Loop BB0_29 Depth 3
                                        ;       Child Loop BB0_33 Depth 3
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldr	w8, [x24]
	add	w9, w8, w25
	cmp	w9, w26
	b.lo	LBB0_36
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, w22
	b.le	LBB0_6
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	w9, #7776                       ; =0x1e60
	cmp	w8, w9
	b.le	LBB0_35
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	w9, #7777                       ; =0x1e61
	cmp	w8, w9
	mov	w9, #8888                       ; =0x22b8
	ccmp	w8, w9, #4, ne
	mov	w9, #9999                       ; =0x270f
	ccmp	w8, w9, #4, ne
	b.eq	LBB0_36
	b	LBB0_9
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, #3332
	b.gt	LBB0_34
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, #1111
	b.eq	LBB0_36
; %bb.8:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, #2222
	b.eq	LBB0_36
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w22, #0                         ; =0x0
	b	LBB0_12
LBB0_10:                                ;   in Loop: Header=BB0_12 Depth=2
	mov	w10, #0                         ; =0x0
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=2
	sub	w8, w9, w10
	str	w8, [x24]
	add	w22, w22, #1
	stp	x10, x8, [sp, #8]
	str	x9, [sp]
Lloh12:
	adrp	x0, l_.str.3@PAGE
Lloh13:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
LBB0_12:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_15 Depth 3
                                        ;       Child Loop BB0_19 Depth 3
                                        ;         Child Loop BB0_22 Depth 4
                                        ;       Child Loop BB0_25 Depth 3
                                        ;       Child Loop BB0_29 Depth 3
                                        ;       Child Loop BB0_33 Depth 3
	ldr	w8, [x24]
	cmp	w8, #0
	mov	w9, #6174                       ; =0x181e
	ccmp	w8, w9, #4, ne
	b.eq	LBB0_38
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=2
	stp	xzr, xzr, [x28]
	cmp	w8, #1
	b.lt	LBB0_26
; %bb.14:                               ;   in Loop: Header=BB0_12 Depth=2
	mov	x9, #0                          ; =0x0
LBB0_15:                                ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	umull	x10, w8, w27
	lsr	x10, x10, #35
	msub	w11, w10, w23, w8
	str	w11, [x28, x9, lsl #2]
	add	x9, x9, #1
	cmp	w8, #10
	mov	x8, x10
	b.hs	LBB0_15
; %bb.16:                               ;   in Loop: Header=BB0_12 Depth=2
	mov	x8, x9
	cbz	w8, LBB0_27
LBB0_17:                                ;   in Loop: Header=BB0_12 Depth=2
	mov	x12, #0                         ; =0x0
	mov	w10, w8
	add	x9, x28, #4
	sub	x11, x10, #1
	b	LBB0_19
LBB0_18:                                ;   in Loop: Header=BB0_19 Depth=3
	add	x9, x9, #4
	sub	x11, x11, #1
	mov	x12, x13
	cmp	x13, x10
	b.eq	LBB0_24
LBB0_19:                                ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB0_22 Depth 4
	add	x13, x12, #1
	cmp	x13, x10
	b.hs	LBB0_18
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=3
	mov	x14, x11
	mov	x15, x9
	b	LBB0_22
LBB0_21:                                ;   in Loop: Header=BB0_22 Depth=4
	add	x15, x15, #4
	subs	x14, x14, #1
	b.eq	LBB0_18
LBB0_22:                                ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ;       Parent Loop BB0_19 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	ldr	w16, [x28, x12, lsl #2]
	ldr	w17, [x15]
	cmp	w16, w17
	b.ge	LBB0_21
; %bb.23:                               ;   in Loop: Header=BB0_22 Depth=4
	str	w17, [x28, x12, lsl #2]
	str	w16, [x15]
	b	LBB0_21
LBB0_24:                                ;   in Loop: Header=BB0_12 Depth=2
	mov	w9, #0                          ; =0x0
	mov	x11, x28
LBB0_25:                                ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w12, [x11], #4
	madd	w9, w9, w23, w12
	subs	x10, x10, #1
	b.ne	LBB0_25
	b	LBB0_28
LBB0_26:                                ;   in Loop: Header=BB0_12 Depth=2
	mov	w8, #0                          ; =0x0
	cbnz	w8, LBB0_17
LBB0_27:                                ;   in Loop: Header=BB0_12 Depth=2
	mov	w9, #0                          ; =0x0
LBB0_28:                                ;   in Loop: Header=BB0_12 Depth=2
	sxtw	x10, w8
	sub	w12, w8, #1
LBB0_29:                                ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x8, x10
	mov	x11, x12
	subs	x10, x10, #1
	b.lt	LBB0_31
; %bb.30:                               ;   in Loop: Header=BB0_29 Depth=3
	sub	w12, w11, #1
	add	x13, x28, x8, lsl #2
	ldur	w13, [x13, #-4]
	cbz	w13, LBB0_29
LBB0_31:                                ;   in Loop: Header=BB0_12 Depth=2
	cmp	x8, #1
	b.lt	LBB0_10
; %bb.32:                               ;   in Loop: Header=BB0_12 Depth=2
	mov	w10, #0                         ; =0x0
	add	x11, x28, w11, uxtw #2
LBB0_33:                                ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w12, [x11], #-4
	madd	w10, w10, w23, w12
	sub	w8, w8, #1
	cmp	w8, #0
	b.gt	LBB0_33
	b	LBB0_11
LBB0_34:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, #3333
	mov	w9, #4444                       ; =0x115c
	ccmp	w8, w9, #4, ne
	b.eq	LBB0_36
	b	LBB0_9
LBB0_35:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	w9, #5555                       ; =0x15b3
	cmp	w8, w9
	mov	w9, #6666                       ; =0x1a0a
	ccmp	w8, w9, #4, ne
	b.ne	LBB0_9
LBB0_36:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	x0, x20
	bl	_puts
LBB0_37:                                ;   in Loop: Header=BB0_2 Depth=1
	str	x24, [sp]
	mov	x0, x21
	bl	_scanf
	ldr	w8, [x24]
	cmn	w8, #1
	b.ne	LBB0_2
	b	LBB0_39
LBB0_38:                                ;   in Loop: Header=BB0_2 Depth=1
	str	x22, [sp]
Lloh14:
	adrp	x0, l_.str.4@PAGE
Lloh15:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	mov	w22, #5554                      ; =0x15b2
	b	LBB0_37
LBB0_39:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_n,4,2                          ; @n
l_.str.1:                               ; @.str.1
	.asciz	"N=%d:\n"

	.comm	_d,16,2                         ; @d
l_.str.3:                               ; @.str.3
	.asciz	"%d-%d=%d\n"

l_.str.4:                               ; @.str.4
	.asciz	"Ok!! %d times\n"

l_str:                                  ; @str
	.asciz	"No!!"

.subsections_via_symbols
