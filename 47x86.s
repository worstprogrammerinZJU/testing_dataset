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
	adrp	x8, _s@GOTPAGE
	ldr	x8, [x8, _s@GOTPAGEOFF]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_12
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	adrp	x8, _t@GOTPAGE
	ldr	x8, [x8, _t@GOTPAGEOFF]
	str	x8, [x9]
	mov	x8, #808
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	x9, sp
	adrp	x8, _s@GOTPAGE
	ldr	x8, [x8, _s@GOTPAGEOFF]
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_12
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;       Child Loop BB0_6 Depth 3
	mov	x9, sp
	adrp	x8, _t@GOTPAGE
	ldr	x8, [x8, _t@GOTPAGEOFF]
	str	x8, [x9]
	mov	x8, #804
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adrp	x0, _s@GOTPAGE
	ldr	x0, [x0, _s@GOTPAGEOFF]
	bl	_strlen
	str	x0, [x0]
	adrp	x0, _t@GOTPAGE
	ldr	x0, [x0, _t@GOTPAGEOFF]
	bl	_strlen
	mov	x1, x0
	adrp	x0, _c@GOTPAGE
	ldr	x0, [x0, _c@GOTPAGEOFF]
	mov	x2, #30500
	bl	_bzero
	subs	x8, x0, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_11
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	x8, [x29, #-8]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldurb	w0, [x29, #-1]
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #36]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, gt
	and	w9, w8, #0x1
	mov	w8, #30500
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, ne
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	x8, [x29, #-8]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldurb	w8, [x29, #-1]
	add	w8, w8, #1
	sturb	w8, [x29, #-1]
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldurb	w8, [x29, #-1]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	LBB0_11
LBB0_10:
	mov	w0, #0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
                                        ; -- End function
	.globl	_LCS                            ; -- Begin function LCS
	.p2align	2
_LCS:                                   ; @LCS
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	adrp	x0, _c@GOTPAGE
	ldr	x0, [x0, _c@GOTPAGEOFF]
	mov	x9, #30500
	ands	x9, x9, #0x1
	cset	w9, eq
	stur	w9, [x29, #-20]                 ; 4-byte Folded Spill
	stur	w8, [x29, #-8]
	ldursb	w1, [x29, #-8]
	ldursb	w2, [x29, #-4]
	ldursb	w3, [x29, #-20]                 ; 4-byte Folded Reload
	ldursb	w4, [x29, #-14]
	ldursb	w5, [x29, #-12]
	ldursb	w6, [x29, #-10]
	ldursb	w7, [x29, #-18]
	bl	_cmp
	ldur	w9, [x29, #-20]                 ; 4-byte Folded Reload
	subs	w8, w0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	ldur	w9, [x29, #-20]                 ; 4-byte Folded Reload
	ldursb	w8, [x29, #-8]
	add	w8, w8, #1
	sturb	w8, [x29, #-8]
	b	LBB1_2
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_4 Depth 2
	ldur	w9, [x29, #-8]
	ldurh	w8, [x29, #-4]
	subs	w8, w8, w9, uxtb
	cset	w8, ne
	tbnz	w8, #0, LBB1_4
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldur	w9, [x29, #-20]