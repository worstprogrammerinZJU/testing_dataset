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
	mov	w9, #3424                       ; =0xd60
	movk	w9, #3, lsl #16
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #48, lsl #12            ; =196608
	sub	sp, sp, #3424
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
	add	x20, sp, #24
	add	x21, sp, #24, lsl #12           ; =98304
	add	x21, x21, #1720
	stp	x21, x20, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_8
; %bb.1:
	add	x22, x20, #1
Lloh7:
	adrp	x23, l_str@PAGE
Lloh8:
	add	x23, x23, l_str@PAGEOFF
Lloh9:
	adrp	x24, l_str.3@PAGE
Lloh10:
	add	x24, x24, l_str.3@PAGEOFF
Lloh11:
	adrp	x19, l_.str@PAGE
Lloh12:
	add	x19, x19, l_.str@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldrb	w8, [x21, w8, uxtw]
	cmp	w8, #0
	csel	x0, x24, x23, eq
	bl	_puts
	stp	x21, x20, [sp]
	mov	x0, x19
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_8
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	ldrb	w9, [sp, #24]
	cbz	w9, LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
	mov	x10, x22
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x21, w8, uxtw]
	cbz	w11, LBB0_3
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	cmp	w11, w9
	cinc	w8, w8, eq
	ldrb	w9, [x10], #1
	cbnz	w9, LBB0_6
	b	LBB0_3
LBB0_8:
	ldur	x8, [x29, #-72]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_10
; %bb.9:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #48, lsl #12            ; =196608
	add	sp, sp, #3424
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_10:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s %s"

l_str:                                  ; @str
	.asciz	"No"

l_str.3:                                ; @str.3
	.asciz	"Yes"

.subsections_via_symbols
