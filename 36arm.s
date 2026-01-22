	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #256
	stp	x24, x23, [sp, #192]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #208]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #224]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #240]            ; 16-byte Folded Spill
	add	x29, sp, #240
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, #0                         ; =0x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	strb	wzr, [sp, #96]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #64]
	stp	q0, q0, [sp, #32]
	str	q0, [sp, #16]
	add	x21, sp, #15
Lloh3:
	adrp	x19, l_.str@PAGE
Lloh4:
	add	x19, x19, l_.str@PAGEOFF
	sub	x22, x29, #97
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	str	x21, [sp]
	mov	x0, x19
	bl	_scanf
	ldrb	w8, [sp, #15]
	sub	w9, w8, #58
	and	w9, w9, #0xff
	cmp	w9, #246
	b.lo	LBB0_3
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	sub	w8, w8, #48
	strb	w8, [x22, x20]
	add	x20, x20, #1
	cmp	x20, #41
	b.ne	LBB0_1
LBB0_3:
	mov	x21, #0                         ; =0x0
	add	x22, sp, #15
	add	x23, sp, #102
Lloh5:
	adrp	x19, l_.str@PAGE
Lloh6:
	add	x19, x19, l_.str@PAGEOFF
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldrb	w8, [sp, #15]
	sub	w9, w8, #58
	and	w9, w9, #0xff
	cmp	w9, #246
	b.lo	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	sub	w8, w8, #48
	strb	w8, [x23, x21]
	add	x21, x21, #1
	cmp	x21, #41
	b.ne	LBB0_4
LBB0_6:
	subs	w8, w20, #1
	b.lt	LBB0_15
; %bb.7:
	mov	x9, #0                          ; =0x0
	mov	w10, w21
	mov	w11, w20
	add	x12, sp, #16
	orr	x13, x12, #0x1
	sub	x14, x29, #97
	add	x15, sp, #102
	mov	w16, #205                       ; =0xcd
	mov	w17, #10                        ; =0xa
	mov	x0, x10
	b	LBB0_9
LBB0_8:                                 ;   in Loop: Header=BB0_9 Depth=1
	sub	x8, x8, #1
	add	x9, x9, #1
	add	x0, x0, #1
	add	x13, x13, #1
	cmp	x9, x11
	b.eq	LBB0_15
LBB0_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_12 Depth 2
                                        ;       Child Loop BB0_14 Depth 3
	cmp	w21, #1
	b.lt	LBB0_8
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=1
	ldrb	w1, [x14, x8]
	mov	x2, x13
	mov	x3, x10
	mov	x4, x9
	b	LBB0_12
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=2
	add	x4, x4, #1
	add	x2, x2, #1
	cmp	x4, x0
	b.eq	LBB0_8
LBB0_12:                                ;   Parent Loop BB0_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_14 Depth 3
	sub	x3, x3, #1
	ldrb	w5, [x15, x3]
	ldrb	w6, [x12, x4]
	madd	w6, w5, w1, w6
	sxtb	w5, w6
	strb	w6, [x12, x4]
	cmp	w5, #10
	b.lt	LBB0_11
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=2
	mov	x6, x2
LBB0_14:                                ;   Parent Loop BB0_9 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	and	w7, w5, #0xff
	mul	w7, w7, w16
	lsr	w7, w7, #11
	ldrb	w19, [x6]
	add	w19, w19, w7
	strb	w19, [x6]
	msub	w5, w7, w17, w5
	sturb	w5, [x6, #-1]
	sxtb	w5, w19
	add	x6, x6, #1
	cmp	w5, #9
	b.gt	LBB0_14
	b	LBB0_11
LBB0_15:
	add	w10, w21, w20
	add	x9, sp, #16
LBB0_16:                                ; =>This Inner Loop Header: Depth=1
	subs	x8, x10, #1
	b.lt	LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_16 Depth=1
	ldrb	w11, [x9, x10]
	mov	x10, x8
	cbz	w11, LBB0_16
LBB0_18:
	adds	x9, x8, #1
	b.mi	LBB0_21
; %bb.19:
	add	x20, x8, #2
	add	x8, sp, #16
	add	x21, x8, w9, uxtw
Lloh7:
	adrp	x19, l_.str.1@PAGE
Lloh8:
	add	x19, x19, l_.str.1@PAGEOFF
LBB0_20:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	x8, [x21], #-1
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	sub	w20, w20, #1
	cmp	w20, #0
	b.gt	LBB0_20
LBB0_21:
	mov	w0, #10                         ; =0xa
	bl	_putchar
	ldur	x8, [x29, #-56]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_23
; %bb.22:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #240]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #224]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #256
	ret
LBB0_23:
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
	.asciz	"%c"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

.subsections_via_symbols
