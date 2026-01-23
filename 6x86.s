	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	movi.2d	v0, #0000000000000000
	str	q0, [sp, #48]
	str	q0, [sp, #64]
	str	q0, [sp, #32]
	str	q0, [sp, #48]
	str	xzr, [sp, #88]
	add	x8, sp, #23
	add	x9, sp, #24
	b	LBB0_1
LBB0_1:                                 ;   in Loop: Header=BB0_1 Depth=1
	add	w8, w0, #1
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	subs	w8, w8, #4
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	add	x0, sp, #24
	bl	_gets
	ldrb	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #24]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_4
LBB0_4:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	subs	w8, w0, #1
	subs	w8, w8, #25
	cset	w8, hi
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_4 Depth=2
	mov	w8, #1
	add	x9, sp, #24
	add	x9, x9, w0, uxtb #2
	strb	w8, [x9]
	b	LBB0_6
LBB0_6:
	ldr	w9, [sp, #24]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #1
	cset	w8, gt
	and	w9, w8, #0x1
	mov	w8, #0
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	add	w8, w8, #1
	subs	w8, w8, #26
	cset	w8, ne
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	ldr	w8, [sp, #24]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	adrp	x8, l_.str.4@PAGE
	add	x8, x8, l_.str.4@PAGEOFF
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB0_11
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=1
	bl	_puts
	add	w8, w0, #1
	subs	w8, w8, #1
	cset	w8, le
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 2
	mov	w8, #0
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=2
	bl	_printf
	add	x8, sp, #24
	add	x8, x8, #1
	subs	x8, x8, #25
	cset	w8, eq
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:                                ;   Parent Loop BB0_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #24]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_13 Depth=2
	subs	w8, w0, #1
	add	x9, sp, #24
	str	w8, [x9, #1]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #92]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_17
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_11 Depth=1
	subs	w8, w0, #1
	str	w8, [sp, #92]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	b	LBB0_17
LBB0_17:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	b	LBB0_18
LBB0_18:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_18 Depth=1
	mov	w8, #65
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_20
LBB0_20:                                ;   in Loop: Header=BB0_18 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #90
	cset	w8, ne
	tbnz	w8, #0, LBB0_22
	b	LBB0_21
LBB0_21:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_puts
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_23
	b	LBB0