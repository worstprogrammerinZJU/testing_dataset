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
	add	x20, sp, #12
	str	x20, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_14
; %bb.1:
Lloh2:
	adrp	x21, l_str.3@PAGE
Lloh3:
	add	x21, x21, l_str.3@PAGEOFF
Lloh4:
	adrp	x19, l_.str@PAGE
Lloh5:
	add	x19, x19, l_.str@PAGEOFF
Lloh6:
	adrp	x22, _num@GOTPAGE
Lloh7:
	ldr	x22, [x22, _num@GOTPAGEOFF]
Lloh8:
	adrp	x23, l_str@PAGE
Lloh9:
	add	x23, x23, l_str@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x21
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	bl	_puts
	str	x20, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_14
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.lt	LBB0_7
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x24, #0                         ; =0x0
	add	x25, x22, #4
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x25, [sp]
	mov	x0, x19
	bl	_scanf
	ldrsw	x8, [sp, #12]
	add	x24, x24, #1
	add	x25, x25, #4
	cmp	x24, x8
	b.lt	LBB0_6
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.8:                                ;   in Loop: Header=BB0_4 Depth=1
	ldrsw	x9, [x22, #4]
	ldr	w9, [x22, x9, lsl #2]
	cmp	w9, #1
	b.ne	LBB0_13
; %bb.9:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x10, #0                         ; =0x0
	mov	w9, w8
	add	w8, w8, #1
	sub	x8, x8, #2
LBB0_10:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x8, x10
	b.eq	LBB0_2
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=2
	add	x11, x22, x10, lsl #2
	ldrsw	x11, [x11, #8]
	ldr	w12, [x22, x11, lsl #2]
	add	x11, x10, #1
	add	x13, x10, #2
	mov	x10, x11
	cmp	x13, x12
	b.eq	LBB0_10
; %bb.12:                               ;   in Loop: Header=BB0_4 Depth=1
	cmp	x11, x9
	b.hs	LBB0_2
LBB0_13:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x23
	b	LBB0_3
LBB0_14:
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
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_num,400004,2                   ; @num
l_str:                                  ; @str
	.asciz	"not ambiguous"

l_str.3:                                ; @str.3
	.asciz	"ambiguous"

.subsections_via_symbols
