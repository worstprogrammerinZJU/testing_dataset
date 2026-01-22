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
	stur	x8, [x29, #-88]
	add	x8, sp, #16
	str	x8, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	cmp	w8, #1
	b.lt	LBB0_12
; %bb.1:
	mov	w21, #0                         ; =0x0
	add	x22, sp, #12
Lloh7:
	adrp	x19, l_.str@PAGE
Lloh8:
	add	x19, x19, l_.str@PAGEOFF
	add	x23, sp, #4, lsl #12            ; =16384
	add	x23, x23, #3638
	add	x24, sp, #20
Lloh9:
	adrp	x20, l_.str.1@PAGE
Lloh10:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	add	w21, w21, #1
	ldr	w8, [sp, #16]
	cmp	w21, w8
	b.ge	LBB0_12
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w9, [sp, #12]
	cmp	w9, #1
	b.lt	LBB0_7
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w25, #2                         ; =0x2
	mov	w26, #1                         ; =0x1
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, x23, x25
	str	x8, [sp]
	mov	x0, x19
	bl	_scanf
	ldrsh	x8, [x23, x26, lsl #1]
	strh	w26, [x24, x8, lsl #1]
	add	x8, x26, #1
	ldrsw	x9, [sp, #12]
	add	x25, x25, #2
	cmp	x26, x9
	mov	x26, x8
	b.lt	LBB0_6
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w9, #1
	b.lt	LBB0_2
; %bb.8:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
	add	w9, w9, #1
	mov	w10, #1                         ; =0x1
	b	LBB0_10
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=2
	add	x10, x10, #1
	cmp	x9, x10
	b.eq	LBB0_3
LBB0_10:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsh	x11, [x23, x10, lsl #1]
	cmp	x10, w11, uxtw
	b.eq	LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=2
	and	w11, w11, #0xffff
	add	w8, w8, #1
	ldrsh	x12, [x24, x10, lsl #1]
	strh	w11, [x23, x12, lsl #1]
	ldrsh	x11, [x23, x10, lsl #1]
	strh	w12, [x24, x11, lsl #1]
	b	LBB0_9
LBB0_12:
	ldur	x8, [x29, #-88]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_14
; %bb.13:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3168
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_14:
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
