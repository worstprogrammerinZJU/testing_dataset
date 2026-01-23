.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	adrp	x8, _n@GOTPAGE
	ldr	x8, [x8, _n@GOTPAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x1, x8, #4
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_8
	b	LBB0_1
LBB0_1:
	add	x8, sp, #28
	add	x8, x8, #4
	str	x8, [sp]                        ; 8-byte Folded Spill
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [sp, #28]
	add	w9, w8, #1
	str	w9, [sp, #28]
	mov	w9, #2
	str	w9, [sp, #28]
	adrp	x9, _min@PAGE
	ldr	w9, [x9, _min@PAGEOFF]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_5
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	add	x1, sp, #28
	add	x2, x1, #4
	mov	x0, #0
	bl	_scanf
	ldr	w9, [sp, #28]
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	mov	w8, #2
	str	w8, [sp, #28]
	adrp	x8, _d@GOTPAGE
	ldr	x8, [x8, _d@GOTPAGEOFF]
	ldr	w8, [x8, #4]
	subs	w8, w8, #2500, lsl #12          ; =100000
	cset	w8, ge
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x9, _d@GOTPAGE
	ldr	x9, [x9, _d@GOTPAGEOFF]
	ldr	w8, [x9, #4]
	add	w8, w8, #1
	stur	w8, [x9, #4]
	mov	w0, #1
	bl	_bellman_ford
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x0
	str	x8, [x9]
	mov	w0, #0
	bl	_printf
	mov	w0, #0
	add	sp, sp, #32
	ret
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w0, #0
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_7
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_7
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_7
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_7
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_7
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_7
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_7
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_7
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_7
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x2, #-4]
	mov	w9, #31073
	movk	w9, #65279, lsl #16
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_7
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_1 Depth=1