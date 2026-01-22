	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
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
	add	x8, sp, #44
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #44]
	cmp	w8, #1
	b.lt	LBB0_6
; %bb.1:
	mov	w23, #0                         ; =0x0
	add	x24, sp, #38
	add	x25, sp, #41
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
	mov	w26, #1                         ; =0x1
	mov	w27, #2                         ; =0x2
Lloh4:
	adrp	x20, l_.str.2@PAGE
Lloh5:
	add	x20, x20, l_.str.2@PAGEOFF
Lloh6:
	adrp	x21, l_str@PAGE
Lloh7:
	add	x21, x21, l_str@PAGEOFF
Lloh8:
	adrp	x22, l_.str.4@PAGE
Lloh9:
	add	x22, x22, l_.str.4@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x28, [sp]
	mov	x0, x22
	bl	_printf
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	w23, w23, #1
	ldr	w8, [sp, #44]
	cmp	w23, w8
	b.ge	LBB0_6
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	stp	x25, x24, [sp]
	mov	x0, x19
	bl	_scanf
	ldrsb	w8, [sp, #41]
	ldrsb	w9, [sp, #38]
	sub	w10, w9, w8
	subs	w8, w8, w9
	csel	w8, w8, w10, gt
	ldrb	w9, [sp, #42]
	sxtb	w9, w9
	ldrb	w10, [sp, #39]
	sxtb	w10, w10
	sub	w11, w10, w9
	subs	w9, w9, w10
	csel	w9, w9, w11, gt
	cmp	w8, w9
	csel	w10, w8, w9, gt
	orr	w11, w8, w9
	add	w12, w9, w8
	cinc	w13, w26, ne
	tst	w12, #0x1
	csel	w12, w13, w27, eq
	csinv	w13, w13, wzr, eq
	cmp	w8, #0
	ccmp	w9, #0, #4, ne
	csinc	w8, w12, wzr, ne
	cinc	w9, w26, ne
	cmp	w11, #0
	csel	w8, wzr, w8, eq
	csel	w9, wzr, w9, eq
	csel	w28, wzr, w13, eq
	stp	x8, x9, [sp, #8]
	str	x10, [sp]
	mov	x0, x20
	bl	_printf
	cmn	w28, #1
	b.ne	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x21
	bl	_puts
	b	LBB0_3
LBB0_6:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
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
	.asciz	"%s%s"

l_.str.2:                               ; @.str.2
	.asciz	"%d %d %d "

l_.str.4:                               ; @.str.4
	.asciz	"%d\n"

l_str:                                  ; @str
	.asciz	"Inf"

.subsections_via_symbols
