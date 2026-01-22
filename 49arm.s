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
	sub	sp, sp, #464
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
	stur	x8, [x29, #-104]
	add	x8, sp, #28
	str	x8, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB0_35
; %bb.1:
	mov	w21, #0                         ; =0x0
	add	x22, sp, #32
	add	x23, x22, #1
	add	x24, sp, #240
	mov	x25, #4294967296                ; =0x100000000
	sub	x26, x29, #204
	mov	x27, #-4294967296               ; =0xffffffff00000000
Lloh5:
	adrp	x20, l_.str@PAGE
Lloh6:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
	add	w21, w21, #1
	ldr	w8, [sp, #28]
	cmp	w21, w8
	b.ge	LBB0_35
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_17 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
                                        ;     Child Loop BB0_25 Depth 2
                                        ;       Child Loop BB0_27 Depth 3
                                        ;     Child Loop BB0_29 Depth 2
                                        ;     Child Loop BB0_31 Depth 2
                                        ;     Child Loop BB0_34 Depth 2
	stp	x26, x24, [sp]
Lloh7:
	adrp	x0, l_.str.1@PAGE
Lloh8:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	mov	w12, #0                         ; =0x0
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #32]
	stp	q0, q0, [sp, #64]
	stp	q0, q0, [sp, #96]
	stp	q0, q0, [sp, #128]
	stp	q0, q0, [x22, #128]
	mov	x11, #-4294967296               ; =0xffffffff00000000
	stp	q0, q0, [x22, #160]
	mov	w15, #1                         ; =0x1
	sub	x13, x29, #204
	mov	w14, #1                         ; =0x1
	str	xzr, [x22, #192]
LBB0_4:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x8, x13
	mov	x10, x15
	ldrb	w16, [x13], #1
	mov	x9, x12
	sub	x14, x14, #1
	add	x11, x11, x25
	add	x15, x15, #1
	sub	w12, w12, #1
	cmp	w16, #48
	b.eq	LBB0_4
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	neg	x12, x14
	mov	x14, x12
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w13, [x26, x14]
	add	x14, x14, #1
	add	x10, x10, #1
	cbnz	w13, LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	asr	x13, x11, #32
	sub	w11, w14, #1
	cmp	w12, w11
	csel	w11, w12, w11, lt
	add	x15, x26, x10
	mov	x14, #-3                        ; =0xfffffffffffffffd
LBB0_8:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x16, x10, x14
	add	x16, x16, #1
	cmp	x16, x13
	b.le	LBB0_11
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	ldrb	w16, [x15, x14]
	sub	x14, x14, #1
	cmp	w16, #48
	b.eq	LBB0_8
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	add	w10, w10, w14
	add	w11, w10, #2
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w11, w12
	b.le	LBB0_14
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	add	w9, w11, w9
	add	x10, sp, #32
LBB0_13:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x8], #1
	ldrb	w12, [x10]
	add	w11, w11, w12
	sub	w11, w11, #48
	strb	w11, [x10], #1
	subs	x9, x9, #1
	b.ne	LBB0_13
LBB0_14:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x11, #-4294967296               ; =0xffffffff00000000
	add	x8, sp, #240
	mov	w12, #1                         ; =0x1
	mov	w9, #1                          ; =0x1
LBB0_15:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x10, x12
	ldrb	w13, [x8], #1
	sub	x9, x9, #1
	add	x11, x11, x25
	add	x12, x12, #1
	cmp	w13, #48
	b.eq	LBB0_15
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	neg	x8, x9
	mov	x14, x8
LBB0_17:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w12, [x24, x14]
	add	x14, x14, #1
	add	x10, x10, #1
	cbnz	w12, LBB0_17
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	neg	x12, x9
	asr	x13, x11, #32
	sub	w11, w14, #1
	cmp	w8, w11
	csel	w11, w8, w11, lt
	add	x15, x24, x10
	mov	x14, #-3                        ; =0xfffffffffffffffd
LBB0_19:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x16, x10, x14
	add	x16, x16, #1
	cmp	x16, x13
	b.le	LBB0_22
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=2
	ldrb	w16, [x15, x14]
	sub	x14, x14, #1
	cmp	w16, #48
	b.eq	LBB0_19
; %bb.21:                               ;   in Loop: Header=BB0_3 Depth=1
	add	w10, w10, w14
	add	w11, w10, #2
LBB0_22:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w11, w12
	b.le	LBB0_28
; %bb.23:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x10, #0                         ; =0x0
	add	w9, w11, w9
	mov	x11, x23
	b	LBB0_25
LBB0_24:                                ;   in Loop: Header=BB0_25 Depth=2
	add	x10, x10, #1
	add	x8, x8, #1
	add	x11, x11, #1
	cmp	x10, x9
	b.eq	LBB0_28
LBB0_25:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_27 Depth 3
	ldrb	w12, [x24, x8]
	ldrb	w13, [x22, x10]
	add	w12, w12, w13
	sub	w13, w12, #48
	sxtb	w12, w13
	strb	w13, [x22, x10]
	cmp	w12, #10
	b.lt	LBB0_24
; %bb.26:                               ;   in Loop: Header=BB0_25 Depth=2
	mov	x13, x11
LBB0_27:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_25 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	sub	w12, w12, #10
	sturb	w12, [x13, #-1]
	ldrb	w12, [x13]
	add	w14, w12, #1
	sxtb	w12, w14
	strb	w14, [x13], #1
	cmp	w12, #9
	b.gt	LBB0_27
	b	LBB0_24
LBB0_28:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x8, #858993459200               ; =0xc800000000
	mov	w9, #199                        ; =0xc7
LBB0_29:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w10, [x22, x9]
	sub	x9, x9, #1
	add	x8, x8, x27
	cbz	w10, LBB0_29
; %bb.30:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x10, #0                         ; =0x0
	add	x9, x9, #1
LBB0_31:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x22, x10]
	add	x10, x10, #1
	cbz	w11, LBB0_31
; %bb.32:                               ;   in Loop: Header=BB0_3 Depth=1
	sub	x28, x10, #1
	cmp	x28, x9
	b.gt	LBB0_2
; %bb.33:                               ;   in Loop: Header=BB0_3 Depth=1
	asr	x19, x8, #32
LBB0_34:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	x8, [x22, x28]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	add	x8, x28, #1
	cmp	x28, x19
	mov	x28, x8
	b.lt	LBB0_34
	b	LBB0_2
LBB0_35:
	ldur	x8, [x29, #-104]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_37
; %bb.36:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #464
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_37:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%s %s"

.subsections_via_symbols
