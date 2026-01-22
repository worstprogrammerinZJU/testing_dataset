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
	sub	sp, sp, #4032
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
	stur	x8, [x29, #-88]
	add	x20, sp, #20
	str	x20, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #20]
	cbz	w8, LBB0_19
; %bb.1:
	add	x21, sp, #24
	add	x22, x21, #4
Lloh5:
	adrp	x19, l_.str@PAGE
Lloh6:
	add	x19, x19, l_.str@PAGEOFF
Lloh7:
	adrp	x23, l_str.4@PAGE
Lloh8:
	add	x23, x23, l_str.4@PAGEOFF
Lloh9:
	adrp	x24, l_str@PAGE
Lloh10:
	add	x24, x24, l_str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
	str	x20, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #20]
	cbz	w8, LBB0_19
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;       Child Loop BB0_13 Depth 3
	str	x21, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #24]
	cbz	w8, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.le	LBB0_7
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x25, x22
	mov	w26, #1                         ; =0x1
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x25, [sp]
	mov	x0, x19
	bl	_scanf
	add	x26, x26, #1
	ldrsw	x8, [sp, #20]
	add	x25, x25, #4
	cmp	x26, x8
	b.lt	LBB0_6
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w8, #1
	b.lt	LBB0_17
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x16, #0                         ; =0x0
	mov	w9, w8
	sub	x10, x9, #1
	mov	w13, #1                         ; =0x1
	mov	w11, #2                         ; =0x2
	mov	x12, x22
	b	LBB0_10
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=2
	add	x12, x12, #4
	sub	x10, x10, #1
	add	w11, w11, #1
	mov	x16, x14
	mov	x13, x15
	cmp	x14, x9
	b.eq	LBB0_17
LBB0_10:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_13 Depth 3
	add	x14, x16, #1
	cmp	x14, x9
	cset	w15, lo
	b.hs	LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=2
	ldr	w16, [x21, x16, lsl #2]
	mov	w2, #1                          ; =0x1
	mov	x17, x11
	mov	x0, x10
	mov	x1, x12
	mov	x3, x16
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=3
	cmp	w8, w17
	cset	w2, gt
	add	w17, w17, #1
	subs	x0, x0, #1
	b.eq	LBB0_9
LBB0_13:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w4, [x1], #4
	cmp	w4, w16
	b.gt	LBB0_12
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=3
	cmp	w3, w4
	mov	x3, x4
	b.gt	LBB0_12
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=2
	tbz	w2, #0, LBB0_9
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x0, x23
	tbnz	w13, #0, LBB0_18
LBB0_17:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x0, x24
LBB0_18:                                ;   in Loop: Header=BB0_3 Depth=1
	bl	_puts
	b	LBB0_3
LBB0_19:
	ldur	x8, [x29, #-88]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_21
; %bb.20:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #4032
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_21:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_str:                                  ; @str
	.asciz	"Yes"

l_str.4:                                ; @str.4
	.asciz	"No"

.subsections_via_symbols
