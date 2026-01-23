.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_balance                        ; -- Begin function balance
	.p2align	2
_balance:                               ; @balance
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp]
	ldr	w8, [sp]
	and	w0, w8, #0x1
	mov	w1, #0
	mov	w2, #0
	bl	_balance
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_end
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_def_cfa_offset 16
	sub	sp, sp, #48
	adrp	x8, _coin@GOTPAGE
	ldr	x8, [x8, _coin@GOTPAGEOFF]
	str	x8, [sp]                        ; 8-byte Folded Spill
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-48]
	mov	x9, sp
	add	x8, sp, #32
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_scanf
	ldr	w8, [sp]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_15
	b	LBB1_1
LBB1_1:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	mov	x8, #3
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x8, x9, #2
	subs	x8, x8, #12
	cset	w8, ne
	tbnz	w8, #0, LBB1_4
	b	LBB1_2
LBB1_2:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [sp]                        ; 8-byte Folded Reload
	add	w8, w8, #1
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB1_5
LBB1_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [sp, #8]                    ; 8-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_7
	b	LBB1_4
LBB1_4:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [sp, #8]                    ; 8-byte Folded Reload
	add	w8, w8, #1
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB1_6
LBB1_5:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [sp, #8]                    ; 8-byte Folded Reload
	subs	w8, w8, #3
	cset	w8, eq
	tbnz	w8, #0, LBB1_8
	b	LBB1_6
LBB1_6:
	mov	w8, #12
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB1_7
LBB1_7:
	ldur	x9, [x29, #-48]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB1_9
	b	LBB1_8
LBB1_8:
	bl	___stack_chk_fail
LBB1_9:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB1_11
	b	LBB1_10
LBB1_10:
	mov	w8, #3
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB1_11
LBB1_11:
	mov	w8, #12
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB1_12
LBB1_12:
	mov	w8, #12
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB1_12
LBB1_13:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	mov	w8, #12
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB1_12
LBB1_14:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB1_16
	b	LBB1_15
LBB1_15:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB1_17
	b	LBB1_16
LBB1_16:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB1_18
	b	LBB1_17
LBB1_17:
	mov	w8, #12
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB1_18
LBB1_18:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB1_20
	b	LBB1_20
LBB1_19:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_22
	b	LBB1_21
LBB1_20:
	mov	w8, #12
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB1_22
LBB1_21:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB1_23
	b	LBB1_22
LBB1_22:
	mov	w8, #3
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB1_23
LBB1_23:
	mov	w8, #12
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB1_23
LBB1_24:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB1_25
	b	LBB1_26
LBB1_25:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w