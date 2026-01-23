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
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	x9, sp
	add	x8, sp, #23
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	_scanf
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, sp
	add	x8, sp, #19
	str	x8, [x9]
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_1
LBB0_1:
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	add	x9, sp, #19
	str	x9, [x8]
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, sp
	add	x8, sp, #19
	str	x8, [x9]
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldrb	w8, [sp, #19]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w8, [sp, #23]
	mov	x9, x8
	add	x8, sp, #23
	add	x10, x8, x9
	ldrb	w9, [x10]
	add	w9, w9, #1
	stlrb	w9, [x10]
	ldrb	w9, [x10, #1]
	add	w9, w9, #1
	stlrb	w9, [x10]
	ldrb	w9, [x8, #1]
	add	w9, w9, #1
	stlrb	w9, [x8]
	b	LBB0_2
LBB0_6:
	add	x0, sp, #23
	bl	_puts
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	bl	___stack_chk_fail
LBB0_8:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_end_p2align 2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

.subsections_via_symbols

