	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
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
	tbnz	w8, #0, LBB0_8
	b	LBB0_1
LBB0_1:
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	mov	x9, sp
	sub	x8, x29, #18
	str	x8, [x9]
	sub	x8, x29, #22
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldursb	w8, [x29, #-18]
	ldursb	w9, [x29, #-15]
	subs	w8, w8, w9
	ldursb	w9, [x29, #-18]
	subs	w8, w8, w9
	cset	w8, gt
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csinc	w8, w8, wzr, eq
	ldursb	w9, [x29, #-17]
	ldursb	w10, [x29, #-14]
	subs	w9, w9, w10
	ldursb	w10, [x29, #-17]
	subs	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, ne
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csinc	w9, w8, wzr, eq
	orr	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_puts
	b	LBB0_7
LBB0_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Inf"

l_.str.1:                               ; @.str.1
	.asciz	"%s%s"

l_.str.2:                               ; @.str.2
	.asciz	"%d %d %d "

l_.str.3:                               ; @.str.3
	.asciz	"%s%s"

l_.str.4:                               ; @.str.4
	.asciz	"%d\n"

l_.str.5:                               ; @.str.5
	.asciz	"%d\n"

l_.str.6:                               ; @.str.6
	.asciz	"%s%s"

l_.str.7:                               ; @.str.7
	.asciz	"%s%s"

l_.str.8:                               ; @.str.8
	.asciz	"Inf"

.subsections_via_symbols

