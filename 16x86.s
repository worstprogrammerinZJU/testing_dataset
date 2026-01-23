	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	sub	x8, x29, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-4]
	subs	w8, w8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #4
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_4
LBB0_4:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #6
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_6
LBB0_6:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #8
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_8
LBB0_8:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #10
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	adrp	x0, l_str.9@PAGE
	add	x0, x0, l_str.9@PAGEOFF
	bl	_puts
	b	LBB0_10
LBB0_10:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB0_1:
	adrp	x0, l_str@PAGE
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	ldur	w8, [x29, #-4]
	subs	w8, w8, #4
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	adrp	x0, l_str.6@PAGE
	add	x0, x0, l_str.6@PAGEOFF
	bl	_puts
	ldur	w8, [x29, #-4]
	subs	w8, w8, #6
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	adrp	x0, l_str.7@PAGE
	add	x0, x0, l_str.7@PAGEOFF
	bl	_puts
	ldur	w8, [x29, #-4]
	subs	w8, w8, #8
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	adrp	x0, l_str.8@PAGE
	add	x0, x0, l_str.8@PAGEOFF
	bl	_puts
	ldur	w8, [x29, #-4]
	subs	w8, w8, #10
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_10
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_str:                                  ; @str
	.asciz	"10"

l_str.6:                                ; @str.6
	.asciz	"670"

l_str.7:                                ; @str.7
	.asciz	"55252"

l_str.8:                                ; @str.8
	.asciz	"4816030"

l_str.9:                                ; @str.9
	.asciz	"432457640"

.subsections_via_symbols

