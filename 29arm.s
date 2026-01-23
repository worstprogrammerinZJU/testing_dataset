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
	mov	w9, #41280                      ; =0xa140
	movk	w9, #7, lsl #16
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #122, lsl #12           ; =499712
	sub	sp, sp, #320
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
	add	x8, sp, #8
	str	x8, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #8]
	cmp	w8, #1
	b.lt	LBB0_17
; %bb.1:
	mov	w21, #0                         ; =0x0
	add	x8, sp, #24, lsl #12            ; =98304
	add	x8, x8, #1712
	sub	x23, x8, #8
	add	x8, sp, #16
	sub	x24, x8, #2
	add	x25, sp, #12
Lloh7:
	adrp	x19, l_.str@PAGE
Lloh8:
	add	x19, x19, l_.str@PAGEOFF
                                        ; implicit-def: $w26
Lloh9:
	adrp	x20, l_.str.1@PAGE
Lloh10:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w10, #-10001                    ; =0xffffd8ef
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w10, w8
	csel	w8, w26, wzr, eq
	add	w8, w8, w10
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	add	w21, w21, #1
	ldr	w8, [sp, #8]
	cmp	w21, w8
	b.ge	LBB0_17
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_16 Depth 2
	str	x25, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w10, [sp, #12]
	cmp	w10, #1
	b.lt	LBB0_7
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x27, #0                         ; =0x0
	mov	w8, #-10001                     ; =0xffffd8ef
	add	x28, sp, #16
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x22, x8
	str	x28, [sp]
	mov	x0, x19
	bl	_scanf
	ldrsh	w8, [x28], #2
	cmp	w26, w8
	csel	w9, w26, w8, gt
	cmp	w22, w8
	csel	w8, w22, w8, gt
	csel	w26, w22, w9, lt
	add	x27, x27, #1
	ldrsw	x10, [sp, #12]
	cmp	x27, x10
	b.lt	LBB0_6
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #-10001                     ; =0xffffd8ef
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w9, w10
	cmp	w10, #1
	b.lt	LBB0_11
; %bb.9:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w12, #0                         ; =0x0
	mov	w11, #-10001                    ; =0xffffd8ef
	add	x13, sp, #73, lsl #12           ; =299008
	add	x13, x13, #1008
	add	x14, sp, #16
	mov	x15, x9
LBB0_10:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsh	w16, [x14], #2
	add	w12, w12, w16
	cmp	w12, w11
	csel	w11, w12, w11, gt
	bic	w12, w12, w12, asr #31
	str	w11, [x13], #4
	subs	x15, x15, #1
	b.ne	LBB0_10
LBB0_11:                                ;   in Loop: Header=BB0_4 Depth=1
	add	x11, sp, #24, lsl #12           ; =98304
	add	x11, x11, #1712
	add	x11, x11, w10, sxtw #2
	stur	wzr, [x11, #-4]
	cmp	w10, #1
	b.le	LBB0_14
; %bb.12:                               ;   in Loop: Header=BB0_4 Depth=1
	mov	w13, #0                         ; =0x0
	mov	w11, #-10001                    ; =0xffffd8ef
	mov	x12, x9
LBB0_13:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsh	w14, [x24, x12, lsl #1]
	add	w13, w13, w14
	cmp	w13, w11
	csel	w11, w13, w11, gt
	str	w11, [x23, x12, lsl #2]
	sub	x14, x12, #1
	bic	w13, w13, w13, asr #31
	cmp	x12, #2
	mov	x12, x14
	b.gt	LBB0_13
LBB0_14:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w10, #1
	b.lt	LBB0_2
; %bb.15:                               ;   in Loop: Header=BB0_4 Depth=1
	mov	w10, #-10001                    ; =0xffffd8ef
	add	x11, sp, #24, lsl #12           ; =98304
	add	x11, x11, #1712
	add	x12, sp, #73, lsl #12           ; =299008
	add	x12, x12, #1008
LBB0_16:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w13, [x12], #4
	ldr	w14, [x11], #4
	add	w13, w14, w13
	cmp	w13, w10
	csel	w10, w13, w10, gt
	subs	x9, x9, #1
	b.ne	LBB0_16
	b	LBB0_3
LBB0_17:
	ldur	x8, [x29, #-96]
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
	add	sp, sp, #122, lsl #12           ; =499712
	add	sp, sp, #320
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_19:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
