.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	add	x0, sp, #16
	bl	_gets
	mov	w8, #0
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	add	x9, sp, #16
	add	x9, x9, w8, uxtw
	ldrb	w8, [x9]
	subs	w8, w8, #97
	add	x9, x9, #1
	strb	w8, [x9]
	add	x8, x9, #1
	subs	x8, x8, #26
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	add	x0, sp, #16
	bl	_gets
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldrb	w8, [sp, #16]
	tbz	w8, #0, LBB0_10
	b	LBB0_3
LBB0_3:
	add	x8, sp, #16
	add	x8, x8, #8
	strh	w8, [sp, #16]
	mov	w8, #127
	strh	w8, [sp, #16]
	b	LBB0_4
LBB0_4:
	ldrsb	w8, [sp, #16]
	add	w8, w8, #97
	b	LBB0_6
LBB0_5:
	ldrsb	w8, [sp, #16]
	subs	w8, w8, #97
	cset	w8, hs
	tbnz	w8, #0, LBB0_8
	b	LBB0_6
LBB0_6:
	mov	w8, #8998
	movk	w8, #1, lsl #16
	add	w8, w8, #8998
	subs	w8, w8, #97
	cset	w8, lo
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	mov	w8, #8998
	movk	w8, #1, lsl #16
	add	w8, w8, #8998
	subs	w8, w8, #8998
	cset	w8, ls
	tbnz	w8, #0, LBB0_10
	b	LBB0_8
LBB0_8:
	mov	w0, #10
	bl	_putchar
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldrb	w8, [sp, #16]
	subs	w8, w8, #97
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	ldrb	w8, [sp, #16]
	subs	w8, w8, #97
	cset	w8, lt
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:
	mov	w0, #10
	bl	_putchar
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	bl	___stack_chk_fail
LBB0_12:
	mov	w0, #0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_def_cfa_offset 128
.subsections_via_symbols