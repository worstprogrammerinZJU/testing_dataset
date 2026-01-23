	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _top@GOTPAGE
	ldr	x8, [x8, _top@GOTPAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	adrp	x8, _stack@GOTPAGE
	ldr	x8, [x8, _stack@GOTPAGEOFF]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	mov	x9, sp
	sub	x8, x29, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-4]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_17
	b	LBB0_1
LBB0_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w9, [x9]
	add	w9, w9, #1
	ldur	w10, [x29, #-4]
	subs	w8, w8, w10
	cset	w8, ge
	tbnz	w8, #0, LBB0_17
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;       Child Loop BB0_6 Depth 3
                                        ;       Child Loop BB0_11 Depth 3
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	wzr, [x8]
	mov	x9, sp
	sub	x8, x29, #8
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_16
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #0
	mov	w9, #0
	b	LBB0_4
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=2
	mov	w8, #1
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_4 Depth=2
	mov	w8, #1
	stur	w8, [x29, #-4]
	adrp	x9, _stack@GOTPAGE
	ldr	x9, [x9, _stack@GOTPAGEOFF]
	str	w8, [x9, #4]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x8
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w8, #1
	stur	w8, [x29, #-4]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_16
	b	LBB0_16
LBB0_16:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_6 Depth 3
                                        ;       Child Loop BB0_11 Depth 3
	mov	w8, #0
	stur	w8, [x29, #-20]                 ; 4-byte Folded Spill
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	sub	x1, x29, #4
	bl	_scanf
	ldur	w9, [x29, #-20]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_10
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldrsw	x9, [sp, #8]                    ; 4-byte Folded Reload
	ldr	x8, [x8]
	add	x0, x8, x9, lsl #2
	mov	w8, #1
	subs	w8, w8, #1
	lsl	w8, w8, #2
	orr	w10, w8, #0x1
	adrp	x1, l_.memset_pattern@PAGE
	add	x1, x1, l_.memset_pattern@PAGEOFF
	sub	x8, x29, #8
	add	x8, x8, w10, sxtw #2
	ldrb	w8, [x8]
	lsr	w8, w8, #0
	and	w8, w8, #0x1
	add	w8, w8, #1
	ands	w8, w8, #0x1
	csel	w2, w8, w9, ne
	bl	_memset_pattern16
	b	LBB0_18
LBB0_18:                                ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_4 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	subs	w8, w0, #1
	subs	w8, w8, w0
	cset	w8, ne
	tbnz	w8, #0, LBB0_18
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	subs	w8, w9, w8
	str	w8, [x9]
	b	LBB0_20
LBB0_20:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [x8]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_22
	b	LBB0_21
LBB0_21:                                ;   in Loop: Header=BB0_4 Depth=2
	mov	w8, #1
	add	w8, w0, #1
	add	w9, w8, #1
	str	w9, [sp]                        ; 4-byte Folded Spill
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_23
	b	LBB0_22
LBB0_22:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_24
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_4 Depth=2
	mov	w8, #-1
	b	LBB0_24
LBB0_24:                                ;   in Loop: Header=BB0_4 Depth=2
	mov	x8, x0
	b	LBB