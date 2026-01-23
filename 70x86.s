.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.p2align	2
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	w9, #3568
	movk	w9, #3, lsl #16
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #48, lsl #12            ; =196608
	sub	sp, sp, #3544
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #2, lsl #12             ; =8192
	add	x8, x8, #3872
	str	x8, [x9]
	add	x8, sp, #56
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_1
LBB0_1:
	mov	x14, #4036
	movk	x14, #2, lsl #16
	adrp	x13, l_.str@PAGE
	add	x13, x13, l_.str@PAGEOFF
	adrp	x12, l_.str@PAGE
	add	x12, x12, l_.str@PAGEOFF
	add	x10, sp, #2, lsl #12             ; =8192
	add	x11, x11, #3872
	str	x11, [sp, #16]                  ; 8-byte Folded Spill
	mov	x11, #200008
	ldur	x9, [x29, #-24]
	lsl	x9, x9, #1
	add	x9, x9, #3872
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	str	x8, [x9]
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	ldr	x0, [x8]
	mov	x8, x14
	orr	x0, x8, x9
	bl	_puts
	ldr	x11, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #56]
	mov	x8, sp
	str	x11, [x8]
	str	x10, [x8, #8]
	str	x9, [x8, #16]
	str	xzr, [x8, #24]
	str	x10, [x8, #32]
	mov	x0, x9
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldrb	w8, [sp, #56]
	mov	w9, #0
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	x9, #2
	movk	x9, #2, lsl #16
	ldrb	w8, [x9, x10]
	subs	w8, w8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w8, #2
	movk	w8, #2, lsl #16
	ldrb	w8, [x8, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w9, #2
	movk	w9, #2, lsl #16
	ldrb	w8, [x9, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w9, #2
	movk	w9, #2, lsl #16
	ldrb	w8, [x9, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w9, #2
	movk	w9, #2, lsl #16
	ldrb	w8, [x9, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w9, #2
	movk	w9, #2, lsl #16
	ldrb	w8, [x9, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w8, #2
	movk	w8, #2, lsl #16
	ldrb	w8, [x8, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w9, #2
	movk	w9, #2, lsl #16
	ldrb	w8, [x9, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w9, #2
	movk	w9, #2, lsl #16
	ldrb	w8, [x9, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w8, #2
	movk	w8, #2, lsl #16
	ldrb	w8, [x9, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w8, #2
	movk	w8, #2, lsl #16
	ldrb	w8, [x8, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w9, #2
	movk	w9, #2, lsl #16
	ldrb	w8, [x9, w10, uxtw]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w9, #