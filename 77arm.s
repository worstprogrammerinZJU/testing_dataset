	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
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
	.cfi_offset w27, -88
	.cfi_offset w28, -96
Lloh0:
	adrp	x22, _n@GOTPAGE
Lloh1:
	ldr	x22, [x22, _n@GOTPAGEOFF]
	str	x22, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x22]
	cbz	w8, LBB0_11
; %bb.1:
	mov	w23, #0                         ; =0x0
Lloh4:
	adrp	x24, _s@GOTPAGE
Lloh5:
	ldr	x24, [x24, _s@GOTPAGEOFF]
Lloh6:
	adrp	x19, l_.str@PAGE
Lloh7:
	add	x19, x19, l_.str@PAGEOFF
Lloh8:
	adrp	x20, l_.str.1@PAGE
Lloh9:
	add	x20, x20, l_.str.1@PAGEOFF
Lloh10:
	adrp	x21, l_.str.2@PAGE
Lloh11:
	add	x21, x21, l_.str.2@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w26, #0                         ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	w23, w23, #1
	str	x23, [sp]
	mov	x0, x20
	bl	_printf
	str	x26, [sp]
	mov	x0, x21
	bl	_printf
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [x22]
	cbz	w8, LBB0_11
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x26, #0                         ; =0x0
	mov	w25, #0                         ; =0x0
	mov	x27, x24
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x27, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [x27], #4
	add	w25, w8, w25
	add	x26, x26, #1
	ldrsw	x8, [x22]
	cmp	x26, x8
	b.lt	LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w8, #1
	b.ge	LBB0_9
	b	LBB0_2
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w25, #0                         ; =0x0
	cmp	w8, #1
	b.lt	LBB0_2
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w26, #0                         ; =0x0
	mov	w9, w8
	mov	x10, x24
	sdiv	w8, w25, w8
LBB0_10:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w11, [x10], #4
	subs	w11, w11, w8
	csel	w11, w11, wzr, gt
	add	w26, w11, w26
	subs	x9, x9, #1
	b.ne	LBB0_10
	b	LBB0_3
LBB0_11:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_n,4,2                          ; @n
	.comm	_s,200,2                        ; @s
l_.str.1:                               ; @.str.1
	.asciz	"Set #%d\n"

l_.str.2:                               ; @.str.2
	.asciz	"The minimum number of moves is %d.\n\n"

.subsections_via_symbols
