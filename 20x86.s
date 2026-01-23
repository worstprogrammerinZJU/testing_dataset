	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_dfs                            ; -- Begin function dfs
	.p2align	2
_dfs:                                   ; @dfs
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]                        ; 8-byte Folded Spill
	adrp	x8, _t@GOTPAGE
	ldr	x8, [x8, _t@GOTPAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	adrp	x9, _m@GOTPAGE
	ldr	x9, [x9, _m@GOTPAGEOFF]
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	ldrsw	x9, [x0]
	mov	x10, #100
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x10, x8, #1
	ldr	w8, [x10]
	add	w9, w8, #1
	ldrb	w8, [x10, #1]
	stur	w9, [x29, #-16]                 ; 4-byte Folded Spill
	sturb	w8, [x29, #-15]
	ldr	w8, [x0]
	add	w9, w8, #1
	ldrb	w8, [x0, #1]
	stur	w9, [x29, #-12]                 ; 4-byte Folded Spill
	sturb	w8, [x29, #-11]
	ldr	w8, [x10]
	add	w9, w8, #1
	ldrb	w8, [x10, #1]
	stur	w9, [x29, #-8]                  ; 4-byte Folded Spill
	sturb	w8, [x29, #-10]
	ldur	w8, [x29, #-16]                 ; 4-byte Folded Reload
	ldur	w9, [x29, #-12]                 ; 4-byte Folded Reload
	ldur	w10, [x29, #-8]                 ; 4-byte Folded Reload
	and	w10, w10, #0xff
	subs	w8, w8, w10
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldurb	w8, [x29, #-10]
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_25
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldur	w9, [x29, #-16]                 ; 4-byte Folded Reload
	ldur	w10, [x29, #-12]                ; 4-byte Folded Reload
	add	x8, x8, w10, sxtw
	strb	w9, [x8]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #1
	cset	w8, ls
	tbnz	w8, #0, LBB0_11
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldur	w9, [x29, #-16]                 ; 4-byte Folded Reload
	ldur	w10, [x29, #-12]                ; 4-byte Folded Reload
	add	x8, x8, w10, sxtw
	strb	w9, [x8]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #1
	cset	w8, ls
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	w9, [x29, #-16]                 ; 4-byte Folded Reload
	ldur	w10, [x29, #-12]                ; 4-byte Folded Reload
	add	x8, x8, w10, sxtw
	strb	w9, [x8]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #1
	cset	w8, ls
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	ldur	w9, [x29, #-16]                 ; 4-byte Folded Reload
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	subs	w8, w8, #1
	cset	w8, ls
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]                  ; 4-byte Folded Reload
	ldur	w9, [x29, #-16]                 ; 4-byte Folded Reload
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	subs	w8, w8, #1
	cset	w8, ls
	tbnz	w8, #0, LBB0_14
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]                 ; 4-byte Folded Reload
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, w9, sxtw
	strb	wzr, [x8]
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	w9, [x29, #-12]                 ; 4-byte Folded Reload
	add	x9, x9, #1
	ldrb	w8, [x8, w9, sxtw]
	subs	w8, w8, #1
	cset	w8, ls
	tbnz	w8, #0, LBB0_11
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	w9, [x29, #-16]                 ; 4-byte Folded Reload
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	subs	w8, w8, #1
	cset	w8, ls
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]                 ; 4-byte Folded Reload
	add	x10, x8, #1
	add	x8, x10, #1
	ldr	w9, [x10]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]                 ; 4-byte Folded Reload