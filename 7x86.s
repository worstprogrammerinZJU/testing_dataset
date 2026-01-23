	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_balance                        ; -- Begin function balance
	.p2align	2
_balance:                               ; @balance
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _coin@GOTPAGE
	ldr	x8, [x8, _coin@GOTPAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	ldrb	w8, [x0]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	add	x8, x8, #1
	add	x8, x8, x9
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	ldrb	w8, [x0]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_3
LBB0_3:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	add	x8, x8, #1
	add	x8, x8, x9
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	mov	w8, #0
	stur	w8, [x29, #-20]                 ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldur	w10, [x29, #-20]                ; 4-byte Folded Reload
	and	w8, w8, #0xff
	stur	w10, [x29, #-4]
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b	LBB0_14
LBB0_14:
	ldr	x0, [sp, #44]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
                                        ; -- End function
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
	adrp	x8, _coin@GOTPAGE
	ldr	x8, [x8, _coin@GOTPAGEOFF]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	x9, sp
	add	x8, sp, #40
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_15
	b	LBB1_1
LBB1_1:
	mov	w8, #0
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldr	w8, [sp, #44]
	add	w10, w8, #65
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	ldr	w8,