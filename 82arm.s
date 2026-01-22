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
	mov	w9, #10016                      ; =0x2720
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #2, lsl #12             ; =8192
	sub	sp, sp, #1824
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
	add	x21, sp, #8
	str	x21, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldrb	w8, [sp, #8]
	cmp	w8, #48
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
	b.ne	LBB0_9
; %bb.2:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #2, lsl #12             ; =8192
	add	sp, sp, #1824
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_3:
	add	x22, x21, #1
	mov	w23, #36409                     ; =0x8e39
	movk	w23, #14563, lsl #16
	mov	w24, #9                         ; =0x9
Lloh10:
	adrp	x19, l_.str.1@PAGE
Lloh11:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh12:
	adrp	x20, l_.str@PAGE
Lloh13:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_6
LBB0_4:                                 ;   in Loop: Header=BB0_6 Depth=1
	mov	w8, #0                          ; =0x0
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	smull	x9, w8, w23
	lsr	x10, x9, #63
	asr	x9, x9, #33
	add	w9, w9, w10
	add	w9, w9, w9, lsl #3
	subs	w8, w8, w9
	csel	w8, w24, w8, eq
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	ldrb	w8, [sp, #8]
	cmp	w8, #48
	b.eq	LBB0_1
LBB0_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	ldrb	w9, [sp, #8]
	cbz	w9, LBB0_4
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	mov	w8, #0                          ; =0x0
	mov	x10, x22
LBB0_8:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w8, w8, w9, sxtb
	sub	w8, w8, #48
	ldrb	w9, [x10], #1
	cbnz	w9, LBB0_8
	b	LBB0_5
LBB0_9:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
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

.subsections_via_symbols
