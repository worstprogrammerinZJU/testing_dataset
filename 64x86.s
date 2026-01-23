.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #80
	str	x0, [sp, #80]
	str	x1, [sp, #88]
	str	x2, [sp, #96]
	str	x3, [sp, #88]
	str	x4, [sp, #96]
	str	w5, [sp, #92]
	mov	x9, sp
	add	x8, sp, #48
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #48]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	adrp	x9, _reverse@GOTPAGE
	ldr	x9, [x9, _reverse@GOTPAGEOFF]
	str	w8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adrp	x8, _reverse@GOTPAGE
	ldr	x8, [x8, _reverse@GOTPAGEOFF]
	ldr	w9, [x8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [x9, #8]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #48]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	mov	x0, sp
	add	x1, sp, #52
	bl	_scanf
	ldr	w8, [sp, #52]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_5
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x8, _x@GOTPAGE
	ldr	x8, [x8, _x@GOTPAGEOFF]
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	wzr, [x8]
	subs	w1, w8, #1
	bl	_mergesort
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w9, [x8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	mov	x8, #1
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	mov	x0, sp
	add	x1, x0, #8
	bl	_scanf
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldur	w8, [x2, #-4]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_16
	b	LBB0_15
LBB0_15:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_17
	b	LBB0_16
LBB0_16:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_18
	b	LBB0_17
LBB0_17:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_19
	b	LBB0_18
LBB0_18:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_20
	b	LBB0_19
LBB0_19:
	ldur	w9, [x2, #-4]
	mov	w8, #1
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_22
	b	LBB0_20
LBB0