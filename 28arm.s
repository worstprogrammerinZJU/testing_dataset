	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #192
	stp	x28, x27, [sp, #96]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #144]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #160]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
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
	str	x8, [sp, #88]
	movi.2d	v0, #0000000000000000
	stur	q0, [sp, #60]
	stp	q0, q0, [sp, #32]
	add	x22, sp, #8
	str	x22, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #8]
	cbz	w8, LBB0_11
; %bb.1:
	add	x23, sp, #32
	orr	x19, x23, #0x4
	mov	x24, #28532                     ; =0x6f74
	movk	x24, #8303, lsl #16
	movk	x24, #26984, lsl #32
	movk	x24, #26727, lsl #48
Lloh5:
	adrp	x20, l_.memset_pattern.6@PAGE
Lloh6:
	add	x20, x20, l_.memset_pattern.6@PAGEOFF
Lloh7:
	adrp	x21, l_.str@PAGE
Lloh8:
	add	x21, x21, l_.str@PAGEOFF
	mov	w25, #10                        ; =0xa
	mov	x26, #28532                     ; =0x6f74
	movk	x26, #8303, lsl #16
	movk	x26, #28524, lsl #32
	movk	x26, #119, lsl #48
Lloh9:
	adrp	x27, l_str@PAGE
Lloh10:
	add	x27, x27, l_str@PAGEOFF
Lloh11:
	adrp	x28, l_str.5@PAGE
Lloh12:
	add	x28, x28, l_str.5@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [x23, w8, sxtw #2]
	cmp	w8, #0
	csel	x0, x28, x27, eq
	bl	_puts
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19]
	str	xzr, [x19, #32]
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x22, [sp]
	mov	x0, x21
	bl	_scanf
	ldr	w8, [sp, #8]
	cbz	w8, LBB0_11
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	bl	_getchar
	add	x0, sp, #12
	bl	_gets
	ldur	x8, [sp, #12]
	eor	x8, x8, x24
	ldrb	w9, [sp, #20]
	orr	x8, x8, x9
	cbz	x8, LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	ldur	x9, [sp, #12]
	ldr	w8, [sp, #8]
	cmp	x9, x26
	b.ne	LBB0_2
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w8, #1
	b.lt	LBB0_3
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	lsl	x2, x8, #2
	mov	x0, x19
	b	LBB0_10
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldrsw	x8, [sp, #8]
	cmp	w8, #10
	b.gt	LBB0_3
; %bb.9:                                ;   in Loop: Header=BB0_4 Depth=1
	add	x0, x23, x8, lsl #2
	sub	w8, w25, w8
	ubfiz	x8, x8, #2, #32
	add	x2, x8, #4
LBB0_10:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x1, x20
	bl	_memset_pattern16
	b	LBB0_3
LBB0_11:
	ldr	x8, [sp, #88]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_13
; %bb.12:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #160]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB0_13:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"too high"

l_.str.2:                               ; @.str.2
	.asciz	"too low"

l_str:                                  ; @str
	.asciz	"Stan is dishonest"

l_str.5:                                ; @str.5
	.asciz	"Stan may be honest"

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; @.memset_pattern.6
l_.memset_pattern.6:
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1

.subsections_via_symbols
