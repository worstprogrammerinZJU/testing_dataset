	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	sub	x8, x29, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	sub	x8, x29, #16
	str	x8, [x9]
	sub	x8, x29, #4
	str	x8, [x9, #8]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [x9, #16]
	adrp	x8, l_.str.5@PAGE
	add	x8, x8, l_.str.5@PAGEOFF
	str	x8, [x9, #24]
	adrp	x8, l_.str.6@PAGE
	add	x8, x8, l_.str.6@PAGEOFF
	str	x8, [x9, #32]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-4]
	mul	w8, w8, w9
	ldur	w9, [x29, #-16]
	ldur	w10, [x29, #-12]
	mul	w9, w9, w10
	subs	w8, w8, w9, lsl #2
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
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	x9, sp
	sub	x8, x29, #20
	str	x8, [x9]
	sub	x8, x29, #24
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-24]
	mneg	w8, w8, w9
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	subs	w8, w8, w9, lsl #2
	cset	w8, gt
	tbnz	w8, #0, LBB0_1
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	adrp	x8, l_.str.6@PAGE
	add	x8, x8, l_.str.6@PAGEOFF
	ldr	w9, [x8]
	adrp	x8, l_.str.7@PAGE
	add	x8, x8, l_.str.7@PAGEOFF
	ldr	w10, [x8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	sub	x1, x29, #4
	mov	x2, #8
	bl	_scanf
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	stur	w8, [x29, #-4]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_1
	b	LBB0_6
LBB0_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
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

