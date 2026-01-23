.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #6
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	mov	x9, sp
	sub	x8, x29, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	ldur	w9, [x29, #-4]
	mul	w8, w8, w9
	mov	w9, #3
	mul	w0, w8, w9
	b	LBB0_1
LBB0_1:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #6
	cset	w8, lt
	tbnz	w8, #0, LBB0_9
	b	LBB0_2
LBB0_2:
	ldr	w9, [sp, #8]                    ; 4-byte Folded Reload
	mov	w8, #6
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	mul	w8, w8, w9
	mov	w9, #3
	mul	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	ldur	w9, [x29, #-4]
	mul	w8, w8, w9
	mov	w9, #3
	mul	w8, w8, w9
	subs	w8, w8, #2
	cset	w8, ge
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	mov	w8, #6
	stur	w8, [x29, #-4]
	mov	w8, #3
	stur	w8, [x29, #-8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB0_5:
	mov	w8, #5
	mov	w9, #1
	stur	w9, [x29, #-8]
	ldur	w9, [x29, #-4]
	mul	w8, w8, w9
	mov	w9, #3
	mul	w8, w8, w9
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	ldur	w8, [x29, #-4]
	mul	w8, w8, w9
	mov	w9, #3
	mul	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_7
LBB0_7:
	ldur	w9, [x29, #-4]
	ldur	w8, [x29, #-8]
	mul	w8, w8, w9
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	ldur	w8, [x29, #-8]
	mul	w8, w8, w9
	mov	w9, #3
	mul	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_9
LBB0_9:
	mov	w8, #6
	stur	w8, [x29, #-8]
	ldur	w9, [x29, #-8]
	mov	w8, #3
	mul	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_7
	b	LBB0_10
LBB0_10:
	mov	w8, #6
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	mov	w9, #3
	mul	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_11
LBB0_11:
	mov	w8, #6
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	mov	w9, #3
	mul	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_12
LBB0_12:
	ldur	w9, [x29, #-8]
	ldur	w8, [x29, #-4]
	mul	w8, w8, w9
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_13
LBB0_13:
	mov	w8, #6
	stur	w8, [x29, #-8]
	ldur	w9, [x29, #-8]
	mov	w8, #3
	mul	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_14
LBB0_14:
	mov	w8, #6
	stur	w8, [x29, #-8]
	ldur	w9, [x29, #-8]
	mov	w8, #3
	mul	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_15
LBB0_15:
	mov	w8, #6
	stur	w8, [x29, #-8]
	ldur	w9, [x29, #-8]
	mov	w8, #3
	mul	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_16
LBB0_16:
	mov	w8, #6
	stur	w8, [x29, #-8]
	ldur	w9, [x29, #-8]
	mov	w8, #3
	mul	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_17
LBB0_17:
	mov	w8, #6
	stur	w8, [x29, #-8]
	ldur	w9, [x29, #-8]
	mov	w8, #3
	mul	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_18
LBB0_18:
	ldur	w8, [x29, #-8]