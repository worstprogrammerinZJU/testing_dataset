	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _str@GOTPAGE
	ldr	x8, [x8, _str@GOTPAGEOFF]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-8]                  ; 8-byte Folded Spill
	adrp	x8, _n@GOTPAGE
	ldr	x8, [x8, _n@GOTPAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x10, [x29, #-8]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldrsw	x8, [x8]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	adrp	x9, _ing@GOTPAGE
	ldr	x9, [x9, _ing@GOTPAGEOFF]
	str	x8, [x9]
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x9, [x29, #-8]                  ; 8-byte Folded Reload
	ldrb	w8, [x9]
	add	w8, w8, #1
	sturb	w8, [x9, #-1]
	b	LBB0_3
LBB0_3:
	adrp	x8, _ing@GOTPAGE
	ldr	x8, [x8, _ing@GOTPAGEOFF]
	add	x8, x8, x9
	strb	wzr, [x8]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_11
	b	LBB0_4
LBB0_4:
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #1
	ldrh	w8, [x8]
	ldurh	w9, [x29, #-2]
	subs	w8, w8, w9, uxth
	cset	w8, gt
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_7 Depth=2
	ldurh	w8, [x29, #-2]
	ldurh	w9, [x29, #-2]
	subs	w8, w8, w9, uxth
	cset	w8, gt
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_7 Depth=2
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	strh	wzr, [x8]
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	ldrh	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_7 Depth=2
	ldur	x9, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x9, #10002
	strh	wzr, [x8]
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	ldrh	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_7 Depth=2
	ldurh	w8, [x29, #-2]
	ldurh	w9, [x29, #-2]
	subs	w8, w8, w9, uxth
	cset	w8, gt
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_7 Depth=2
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	ldrh	w8, [x8]
	ldurh	w9, [x29, #-2]
	subs	w8, w8, w9, uxth
	cset	w8, gt
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_7 Depth=2
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	strh	wzr, [x8]
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	ldrh	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_7 Depth=2
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	strh	wzr, [x8]
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	add	x8, x8, #10002
	ldrh	w8, [x8]
	subs	w