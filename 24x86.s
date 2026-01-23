	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
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
	subs	w8, w8, #6
	cset	w8, lt
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	mov	w8, #4
	mov	w9, #5
	orr	w8, w8, w9
	stur	w8, [x29, #-4]
	b	LBB0_2
LBB0_2:
	mov	w8, #4
	subs	w8, w8, w0
	subs	w8, w8, #1
	cset	w8, eq
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cneg	w8, w8, ne
	subs	w8, w8, #0
	cset	w8, hs
	tbnz	w8, #0, LBB0_5
	b	LBB0_3
LBB0_3:
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=1
	add	w8, w0, #1
	subs	w8, w8, w0
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, w0
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, sp
	mov	x8, #4
	str	x8, [x9]
	bl	_printf
	b	LBB0_7
LBB0_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d "

.subsections_via_symbols

