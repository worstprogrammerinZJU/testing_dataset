	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
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
	add	x20, sp, #24
	add	x21, sp, #28
	stp	x21, x20, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldp	w10, w8, [sp, #24]
	cmp	w8, #0
	ccmp	w10, #0, #4, ne
	b.eq	LBB0_9
; %bb.1:
Lloh2:
	adrp	x22, l_str@PAGE
Lloh3:
	add	x22, x22, l_str@PAGEOFF
Lloh4:
	adrp	x23, l_str.3@PAGE
Lloh5:
	add	x23, x23, l_str.3@PAGEOFF
	mov	w24, #1                         ; =0x1
Lloh6:
	adrp	x19, l_.str@PAGE
Lloh7:
	add	x19, x19, l_.str@PAGEOFF
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	cmp	w8, w10
	csel	w9, w8, w10, gt
	csel	w10, w8, w10, lt
	sdiv	w8, w9, w10
	msub	w11, w8, w10, w9
	cbz	w11, LBB0_6
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #1                          ; =0x1
LBB0_4:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x12, x9
	mov	x9, x10
	mov	x10, x11
	sdiv	w11, w12, w9
	cmp	w11, #1
	b.gt	LBB0_7
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=2
	str	w9, [sp, #24]
	sub	w8, w24, w8
	sdiv	w11, w9, w10
	msub	w11, w11, w10, w9
	cbnz	w11, LBB0_4
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #1                          ; =0x1
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, #1
	csel	x0, x23, x22, eq
	bl	_puts
	stp	x21, x20, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #28]
	cbz	w8, LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w10, [sp, #24]
	cbnz	w10, LBB0_2
LBB0_9:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

l_str:                                  ; @str
	.asciz	"Ollie wins"

l_str.3:                                ; @str.3
	.asciz	"Stan wins"

.subsections_via_symbols
