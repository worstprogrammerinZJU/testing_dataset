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
	add	x8, sp, #28
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	subs	w8, w8, #1
	str	w8, [sp, #28]
	b.lt	LBB0_3
; %bb.1:
	add	x21, sp, #20
	add	x22, sp, #24
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x23, l_.str.4@PAGE
Lloh5:
	add	x23, x23, l_.str.4@PAGEOFF
Lloh6:
	adrp	x24, l_.str.3@PAGE
Lloh7:
	add	x24, x24, l_.str.3@PAGEOFF
Lloh8:
	adrp	x20, l_.str.2@PAGE
Lloh9:
	add	x20, x20, l_.str.2@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	stp	x22, x21, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	w9, w8, [sp, #20]
	cmp	w8, w9
	csel	x8, x24, x23, lt
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	ldr	w8, [sp, #28]
	sub	w9, w8, #1
	str	w9, [sp, #28]
	cmp	w8, #0
	b.gt	LBB0_2
LBB0_3:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
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
	.asciz	"%d%d"

l_.str.2:                               ; @.str.2
	.asciz	"%s BRAINS\n"

l_.str.3:                               ; @.str.3
	.asciz	"NO"

l_.str.4:                               ; @.str.4
	.asciz	"MMM"

.subsections_via_symbols
