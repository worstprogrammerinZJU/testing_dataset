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
	mov	x9, sp
	sub	x8, x29, #48
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-48]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_9
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	sub	x8, x29, #55
	str	x8, [x9]
	mov	x8, #5509272933
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	str	x8, [x9, #8]
	mov	x8, #5509272933
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	bl	_bzero
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	str	x8, [x9, #8]
	str	x8, [x9, #16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	_printf
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x8, x8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_9
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	str	x8, [x9, #8]
	str	x8, [x9, #16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	_printf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldrsb	w10, [sp, #16]
	ldrsb	w9, [sp, #43]
	subs	w10, w10, w9
	subs	w8, w9, w10
	cset	w8, gt
	and	w9, w8, #0x1
	ands	w9, w9, #0x1
	cset	w8, ne
	ldrsb	w9, [sp, #17]
	ldrsb	w10, [sp, #44]
	subs	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, lt
	and	w9, w8, #0x1
	ands	w9, w9, #0x1
	cset	w8, eq
	ldrsb	w9, [sp, #18]
	ldrsb	w10, [sp, #45]
	subs	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, ge
	and	w9, w8, #0x1
	ands	w9, w9, #0x1
	cset	w10, eq
	orr	w1, w8, w10
	mov	w8, #0
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	subs	w8, w8, w1
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w9, #1
	str	w9, [sp, #36]                   ; 4-byte Folded Spill
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	str	x8, [x9, #8]
	str	x8, [x9, #16]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	bl	_printf
	b	LBB0_8
LBB0_5:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_puts
	b	LBB0_8
LBB0_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%s%s"

l_.str.2:                               ; @.str.2
	.asciz	"%d %d %d "

l_.str.4:                               ; @.str.4
	.asciz	"%d\n"

l_str:                                  ; @str
	.asciz	"Inf"

.subsections_via_symbols