.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	sub	x8, x29, #18
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-18]
	subs	w8, w8, #1
	stur	w8, [x29, #-18]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_5
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	add	x8, sp, #24
	str	x8, [x9]
	add	x8, sp, #28
	str	x8, [x9, #8]
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-18]
	subs	w8, w8, #1
	stur	w8, [x29, #-18]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_5
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x9, sp
	add	x8, sp, #24
	str	x8, [x9]
	add	x8, sp, #28
	str	x8, [x9, #8]
	mov	x0, x9
	bl	_scanf
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_undefined
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

l_.str.2:                               ; @.str.2
	.asciz	"%s BRAINS\n"

l_.str.3:                               ; @.str.3
	.asciz	"NO"

l_.str.4:                               ; @.str.4
	.asciz	"MMM"

.subsections_via_symbols