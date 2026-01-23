	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #44
	adrp	x1, l___const.main.a@PAGE
	add	x1, x1, l___const.main.a@PAGEOFF
	mov	x2, #180
	bl	_memcpy
	mov	x9, sp
	add	x8, sp, #40
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w9, [sp, #40]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	mov	w8, #19
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	mul	w9, w8, w8
	ldr	w8, [sp, #36]
	add	w8, w8, w9
	mov	w10, #25927
	movk	w10, #32263, lsl #16
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	add	w8, w8, #1
	str	w8, [sp, #36]
	ldrsw	x8, [sp, #36]
	mov	x10, #10
	udiv	x8, x8, x10
	ldr	w9, [sp, #36]
	add	w11, w9, #1
	str	w11, [sp, #36]
	ldrsw	x9, [sp, #36]
	udiv	x9, x9, x10
	ldr	w10, [sp, #36]
	add	w10, w10, #1
	str	w10, [sp, #36]
	mul	x9, x9, x10
	subs	x8, x8, x9
	add	x8, x8, #1
	mov	x9, #10
	udiv	x8, x8, x9
	mov	x10, sp
	str	x8, [x10]
	add	x8, sp, #48
	mov	x9, #40
	str	x8, [x9]
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	subs	x8, x8, #25926
	mov	x9, #40
	udiv	x8, x8, x9
	mov	x10, sp
	str	x8, [x10]
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	subs	x8, x8, #25927
	mov	x9, #20
	udiv	x8, x8, x9
	mov	x9, #30
	udiv	x8, x8, x9
	mov	x9, #46
	udiv	x8, x8, x9
	subs	x8, x8, #1
	add	x8, x8, #1
	mov	x9, sp
	str	x8, [x9]
	add	x8, sp, #52
	bl	_printf
	add	w8, w0, #122
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_7
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	mov	x9, sp
	add	x8, sp, #36
	str	x8, [x9]
	mov	x8, #40
	str	x8, [x9, #8]
	add	x8, sp, #40
	str	x8, [x9, #16]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_scanf
	adrp	x8, l___const.main.m@PAGE
	add	x8, x8, l___const.main.m@PAGEOFF
	ldr	x8, [x8]
	add	x8, x8, #0
	str	x8, [sp, #40]
	ldrb	w8, [sp, #49]
	strb	w8, [sp, #56]
	ldr	w8, [sp, #56]
	subs	w8, w8, #19
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #40]
	add	x8, x8, #7
	subs	x8, x8, #19
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_5
LBB0_5:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	bl	___stack_chk_fail
LBB0_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272
	ret
	.cfi_end_cfa_offset 272
	.section	__TEXT,__const
l___const.main.m:                       ; @__const.main.m
	.asciz	"pop\000\000\000"
	.asciz	"no\000\000\000\000"
	.asciz	"zip\000\000\000"
	.asciz	"zotz\000\000"
	.asciz	"tzec\000\000"
	.asciz	"xul\000\000\000"
	.asciz	"yoxkin"
	.asciz	"mol\000\000\000"
	.asciz	"chen\000\000"
	.asciz	"yax\000\000\000"
	.asciz	"zac\000\000\000"
	.asciz	"ceh\000\000\000"
	.asciz	"mac\000\000\000"
	.asciz