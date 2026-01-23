.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #2992
	adrp	x10, l_.str@PAGE
	add	x10, x10, l_.str@PAGEOFF
	b	LBB0_1
	.p2align	2
LBB0_1:                                 ; =>This Loop Header: Depth=1
	mov	w8, #1
	add	w8, w8, #1
	mov	w9, #10000
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 3
                                        ;     Child Loop BB0_5 Depth 3
                                        ;     Child Loop BB0_8 Depth 3
	mov	w8, #2992
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	adrp	x10, l_.str@PAGE
	add	x10, x10, l_.str@PAGEOFF
	b	LBB0_3
	.p2align	2
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	mov	w9, #1
	mul	w8, w8, w9
	lsr	w8, w8, #63
	asr	w8, w8, #34
	lsl	w8, w8, #2
	subs	w8, w8, w9
	ldur	w9, [x29, #-16]
	sdiv	w9, w9, w8
	ldur	w8, [x29, #-12]
	sdiv	w8, w8, w9
	subs	w8, w8, w9
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	movk	w8, #2992, lsl #16
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	adrp	x10, l_.str@PAGE
	add	x10, x10, l_.str@PAGEOFF
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #16]                   ; 4-byte Folded Reload
	mov	w10, #4243
	movk	w10, #10938, lsl #16
	mul	w9, w8, w10
	ldur	w8, [x29, #-16]
	sdiv	w9, w8, w9
	ldur	w8, [x29, #-12]
	sdiv	w8, w8, w9
	subs	w8, w8, w9
	ldur	w9, [x29, #-28]
	sdiv	w8, w8, w9
	add	w8, w8, #11
	subs	w8, w8, #22
	cset	w8, hi
	tbnz	w8, #0, LBB0_6
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	sdiv	w9, w8, w9
	ldur	w8, [x29, #-8]
	sdiv	w8, w8, w9
	ldur	w9, [x29, #-16]
	sdiv	w8, w8, w9
	add	w8, w8, #11
	add	w8, w8, #11
	ldur	w9, [x29, #-28]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-16]
	ldur	w10, [x29, #-12]
	sdiv	w10, w10, w11
	mul	w9, w9, w10
	ldur	w10, [x29, #-8]
	sdiv	w10, w10, w11
	ldur	w11, [x29, #-28]
	sdiv	w10, w10, w11
	add	w8, w8, w10
	stur	w8, [x29, #-24]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-16]
	ldur	w11, [x29, #-12]
	sdiv	w11, w11, w10
	mul	w9, w9, w11
	ldur	w10, [x29, #-8]
	sdiv	w10, w10, w11
	ldur	w11, [x29, #-28]
	sdiv	w10, w10, w11
	add	w8, w8, w10
	stur	w8, [x29, #-22]
	ldur	w8, [x29, #-22]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-16]
	ldur	w11, [x29, #-12]
	sdiv	w11, w11, w10
	mul	w9, w9, w11
	ldur	w10, [x29, #-8]
	sdiv	w10, w10, w11
	ldur	w11, [x29, #-28]
	sdiv	w10, w10, w11
	add	w8, w8, w10
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-16]
	ldur	w10, [x29, #-12]
	sdiv	w10, w10, w11
	mul	w9, w9, w10
	ldur	w10, [x29, #-8]
	sdiv	w10, w10, w11
	ldur	w11, [x29, #-28]
	sdiv	w10, w10, w11
	add	w8, w8, w10
	stur	w8, [x29, #-24]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-16]
	ldur	w11, [x29, #-12]
	sdiv	w11, w11, w10
	mul	w9, w9, w11
	ldur	w10, [x29, #-8]
	sdiv	w10, w10, w11
	ldur	w11, [x29, #-28]
	sdiv	w10, w10, w11
	add	w8, w8, w10
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-20]