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
	mov	w9, #41320
	movk	w9, #7, lsl #16
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #122, lsl #12           ; =499712
	sub	sp, sp, #272
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #68
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_20
	b	LBB0_1
LBB0_1:
	mov	w8, #-10001
	adrp	x9, l_.str@PAGE
	add	x9, x9, l_.str@PAGEOFF
	str	w8, [x9]
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #-10001
	b	LBB0_18
LBB0_3:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #-10001
	subs	w8, w8, w0
	cset	w8, eq
	and	w10, w8, #0x1
	mov	w9, #0
	mov	w8, #10001
	ands	w10, w10, #0x1
	csel	w8, w8, w9, ne
	add	w10, w8, w0
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	add	w8, w0, #1
	ldr	w9, [sp, #68]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_4
	b	LBB0_4
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
                                        ;     Child Loop BB0_16 Depth 2
	mov	x9, sp
	add	x8, sp, #64
	str	x8, [x9]
	mov	x0, #10001
	bl	_scanf
	ldr	w8, [sp, #64]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #-10001
	adrp	x9, l_.str@PAGE
	add	x9, x9, l_.str@PAGEOFF
	str	w8, [x9]
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #-10001
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_10
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #-10001
	mov	x9, x8
	mov	w8, #0
	ands	w8, w8, #0x1
	csel	w0, w8, w9, ne
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w8, lt
	and	w8, w8, #0x1
	mov	w9, #10001
	ands	w8, w8, #0x1
	csel	w8, w9, w9, ne
	add	w11, w8, #1
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w8, ge
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	add	w10, w8, #1
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w8, lt
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	add	w8, w8, #1
	add	x12, sp, #64
	add	x11, x12, #122, lsl #12          ; =499712
	add	x11, x11, #2200
	subs	x8, x11, x12
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #0
	b	LBB0_4
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #-10001
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w8, lt
	and	w8, w8, #0x1
	mov	w9, #10001
	ands	w8, w8, #0x1
	csel	w8, w9, w9, ne
	add	w11, w8, #1
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w8, ge
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	add	w10, w8, #1
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w8, lt
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csel	w8, w8, w9, ne
	add	w8, w8, #1
	add	x12, sp, #64
	add	x11, x12, #220, lsl #12          ; =88976
	add	x11,