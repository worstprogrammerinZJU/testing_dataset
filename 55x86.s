	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
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
	mov	w9, #13624
	movk	w9, #12, lsl #16
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #195, lsl #12           ; =798720
	sub	sp, sp, #1312
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	movi	d0, #0000000000000000
	fmov	d1, #1.00000000
	bl	_div
	str	d0, [sp, #48]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d0, [sp, #48]
	ucvtf	d2, w0
	fmov	d1, #1.00000000
	fdiv	d1, d1, d2
	fadd	d0, d0, d1
	str	d0, [sp, #32]
	add	sp, sp, #195, lsl #12           ; =798720
	add	sp, sp, #1312
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	bl	___stack_chk_fail
LBB0_3:
	mov	w0, #0
	add	sp, sp, #195, lsl #12           ; =798720
	add	sp, sp, #1312
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"%ld"

l_.str.2:                               ; @.str.2
	.asciz	"%5d%10.3f\n"

l_str:                                  ; @str
	.asciz	"Cards  Overhang"

.subsections_via_symbols

