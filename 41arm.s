	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	mov	w9, #16992                      ; =0x4260
	movk	w9, #15, lsl #16
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #244, lsl #12           ; =999424
	sub	sp, sp, #608
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
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x22, sp, #23
	str	x22, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldrb	w25, [sp, #23]
	cmp	w25, #46
	b.ne	LBB0_3
LBB0_1:
	ldur	x8, [x29, #-72]
Lloh7:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh8:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh9:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_17
; %bb.2:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #244, lsl #12           ; =999424
	add	sp, sp, #608
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_3:
	add	x23, x22, #2
	mov	w24, #1                         ; =0x1
Lloh10:
	adrp	x19, l_.str.1@PAGE
Lloh11:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh12:
	adrp	x20, l_.str@PAGE
Lloh13:
	add	x20, x20, l_.str@PAGEOFF
Lloh14:
	adrp	x21, l_str@PAGE
Lloh15:
	add	x21, x21, l_str@PAGEOFF
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;       Child Loop BB0_10 Depth 3
	add	x0, sp, #23
	bl	_strlen
	cmp	w0, #2
	b.lt	LBB0_14
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x8, #0                          ; =0x0
	sub	w10, w0, #1
	and	x9, x0, #0x7fffffff
	sub	x10, x24, x10
	mov	w11, #1                         ; =0x1
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=2
	mov	x12, x0
	cmp	w12, w0
	b.ne	LBB0_13
	b	LBB0_16
LBB0_7:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_10 Depth 3
	ldrb	w12, [x22, x11]
	cmp	w12, w25
	b.ne	LBB0_13
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	udiv	w12, w0, w11
	msub	w12, w12, w11, w0
	cbnz	w12, LBB0_13
; %bb.9:                                ;   in Loop: Header=BB0_7 Depth=2
	mov	x12, #0                         ; =0x0
	mov	x13, x23
LBB0_10:                                ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cmp	x10, x12
	b.eq	LBB0_6
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=3
	ldrb	w14, [x13, x8]
	ldurb	w15, [x13, #-1]
	sub	x12, x12, #1
	add	x13, x13, #1
	cmp	w14, w15
	b.eq	LBB0_10
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=2
	sub	w12, w11, w12
	cmp	w12, w0
	b.eq	LBB0_16
LBB0_13:                                ;   in Loop: Header=BB0_7 Depth=2
	add	x11, x11, #1
	add	x10, x10, #1
	add	x8, x8, #1
	cmp	x11, x9
	b.ne	LBB0_7
LBB0_14:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x21
	bl	_puts
LBB0_15:                                ;   in Loop: Header=BB0_4 Depth=1
	str	x22, [sp]
	mov	x0, x20
	bl	_scanf
	ldrb	w25, [sp, #23]
	cmp	w25, #46
	b.ne	LBB0_4
	b	LBB0_1
LBB0_16:                                ;   in Loop: Header=BB0_4 Depth=1
	udiv	w8, w12, w11
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	b	LBB0_15
LBB0_17:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

l_str:                                  ; @str
	.asciz	"1"

.subsections_via_symbols
