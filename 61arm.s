	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0]
	ldr	w9, [x1]
	cmp	w8, w9
	cset	w8, gt
	csinv	w0, w8, wzr, ge
	ret
	.cfi_endproc
                                        ; -- End function
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
	b.lt	LBB1_16
; %bb.1:
	mov	w23, #0                         ; =0x0
Lloh2:
	adrp	x24, _n@GOTPAGE
Lloh3:
	ldr	x24, [x24, _n@GOTPAGEOFF]
Lloh4:
	adrp	x19, l_.str@PAGE
Lloh5:
	add	x19, x19, l_.str@PAGEOFF
Lloh6:
	adrp	x20, _speed@GOTPAGE
Lloh7:
	ldr	x20, [x20, _speed@GOTPAGEOFF]
Lloh8:
	adrp	x21, _cmp@PAGE
Lloh9:
	add	x21, x21, _cmp@PAGEOFF
Lloh10:
	adrp	x22, l_.str.1@PAGE
Lloh11:
	add	x22, x22, l_.str.1@PAGEOFF
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	ldr	w9, [x20, #4]
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	add	w8, w9, w8
	str	x8, [sp]
	mov	x0, x22
	bl	_printf
	add	w23, w23, #1
	ldr	w8, [sp, #12]
	cmp	w23, w8
	b.ge	LBB1_16
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
                                        ;     Child Loop BB1_10 Depth 2
	str	x24, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB1_8
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x25, #0                         ; =0x0
	mov	x26, x20
LBB1_6:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x26, [sp]
	mov	x0, x19
	bl	_scanf
	add	x25, x25, #1
	ldrsw	x8, [x24]
	add	x26, x26, #4
	cmp	x25, x8
	b.lt	LBB1_6
; %bb.7:                                ;   in Loop: Header=BB1_4 Depth=1
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
LBB1_8:                                 ;   in Loop: Header=BB1_4 Depth=1
	sxtw	x1, w8
	mov	x0, x20
	mov	w2, #4                          ; =0x4
	mov	x3, x21
	bl	_qsort
	ldr	w9, [x24]
	cmp	w9, #4
	b.lt	LBB1_12
; %bb.9:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	w8, #0                          ; =0x0
	ldp	w10, w11, [x20]
	lsl	w11, w11, #1
	lsl	w12, w10, #1
	add	w13, w11, w10
	add	x14, x20, x9, lsl #2
	sub	x14, x14, #4
	add	x15, x9, #2
LBB1_10:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w16, [x14, #-4]
	add	w17, w12, w16
	add	w16, w16, w10
	cmp	w16, w11
	csel	w16, w13, w17, gt
	ldr	w17, [x14], #-8
	add	w8, w17, w8
	add	w8, w16, w8
	sub	x15, x15, #2
	sub	w9, w9, #2
	cmp	x15, #5
	b.gt	LBB1_10
; %bb.11:                               ;   in Loop: Header=BB1_4 Depth=1
	str	w9, [x24]
	cmp	w9, #2
	b.ne	LBB1_13
	b	LBB1_2
LBB1_12:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	w8, #0                          ; =0x0
	cmp	w9, #2
	b.eq	LBB1_2
LBB1_13:                                ;   in Loop: Header=BB1_4 Depth=1
	cmp	w9, #3
	b.ne	LBB1_15
; %bb.14:                               ;   in Loop: Header=BB1_4 Depth=1
	ldp	w9, w10, [x20]
	ldr	w11, [x20, #8]
	add	w9, w10, w9
	add	w9, w9, w11
	b	LBB1_3
LBB1_15:                                ;   in Loop: Header=BB1_4 Depth=1
	ldr	w9, [x20]
	b	LBB1_3
LBB1_16:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_n,4,2                          ; @n
	.comm	_speed,4000,2                   ; @speed
l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
