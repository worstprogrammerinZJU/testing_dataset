	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
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
	add	x8, sp, #32
	add	x9, sp, #36
	stp	x9, x8, [sp, #16]
	add	x8, sp, #40
	add	x9, sp, #44
	stp	x9, x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldp	w10, w11, [sp, #40]
	ldp	w8, w9, [sp, #32]
	cmn	w11, #1
	ccmn	w10, #1, #0, eq
	ccmn	w9, #1, #0, eq
	ccmn	w8, #1, #0, eq
	b.eq	LBB0_6
; %bb.1:
	mov	w25, #1                         ; =0x1
	mov	w21, #9363                      ; =0x2493
	movk	w21, #37449, lsl #16
	mov	w22, #28                        ; =0x1c
	mov	w23, #14421                     ; =0x3855
	mov	w24, #33761                     ; =0x83e1
	movk	w24, #15887, lsl #16
	mov	w26, #1288                      ; =0x508
	mov	w27, #4453                      ; =0x1165
	movk	w27, #12631, lsl #16
	mov	w28, #21252                     ; =0x5304
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x20, l_.str@PAGE
Lloh5:
	add	x20, x20, l_.str@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	w12, #17097                     ; =0x42c9
	movk	w12, #45590, lsl #16
	smull	x12, w11, w12
	lsr	x12, x12, #32
	add	w12, w12, w11
	asr	w13, w12, #4
	add	w12, w13, w12, lsr #31
	mov	w13, #23                        ; =0x17
	msub	w11, w12, w13, w11
	mov	w12, #5544                      ; =0x15a8
	mul	w11, w11, w12
	smull	x12, w10, w21
	lsr	x12, x12, #32
	add	w12, w12, w10
	asr	w13, w12, #4
	add	w12, w13, w12, lsr #31
	msub	w10, w12, w22, w10
	madd	w10, w10, w23, w11
	smull	x11, w9, w24
	lsr	x12, x11, #63
	lsr	x11, x11, #35
	add	w11, w11, w12
	add	w11, w11, w11, lsl #5
	sub	w9, w9, w11
	madd	w9, w9, w26, w10
	smull	x10, w9, w27
	lsr	x11, x10, #63
	asr	x10, x10, #44
	add	w10, w10, w11
	msub	w9, w10, w28, w9
	sub	w8, w9, w8
	add	w9, w8, w28
	cmp	w8, #1
	csel	w8, w9, w8, lt
	stp	x25, x8, [sp]
	mov	x0, x19
	bl	_printf
	add	w25, w25, #1
	add	x8, sp, #32
	str	x8, [sp, #24]
	add	x8, sp, #36
	str	x8, [sp, #16]
	add	x8, sp, #40
	str	x8, [sp, #8]
	add	x8, sp, #44
	str	x8, [sp]
	mov	x0, x20
	bl	_scanf
	ldp	w10, w11, [sp, #40]
	ldp	w8, w9, [sp, #32]
	cmn	w11, #1
	b.ne	LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	cmn	w10, #1
	b.ne	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	cmn	w9, #1
	b.ne	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	cmn	w8, #1
	b.ne	LBB0_2
LBB0_6:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d %d %d %d"

l_.str.1:                               ; @.str.1
	.asciz	"Case %d: the next triple peak occurs in %d days.\n"

.subsections_via_symbols
