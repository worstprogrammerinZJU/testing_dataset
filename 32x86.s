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
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	sub	x1, x29, #56
	bl	_scanf
	ldur	w8, [x29, #-56]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_18
	b	LBB0_1
LBB0_1:
	adrp	x1, _top@GOTPAGE
	ldr	x1, [x1, _top@GOTPAGEOFF]
	adrp	x2, _stack@GOTPAGE
	ldr	x2, [x2, _stack@GOTPAGEOFF]
	mov	w8, #0
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_2
	.p2align	2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w0, #10
	bl	_putchar
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	ldur	w9, [x29, #-56]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_18
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_7 Depth 3
                                        ;       Child Loop BB0_12 Depth 3
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	str	wzr, [sp, #20]                   ; 4-byte Folded Spill
	mov	x8, sp
	sub	x9, x29, #52
	str	x9, [x8]
	str	xzr, [sp, #16]                   ; 8-byte Folded Spill
	str	xzr, [x8, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_17
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #0
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB0_5
	.p2align	2
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	mov	w8, #1
	stur	w8, [x29, #-44]
	mov	w8, #0
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	stur	w8, [x29, #-48]
	mov	x9, sp
	str	xzr, [x9]
	str	xzr, [x9, #8]
	str	xzr, [x9, #16]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_17
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=2
	mov	w8, #-1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_15
	.p2align	2
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	ldur	w8, [x29, #-48]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldur	w9, [x29, #-48]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-48]
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	mov	w9, #-1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	mul	w8, w8, w9
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldur	w9, [x29, #-48]
	mov	w8, #0
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	mul	w8, w8, w9
	stur	w8, [x29, #-24]                 ; 4-byte Folded Spill
	ldur	w9, [x29, #-48]
	mov	w8, #0
	stur	w8, [x29, #-10]                 ; 4-byte Folded Spill
	mul	w8, w8, w9
	stur	w8, [x29, #-10]                 ; 4-byte Folded Spill
	ldur	w9, [x29, #-12]                 ; 4-byte Folded Reload
	mul	w8, w8, w9
	stur	w8, [x29, #-28]                 ; 4-byte Folded Spill
	ldur	w8, [x29, #-48]
	mul	w8, w8, w9
	stur	w8, [x29, #-20]                 ; 4-byte Folded Spill
	ldur	w8, [x29, #-48]
	stur	w8, [x29, #-16]                 ; 4-byte Folded Spill
	mul	w8, w8, w9
	stur	w8, [x29, #-28]                 ; 4-byte Folded Spill
	ldur	w9, [x29, #-12]                 ; 4-byte Folded Reload
	mul	w8, w8, w9
	stur	w8, [x29, #-20]                 ; 4-byte Folded Spill
	ldur	w8, [x29, #-10]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-16]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-20]                 ; 4-byte Folded Reload
	ldur	w9, [x29, #-24]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-28]                 ; 4-byte Folded Reload
	ldur	w10, [x29, #-20]                ; 4-byte Folded Reload
	ldur	w11, [x29, #-24]                ; 4-byte Folded Reload
	ldur	w12, [x29, #-16]                ; 4-byte Folded Reload
	ldur	w13, [x29, #-12