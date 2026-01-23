	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fcmp	d0, d1
	cset	w9, gt
	fcmp	d1, d0
	cset	w8, le
	and	w8, w9, #0x1
	ands	w8, w8, #0x1
	cset	w0, eq
	add	sp, sp, #16
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
	sub	sp, sp, #832
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #20
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_3
	b	LBB1_1
LBB1_1:
	mov	x8, sp
	add	x9, sp, #24
	str	x9, [x8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	mov	x8, #1
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x8, x8, #1
	ldrsw	x9, [sp, #20]
	add	x9, x9, #8
	subs	x8, x8, x9
	cset	w8, lt
	tbnz	w8, #0, LBB1_2
	b	LBB1_2
LBB1_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldrsw	x1, [sp, #20]
	add	x0, sp, #24
	mov	x2, #8
	adrp	x3, _cmp@PAGE
	add	x3, x3, _cmp@PAGEOFF
	bl	_qsort
	ldrsw	x8, [sp, #20]
	subs	x8, x8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB1_7
	b	LBB1_3
LBB1_3:
	ldr	d0, [sp, #24]
	b	LBB1_4
LBB1_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d0, [sp, #24]
	add	x1, sp, #24
	mov	x2, #8
	bl	_memcmp
	cset	w8, ne
	tbnz	w8, #0, LBB1_6
	b	LBB1_5
LBB1_5:
	b	LBB1_6
LBB1_6:
	ldr	d0, [sp, #24]
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB1_8
	b	LBB1_7
LBB1_7:
	bl	___stack_chk_fail
LBB1_8:
	mov	w0, #0
	add	sp, sp, #832
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%lf"

l_.str.2:                               ; @.str.2
	.asciz	"%.3lf\n"

.subsections_via_symbols

