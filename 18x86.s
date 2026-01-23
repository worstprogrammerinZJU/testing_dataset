	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_find                           ; -- Begin function find
	.p2align	2
_find:                                  ; @find
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	adrp	x9, _s@GOTPAGE
	ldr	x9, [x9, _s@GOTPAGEOFF]
	ldrb	w8, [x9]
	ldrb	w10, [x9, #1]
	eor	w8, w8, w10
	ldrb	w10, [x9, #2]
	eor	w8, w8, w10
	mov	w10, #1
	orr	w8, w8, w10
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_1
LBB0_1:
	adrp	x9, _s@GOTPAGE
	ldr	x9, [x9, _s@GOTPAGEOFF]
	ldrb	w8, [x9, #3]
	ldrb	w10, [x9, #4]
	eor	w8, w8, w10
	ldrb	w10, [x9, #5]
	eor	w10, w10, w9
	orr	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_2
LBB0_2:
	ldrb	w8, [x0, #5]
	ldrb	w9, [x0, #4]
	subs	w8, w8, w9, uxtb
	cset	w8, ne
	and	w8, w8, #0x1
	ldrb	w9, [x0, #3]
	ldrb	w10, [x0, #2]
	subs	w9, w9, w10, uxtb
	cset	w9, ne
	and	w9, w9, #0x1
	orr	w8, w8, w9
	ldrb	w9, [x0, #1]
	ldrb	w10, [x0, #2]
	subs	w9, w9, w10, uxtb
	cset	w9, ne
	and	w9, w9, #0x1
	orr	w8, w8, w9
	ldrb	w9, [x0, #1]
	ldrb	w10, [x0, #2]
	subs	w9, w9, w10, uxtb
	cset	w9, ne
	and	w9, w9, #0x1
	orr	w8, w8, w9
	ldrb	w9, [x0, #1]
	ldrb	w10, [x0, #2]
	subs	w9, w9, w10, uxtb
	cset	w9, ne
	and	w9, w9, #0x1
	orr	w8, w8, w9
	ldrb	w9, [x0, #1]
	ldrb	w10, [x0, #2]
	subs	w9, w9, w10, uxtb
	cset	w9, ne
	and	w9, w9, #0x1
	orr	w8, w8, w9
	ldrb	w9, [x0, #1]
	ldrb	w10, [x0, #2]
	subs	w9, w9, w10, uxtb
	cset	w9, ne
	and	w9, w9, #0x1
	orr	w8, w8, w9
	ldrb	w9, [x0, #1]
	ldrb	w10, [x0, #2]
	subs	w9, w9, w10, uxtb
	cset	w9, ne
	and	w9, w9, #0x1
	orr	w8, w8, w9
	ldrb	w9, [x0, #1]
	ldrb	w10, [x0, #2]
	subs	w9, w9, w10, uxtb
	cset	w9, ne
	and	w9, w9, #0x1
	orr	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	mov	w8, #0
	eor	w9, w8, w10
	orr	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_4
LBB0_4:
	add	sp, sp, #16
	ret
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	x9, sp
	sub	x8, x29, #52
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_26
	b	LBB1_1
LBB1_1:
	mov	w8, #0
	str	w8, [sp, #60]                   ; 4-byte Folded Spill
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_2 Depth=1
	adrp	x0, l_str@PAGE
	add	x0, x0, l_str@PAGEOFF
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=1
	bl	_puts
	ldr	w8, [sp, #60]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB1_2
	b	LBB1_4
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_3 Depth 2
                                        ;     Child Loop BB1_5 Depth 2
	b	LBB1_5
LBB1_5:                                 ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	mov	x9, sp
	sub	x10, x29, #18
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, _str@PAGE
	add	x0, x0, _str@PAGEOFF
	bl	_scanf
	ldrh	w8, [sp, #74]
	adrp	x9, _s@GOTPAGE
	ldr	x9, [x9, _s@GOTPAGEOFF]
	strh	w8, [x9, #2]
	ldurb	w8, [x29, #-70]
	strb	w8, [x9, #4]
	add	w8, w9, #3
	subs	w8, w8, #9
	cset	w8, ne
	tbnz	w8, #0, LBB1_3
	b	LBB1_6
L