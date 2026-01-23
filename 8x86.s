	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #5
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	mov	w8, #1
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	mov	x9, sp
	sub	x8, x29, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	ldur	w10, [x29, #-4]
	mul	w0, w9, w10
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB0_1
	b	LBB0_5
LBB0_5:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #6
	cset	w8, lt
	tbnz	w8, #0, LBB0_8
	b	LBB0_6
LBB0_6:
	mov	w8, #6
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	b	LBB0_7
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-12]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	udiv	w10, w8, w9
	mul	w10, w10, w9
	subs	w8, w8, w10
	subs	w8, w8, #1
	cset	w8, hi
	and	w10, w8, #0x1
	mov	w8, #0
	ands	w10, w10, #0x1
	csinc	w1, w8, wzr, eq
	ldur	w8, [x29, #-4]
	udiv	w9, w8, w9
	mul	w9, w9, w9
	subs	w8, w8, w9
	subs	w8, w8, #2
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_8
LBB0_8:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB0_1:
	ldr	w5, [sp, #16]                   ; 4-byte Folded Reload
	mov	w8, #5
	mov	w9, #1
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w9, [sp, #8]                    ; 4-byte Folded Reload
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldur	w10, [x29, #-4]
	udiv	w11, w10, w9
	mul	w11, w11, w9
	subs	w10, w10, w11
	add	w9, w9, #2
	add	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_5
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w10, [x29, #-12]                ; 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	udiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w9, [sp, #16]                   ; 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	udiv	w10, w8, w9
	mul	w10, w10, w9
	subs	w8, w8, w10
	subs	w8, w8, #1
	cset	w8, adcl
	and	w10, w8, #0x1
	mov	w8, #0
	ands	w10, w10, #0x1
	csinc	w8, w8, wzr, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_5
LBB0_5:                                 ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols

