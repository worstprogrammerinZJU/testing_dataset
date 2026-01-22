	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
	.cfi_startproc
; %bb.0:
	ldp	w8, w9, [x0]
	ldp	w10, w11, [x1]
	mov	w12, #1                         ; =0x1
	mov	w13, #-1                        ; =0xffffffff
	mov	w14, #1                         ; =0x1
	cmp	w9, w11
	csetm	w9, gt
	csel	w9, w14, w9, lt
	cmp	w8, w10
	csel	w8, w13, w9, gt
	csel	w0, w12, w8, lt
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
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
	add	x24, sp, #28
	str	x24, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cbz	w8, LBB1_11
; %bb.1:
Lloh2:
	adrp	x19, _point@GOTPAGE
Lloh3:
	ldr	x19, [x19, _point@GOTPAGEOFF]
Lloh4:
	adrp	x20, l_.str.1@PAGE
Lloh5:
	add	x20, x20, l_.str.1@PAGEOFF
Lloh6:
	adrp	x21, _cmp@PAGE
Lloh7:
	add	x21, x21, _cmp@PAGEOFF
Lloh8:
	adrp	x22, l_.str.2@PAGE
Lloh9:
	add	x22, x22, l_.str.2@PAGEOFF
Lloh10:
	adrp	x23, l_.str@PAGE
Lloh11:
	add	x23, x23, l_.str@PAGEOFF
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	mov	w8, #1                          ; =0x1
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	str	x8, [sp]
	mov	x0, x22
	bl	_printf
	str	x24, [sp]
	mov	x0, x23
	bl	_scanf
	ldr	w8, [sp, #28]
	cbz	w8, LBB1_11
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
                                        ;     Child Loop BB1_10 Depth 2
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB1_8
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x25, #0                         ; =0x0
	mov	x26, x19
LBB1_6:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, x26, #4
	stp	x26, x8, [sp]
	mov	x0, x20
	bl	_scanf
	add	x25, x25, #1
	ldrsw	x8, [sp, #28]
	add	x26, x26, #8
	cmp	x25, x8
	b.lt	LBB1_6
; %bb.7:                                ;   in Loop: Header=BB1_4 Depth=1
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
LBB1_8:                                 ;   in Loop: Header=BB1_4 Depth=1
	sxtw	x1, w8
	mov	x0, x19
	mov	w2, #8                          ; =0x8
	mov	x3, x21
	bl	_qsort
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.le	LBB1_2
; %bb.9:                                ;   in Loop: Header=BB1_4 Depth=1
	ldr	w9, [x19, #4]
	add	x10, x19, #12
	sub	x11, x8, #1
	mov	w8, #1                          ; =0x1
LBB1_10:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w12, [x10], #8
	cmp	w12, w9
	csel	w9, w12, w9, gt
	cinc	w8, w8, gt
	subs	x11, x11, #1
	b.ne	LBB1_10
	b	LBB1_3
LBB1_11:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

	.comm	_point,400000,2                 ; @point
l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
