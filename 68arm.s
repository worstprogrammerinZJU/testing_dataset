	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #336
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #256]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #272]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #288]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
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
	add	x22, sp, #132
	str	x22, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldrh	w8, [sp, #132]
	cmp	w8, #35
	b.eq	LBB0_7
; %bb.1:
Lloh5:
	adrp	x19, l_.str.4@PAGE
Lloh6:
	add	x19, x19, l_.str.4@PAGEOFF
Lloh7:
	adrp	x20, l_.str@PAGE
Lloh8:
	add	x20, x20, l_.str@PAGEOFF
	add	x23, sp, #32
	add	x24, sp, #28
	mov	w25, #500                       ; =0x1f4
Lloh9:
	adrp	x21, l_.str.3@PAGE
Lloh10:
	add	x21, x21, l_.str.3@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w26, #0                         ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x26, [sp]
	mov	x0, x19
	bl	_printf
	str	x22, [sp]
	mov	x0, x20
	bl	_scanf
	ldrh	w8, [sp, #132]
	cmp	w8, #35
	b.eq	LBB0_7
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	ldrh	w8, [sp, #132]
	cmp	w8, #48
	b.eq	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w26, #0                         ; =0x0
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	stp	x24, x23, [sp, #8]
	str	x22, [sp]
	mov	x0, x21
	bl	_scanf
	ldrb	w8, [sp, #32]
	ldr	w9, [sp, #28]
	add	w10, w9, #1
	add	w10, w10, w10, lsr #31
	add	w10, w9, w10, asr #1
	cmp	w9, #500
	csel	w11, w9, w25, gt
	lsl	w9, w9, #1
	cmp	w8, #70
	csel	w9, w11, w9, ne
	cmp	w8, #66
	csel	w8, w10, w9, eq
	add	w26, w8, w26
	str	x22, [sp]
	mov	x0, x20
	bl	_scanf
	ldrh	w8, [sp, #132]
	cmp	w8, #48
	b.ne	LBB0_6
	b	LBB0_3
LBB0_7:
	ldur	x8, [x29, #-88]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_9
; %bb.8:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #304]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #288]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #272]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
LBB0_9:
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
	.asciz	"%s"

l_.str.1:                               ; @.str.1
	.asciz	"#"

l_.str.2:                               ; @.str.2
	.asciz	"0"

l_.str.3:                               ; @.str.3
	.asciz	"%s%d%s"

l_.str.4:                               ; @.str.4
	.asciz	"%d\n"

.subsections_via_symbols
