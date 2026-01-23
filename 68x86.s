.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	d0, [x0]
	ldr	d1, [x1]
	fcmp	d0, d1
	cset	w8, gt
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w0, eq
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
                                        ; -- End function
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
	sub	sp, sp, #816
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #8
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_3
	b	LBB1_1
LBB1_1:
	mov	x9, sp
	add	x8, sp, #8
	str	x8, [x9]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_scanf
	add	x8, sp, #8
	add	x8, x8, #8
	ldrsw	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, lt
	tbnz	w8, #0, LBB1_3
	b	LBB1_2
LBB1_2:
                                        ; implicit-def: $x8
	mov	x8, x0
	sxtw	x1, w8
	add	x0, sp, #8
	mov	x2, #8
	adrp	x3, _cmp@PAGE
	add	x3, x3, _cmp@PAGEOFF
	bl	_qsort
	ldrsw	x8, [sp, #8]
	subs	x8, x8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB1_7
	b	LBB1_3
LBB1_3:
	ldr	x8, [sp, #8]
	sxtw	x1, w8
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB1_5
	b	LBB1_4
LBB1_4:
	bl	___stack_chk_fail
LBB1_5:
	mov	w0, #0
	add	sp, sp, #816
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB1_6:
	bl	___stack_chk_fail
LBB1_7:
	mov	w0, #0
	add	sp, sp, #816
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%lf"

l_.str.2:                               ; @.str.2
	.asciz	"%.3lf\n"

.subsections_via_symbols