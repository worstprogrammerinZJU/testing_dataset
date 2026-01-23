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
	ldur	w8, [x29, #-4]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	sub	x8, x29, #8
	str	x8, [x9]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [x9, #8]
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	x9, sp
	sub	x8, x29, #12
	str	x8, [x9]
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	str	x8, [x9, #8]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	sub	x10, x29, #20
	add	x8, x10, #4
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	sub	x10, x29, #24
	add	x8, x10, #4
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	mov	x10, x8
	ldr	x9, [sp, #24]
	mov	x8, x9
	subs	w8, w8, w10
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, ge
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	subs	w8, w8, #0
	cset	w8, gt
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	subs	w8, w8, #0
	cset	w8, gt
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_5
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
	.asciz	"%d%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d %d\n"

.subsections_via_symbols

