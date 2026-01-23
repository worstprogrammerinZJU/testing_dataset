.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #240
	.cfi_def_cset	w8, ___stack_chk_guard
	ldr	w8, [x8]
	stur	w8, [x29, #-4]
	add	x0, sp, #88
	bl	_gets
	ldr	w8, [sp, #88]
	eor	w8, w8, #0x5443
	ldrh	w9, [sp, #92]
	mov	w10, #84
	eor	w9, w9, w10
	orr	w8, w8, w9
	neg	w8, w8
	b.ne	LBB0_12
	b	LBB0_1
LBB0_1:
	add	x8, sp, #87
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	w0, #10
	bl	_putchar
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	mov	x0, x8
	bl	_gets
	ldr	w8, [sp, #88]
	mov	w9, #1989
	movk	w9, #76, lsl #16
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_11
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldrb	w8, [sp, #88]
	tbnz	w8, #0, LBB0_10
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	mov	w0, #10
	bl	_putchar
	b	LBB0_2
LBB0_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	mov	x0, x8
	bl	_gets
	ldr	w8, [sp, #88]
	mov	w9, #20491
	movk	w9, #76, lsl #16
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	mov	w8, #1
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_7 Depth=2
	sxtb	w8, w0
	subs	w8, w8, #65
	asr	w8, w8, #1
	subs	w8, w8, #5
	cset	w8, hs
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w0, ne
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_7 Depth=2
	bl	_gets
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldrb	w8, [x8]
	add	w8, w8, #1
	tbz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x9, x8
	mov	w8, #20491
	movk	w8, #76, lsl #16
	add	w8, w8, w9
	subs	w8, w8, #20
	cset	w8, hi
	tbnz	w8, #0, LBB0_8
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	x0, x8
	bl	_gets
	ldr	w8, [sp, #88]
	eor	w8, w8, #0x5443
	ldrh	w9, [sp, #92]
	eor	w9, w9, #0x84
	orr	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_11
LBB0_11:
	ldur	w9, [x29, #-4]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, w9, uxth
	cset	w8, eq
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:
	bl	___stack_chk_fail
LBB0_13:
	mov	w0, #0
	add	sp, sp, #240
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"START"

.subsections_via_symbols