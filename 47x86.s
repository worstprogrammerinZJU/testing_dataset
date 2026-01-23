.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #64
	.long	12            lsl #12           ; =49152
	.long	12             lsl #12           ; =49152
	.long	12             lsl #12           ; =49152
	str	w0, [sp, #64]
	adrp	x10, _s@GOTPAGE
	ldr	x10, [x10, _s@GOTPAGEOFF]
	adrp	x8, _c@GOTPAGE
	ldr	x8, [x8, _c@GOTPAGEOFF]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_13
	b	LBB0_1
LBB0_1:
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_13
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_7 Depth 3
	mov	x9, sp
	str	d0, [x9]
	str	d1, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #64]
	add	w8, w8, #8
	mov	w9, #161604
	movk	w9, #2, lsl #16
	str	w9, [sp, #28]                   ; 4-byte Folded Spill
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_13
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	mov	w9, #1
	and	w10, w8, w9
	ldr	w8, [sp, #64]
	add	w8, w8, #8
	mov	w9, #801
	movk	w9, #2, lsl #16
	str	w9, [sp, #24]                   ; 4-byte Folded Spill
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_13
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldr	w9, [sp, #24]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	str	w8, [sp, #64]
	ldur	w8, [x9, #1]
	stur	w8, [x9, #7]
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	and	w8, w8, w9
	ldrb	w8, [x8]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	and	w10, w8, w9
	mov	w8, #801
	movk	w8, #2, lsl #16
	str	w8, [sp, #32]                   ; 4-byte Folded Spill
	subs	w8, w8, w10
	cset	w8, lt
	tbnz	w8, #0, LBB0_13
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	str	w8, [sp, #64]
	ldur	w8, [x2, #7]
	stur	w8, [x2, #11]
	b	LBB0_5
LBB0_8:                                 ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	str	w8, [sp, #64]
	ldur	w8, [x2, #-8]
	stur	w8, [x2, #-8]
	ldur	w9, [x2, #-4]
	ldur	w8, [x2, #7]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	add	w8, w9, #1
	str	w8, [sp, #64]
	ldur	w8, [x2, #-8]
	stur	w8, [x2, #-8]
	ldur	w9, [x2, #-4]
	ldur	w8, [x2, #7]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	add	w8, w9, #1
	str	w8, [sp, #64]
	ldur	w8, [x2, #7]
	stur	w8, [x2, #-8]
	b	LBB0_5
LBB0_11:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x2, #-8]
	stur	w8, [x2, #-8]
	ldur	w8, [x2, #-4]
	stur	w8, [x2, #-4]
	ldur	w8, [x2, #7]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x2, #-8]
	stur	w8, [x2, #-8]
	ldur	w8, [x2, #-4]
	stur	w8, [x2, #-4]
	ldur	w8, [x2, #7]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB0_13
	b	LBB0_11
LBB0_13:                                ;   in Loop