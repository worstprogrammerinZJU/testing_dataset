	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	mov	w9, #40032                      ; =0x9c60
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #3168
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	add	x8, sp, #20
	str	x8, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.lt	LBB0_6
; %bb.1:
	mov	x20, #0                         ; =0x0
	add	x21, sp, #24
Lloh7:
	adrp	x19, l_.str@PAGE
Lloh8:
	add	x19, x19, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x20, x20, #1
	ldrsw	x8, [sp, #20]
	add	x21, x21, #400
	cmp	x20, x8
	b.ge	LBB0_6
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x22, #0                         ; =0x0
	mov	x23, x21
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x23, [sp]
	mov	x0, x19
	bl	_scanf
	add	x22, x22, #1
	ldrsw	x8, [sp, #20]
	add	x23, x23, #4
	cmp	x22, x8
	b.lt	LBB0_5
	b	LBB0_2
LBB0_6:
	cmp	w8, #1
	b.lt	LBB0_16
; %bb.7:
	mov	w9, #0                          ; =0x0
	mov	w10, #0                         ; =0x0
	mov	w11, #1                         ; =0x1
	mov	x12, x8
	mov	w13, w8
	b	LBB0_9
LBB0_8:                                 ;   in Loop: Header=BB0_9 Depth=1
	add	w10, w10, #1
	add	x11, x11, #1
	sub	w12, w12, #1
	cmp	w10, w8
	b.eq	LBB0_17
LBB0_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_11 Depth 2
                                        ;       Child Loop BB0_12 Depth 3
                                        ;         Child Loop BB0_13 Depth 4
	cmp	w8, w10
	b.le	LBB0_8
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=1
	mov	x14, #0                         ; =0x0
	mov	w15, w12
	add	x16, sp, #24
LBB0_11:                                ;   Parent Loop BB0_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_12 Depth 3
                                        ;         Child Loop BB0_13 Depth 4
	mov	x17, #0                         ; =0x0
	mov	w0, #0                          ; =0x0
	mov	x1, x16
LBB0_12:                                ;   Parent Loop BB0_9 Depth=1
                                        ;     Parent Loop BB0_11 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB0_13 Depth 4
	mov	x2, x11
	mov	x3, x1
LBB0_13:                                ;   Parent Loop BB0_9 Depth=1
                                        ;     Parent Loop BB0_11 Depth=2
                                        ;       Parent Loop BB0_12 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	ldr	w4, [x3]
	add	w0, w4, w0
	add	x3, x3, #400
	subs	x2, x2, #1
	b.ne	LBB0_13
; %bb.14:                               ;   in Loop: Header=BB0_12 Depth=3
	cmp	w0, w9
	csel	w9, w0, w9, gt
	bic	w0, w0, w0, asr #31
	add	x17, x17, #1
	add	x1, x1, #4
	cmp	x17, x13
	b.ne	LBB0_12
; %bb.15:                               ;   in Loop: Header=BB0_11 Depth=2
	add	x14, x14, #1
	add	x16, x16, #400
	cmp	x14, x15
	b.ne	LBB0_11
	b	LBB0_8
LBB0_16:
	mov	w9, #0                          ; =0x0
LBB0_17:
	str	x9, [sp]
Lloh9:
	adrp	x0, l_.str.1@PAGE
Lloh10:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	x8, [x29, #-56]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_19
; %bb.18:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3168
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB0_19:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
