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
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	mov	x9, sp
	add	x8, sp, #4
	str	x8, [x9]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	mov	x0, x8
	bl	_scanf
	mov	x0, x8
	add	x1, sp, #16
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_1
LBB0_1:
	mov	x0, x8
	add	x1, sp, #16
	b	LBB0_3
	.p2align	2
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	x0, x8
	add	x1, sp, #4
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldrb	w8, [sp, #16]
	tbz	w8, #0, LBB0_2
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	add	x0, sp, #4
	bl	_puts
	ldr	x9, [sp, #8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	bl	___stack_chk_fail
LBB0_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

.subsections_via_symbols