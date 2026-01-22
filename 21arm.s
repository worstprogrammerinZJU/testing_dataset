	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
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
	.cfi_offset w27, -72
	.cfi_offset w28, -80
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x21, sp, #28
	add	x8, sp, #24
	stp	x8, x21, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #24]
	cmp	w8, #2
	b.lt	LBB0_3
; %bb.1:
	sub	w22, w8, #1
	mov	w20, #1                         ; =0x1
	add	x23, sp, #20
	mov	w24, #1                         ; =0x1
Lloh7:
	adrp	x19, l_.str.1@PAGE
Lloh8:
	add	x19, x19, l_.str.1@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	str	x23, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	w11, w8, [sp, #20]
	ldr	w9, [sp, #28]
	cmp	w11, w9
	csel	w9, w20, w22, le
	cset	w10, gt
	cinc	w20, w20, le
	sub	w22, w22, w10
	str	w11, [x21, w9, sxtw #2]
	add	w24, w24, #1
	cmp	w24, w8
	b.lt	LBB0_2
	b	LBB0_4
LBB0_3:
	mov	w20, #1                         ; =0x1
LBB0_4:
	add	w9, w8, w8, lsr #31
	asr	w9, w9, #1
	add	w10, w9, #1
	str	w10, [sp, #20]
	cmp	w20, w10
	b.ne	LBB0_6
; %bb.5:
	add	x8, sp, #28
	b	LBB0_25
LBB0_6:
	b.le	LBB0_14
; %bb.7:
	mov	x8, x20
	sxtw	x8, w8
	sub	w9, w20, w9
	mov	w12, w20
	add	x10, sp, #28
	add	x11, x10, #8
	sub	x12, x12, #2
	mov	w13, #1                         ; =0x1
	b	LBB0_9
LBB0_8:                                 ;   in Loop: Header=BB0_9 Depth=1
	add	x11, x11, #4
	sub	x12, x12, #1
	cmp	x13, x9
	b.eq	LBB0_22
LBB0_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_12 Depth 2
	mov	x14, x13
	add	x13, x13, #1
	cmp	x13, x8
	b.ge	LBB0_8
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=1
	mov	x15, x12
	mov	x16, x11
	b	LBB0_12
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=2
	add	x16, x16, #4
	subs	x15, x15, #1
	b.eq	LBB0_8
LBB0_12:                                ;   Parent Loop BB0_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w17, [x10, x14, lsl #2]
	ldr	w0, [x16]
	cmp	w17, w0
	b.ge	LBB0_11
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=2
	str	w0, [x10, x14, lsl #2]
	str	w17, [x16]
	b	LBB0_11
LBB0_14:
	cmp	w20, w9
	b.gt	LBB0_24
; %bb.15:
	sxtw	x20, w20
	sxtw	x8, w8
	add	x9, sp, #28
	sxtw	x10, w10
	b	LBB0_17
LBB0_16:                                ;   in Loop: Header=BB0_17 Depth=1
	cmp	x20, x10
	b.eq	LBB0_23
LBB0_17:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_20 Depth 2
	mov	x11, x20
	add	x20, x20, #1
	cmp	x20, x8
	b.ge	LBB0_16
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=1
	mov	x12, x20
	b	LBB0_20
LBB0_19:                                ;   in Loop: Header=BB0_20 Depth=2
	add	x12, x12, #1
	cmp	x12, x8
	b.ge	LBB0_16
LBB0_20:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w13, [x9, x11, lsl #2]
	ldr	w14, [x9, x12, lsl #2]
	cmp	w13, w14
	b.le	LBB0_19
; %bb.21:                               ;   in Loop: Header=BB0_20 Depth=2
	str	w14, [x9, x11, lsl #2]
	str	w13, [x9, x12, lsl #2]
	b	LBB0_19
LBB0_22:
	add	x8, sp, #28
	add	x8, x8, w14, uxtw #2
	b	LBB0_25
LBB0_23:
                                        ; kill: def $w20 killed $w20 killed $x20 def $x20
LBB0_24:
	add	x8, sp, #28
	add	x8, x8, w20, sxtw #2
	sub	x8, x8, #4
LBB0_25:
	ldr	w8, [x8]
	str	x8, [sp]
Lloh9:
	adrp	x0, l_.str.2@PAGE
Lloh10:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	x8, [x29, #-72]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_27
; %bb.26:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3168
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_27:
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
	.asciz	"%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
