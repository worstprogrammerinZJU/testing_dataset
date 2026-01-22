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
	add	x19, sp, #24
	add	x0, sp, #24
	mov	w1, #40000                      ; =0x9c40
	bl	_bzero
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	mov	w9, #52429                      ; =0xcccd
	movk	w9, #52428, lsl #16
	mov	w10, #39320                     ; =0x9998
	movk	w10, #6553, lsl #16
	mov	w11, #26215                     ; =0x6667
	movk	w11, #26214, lsl #16
	mov	w12, #39321                     ; =0x9999
	movk	w12, #6553, lsl #16
	mov	w13, #46473                     ; =0xb589
	movk	w13, #5368, lsl #16
	mov	w14, #34464                     ; =0x86a0
	movk	w14, #1, lsl #16
	mov	w15, #10000                     ; =0x2710
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	smull	x17, w16, w13
	lsr	x0, x17, #63
	asr	x17, x17, #45
	add	w17, w17, w0
	msub	w16, w17, w14, w16
	str	w16, [x19, x8, lsl #2]
	add	x8, x8, #1
	cmp	x8, x15
	b.eq	LBB0_4
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	add	x16, x19, x8, lsl #2
	ldur	w16, [x16, #-4]
	mul	w16, w16, w8
	madd	w17, w16, w9, w10
	ror	w17, w17, #1
	cmp	w17, w10
	b.hi	LBB0_1
LBB0_3:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	smull	x16, w16, w11
	lsr	x17, x16, #63
	asr	x16, x16, #34
	add	w16, w16, w17
	madd	w17, w16, w9, w10
	ror	w17, w17, #1
	cmp	w17, w12
	b.lo	LBB0_3
	b	LBB0_1
LBB0_4:
	mov	w8, #10000                      ; =0x2710
	str	w8, [sp, #20]
	add	x21, sp, #20
	str	x21, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_7
; %bb.5:
	add	x22, sp, #24
	mov	w23, #26215                     ; =0x6667
	movk	w23, #26214, lsl #16
	mov	w24, #10                        ; =0xa
Lloh7:
	adrp	x19, l_.str.1@PAGE
Lloh8:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh9:
	adrp	x20, l_.str@PAGE
Lloh10:
	add	x20, x20, l_.str@PAGEOFF
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	ldrsw	x9, [x22, x8, lsl #2]
	smull	x10, w9, w23
	lsr	x11, x10, #63
	asr	x10, x10, #34
	add	w10, w10, w11
	msub	w9, w10, w24, w9
	stp	x8, x9, [sp]
	mov	x0, x19
	bl	_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	cmn	w0, #1
	b.ne	LBB0_6
LBB0_7:
	ldur	x8, [x29, #-72]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_9
; %bb.8:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3168
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_9:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh5, Lloh6
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
	.asciz	"%5d -> %d\n"

.subsections_via_symbols
