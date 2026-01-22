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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp, #40]
	stp	xzr, xzr, [sp, #16]
	stur	xzr, [sp, #29]
	add	x22, sp, #12
	str	x22, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_20
; %bb.1:
	add	x23, sp, #16
	mov	w24, #1                         ; =0x1
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh7:
	adrp	x20, l_.str@PAGE
Lloh8:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	str	x22, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_20
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
	ldr	w9, [sp, #12]
	cbz	w9, LBB0_12
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x8, #0                          ; =0x0
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w10, w9, w9, lsr #31
	and	w11, w10, #0xfe
	sub	w11, w9, w11
	add	w12, w9, #1
	asr	w9, w10, #1
	strb	w11, [x23, x8]
	add	x8, x8, #1
	cmp	w12, #3
	b.hs	LBB0_5
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	str	w9, [sp, #12]
	mov	w25, w8
	cbz	x25, LBB0_13
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	x27, #0                         ; =0x0
	mov	w26, #0                         ; =0x0
	b	LBB0_9
LBB0_8:                                 ;   in Loop: Header=BB0_9 Depth=2
	add	x27, x27, #1
	cmp	x25, x27
	b.eq	LBB0_11
LBB0_9:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w8, [x23, x27]
	cmp	w8, #1
	b.ne	LBB0_8
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=2
	add	w26, w26, #1
	add	x8, x23, x27
	ldrb	w8, [x8, #1]
	cbnz	w8, LBB0_8
	b	LBB0_14
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x27, x25
	b	LBB0_14
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x25, #0                         ; =0x0
	cbnz	x25, LBB0_7
LBB0_13:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w27, #0                         ; =0x0
	mov	w26, #0                         ; =0x0
LBB0_14:                                ;   in Loop: Header=BB0_3 Depth=1
	str	w27, [sp, #12]
	mov	w8, w27
	add	x28, x8, #1
	strb	w24, [x23, x28]
	cmp	w26, #2
	b.lt	LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_3 Depth=1
	sub	w21, w26, #1
	add	x0, sp, #16
	mov	w1, #1                          ; =0x1
	mov	x2, x21
	bl	_memset
	cmp	w21, w27
	b.ls	LBB0_17
	b	LBB0_18
LBB0_16:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w21, #0                         ; =0x0
	cmp	w21, w27
	b.hi	LBB0_18
LBB0_17:                                ;   in Loop: Header=BB0_3 Depth=1
	add	x0, x23, w21, uxtw
	cmp	w26, #1
	csinc	w8, w26, wzr, gt
	sub	w8, w28, w8
	add	x1, x8, #1
	bl	_bzero
LBB0_18:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #0                          ; =0x0
	tbnz	w25, #31, LBB0_2
LBB0_19:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w9, [x23, x25]
	add	w8, w9, w8, lsl #1
	strb	wzr, [x23, x25]
	sub	x9, x25, #1
	cmp	x25, #0
	mov	x25, x9
	b.gt	LBB0_19
	b	LBB0_2
LBB0_20:
	ldr	x8, [sp, #40]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_22
; %bb.21:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB0_22:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
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
