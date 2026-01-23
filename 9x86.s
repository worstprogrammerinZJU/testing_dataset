	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	add	x0, sp, #20
	bl	_gets
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #20
	add	x9, x8, x0
	ldrb	w10, [x9]
	mov	w8, #159
	add	w8, w8, w10, uxtb
	strb	w8, [x9]
	add	x8, x9, #1
	subs	x8, x8, #26
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	add	x0, sp, #20
	bl	_gets
	ldrb	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_3
LBB0_3:
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x8, sp, #20
	add	x8, x8, x0, uxtb
	ldrsb	w8, [x8]
	add	w0, w8, #97
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	bl	_putchar
	ldrb	w8, [sp, #20]
	add	w8, w8, #1
	ands	w8, w8, #0xff
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_3
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #20
	add	x8, x8, x0
	ldrb	w8, [x8]
	subs	w8, w8, #25
	cset	w8, ls
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=1
	add	x8, sp, #20
	add	x8, x8, x0
	ldrb	w8, [x8, #1]
	subs	w8, w8, #25
	cset	w8, hi
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
	add	x8, sp, #20
	add	x8, x8, x0
	ldrsb	w8, [x8]
	add	w0, w8, #65
	b	LBB0_9
LBB0_13:                                ;   in Loop: Header=BB0_3 Depth=1
	b	LBB0_9
LBB0_14:
	mov	w0, #10
	bl	_putchar
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_16
	b	LBB0_15
LBB0_15:
	bl	___stack_chk_fail
LBB0_16:
	mov	w0, #0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols

