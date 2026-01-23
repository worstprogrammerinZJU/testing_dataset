.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	sub	x8, x29, #12
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	sub	x8, x29, #20
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	w8, #0
	stur	w8, [x29, #-20]
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	x8, x0
	mov	x9, x1
	subs	w9, w9, #1
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	sdiv	w8, w8, w9
	mul	w8, w8, w9
	subs	w10, w8, #1
	mov	w9, #1
	str	w9, [sp, #24]                   ; 4-byte Folded Spill
	sdiv	w9, w9, w10
	mul	w9, w9, w10
	subs	w2, w8, w9
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	sdiv	w9, w8, w9
	mul	w9, w9, w10
	subs	w10, w8, w9
	mov	x9, sp
	str	x9, [x8, #8]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #24]                   ; 4-byte Folded Reload
	ldur	w8, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	mov	x0, x8
	mov	x9, sp
	sub	x8, x29, #20
	str	x8, [x9]
	mov	x1, #2
	bl	_scanf
	ldur	w8, [x29, #-20]
	tbz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	x1, #1
	mov	x2, #1
	bl	_abs
	ldur	w8, [x29, #-12]
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_5
LBB0_5:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d\n"

.subsections_via_symbols