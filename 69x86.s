.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #64
	adrp	x1, l___const.main.a@PAGE
	add	x1, x1, l___const.main.a@PAGEOFF
	mov	x2, #180
	bl	_memcpy
	mov	x9, sp
	add	x8, sp, #60
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w9, [sp, #60]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #60]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	add	x8, sp, #64
	str	x8, [x9]
	mov	x8, #2114445439
	str	x8, [sp, #72]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	mov	w1, #0
	bl	_print
	ldr	w9, [sp, #60]
	add	w9, w9, #1
	subs	w9, w9, #19
	cset	w9, ne
	tbnz	w9, #0, LBB0_7
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
	mov	x9, sp
	add	x8, sp, #64
	str	x8, [x9]
	mov	x8, #2114445439
	str	x8, [sp, #80]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #60]
	add	w9, w8, #1
	subs	w9, w9, #19
	cset	w9, ne
	tbnz	w9, #0, LBB0_7
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_6
LBB0_5:
	mov	w0, #0
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272
	ret
LBB0_6:
	bl	___stack_chk_fail
LBB0_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

l_.str.2:                               ; @.str.2
	.asciz	"%d. %s %d"

l_.str.3:                               ; @.str.3
	.asciz	"%d %s %d\n"

.subsections_via_symbols