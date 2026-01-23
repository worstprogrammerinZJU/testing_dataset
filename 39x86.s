	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_pro                            ; -- Begin function pro
	.p2align	2
_pro:                                   ; @pro
; %bb.0:
	sub	sp, sp, #16
	.cset	w8, eq
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	cset	w8, eq
	and	w9, w8, #0x1
	mov	w8, #2
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, ne
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	add	sp, sp, #16
	ret
                                        ; -- End function
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
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	sub	x1, x29, #8
	sub	x2, x29, #4
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_10
	b	LBB1_1
LBB1_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	sub	x2, x29, #4
	sub	x3, x29, #8
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_10
	b	LBB1_2
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
                                        ;       Child Loop BB1_7 Depth 3
	ldur	w8, [x29, #-8]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	w8, [x29, #-4]
                                        ; implicit-def: $x9
	mov	x9, x8
	mov	x8, sp
	str	x10, [x8]
	str	x9, [x8, #8]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB1_4
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=1
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB1_5
	b	LBB1_9
LBB1_5:                                 ;   in Loop: Header=BB1_7 Depth=2
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, gt
	and	w9, w8, #0x1
	mov	w8, #2
	ands	w9, w9, #0x1
	csinc	w9, w8, wzr, ne
	ldur	w8, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB1_7
	b	LBB1_6
LBB1_6:                                 ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_7 Depth 3
	mov	w8, #1
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_8
	b	LBB1_7
LBB1_7:                                 ;   in Loop: Header=BB1_7 Depth=2
	ldur	w8, [x29, #-4]
	mov	x0, x8
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	sub	x2, x29, #4
	bl	_parent_loop
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB1_9
	b	LBB1_8
LBB1_8:                                 ;   in Loop: Header=BB1_7 Depth=2
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB1_10
	b	LBB1_9
LBB1_9:                                 ;   in Loop: Header=BB1_7 Depth=2
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB1_10
	b	LBB1_10
LBB1_10:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d "

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols

