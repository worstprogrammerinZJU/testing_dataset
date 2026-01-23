	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	w9, #3440
	movk	w9, #3, lsl #16
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #48, lsl #12            ; =196608
	sub	sp, sp, #3440
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #24, lsl #12            ; =98304
	add	x8, x8, #1743
	str	x8, [x9]
	add	x8, sp, #40
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	adrp	x12, l_.str@PAGE
	add	x12, x12, l_.str@PAGEOFF
	adrp	x11, l_.str@PAGE
	add	x11, x11, l_.str@PAGEOFF
	add	x8, sp, #24, lsl #12            ; =98304
	add	x8, x8, #1743
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x8, sp, #40
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldrb	w8, [x8, x0]
	subs	w8, w8, #0
	cset	w8, eq
	and	w10, w8, #0x1
	adrp	x9, l_.str@PAGE
	add	x9, x9, l_.str@PAGEOFF
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	ands	w10, w10, #0x1
	csel	x0, x8, x9, ne
	bl	_puts
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldrb	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #0
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldrb	w9, [x9, x0]
	tbz	w9, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=2
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldrb	w8, [x10, x0]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_7
LBB0_7:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	bl	___stack_chk_fail
LBB0_9:
	mov	w0, #0
	add	sp, sp, #48, lsl #12            ; =196608
	add	sp, sp, #3440
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s %s"

l_str:                                  ; @str
	.asciz	"No"

l_str.3:                                ; @str.3
	.asciz	"Yes"

.subsections_via_symbols

