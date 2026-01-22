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
	sub	sp, sp, #2032
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
	stur	x8, [x29, #-96]
	add	x20, sp, #12
	str	x20, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_13
; %bb.1:
Lloh5:
	adrp	x19, l_.str@PAGE
Lloh6:
	add	x19, x19, l_.str@PAGEOFF
	mov	w21, #20                        ; =0x14
	add	x22, sp, #16
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
	str	x20, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_13
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;       Child Loop BB0_12 Depth 3
	bl	_getchar
	bl	_getchar
	strb	w0, [sp, #16]
	and	w8, w0, #0xff
	cmp	w8, #10
	b.ne	LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w23, #0                         ; =0x0
	b	LBB0_7
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w24, #0                         ; =0x0
	mov	w23, #0                         ; =0x0
	mov	w25, #1                         ; =0x1
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w8, w25, w24
	ldr	w9, [sp, #12]
	cmn	w8, #1
	ccmp	w8, w9, #4, ne
	cinc	w23, w23, eq
	csel	w24, w24, w8, eq
	cneg	w25, w25, eq
	bl	_getchar
	umaddl	x8, w23, w21, x22
	strb	w0, [x8, w24, sxtw]
	and	w8, w0, #0xff
	cmp	w8, #10
	b.ne	LBB0_6
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x24, #0                         ; =0x0
	mov	w25, w23
	add	x26, sp, #16
	b	LBB0_10
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=2
	add	x24, x24, #1
	ldrsw	x8, [sp, #12]
	add	x26, x26, #1
	cmp	x24, x8
	b.ge	LBB0_2
LBB0_10:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_12 Depth 3
	cbz	w23, LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=2
	mov	x27, x25
	mov	x28, x26
LBB0_12:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrsb	w0, [x28], #20
	bl	_putchar
	subs	x27, x27, #1
	b.ne	LBB0_12
	b	LBB0_9
LBB0_13:
	ldur	x8, [x29, #-96]
Lloh7:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh8:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh9:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_15
; %bb.14:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #2032
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_15:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

.subsections_via_symbols
