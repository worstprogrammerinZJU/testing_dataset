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
	add	x8, sp, #16
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	add	x8, sp, #12
	str	x8, [x9]
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	str	x8, [x9, #8]
	adrp	x8, l_.str.4@PAGE
	add	x8, x8, l_.str.4@PAGEOFF
	str	x8, [x9, #16]
	mov	w8, #0
	stur	w8, [x29, #-20]                 ; 4-byte Folded Spill
	mov	x2, x8
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_scanf
	ldur	w1, [x29, #-20]                 ; 4-byte Folded Reload
	mov	x0, #7088
	movk	x0, #7088, lsl #16
	bl	_printf
	ldur	w9, [x29, #-20]                 ; 4-byte Folded Reload
	ldr	w10, [sp, #12]
	ldr	w8, [sp, #16]
	mul	w8, w8, w10
	str	w8, [sp, #16]
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	ldur	w1, [x29, #-20]                 ; 4-byte Folded Reload
	mov	x9, sp
	add	x8, sp, #20
	str	x8, [x9]
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	str	x8, [x9, #8]
	mov	x8, #7088
	movk	x8, #7088, lsl #16
	str	x8, [x9, #16]
	mov	x0, #7088
	movk	x0, #7088, lsl #16
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]                 ; 4-byte Folded Reload
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_2
	b	LBB0_3
LBB0_3:
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
	.asciz	"Scenario #%d:\n"

l_.str.3:                               ; @.str.3
	.asciz	"%d.00\n"

l_.str.4:                               ; @.str.4
	.asciz	"%d.41\n"

.subsections_via_symbols