.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cude                           ; -- Begin function cude
	.p2align	2
_cude:                                  ; @cude
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, w0
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-4]
	stur	w8, [x29, #-20]
	b	LBB0_2
LBB0_1:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-12]
	b	LBB0_3
LBB0_2:
	ldur	w8, [x29, #-12]
	str	w8, [sp, #12]
	b	LBB0_3
LBB0_3:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-16]
	b	LBB0_4
LBB0_4:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-16]
	b	LBB0_5
LBB0_5:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_6
LBB0_6:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_7
LBB0_7:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_8
LBB0_8:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_9
LBB0_9:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_10
LBB0_10:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_11
LBB0_11:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_12
LBB0_12:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_13
LBB0_13:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_13
LBB0_14:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_13
LBB0_15:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_13
LBB0_16:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_17
LBB0_17:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_17
LBB0_18:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_18
LBB0_19:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_19
LBB0_20:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_20
LBB0_21:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_20
LBB0_22:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_22
LBB0_23:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_23
LBB0_24:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_23
LBB0_25:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_25
LBB0_26:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_25
LBB0_27:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_25
LBB0_28:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_25
LBB0_29:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_25
LBB0_30:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_30
LBB0_31:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_30
LBB0_32:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_30
LBB0_33:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_30
LBB0_40:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_40
LBB0_41:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_40
LBB0_42:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_40
LBB0_43:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_40
LBB0_44:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_40
LBB0_45:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_40
LBB0_46:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_40
LBB0_47:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_40
LBB0_48:
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-16]
	b	LBB0_4