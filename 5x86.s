.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	sub	x1, x29, #28
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	add	x1, sp, #48
	adrp	x2, l_.str.5@PAGE
	add	x2, x2, l_.str.5@PAGEOFF
	adrp	x3, l_.str.6@PAGE
	add	x3, x3, l_.str.6@PAGEOFF
	adrp	x4, l_.str@PAGE
	add	x4, x4, l_.str@PAGEOFF
	sub	x5, x29, #28
	bl	_scanf
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #44]
	ldr	w10, [sp, #48]
	mul	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, lt
	and	w10, w8, #0x1
	adrp	x9, l_.str.6@PAGE
	add	x9, x9, l_.str.6@PAGEOFF
	adrp	x8, l_.str.5@PAGE
	add	x8, x8, l_.str.5@PAGEOFF
	ands	w10, w10, #0x1
	csel	x0, x8, x9, ne
	bl	_puts
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	x9, sp
	str	x14, [x9]
	add	x8, sp, #52
	str	x8, [x9, #8]
	str	x13, [x9, #16]
	str	x8, [x9, #24]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #48]
	ldr	w10, [sp, #44]
	mul	w9, w9, w10
	subs	w8, w8, w9, lsl #2
	cset	w8, gt
	and	w10, w8, #0x1
	adrp	x9, l_.str.6@PAGE
	add	x9, x9, l_.str.6@PAGEOFF
	adrp	x8, l_.str.5@PAGE
	add	x8, x8, l_.str.5@PAGEOFF
	ands	w10, w10, #0x1
	csel	x0, x8, x9, ne
	bl	_puts
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_4
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldur	w8, [x29, #-28]
	subs	w8, w8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_6
	b	LBB0_6
LBB0_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.p2align	2
lBB0_7:                                 ; -- End function
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