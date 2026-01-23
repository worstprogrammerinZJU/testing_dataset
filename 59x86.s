.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.p2align	2
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	sp, sp, #544
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #108
	mov	w1, #484
	bl	_bzero
	mov	w8, #1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w10, [sp, #12]                  ; 4-byte Folded Reload
	str	w10, [sp, #108]
	add	x9, sp, #104
	mov	w8, #1
	str	w8, [x9, x10, lsl #2]
	str	w8, [sp, #108]
	str	w8, [sp, #108]
	add	x9, sp, #108
	add	x8, x9, #4
	add	x9, x8, #11
	subs	x8, x9, #122
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	mov	w8, #2
	add	x9, sp, #108
	b	LBB0_4
	.p2align	2
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	x8, x0, #44
	add	x9, x8, #11
	subs	x8, x9, #11
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	x8, #44
	mul	x8, x8, x0
	add	x8, x8, #1
	mov	x9, #15
	mul	x9, x9, x8
	add	x8, x9, #122
	subs	x8, x8, #11
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #108]
	ldr	w9, [x8]
	ldr	w8, [x8, x9]
	add	w8, w8, w9
	str	w8, [sp, #124]
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_6 Depth=2
	str	w8, [sp, #124]
	add	x8, x8, #1
	mov	x9, #44
	mul	x9, x9, x8
	add	x8, x9, #15
	subs	x8, x8, #11
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, sp, #120
	add	x0, x8, #1
	mov	x1, #15
	mov	x2, #44
	mov	x3, #8
	bl	_scanf
	ldrsw	x8, [sp, #108]
	ldrsw	x9, [sp, #112]
	mov	x10, #44
	mul	x9, x9, x10
	add	x9, x9, #15
	add	x9, x9, #15
	ldr	w9, [x9, x8, lsl #2]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #124]
	mov	w8, #0
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_11
	b	LBB0_8
LBB0_8:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	bl	___stack_chk_fail
LBB0_10:
	mov	w0, #0
	add	sp, sp, #544
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_11:
	bl	___stack_chk_fail
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols