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
	mov	w9, #40064
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #3200
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #56
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #56]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_12
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	add	w8, w0, #1
	ldr	w9, [sp, #56]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
	mov	x9, sp
	add	x8, sp, #60
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #60]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_5
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w8, #1
	mov	w9, #2
	ands	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #3660
	add	x8, x8, #2, lsl #12             ; =8192
	add	x8, x8, #1800
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldrsh	x10, [x8]
	add	x9, sp, #64
	mov	x8, x9
	add	x10, x8, x10, lsl #1
	mov	w8, #1
	strh	w8, [x10]
	ldrsw	x8, [sp, #60]
	add	x9, x9, x8, lsl #1
	subs	x8, x9, x8
	cset	w8, lt
	and	w10, w8, #0x1
	mov	x8, #1
	mov	x9, x8
	ands	w10, w10, #0x1
	csel	x8, x8, x9, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	subs	w8, w0, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	w8, w0, #1
	mov	w1, #0
	mov	x3, #1
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=2
	add	x8, x0, #1
	subs	x8, x8, x8
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #3660
	add	x8, x8, #2, lsl #12             ; =8192
	add	x8, x8, #1800
	ldrsh	x9, [x8]
	mov	x8, x9
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_8 Depth=2
	add	w11, w0, #1
	add	x9, sp, #64
	ldrsh	x12, [x9, #2096]
	add	x8, sp, #4, lsl #12             ; =16384
	add	x8, x8, #3660
	add	x8, x8, x12, lsl #1
	strh	w11, [x8]
	ldrsh	x10, [x8]
	mov	x8, x9
	add	x8, x8, x10, lsl #1
	ldrh	w8, [x8]
	strh	w11, [x8]
	b	LBB0_10
LBB0_10:
	ldur	x9, [x29, #-24]
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
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3200
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols

