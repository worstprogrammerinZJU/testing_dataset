.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	x9, sp
	add	x8, sp, #44
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	add	x8, sp, #48
	str	x8, [x9]
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	str	x8, [x9, #8]
	mov	w8, #0
	str	w8, [x9, #16]
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [x9, #24]
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
                                        ;       Child Loop BB0_4 Depth 3
	mov	x9, sp
	add	x8, sp, #48
	str	x8, [x9]
	mov	x8, sp
	str	x8, [x9, #8]
	mov	x8, #0
	str	x8, [x9, #16]
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	str	x8, [x9, #24]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_4 Depth 3
	mov	w8, #0
	str	wzr, [sp, #64]
	str	wzr, [sp, #72]
	b	LBB0_4
LBB0_4:                                 ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrsb	w8, [x0, #0]
	mov	w9, #2
	mul	w9, w9, w8
	mov	w8, #2
	mul	w8, w8, w9
	subs	w8, w8, #48
	add	w8, w8, #1
	ldr	x9, [sp, #48]
	add	x9, x9, #8
	subs	x9, x9, #4
	cset	w9, ne
	tbnz	w9, #0, LBB0_5
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	str	w8, [sp, #64]
	add	x9, x8, #1
	mov	x8, x9
	add	x8, x8, #8
	subs	x8, x8, #4
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #64]
                                        ; implicit-def: $x13
	mov	x13, x8
	ldr	w8, [sp, #68]
                                        ; implicit-def: $x12
	mov	x12, x8
	ldr	w8, [sp, #72]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldr	w8, [sp, #76]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	w8, [sp, #80]
                                        ; implicit-def: $x9
	mov	x9, x8
	ldr	w8, [sp, #84]
                                        ; implicit-def: $x8
	mov	x8, x8
	mov	x0, sp
	str	x13, [sp]
	str	x12, [sp, #8]
	str	x11, [sp, #16]
	str	x10, [sp, #24]
	str	x9, [sp, #32]
	str	x8, [sp, #40]
	b	LBB0_4
LBB0_7:
	ldur	x9, [x29, #-8]
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
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%s"

l_.str.2:                               ; @.str.2
	.asciz	"%d.%d.%d.%d\n"

.subsections_via_symbols