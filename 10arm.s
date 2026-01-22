	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #304
	stp	x28, x27, [sp, #208]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #224]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #240]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #256]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #272]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #288]            ; 16-byte Folded Spill
	add	x29, sp, #288
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
	mov	w20, #0                         ; =0x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
	add	x19, sp, #96
	str	xzr, [x19, #96]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19, #64]
	stp	q0, q0, [sp, #128]
	stp	q0, q0, [sp, #96]
	add	x8, sp, #23
	add	x21, x8, #1
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	w20, w20, #1
	cmp	w20, #4
	b.eq	LBB0_7
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	add	x0, sp, #23
	bl	_gets
	ldrb	w9, [sp, #23]
	cbz	w9, LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	x8, x21
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=2
	ldrb	w9, [x8], #1
	cbz	w9, LBB0_1
LBB0_5:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w9, w9, #65
	and	w10, w9, #0xff
	cmp	w10, #25
	b.hi	LBB0_4
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=2
	and	x9, x9, #0xff
	ldr	w10, [x19, x9, lsl #2]
	add	w10, w10, #1
	str	w10, [x19, x9, lsl #2]
	b	LBB0_4
LBB0_7:
	ldr	w20, [sp, #96]
	mov	w8, #4                          ; =0x4
	add	x9, sp, #96
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x9, x8]
	cmp	w10, w20
	csel	w20, w10, w20, gt
	add	x8, x8, #4
	cmp	x8, #104
	b.ne	LBB0_8
; %bb.9:
	cmp	w20, #1
	b.lt	LBB0_18
; %bb.10:
	add	x21, sp, #96
Lloh3:
	adrp	x22, l_.str.1@PAGE
Lloh4:
	add	x22, x22, l_.str.1@PAGEOFF
Lloh5:
	adrp	x23, l_.str@PAGE
Lloh6:
	add	x23, x23, l_.str@PAGEOFF
Lloh7:
	adrp	x24, l_str.6@PAGE
Lloh8:
	add	x24, x24, l_str.6@PAGEOFF
Lloh9:
	adrp	x25, l_str.7@PAGE
Lloh10:
	add	x25, x25, l_str.7@PAGEOFF
	b	LBB0_12
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=1
	bl	_puts
	subs	w20, w20, #1
	b.le	LBB0_18
LBB0_12:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_14 Depth 2
	mov	x26, #0                         ; =0x0
	b	LBB0_14
LBB0_13:                                ;   in Loop: Header=BB0_14 Depth=2
	bl	_printf
	add	x26, x26, #4
	cmp	x26, #100
	b.eq	LBB0_16
LBB0_14:                                ;   Parent Loop BB0_12 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [x21, x26]
	mov	x0, x22
	cmp	w8, w20
	b.ne	LBB0_13
; %bb.15:                               ;   in Loop: Header=BB0_14 Depth=2
	sub	w8, w8, #1
	str	w8, [x21, x26]
	mov	x0, x23
	b	LBB0_13
LBB0_16:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [x19, #100]
	mov	x0, x24
	cmp	w8, w20
	b.ne	LBB0_11
; %bb.17:                               ;   in Loop: Header=BB0_12 Depth=1
	sub	w8, w8, #1
	str	w8, [x19, #100]
	mov	x0, x25
	b	LBB0_11
LBB0_18:
	mov	w20, #65                        ; =0x41
Lloh11:
	adrp	x19, l_.str.4@PAGE
Lloh12:
	add	x19, x19, l_.str.4@PAGEOFF
LBB0_19:                                ; =>This Inner Loop Header: Depth=1
	str	x20, [sp]
	mov	x0, x19
	bl	_printf
	add	w20, w20, #1
	cmp	w20, #90
	b.ne	LBB0_19
; %bb.20:
Lloh13:
	adrp	x0, l_str@PAGE
Lloh14:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	ldur	x8, [x29, #-88]
Lloh15:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh16:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh17:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_22
; %bb.21:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #288]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #272]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #256]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #240]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #224]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #208]            ; 16-byte Folded Reload
	add	sp, sp, #304
	ret
LBB0_22:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh15, Lloh16, Lloh17
	.loh AdrpAdd	Lloh13, Lloh14
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"* "

l_.str.1:                               ; @.str.1
	.asciz	"  "

l_.str.4:                               ; @.str.4
	.asciz	"%c "

l_str:                                  ; @str
	.asciz	"Z"

l_str.6:                                ; @str.6
	.asciz	" "

l_str.7:                                ; @str.7
	.asciz	"*"

.subsections_via_symbols
