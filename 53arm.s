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
	sub	sp, sp, #720
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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	add	x19, sp, #28
	add	x0, sp, #28
	mov	w1, #676                        ; =0x2a4
	bl	_bzero
	mov	x8, #1                          ; =0x1
	movk	x8, #2, lsl #32
	stur	x8, [sp, #28]
	mov	w23, #3                         ; =0x3
	str	w23, [sp, #36]
	add	x8, x19, #12
	mov	w9, #5                          ; =0x5
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	w10, w9, #2
	cmp	w9, #998
	mov	x9, x10
	b.hs	LBB0_8
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	ldr	w11, [sp, #36]
	lsl	w10, w11, #1
	cmp	w10, w9
	b.ge	LBB0_6
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	sdiv	w12, w9, w11
	msub	w12, w12, w11, w9
	mov	x11, x8
	cbz	w12, LBB0_6
LBB0_4:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w12, [x11], #4
	lsl	w10, w12, #1
	cmp	w10, w9
	b.ge	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=2
	sdiv	w13, w9, w12
	msub	w12, w13, w12, w9
	cbnz	w12, LBB0_4
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	cmp	w10, w9
	b.le	LBB0_1
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
	str	w9, [x19, w23, sxtw #2]
	add	w23, w23, #1
	b	LBB0_1
LBB0_8:
	add	x8, sp, #20
	add	x25, sp, #24
	stp	x25, x8, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_23
; %bb.9:
	sub	w26, w23, #1
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
	add	x27, sp, #28
Lloh7:
	adrp	x20, l_.str.2@PAGE
Lloh8:
	add	x20, x20, l_.str.2@PAGEOFF
Lloh9:
	adrp	x21, l_str@PAGE
Lloh10:
	add	x21, x21, l_str@PAGEOFF
Lloh11:
	adrp	x22, l_.str@PAGE
Lloh12:
	add	x22, x22, l_.str@PAGEOFF
	b	LBB0_11
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=1
	mov	x0, x21
	bl	_puts
	add	x8, sp, #20
	stp	x25, x8, [sp]
	mov	x0, x22
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_23
LBB0_11:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_14 Depth 2
                                        ;     Child Loop BB0_21 Depth 2
	ldp	w9, w8, [sp, #20]
	stp	x8, x9, [sp]
	mov	x0, x19
	bl	_printf
	cmp	w23, #1
	b.le	LBB0_17
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=1
	mov	w8, #0                          ; =0x0
	ldr	w9, [sp, #24]
	mov	x10, x26
	b	LBB0_14
LBB0_13:                                ;   in Loop: Header=BB0_14 Depth=2
	sub	w10, w11, #1
	cmp	w8, w10
	b.ge	LBB0_19
LBB0_14:                                ;   Parent Loop BB0_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w11, w10, w8
	lsr	w11, w11, #1
	ldr	w12, [x27, w11, uxtw #2]
	cmp	w12, w9
	b.gt	LBB0_13
; %bb.15:                               ;   in Loop: Header=BB0_14 Depth=2
	b.ge	LBB0_18
; %bb.16:                               ;   in Loop: Header=BB0_14 Depth=2
	add	w8, w11, #1
	cmp	w8, w10
	b.lt	LBB0_14
	b	LBB0_19
LBB0_17:                                ;   in Loop: Header=BB0_11 Depth=1
	mov	w8, #0                          ; =0x0
	b	LBB0_19
LBB0_18:                                ;   in Loop: Header=BB0_11 Depth=1
	mov	x8, x11
LBB0_19:                                ;   in Loop: Header=BB0_11 Depth=1
	ldr	w9, [x27, w8, uxtw #2]
	ldp	w10, w11, [sp, #20]
	cmp	w9, w11
	cset	w9, gt
	lsl	w10, w10, #1
	sub	w8, w8, w9
	add	w8, w8, #1
	and	w9, w8, #0x1
	sub	w9, w10, w9
	sub	w8, w8, w9
	str	w9, [sp, #20]
	add	w10, w8, w8, lsr #31
	asr	w10, w10, #1
	cmn	w8, #1
	csel	w28, wzr, w10, lt
	cmp	w9, #1
	b.lt	LBB0_10
; %bb.20:                               ;   in Loop: Header=BB0_11 Depth=1
	sxtw	x24, w28
LBB0_21:                                ;   Parent Loop BB0_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [x27, x24, lsl #2]
	ldr	w9, [sp, #24]
	cmp	w8, w9
	b.gt	LBB0_10
; %bb.22:                               ;   in Loop: Header=BB0_21 Depth=2
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	add	x24, x24, #1
	ldrsw	x8, [sp, #20]
	add	x8, x8, w28, sxtw
	cmp	x24, x8
	b.lt	LBB0_21
	b	LBB0_10
LBB0_23:
	ldur	x8, [x29, #-96]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_25
; %bb.24:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #720
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_25:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d:"

l_.str.2:                               ; @.str.2
	.asciz	" %d"

l_str:                                  ; @str
	.asciz	"\n"

.subsections_via_symbols
