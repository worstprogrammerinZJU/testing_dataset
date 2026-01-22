	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
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
	add	x21, sp, #32
	str	x21, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_7
; %bb.1:
	add	x22, sp, #36
	add	x23, sp, #40
	add	x24, sp, #44
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x25, l_str.6@PAGE
Lloh5:
	add	x25, x25, l_str.6@PAGEOFF
Lloh6:
	adrp	x26, l_str.5@PAGE
Lloh7:
	add	x26, x26, l_str.5@PAGEOFF
Lloh8:
	adrp	x20, l_.str@PAGE
Lloh9:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	stp	x23, x22, [sp, #8]
	str	x24, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	w8, w9, [sp, #40]
	mul	w8, w8, w8
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	cmp	w8, w9, lsl #2
	csel	x0, x26, x25, lt
	bl	_puts
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_7
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	ldr	w8, [sp, #32]
	cmp	w8, #2
	b.eq	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	csel	x0, x25, x26, gt
	bl	_puts
	ldr	w8, [sp, #32]
	tbnz	w8, #31, LBB0_3
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x24, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #32]
	sub	w9, w8, #1
	str	w9, [sp, #32]
	cmp	w8, #0
	b.gt	LBB0_6
	b	LBB0_3
LBB0_7:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d%d"

l_str.5:                                ; @str.5
	.asciz	"YES"

l_str.6:                                ; @str.6
	.asciz	"NO"

.subsections_via_symbols
