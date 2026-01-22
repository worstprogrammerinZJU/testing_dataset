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
	sub	sp, sp, #832
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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x19, sp, #24
	add	x0, sp, #24
	mov	w1, #800                        ; =0x320
	bl	_bzero
	mov	x8, #0                          ; =0x0
	mov	x9, #1                          ; =0x1
	movk	x9, #2, lsl #32
	mov	x10, #4                         ; =0x4
	movk	x10, #6, lsl #32
	stp	x9, x10, [sp, #24]
	mov	w11, #6                         ; =0x6
	mov	w9, #60437                      ; =0xec15
	movk	w9, #2091, lsl #16
	mov	w10, #2005                      ; =0x7d5
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x12, x19, x8
	ldp	w14, w13, [x12]
	add	w11, w13, w11
	add	w11, w11, w14
	smull	x13, w11, w9
	lsr	x14, x13, #63
	asr	x13, x13, #38
	add	w13, w13, w14
	msub	w11, w13, w10, w11
	str	w11, [x12, #16]
	add	x8, x8, #4
	cmp	x8, #784
	b.ne	LBB0_1
; %bb.2:
	add	x21, sp, #20
	str	x21, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_5
; %bb.3:
	mov	w22, #34079                     ; =0x851f
	movk	w22, #20971, lsl #16
	mov	w23, #200                       ; =0xc8
	add	x24, sp, #24
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh7:
	adrp	x20, l_.str@PAGE
Lloh8:
	add	x20, x20, l_.str@PAGEOFF
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	smull	x9, w8, w22
	lsr	x10, x9, #63
	asr	x9, x9, #38
	add	w9, w9, w10
	msub	w8, w9, w23, w8
	ldr	w8, [x24, w8, sxtw #2]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	cmn	w0, #1
	b.ne	LBB0_4
LBB0_5:
	ldur	x8, [x29, #-72]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_7
; %bb.6:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #832
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_7:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
