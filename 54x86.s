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
	mov	w9, #40048
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #3184
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #48
	mov	x1, #40000
	bl	_bzero
	mov	w8, #1
	str	w8, [sp, #48]
	b	LBB0_1
LBB0_1:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	x9, #46097
	movk	x9, #5024, lsl #16
	mul	x10, x9, x0
	ldr	w8, [sp, #52]
	mov	w9, #35081
	movk	w9, #34, lsl #16
	mul	x9, x9, x10
	add	x9, x9, x8, asr #63
	mov	w8, #34464
	movk	w8, #1, lsl #16
	mul	w10, w8, w9
	subs	w8, w8, w10
	str	w8, [sp, #48]
	add	x9, sp, #48
	add	x9, x9, x10, lsl #2
	mov	x8, #4294967290
	add	x9, x8, x9
	ldr	w8, [x9]
	mul	w8, w8, w10
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #48]
	mul	w8, w8, w9
	mov	w9, #52425
	movk	w9, #52425, lsl #16
	mul	w9, w9, w10
	mov	w10, #40000
	movk	w10, #73, lsl #16
	mul	w9, w9, w10
	add	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, hs
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsw	x9, [sp, #44]
	mov	x8, #10
	movk	x8, #26214, lsl #16
	mul	x8, x8, x9
	str	x8, [sp, #48]
	ldr	w8, [sp, #48]
	mov	w9, #35081
	movk	w9, #35081, lsl #16
	mul	w9, w9, w8
	mov	w8, #40000
	movk	w8, #35081, lsl #16
	mul	w8, w8, w9
	add	w8, w8, #1
	mov	w9, #40000
	movk	w9, #35081, lsl #16
	mul	w8, w8, w9
	add	w8, w8, #1
	subs	w8, w8, w9
	cset	w8, lo
	tbnz	w8, #0, LBB0_4
	b	LBB0_4
LBB0_4:
	mov	x9, sp
	add	x8, sp, #44
	str	x8, [x9]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [x9, #8]
	mov	w8, #10000
	str	w8, [sp, #44]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_5
LBB0_5:
	mov	x9, sp
	add	x8, sp, #44
	str	x8, [x9]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [x9, #8]
	mov	w8, #40000
	movk	w8, #40000, lsl #16
	str	w8, [sp, #44]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	mov	w0, #0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3184
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_7:
	bl	___stack_chk_fail
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%5d -> %d\n"

.subsections_via_symbols