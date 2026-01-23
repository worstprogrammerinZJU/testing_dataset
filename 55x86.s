.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.p2align	2
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	w9, #13640
	movk	w9, #12, lsl #16
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #195, lsl #12           ; =798720
	sub	sp, sp, #1392
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	movi	d0, #0000000000000000
	fmov	d1, #1.00000000
	bl	_lsl_dup
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-48]
	add	x9, sp, #36
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, #34464
	movk	x8, #1, lsl #16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x9, x9, x8
	str	x9, [sp, #40]                   ; 8-byte Folded Spill
	add	x9, x9, #2
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	str	d0, [sp, #36]                   ; 8-byte Folded Spill
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	d1, [sp, #36]                   ; 8-byte Folded Reload
	uaddlv.2d	v0, v1, v0
	fmov	d2, d0
	fmov	d0, #1.00000000
	fmul	d0, d0, d2
	str	d0, [sp, #40]                   ; 8-byte Folded Spill
	str	d1, [sp, #24]                   ; 8-byte Folded Spill
	fmov	d1, d0
	ldr	d0, [sp, #24]                   ; 8-byte Folded Reload
	fmul	d0, d0, d1
	str	d0, [sp, #32]                   ; 8-byte Folded Spill
	str	d2, [sp, #32]                   ; 8-byte Folded Spill
	fmov	d1, d0
	ldr	d0, [sp, #32]                   ; 8-byte Folded Reload
	fmov	d0, d1
	ldr	d1, [sp, #40]                   ; 8-byte Folded Reload
	fmov	d2, d1
	fmov	d1, d2
	ldr	d3, [sp, #24]                   ; 8-byte Folded Reload
	fmov	d2, d3
	fmov	d3, d2
	mov	x8, sp
	str	d1, [x8]
	str	d0, [x8, #8]
	str	d3, [x8, #16]
	str	d2, [x8, #24]
	str	d1, [x8, #32]
	str	d0, [x8, #40]
	str	d3, [x8, #48]
	str	d1, [x8, #56]
	str	d0, [x8, #64]
	str	d2, [x8, #72]
	str	d3, [x8, #80]
	str	d2, [x8, #88]
	str	d1, [x8, #96]
	str	d0, [x8, #104]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	w0, [sp, #44]                   ; 4-byte Folded Reload
	add	sp, sp, #195, lsl #12           ; =798720
	add	sp, sp, #1392
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_2:
	bl	___stack_chk_fail
LBB0_3:
	mov	w0, #0
	ret
LBB0_4:
	bl	___stack_chk_fail
LBB0_5:
	mov	w0, #0
	ret
LBB0_6:
	mov	x8, sp
	str	xzr, [x8]
	mov	w0, #0
	ret
LBB0_7:
	bl	___stack_chk_fail
LBB0_8:
	mov	w0, #0
	ret
LBB0_9:
	mov	x8, sp
	str	xzr, [x8]
	mov	w0, #0
	ret
LBB0_10:
	mov	w0, #0
	ret
LBB0_11:
	mov	w0, #0
	ret
LBB0_12:
	mov	w0, #0
	ret
LBB0_13:
	mov	w0, #0
	ret
LBB0_14:
	mov	w0, #0
	ret
LBB0_15:
	mov	w0, #0
	ret
LBB0_16:
	mov	w0, #0
	ret
LBB0_17:
	mov	w0, #0
	ret
LBB0_18:
	mov	w0, #0
	ret
LBB0_19:
	mov	w0, #0
	ret
LBB0_20:
	mov	w0, #0
	ret
LBB0_21:
	mov	w0, #0
	ret
LBB0_22:
	mov	w0, #0
	ret
LBB0_23:
	mov	w0, #0
	ret
LBB0_24:
	mov	w0, #0
	ret
LBB0_25:
	mov	w0, #0
	ret
LBB0_26:
	mov	w0, #0
	ret
LBB0_27:
	mov	w0, #0
	ret
LBB0_28:
	mov	w0, #0
	ret
LBB0_29:
	mov	w0, #0
	ret
LBB0_30:
	mov	w0, #0
	ret
LBB0_31:
	mov	w0, #0
	ret
LBB0_32:
	mov	w0, #0
	ret
LBB0_33:
	mov	w0, #0
	ret
LBB0_34:
	mov	w0, #0
	ret
LBB0_35:
	mov	w0, #0
	ret
LBB0_36:
	mov	w0, #0
	ret
LBB0_37:
	mov	w0, #0
	ret