	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_dp                             ; -- Begin function dp
	.p2align	2
_dp:                                    ; @dp
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	adrp	x11, _p@GOTPAGE
	ldr	x11, [x11, _p@GOTPAGEOFF]
	str	x11, [sp, #16]                  ; 8-byte Folded Spill
	mov	x10, #400
	mov	x9, #400
	mul	x9, x9, x11
	adrp	x11, _q@PAGE
	add	x11, x11, _q@PAGEOFF
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_22
	b	LBB0_1
LBB0_1:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB0_6
LBB0_2:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	mov	w8, #-1
	stur	w8, [x29, #-8]
	b	LBB0_3
LBB0_3:
	ldur	w8, [x29, #-8]
	adrp	x10, _q@PAGE
	add	x10, x10, _q@PAGEOFF
	ldr	w9, [x10, x8, lsl #2]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_11
	b	LBB0_6
LBB0_6:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	adrp	x10, _q@PAGE
	add	x10, x10, _q@PAGEOFF
	ldr	w11, [x10, x8, lsl #2]
	subs	w8, w8, w11
	cset	w8, le
	tbnz	w8, #0, LBB0_11
	b	LBB0_7
LBB0_7:
	ldur	w8, [x29, #-8]
	adrp	x9, _q@PAGE
	add	x9, x9, _q@PAGEOFF
	ldr	w9, [x9, x8, lsl #2]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	mov	w8, #-1
	stur	w8, [x29, #-12]
	b	LBB0_9
LBB0_9:
	ldur	w8, [x29, #-12]
	stur	w8, [x29, #-16]
	b	LBB0_10
LBB0_10:
	ldur	w9, [x29, #-16]
	ldur	w8, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, gt
	and	w9, w8, #0x1
	mov	w8, #0
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	b	LBB0_11
LBB0_11:
	ldur	w8, [x29, #-12]
	adrp	x9, _q@PAGE
	add	x9, x9, _q@PAGEOFF
	ldr	w9, [x9, x8, lsl #2]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldur	w9, [x29, #-8]
	adrp	x10, _q@PAGE
	add	x10, x10, _q@PAGEOFF
	ldr	w10, [x10, x9, lsl #2]
	subs	w8, w8, w10
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:
	ldur	w8, [x29, #-12]
	adrp	x9, _q@PAGE
	add	x9, x9, _q@PAGEOFF
	ldr	w9, [x9, x8, lsl #2]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB0_15
LBB0_15:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-24]
	b	LBB0_16
LBB0_16:
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-28]
	b	LBB0_17
LBB0_17:
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_19
	b	LBB0_18
LBB0_18:
	ldur	w8, [x29, #-24]
	adrp	x9, _q@PAGE
	add	x9, x9, _q@PAGEOFF
	ldr	w9, [x9, x8, lsl #2]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_20
	b	LBB0_19
LBB0_19:
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-32]
	b	LBB0_20
LBB0_20:
	ldur	w8, [x29, #-32]
	stur	w8, [x29, #-36]
	b	LBB0_21
LBB0_21:
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	LBB0_22
LBB0_22:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
