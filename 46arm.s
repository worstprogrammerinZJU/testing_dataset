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
	add	x22, sp, #28
	str	x22, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cbz	w8, LBB0_20
; %bb.1:
Lloh2:
	adrp	x23, _y@GOTPAGE
Lloh3:
	ldr	x23, [x23, _y@GOTPAGEOFF]
Lloh4:
	adrp	x24, _x@GOTPAGE
Lloh5:
	ldr	x24, [x24, _x@GOTPAGEOFF]
Lloh6:
	adrp	x19, l_.str.1@PAGE
Lloh7:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh8:
	adrp	x20, l_.str.2@PAGE
Lloh9:
	add	x20, x20, l_.str.2@PAGEOFF
Lloh10:
	adrp	x21, l_.str@PAGE
Lloh11:
	add	x21, x21, l_.str@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w9, #0                          ; =0x0
	mov	w8, #0                          ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	str	x22, [sp]
	mov	x0, x21
	bl	_scanf
	ldr	w8, [sp, #28]
	cbz	w8, LBB0_20
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
	ldr	w12, [sp, #28]
	cmp	w12, #1
	b.lt	LBB0_7
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x25, #0                         ; =0x0
	mov	x26, x24
	mov	x27, x23
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	stp	x26, x27, [sp]
	mov	x0, x19
	bl	_scanf
	add	x25, x25, #1
	ldrsw	x12, [sp, #28]
	add	x27, x27, #4
	add	x26, x26, #4
	cmp	x25, x12
	b.lt	LBB0_6
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w12, #1
	b.lt	LBB0_2
; %bb.8:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
	mov	w9, #0                          ; =0x0
	add	w10, w12, w12, lsr #31
	asr	w11, w10, #1
	ldr	w10, [x24, w11, sxtw #2]
	ldr	w11, [x23, w11, sxtw #2]
	mov	w12, w12
	mov	x13, x24
	mov	x14, x23
	b	LBB0_11
LBB0_9:                                 ;   in Loop: Header=BB0_11 Depth=2
	add	w8, w8, #1
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=2
	add	x14, x14, #4
	subs	x12, x12, #1
	b.eq	LBB0_3
LBB0_11:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w15, [x13], #4
	cmp	w15, w10
	b.le	LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=2
	ldr	w16, [x14]
	cmp	w16, w11
	b.gt	LBB0_9
LBB0_13:                                ;   in Loop: Header=BB0_11 Depth=2
	cmp	w15, w10
	b.ge	LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_11 Depth=2
	ldr	w16, [x14]
	cmp	w16, w11
	b.lt	LBB0_9
LBB0_15:                                ;   in Loop: Header=BB0_11 Depth=2
	cmp	w15, w10
	b.le	LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_11 Depth=2
	ldr	w16, [x14]
	cmp	w16, w11
	b.lt	LBB0_19
LBB0_17:                                ;   in Loop: Header=BB0_11 Depth=2
	cmp	w15, w10
	b.ge	LBB0_10
; %bb.18:                               ;   in Loop: Header=BB0_11 Depth=2
	ldr	w15, [x14]
	cmp	w15, w11
	b.le	LBB0_10
LBB0_19:                                ;   in Loop: Header=BB0_11 Depth=2
	add	w9, w9, #1
	b	LBB0_10
LBB0_20:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

	.comm	_x,800000,2                     ; @x
	.comm	_y,800000,2                     ; @y
l_.str.2:                               ; @.str.2
	.asciz	"%d %d\n"

.subsections_via_symbols
