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
	add	x8, sp, #12
	str	x8, [x9]
	mov	x8, #100
	movk	x8, #12288, lsl #16
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x29
	add	x1, sp, #12
	mov	x2, sp
	mov	x3, #100
	movk	x3, #12288, lsl #16
	bl	_scanf
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #1
	add	w8, w8, #1
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_5
LBB0_5:                                 ; =>This Loop Header: Depth=1
	mov	w8, #2
	movk	w8, #2, lsl #16
	add	w8, w8, #1
	mov	w9, #1
	asr	w8, w8, w9
	mov	w9, #2
	mul	w10, w8, w9
	mov	w8, #0
	subs	w8, w8, w10
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_6
LBB0_6:                                 ; =>This Loop Header: Depth=1
	mov	w8, #2
	movk	w8, #2, lsl #16
	add	w8, w8, #1
	str	w8, [sp, #12]
	ldur	w9, [x29, #-16]
	ldur	w8, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

l_.str.3:                               ; @.str.3
	.asciz	"%d %d\n"

l_str:                                  ; @str
	.asciz	"impossible"

.subsections_via_symbols