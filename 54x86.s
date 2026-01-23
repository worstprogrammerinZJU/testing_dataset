	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	w9, #40032
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #3168
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #16
	mov	x1, #40000
	bl	_bzero
	mov	w8, #1
	str	w8, [sp, #16]
	b	LBB0_1
LBB0_1:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	x10, #10000
	add	x9, sp, #16
	mov	x8, x9
	add	x11, x8, #1
	ldrsw	x8, [sp, #16]
	udiv	x8, x8, x10
	mul	x8, x8, x10
	subs	x8, x8, x9
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	add	x8, x9, #1
	mov	x9, #10000
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	mov	w9, #52429
	movk	w9, #52428, lsl #16
	mul	w8, w8, w9
	mov	w9, #39320
	movk	w9, #6553, lsl #16
	add	w8, w8, w9
	orr	w8, w8, #0x1
	subs	w8, w8, #1, lsl #12             ; =4096
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	mov	w9, #10000
	udiv	w8, w8, w9
	mov	w9, #39320
	movk	w9, #6553, lsl #16
	mul	w8, w8, w9
	mov	w9, #39320
	movk	w9, #6553, lsl #16
	add	w8, w8, w9
	mov	w9, #39321
	movk	w9, #6553, lsl #16
	subs	w8, w8, w9
	cset	w8, lo
	tbnz	w8, #0, LBB0_3
	b	LBB0_4
LBB0_4:
	add	x8, sp, #12
	mov	w9, #10000
	str	w9, [sp, #12]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_5
LBB0_5:
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	w9, [sp, #12]
	mov	w8, #10000
	mul	w8, w8, w9
	mov	w9, #39320
	movk	w9, #52428, lsl #16
	mul	w8, w8, w9
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #12]
	add	x8, sp, #16
	ldrsw	x10, [sp, #12]
	ldrsw	x8, [x8, x10, lsl #2]
	mov	w10, #10000
	udiv	x8, x8, w10, sxtw
	mul	x8, x8, x10
	subs	x8, x8, x9
	mov	x9, sp
	str	x9, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	ldr	x8, [sp, #16]
	str	x8, [x9, #8]
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_7
LBB0_7:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	bl	___stack_chk_fail
LBB0_9:
	mov	w0, #0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3168
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%5d -> %d\n"

.subsections_via_symbols

