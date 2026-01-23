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
	mov	x9, sp
	add	x8, sp, #16
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_8
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	add	x8, sp, #20
	str	x8, [x9]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_scanf
	mov	w8, #1
	movk	w8, #1, lsl #16
	add	w8, w8, #1
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	x9, sp
	add	x8, sp, #16
	str	x8, [x9]
	mov	x8, #10
	movk	x8, #26214, lsl #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x8, [x9, #8]
	mov	x0, x8
	bl	_scanf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     In Loop Header: Depth=1
	mov	w8, #0
	movk	w8, #1, lsl #16
	str	w8, [sp, #16]
	mov	x9, x8
	ldr	w8, [sp, #16]
	mov	w10, #80
	mul	w8, w8, w10
	mov	w10, #64
	udiv	w8, w8, w10
	add	w8, w8, w9
	add	w8, w8, #4
	subs	w8, w8, #8
	cset	w8, hi
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #0
	str	w8, [sp, #16]
	b	LBB0_5
LBB0_5:
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols