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
	sub	x8, x29, #24
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	sub	x8, x29, #28
	str	x8, [x9]
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	str	x8, [x9, #8]
	adrp	x8, l_.str.4@PAGE
	add	x8, x8, l_.str.4@PAGEOFF
	str	x8, [x9, #16]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_scanf
	mov	x8, sp
	str	xzr, [x8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	w9, [x29, #-28]
	ldur	w8, [x29, #-24]
	mul	w10, w8, w9
	stur	w10, [x29, #-24]
	mov	w8, #1
	and	w10, w8, #0x1
	adrp	x9, l_.str.4@PAGE
	add	x9, x9, l_.str.4@PAGEOFF
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	ands	w10, w10, #0x1
	csel	x0, x8, x9, ne
	bl	_printf
	ldur	w9, [x29, #-28]
	ldur	w8, [x29, #-24]
	mul	w10, w8, w9
	stur	w10, [x29, #-24]
	mov	w8, #1
	and	w10, w8, #0x1
	adrp	x9, l_.str.4@PAGE
	add	x9, x9, l_.str.4@PAGEOFF
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	ands	w10, w10, #0x1
	csel	x0, x8, x9, ne
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_2
	b	LBB0_2
LBB0_2:
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

l_.str.2:                               ; @.str.2
	.asciz	"Scenario #%d:\n"

l_.str.3:                               ; @.str.3
	.asciz	"%d.00\n"

l_.str.4:                               ; @.str.4
	.asciz	"%d.41\n"

.subsections_via_symbols

