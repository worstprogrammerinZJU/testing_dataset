	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #288
	stp	x28, x27, [sp, #192]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #208]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #224]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #240]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
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
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	add	x8, sp, #52
	str	x8, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #52]
	cmn	w8, #1
	b.eq	LBB0_10
; %bb.1:
	add	x23, sp, #44
	add	x24, sp, #48
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
	sub	x25, x29, #132
	add	x26, sp, #59
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w22, #0                         ; =0x0
	mov	w27, #0                         ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	sxtw	x8, w22
	add	x8, x8, w22, sxtw #3
	add	x8, x26, x8
	sxtw	x9, w27
	add	x9, x9, w27, sxtw #3
	add	x9, x26, x9
	stp	x8, x9, [sp]
Lloh7:
	adrp	x0, l_.str.2@PAGE
Lloh8:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	add	x8, sp, #52
	str	x8, [sp]
Lloh9:
	adrp	x0, l_.str@PAGE
Lloh10:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #52]
	cmn	w8, #1
	b.eq	LBB0_10
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	ldr	w8, [sp, #52]
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x28, #0                         ; =0x0
	mov	w27, #0                         ; =0x0
	mov	w22, #0                         ; =0x0
	add	x20, sp, #59
	sub	x21, x29, #132
	b	LBB0_8
LBB0_6:                                 ;   in Loop: Header=BB0_8 Depth=2
	mov	x22, x28
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=2
	add	x28, x28, #1
	ldrsw	x8, [sp, #52]
	add	x20, x20, #9
	cmp	x28, x8
	b.ge	LBB0_3
LBB0_8:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	stp	x23, x20, [sp, #16]
	stp	x21, x24, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	w9, w8, [sp, #44]
	mul	w8, w9, w8
	ldr	w9, [x21]
	mul	w8, w8, w9
	str	w8, [x21], #4
	ldr	w9, [x25, w22, sxtw #2]
	cmp	w8, w9
	b.gt	LBB0_6
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	ldr	w9, [x25, w27, sxtw #2]
	cmp	w8, w9
	csel	w27, w28, w27, lt
	b	LBB0_7
LBB0_10:
	ldur	x8, [x29, #-96]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_12
; %bb.11:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #256]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #240]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #224]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #208]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
LBB0_12:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d %d %s"

l_.str.2:                               ; @.str.2
	.asciz	"%s took clay from %s.\n"

.subsections_via_symbols
