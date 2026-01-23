	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	add	x0, sp, #64
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	w1, #0
	mov	x2, #128
	bl	_memset
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	strb	wzr, [x8, #48]
	mov	x9, sp
	add	x8, sp, #63
	str	x8, [x9]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [x9, #8]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, sp
	add	x8, sp, #63
	str	x8, [x9]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [x9, #8]
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #63]
	add	w8, w8, #40
	subs	w8, w8, #1
	strb	w8, [sp, #152]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldrb	w8, [sp, #63]
	subs	w8, w8, #40
	subs	w8, w8, #1
	strb	w8, [sp, #168]
	b	LBB0_4
LBB0_4:
	mov	w8, #41
	b	LBB0_5
LBB0_5:
	mov	x8, sp
	add	x9, sp, #63
	str	x9, [x8]
	adrp	x9, l_.str@PAGE
	add	x9, x9, l_.str@PAGEOFF
	str	x9, [x8, #8]
	add	x0, x8, #1
	bl	_scanf
	ldrb	w8, [sp, #63]
	add	w8, w8, #65
	subs	w8, w8, #65
	cset	w8, lo
	tbnz	w8, #0, LBB0_8
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldrb	w8, [sp, #63]
	subs	w8, w8, #40
	subs	w8, w8, #1
	strb	w8, [sp, #176]
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldrb	w8, [sp, #63]
	add	w8, w8, #45
	subs	w8, w8, #1
	strb	w8, [sp, #192]
	b	LBB0_8
LBB0_8:
	mov	w8, #41
	b	LBB0_9
LBB0_9:
	ldrb	w8, [sp, #63]
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_10
LBB0_10:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x9, x8, #1
	add	x10, x9, #1
	mov	x9, #41
	subs	x10, x9, x10
	cset	w10, eq
	str	w10, [sp, #16]                  ; 4-byte Folded Spill
	tbnz	w10, #0, LBB0_12
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	w10, [sp, #16]                  ; 4-byte Folded Reload
	ldrb	w9, [sp, #152]
	add	w8, w9, #1
	subs	w8, w8, w10, uxtb
	cset	w8, eq
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_14 Depth 2
                                        ;       Child Loop BB0_16 Depth 3
	ldrb	w8, [sp, #192]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, x9, #1
	ldrb	w8, [x8]
	add	w8, w8, #1
	subs	w8, w8, #1
	strb	w8, [sp, #176]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB0_16
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_12 Depth=1
	b	LBB0_15
LBB0_15:                                ;   Parent Loop BB0_12 Depth=1
                                        ;     Parent Loop BB0_14 Depth=2
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x9, x8, #1
	add	x10, x9, #1
	mov	x9, #41
	subs	x9, x9, x10
	cset	w9, eq
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	tbnz	w9, #0, LBB0_17
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB0_17
	b	LBB0_17
LBB0_17:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldrb	w9, [x8]
	add	w8, w9, #1
	add	w8, w8, #1
	subs	w8, w8, w9, uxtb
	cset	w8, eq
	tbnz	w8, #0, LBB0_19
	b	LBB0_18
LBB0_18:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, x8, #1
	mov	x9, #41
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB0_20
	b	LBB0_19
LBB0_19:
	mov	w8, #10
	b	LBB0_20
LBB0_20:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldrb	w9, [x8