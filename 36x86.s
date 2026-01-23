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
	sub	sp, sp, #896
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #60
	str	x8, [x9]
	add	x8, sp, #64
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #60]
	subs	w8, w8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_1:
	mov	w8, #1
	adrp	x9, l_.str.1@PAGE
	add	x9, x9, l_.str.1@PAGEOFF
	str	w8, [x9]
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x8, sp, #64
	add	x8, x8, #48
	ldr	x9, [sp, #72]
	ldr	x10, [sp, #64]
	add	x8, x8, x10, lsl #2
	mov	x10, sp
	str	x8, [x10]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	add	x8, sp, #64
	add	x8, x8, #48
	ldr	x9, [sp, #48]
	add	x9, x9, #120
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #64]
	ldr	x10, [sp, #72]
	add	x9, x9, x10, lsl #2
	str	w8, [x9]
	add	x8, x8, #120
	ldrsw	x9, [sp, #60]
	add	x9, x9, #4
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	x9, sp
	mov	x8, #400
	mneg	x8, x8, x0
	add	x8, x8, #120
	mov	x10, sp
	str	x8, [x10]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	mov	x9, #400
	mneg	x9, x9, x0
	add	x8, sp, #64
	add	x8, x8, #120
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #64]
	mov	w8, #2
	subs	w8, w8, #120
	cset	w8, lo
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	b	LBB0_5
LBB0_5:                                 ; =>This Inner Loop Header: Depth=2
	mov	x9, sp
	add	x8, sp, #64
	add	x8, x8, #48
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	add	x8, sp, #64
	add	x8, x8, #48
	ldr	w9, [x8]
	ldr	w8, [x8, #4]
	subs	w8, w8, w9
	cset	w8, gt
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	str	w8, [x9, #4]
	add	x8, x8, #4
	subs	x8, x0, x8
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_6
LBB0_6:
	b	LBB0_7
LBB0_7:
	mov	w8, #400
	mneg	w8, w8, w0
	add	x9, sp, #64
	ldr	w9, [x9, w8, sxtw]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_10
	b	LBB0_8
LBB0_8:
	mov	w8, #2
	add	x8, x29, #8
	add	x8, x8, #120
	orr	w8, w8, w0
	add	w8, w8, #1
	str	w8, [x0, #4096]
	b	LBB0_9
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x0, #4096]
	ldr	w9, [x0]
	subs	w8, w8, w9
	cset	w8, le
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	add	w8, w8, #1
	str	w8, [x0, #4096]
	b	LBB0_10
LBB0_10:
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	bl	___stack_chk_fail
LBB0_12:
	mov	w0, #0
	add	sp, sp, #896
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d\n%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols

