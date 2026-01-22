	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	mov	w9, #4144                       ; =0x1030
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	add	x8, sp, #28
	str	x8, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB0_26
; %bb.1:
	add	x23, sp, #32
	sub	x24, x23, #8
	mov	w25, #1                         ; =0x1
	add	x27, sp, #24
Lloh7:
	adrp	x19, l_.str.1@PAGE
Lloh8:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh9:
	adrp	x20, l_.str@PAGE
Lloh10:
	add	x20, x20, l_.str@PAGEOFF
Lloh11:
	adrp	x21, l_.str.2@PAGE
Lloh12:
	add	x21, x21, l_.str.2@PAGEOFF
Lloh13:
	adrp	x22, l_.str.3@PAGE
Lloh14:
	add	x22, x22, l_.str.3@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x28, #0                         ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [x23, w28, uxtw #2]
	str	x8, [sp]
	mov	x0, x22
	bl	_printf
	add	w8, w25, #1
	ldr	w9, [sp, #28]
	cmp	w25, w9
	mov	x25, x8
	b.ge	LBB0_26
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;       Child Loop BB0_11 Depth 3
                                        ;       Child Loop BB0_16 Depth 3
                                        ;       Child Loop BB0_22 Depth 3
                                        ;     Child Loop BB0_25 Depth 2
	add	x8, sp, #20
	stp	x27, x8, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_7
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x28, #0                         ; =0x0
	add	x26, sp, #32
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x26, [sp]
	mov	x0, x20
	bl	_scanf
	add	x28, x28, #1
	ldrsw	x8, [sp, #24]
	add	x26, x26, #4
	cmp	x28, x8
	b.lt	LBB0_6
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	w9, [sp, #20]
	cmp	w9, #1
	b.lt	LBB0_23
; %bb.8:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w15, w8
	subs	w10, w8, #1
	csinc	w11, w8, wzr, lt
	sub	w12, w11, #1
	and	w13, w8, w8, asr #31
	sub	w13, w13, #1
	add	x14, x24, w8, uxtw #2
	sub	x15, x15, #1
	mov	w16, #1                         ; =0x1
	b	LBB0_10
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=2
	add	w17, w16, #1
	cmp	w16, w9
	mov	x16, x17
	b.eq	LBB0_23
LBB0_10:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_11 Depth 3
                                        ;       Child Loop BB0_16 Depth 3
                                        ;       Child Loop BB0_22 Depth 3
	mov	x0, x15
	mov	x17, x8
	mov	x1, x14
LBB0_11:                                ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cmp	w17, #2
	b.lt	LBB0_14
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=3
	ldr	w2, [x1], #-4
	ldr	w3, [x23, w0, uxtw #2]
	sub	w17, w17, #1
	sub	x0, x0, #1
	cmp	w2, w3
	b.ge	LBB0_11
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=2
	add	w0, w17, #1
	cbnz	w17, LBB0_15
	b	LBB0_20
LBB0_14:                                ;   in Loop: Header=BB0_10 Depth=2
	mov	x0, x11
	mov	x17, x12
	cbz	w17, LBB0_20
LBB0_15:                                ;   in Loop: Header=BB0_10 Depth=2
	sxtw	x1, w0
	sub	x1, x1, #2
	mov	x3, x15
	mov	x2, x8
LBB0_16:                                ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	subs	w2, w2, #1
	b.lt	LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_16 Depth=3
	ldr	w4, [x23, x1, lsl #2]
	ldr	w5, [x23, w3, uxtw #2]
	sub	x3, x3, #1
	cmp	w4, w5
	b.ge	LBB0_16
	b	LBB0_19
LBB0_18:                                ;   in Loop: Header=BB0_10 Depth=2
	mov	x2, x13
LBB0_19:                                ;   in Loop: Header=BB0_10 Depth=2
	ldr	w3, [x23, x1, lsl #2]
	ldr	w4, [x23, w2, sxtw #2]
	str	w4, [x23, x1, lsl #2]
	str	w3, [x23, w2, sxtw #2]
LBB0_20:                                ;   in Loop: Header=BB0_10 Depth=2
	add	w1, w17, w8
	add	w1, w1, w1, lsr #31
	asr	w1, w1, #1
	cmp	w0, w1
	b.gt	LBB0_9
; %bb.21:                               ;   in Loop: Header=BB0_10 Depth=2
	sxtw	x17, w17
	sxtw	x0, w1
	mov	x1, x10
LBB0_22:                                ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w2, [x23, x17, lsl #2]
	ldr	w3, [x23, w1, sxtw #2]
	str	w3, [x23, x17, lsl #2]
	str	w2, [x23, w1, sxtw #2]
	add	x17, x17, #1
	sub	w1, w1, #1
	cmp	x17, x0
	b.lt	LBB0_22
	b	LBB0_9
LBB0_23:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.le	LBB0_2
; %bb.24:                               ;   in Loop: Header=BB0_4 Depth=1
	mov	x28, #0                         ; =0x0
LBB0_25:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [x23, x28, lsl #2]
	str	x8, [sp]
	mov	x0, x21
	bl	_printf
	add	x28, x28, #1
	ldrsw	x8, [sp, #24]
	sub	x8, x8, #1
	cmp	x28, x8
	b.lt	LBB0_25
	b	LBB0_3
LBB0_26:
	ldur	x8, [x29, #-96]
Lloh15:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh16:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh17:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_28
; %bb.27:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #1, lsl #12             ; =4096
	add	sp, sp, #48
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_28:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh15, Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d"

l_.str.2:                               ; @.str.2
	.asciz	"%d "

l_.str.3:                               ; @.str.3
	.asciz	"%d\n"

.subsections_via_symbols
