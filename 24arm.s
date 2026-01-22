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
	add	x22, sp, #36
	stp	x22, x21, [sp, #16]
	add	x23, sp, #40
	add	x24, sp, #44
	stp	x24, x23, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldp	w10, w11, [sp, #40]
	ldp	w9, w8, [sp, #32]
	cmp	w11, #0
	ccmp	w10, #0, #0, eq
	ccmp	w8, #0, #0, eq
	ccmp	w9, #0, #0, eq
	b.eq	LBB0_6
; %bb.1:
	mov	w25, #40                        ; =0x28
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x20, l_.str@PAGE
Lloh5:
	add	x20, x20, l_.str@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	subs	w11, w11, w10
	csel	w12, w25, wzr, lt
	add	w11, w12, w11
	add	w12, w11, #40
	subs	w10, w8, w10
	csel	w11, w12, w11, lt
	add	w10, w11, w10
	add	w11, w10, #40
	subs	w8, w8, w9
	csel	w9, w11, w10, lt
	add	w8, w8, w9
	add	w8, w8, w8, lsl #3
	add	w8, w8, #1080
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	stp	x22, x21, [sp, #16]
	stp	x24, x23, [sp]
	mov	x0, x20
	bl	_scanf
	ldp	w10, w11, [sp, #40]
	ldp	w9, w8, [sp, #32]
	cbnz	w11, LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	cbnz	w10, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	cbnz	w8, LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	cbnz	w9, LBB0_2
LBB0_6:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
