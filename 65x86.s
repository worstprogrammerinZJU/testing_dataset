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
	.p2align	2
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	w9, #4160
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #64
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #16
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_28
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	adrp	x15, l_.str@PAGE
	add	x15, x15, l_.str@PAGEOFF
	b	LBB0_2
	.p2align	2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #0
	adrp	x9, l_.str@PAGE
	add	x9, x9, l_.str@PAGEOFF
	stlr	w8, [x9]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	x8, sp, #16
	add	x8, x8, #1
	ldur	w9, [x8, #1]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #16]
	add	x9, x8, #1
	ldr	w8, [sp, #16]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_28
	b	LBB0_4
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;       Child Loop BB0_9 Depth 3
                                        ;       Child Loop BB0_17 Depth 3
                                        ;       Child Loop BB0_23 Depth 3
                                        ;     Child Loop BB0_24 Depth 2
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, sp
	add	x8, sp, #20
	str	x8, [x9]
	add	x8, sp, #24
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, #1
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_25
	b	LBB0_3
LBB0_5:                                 ;   in Loop: Header=BB0_5 Depth=1
	add	x8, sp, #16
	add	x8, x8, #1
	add	x8, x8, #1
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w9, [x8, #1]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, #1
	ldur	w9, [x8, #1]
	subs	w9, w9, #0
	cset	w9, lt
	tbnz	w9, #0, LBB0_25
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-28]
	subs	w8, w8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB0_17
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-18]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_17
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-18]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_17
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-18]
	add	w8, w8, #2
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_17
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-18]
	add	w8, w8, #2
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB0_17
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-18]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB0_17
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-18]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB0_17
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-18]
	add	w8, w8, #2
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB0_17
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-18]
	add	w8, w8, #2
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8