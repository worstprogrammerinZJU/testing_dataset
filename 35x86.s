.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _n@GOTPAGE
	ldr	x8, [x8, _n@GOTPAGEOFF]
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x1, x8
	mov	x8, sp
	str	x8, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	mov	x9, sp
	adrp	x8, _str@GOTPAGE
	ldr	x8, [x8, _str@GOTPAGEOFF]
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	adrp	x8, _ing@GOTPAGE
	ldr	x8, [x8, _ing@GOTPAGEOFF]
	mov	x9, x8
	mov	x8, #10002
	add	x8, x8, x9
	and	x8, x8, #0xffffffff
	strh	w8, [x9]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_2
	b	LBB0_2
LBB0_2:
	adrp	x8, _ing@GOTPAGE
	ldr	x8, [x8, _ing@GOTPAGEOFF]
	mov	x9, x8
	mov	x8, #10002
	add	x8, x8, x9
	and	x8, x8, #0xffffffff
	strh	w8, [x9]
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_11
	b	LBB0_3
LBB0_3:
	adrp	x8, _ing@GOTPAGE
	ldr	x8, [x8, _ing@GOTPAGEOFF]
	mov	x9, x8
	mov	x8, #10002
	add	x8, x8, x9
	and	x8, x8, #0xffff
	strh	w8, [x9]
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_4
LBB0_4:
	adrp	x8, _c@PAGE
	add	x8, x8, _c@PAGEOFF
	mov	x9, x8
	mov	x8, #10002
	add	x8, x8, x9
	and	x8, x8, #0xffff
	str	x8, [x9]
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	ldrb	w8, [x9, #1]
	ldrh	w10, [x9, #1]
	subs	w8, w8, w10
	cset	w8, gt
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=1
	adrp	x8, _c@PAGE
	add	x8, x8, _c@PAGEOFF
	mov	x9, x8
	mov	x8, #10002
	add	x8, x8, x9
	and	x8, x8, #0xffff
	strh	w8, [x9]
	add	x8, x8, #1
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [x8, #1]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_7 Depth=1
	ldrh	w8, [x8, #1]
	ldrh	w10, [x8, #1]
	subs	w8, w8, w10
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_7 Depth=1
	ldrh	w8, [x8, #1]
	ldrh	w10, [x8, #1]
	subs	w8, w8, w10
	cset	w8, ge
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [x8, #1]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   Parent Loop BB0_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [x8, #1]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_11
LBB0_12:                                ;   Parent Loop BB0_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
	ldr	x8, [x8, #1]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_11
LBB0_13:                                ;   Parent Loop BB0_10 Depth=1
                                        ; =>  This Loop Header: Depth=2
	ldr	x8, [x8, #1]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_14:                                ;   Parent Loop BB0_12 Depth=1
                                        ; =>  This Loop Header: Depth=2
	ldr	x8, [x8, #1]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_13
LBB0_15:                                ;   Parent Loop BB0_14 Depth=1
                                        ; =>  This Loop Header: Depth=2
	ldr	x8, [x8, #1]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_15
LBB0_16:                                ;   Parent Loop BB0_15 Depth=1
                                        ; =>  This Loop Header: Depth=2
	ldr	x8, [x8, #1]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_15
	b	LBB0_16
LBB0_17:                                ;   Parent Loop BB0_16 Depth=1
                                        ; =>  This Loop Header: Depth=2
	ldr	x8, [x8, #