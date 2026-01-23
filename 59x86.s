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
	sub	sp, sp, #560
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #40
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x1, #484
	bl	_bzero
	mov	w8, #1
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	mov	w9, #1
	str	w9, [x8]
	add	x10, x8, #16
	str	w9, [x10]
	str	w9, [x8, #44]
	add	x8, x8, #16
	subs	x8, x8, #122
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	add	x9, x8, #16
	ldr	w8, [x9]
	add	x8, x8, #44
	subs	x8, x8, #11
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	x8, #44
	mul	x8, x0, x8
	add	x8, x8, #132
	mov	x9, x8
	str	w9, [x8, #16368]
	add	x8, x8, #132
	mov	w9, #23
	movk	w9, #2, lsl #16
	lsl	x8, x8, w9
	orr	x8, x8, x9
	cbnz	x8, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	w9, [x8, #44]
	add	x8, x8, #44
	ldr	w10, [x8]
	add	w9, w9, w10
	b.ne	LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	add	x9, x8, #44
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	add	x8, x8, #44
	subs	x8, x8, #132
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	w8, #23
	movk	w8, #2, lsl #16
	lsl	x8, x8, #2
	orr	x8, x8, x9
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w8, [x8]
	b	LBB0_10
LBB0_9:
	mov	x9, sp
	add	x8, sp, #16
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	cbz	w8, LBB0_12
	b	LBB0_10
LBB0_10:
	mov	x9, sp
	add	x8, sp, #8
	str	x8, [x9]
	add	x8, sp, #12
	str	x8, [x9, #8]
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	str	x8, [x9, #16]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldrsw	x8, [sp, #8]
	ldrsw	x9, [sp, #12]
	mov	x10, #44
	mul	x9, x9, x10
	add	x8, x8, x9
	subs	x8, x8, #132
	ldr	w9, [x8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.lt	LBB0_10
	b	LBB0_11
LBB0_11:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.ne	LBB0_12
	b	LBB0_13
LBB0_12:
	bl	___stack_chk_fail
LBB0_13:
	mov	w0, #0
	add	sp, sp, #560
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols

