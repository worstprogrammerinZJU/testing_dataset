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
	mov	x9, sp
	sub	x8, x29, #48
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-48]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_1
LBB0_1:
	adrp	x13, l_.str@PAGE
	add	x13, x13, l_.str@PAGEOFF
	sub	x12, x29, #40
	mov	w11, #0
	and	w10, w11, #0x1
	ands	w10, w10, #0x1
	cset	w10, eq
	tbnz	w10, #0, LBB0_2
	b	LBB0_5
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	x9, sp
	mov	x8, #12
	str	x8, [x9]
	mov	x8, #13
	str	x8, [x9, #8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	ldur	w9, [x29, #-48]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	mov	x9, sp
	add	x8, sp, #12
	str	x8, [x9]
	sub	x8, x29, #36
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-36]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #0
	mov	x9, sp
	str	xzr, [x9]
	str	xzr, [x9, #8]
	strb	wzr, [x9, #16]
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	sub	x1, x29, #32
	bl	_scanf
	ldur	w8, [x29, #-32]
	lsl	w8, w8, #2
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	cset	w8, ge
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w8, eq
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	cset	w8, gt
	and	w10, w8, #0x1
	mov	w9, #0
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	mov	w8, #2
	mul	w8, w8, w10
	subs	w8, w8, w9
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w8, #2
	ands	w10, w10, #0x1
	csel	w8, w8, w9, ne
	ldur	w10, [x29, #-32]
	subs	w8, w8, w10
	cset	w8, lt
	and	w10, w8, #0x1
	mov	w8, #2
	ands	w10, w10, #0x1
	csel	w8, w8, w9, ne
	stur	w8, [x29, #-32]
	ldur	w9, [x29, #-32]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_4
	b	LBB0_6
LBB0_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
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