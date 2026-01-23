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
	mov	w9, #5584
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #1488
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x0, sp, #312
	mov	x1, #400
	bl	_bzero
	mov	x9, sp
	add	x8, sp, #24
	str	x8, [x9]
	add	x8, sp, #28
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_1
LBB0_1:
	mov	w8, #0
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	add	x9, sp, #28
	add	x8, x9, #100
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_19 Depth 2
                                        ;       Child Loop BB0_20 Depth 3
	ldrsw	x9, [sp, #28]
	mov	x8, #51
	mul	x8, x8, x9
	add	x8, x8, #200
	subs	x8, x8, #100
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldrsw	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	x8, x0
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB0_19
LBB0_5:                                 ;   in Loop: Header=BB0_19 Depth=2
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x9, x8, #100
	subs	x8, x9, x8
	cset	w8, eq
	tbnz	w8, #0, LBB0_5
	b	LBB0_6
LBB0_6:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_20 Depth 3
	add	x9, x0, #100
	subs	x8, x9, x9
	cset	w8, ls
	tbnz	w8, #0, LBB0_19
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_19 Depth=2
	ldrb	w0, [x0, #100]
	b	LBB0_20
LBB0_8:                                 ;   in Loop: Header=BB0_20 Depth=3
	add	x9, x0, #100
	mov	x8, #1
	add	x9, x9, #100
	subs	x8, x9, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_19
	b	LBB0_9
LBB0_9:                                 ;   Parent Loop BB0_1 Depth=1
                                        ;     Parent Loop BB0_19 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x9, x0, #100
	ldrb	w8, [x9]
	subs	w8, w0, w8
	cset	w8, le
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_20 Depth=3
	add	x8, sp, #312
	add	x9, x8, #100
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	b	LBB0_21
LBB0_11:
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_15
	b	LBB0_12
LBB0_12:
	mov	w8, #0
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	add	x9, sp, #312
	add	x8, x9, #100
	mul	x8, x8, x9
	subs	x8, x8, #100
	add	x0, x8, #100
	bl	_puts
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	add	x9, sp, #312
	add	x10, x9, #100
	mov	w9, #38528
	movk	w9, #152, lsl #16
	str	w9, [x10]
	add	w8, w8, #1
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_16 Depth 2
	mov	w8, #0
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_13
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_11 Depth=1
	mov	x8, x0
	mov	x9, x1
	add	x10, x9, #100
	subs	x8, x8, x10
	cset	w8, eq
	tbnz	w8, #0, LBB0_17
	b	LBB0_16
LBB0_16:                                ;   Parent Loop BB0_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x9, sp, #312
	ldr	w8, [x9, x10, lsl #2]
	add	x9, x9, x10, lsl