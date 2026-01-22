	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #256
	stp	x28, x27, [sp, #160]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #176]            ; 16-byte Folded Spill
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
	add	x22, sp, #24
	str	x22, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #24]
	cbz	w8, LBB0_16
; %bb.1:
	add	x8, sp, #28
	add	x23, x8, #4
	add	x24, x8, #8
Lloh5:
	adrp	x19, l_str@PAGE
Lloh6:
	add	x19, x19, l_str@PAGEOFF
Lloh7:
	adrp	x20, l_.str@PAGE
Lloh8:
	add	x20, x20, l_.str@PAGEOFF
Lloh9:
	adrp	x21, l_.str.1@PAGE
Lloh10:
	add	x21, x21, l_.str.1@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x19
	bl	_puts
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x22, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #24]
	cbz	w8, LBB0_16
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x26, #0                         ; =0x0
	mov	x27, #0                         ; =0x0
	mov	w25, #0                         ; =0x0
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, x23, x26
	str	x8, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [x23, x27, lsl #2]
	add	w25, w8, w25
	ldrsw	x8, [sp, #24]
	add	x27, x27, #1
	add	x26, x26, #4
	cmp	x27, x8
	b.lt	LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w8, #1
	b.ge	LBB0_9
	b	LBB0_2
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w25, #0                         ; =0x0
	cmp	w8, #1
	b.lt	LBB0_2
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	w10, [sp, #32]
	cmp	w25, w10, lsl #1
	b.ne	LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_4 Depth=1
	mov	w10, #0                         ; =0x0
	mov	w8, #1                          ; =0x1
	tbnz	w10, #0, LBB0_2
	b	LBB0_15
LBB0_11:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x9, #0                          ; =0x0
	mov	w11, w8
	add	w8, w8, #1
	sub	x8, x8, #2
LBB0_12:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x8, x9
	b.eq	LBB0_2
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=2
	ldr	w12, [x24, x9, lsl #2]
	add	w10, w12, w10
	add	x9, x9, #1
	cmp	w25, w10, lsl #1
	b.ne	LBB0_12
; %bb.14:                               ;   in Loop: Header=BB0_4 Depth=1
	cmp	x9, x11
	cset	w10, hs
	add	x8, x9, #1
	tbnz	w10, #0, LBB0_2
LBB0_15:                                ;   in Loop: Header=BB0_4 Depth=1
	add	w9, w8, #1
	stp	x8, x9, [sp]
	mov	x0, x21
	bl	_printf
	b	LBB0_3
LBB0_16:
	ldur	x8, [x29, #-88]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_18
; %bb.17:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #240]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #224]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #176]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #256
	ret
LBB0_18:
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

l_.str.1:                               ; @.str.1
	.asciz	"Sam stops at position %d and Ella stops at position %d.\n"

l_str:                                  ; @str
	.asciz	"No equal partitioning."

.subsections_via_symbols
