	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	add	x0, sp, #28
	bl	_gets
	ldr	w8, [sp, #28]
	mov	w9, #21571
	movk	w9, #21057, lsl #16
	eor	w8, w8, w9
	ldrh	w9, [sp, #32]
	mov	w10, #84
	eor	w9, w9, w10
	orr	w9, w9, w8
	subs	w8, w9, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_1
LBB0_1:
	add	x8, sp, #28
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB0_2
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w0, #10
	bl	_putchar
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	_gets
	ldr	w8, [sp, #28]
	mov	w9, #20037
	movk	w9, #68, lsl #16
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldrb	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_5 Depth=2
	sxtb	w8, w0
	subs	w8, w8, #1
	subs	w9, w8, #2
	mov	w8, #1
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ands	w9, w9, #0xff
	csel	w0, w8, w0, ne
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=2
	bl	_putchar
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	ldrb	w8, [sp, #102]
	add	w8, w8, #1
	strb	w8, [sp, #102]
	ldrb	w8, [sp, #102]
	tbz	w8, #0, LBB0_9
	b	LBB0_7
LBB0_7:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #100
	subs	w8, w8, #2
	cset	w8, hi
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_5 Depth=2
	subs	w8, w0, #1
	and	w0, w8, #0xff
	b	LBB0_10
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	_gets
	ldr	w8, [sp, #28]
	mov	w9, #0
	eor	w8, w8, w9
	ldrh	w9, [sp, #32]
	mov	w10, #84
	eor	w9, w9, w10
	orr	w8, w8, w9
	tbz	w8, #0, LBB0_2
	b	LBB0_10
LBB0_10:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	bl	___stack_chk_fail
LBB0_12:
	mov	w0, #0
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"START"

.subsections_via_symbols

