	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp, #40]
	add	x8, sp, #20
	str	x8, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.lt	LBB0_9
; %bb.1:
	mov	w22, #0                         ; =0x0
	add	x23, sp, #24
Lloh5:
	adrp	x19, l_.str@PAGE
Lloh6:
	add	x19, x19, l_.str@PAGEOFF
Lloh7:
	adrp	x20, l_.str.1@PAGE
Lloh8:
	add	x20, x20, l_.str.1@PAGEOFF
Lloh9:
	adrp	x21, l_.str.2@PAGE
Lloh10:
	add	x21, x21, l_.str.2@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	sdiv	w8, w8, w9
	ldr	w9, [sp, #36]
	mul	w8, w9, w8
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x8, [sp]
	mov	x0, x21
	bl	_printf
	add	w22, w22, #1
	ldr	w8, [sp, #20]
	cmp	w22, w8
	b.ge	LBB0_9
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	x24, #0                         ; =0x0
LBB0_5:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x8, x23, x24
	str	x8, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [x23, x24]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	add	x24, x24, #4
	cmp	x24, #16
	b.ne	LBB0_5
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	ldp	w9, w8, [sp, #24]
	sub	w10, w8, w9
	ldr	w11, [sp, #32]
	sub	w12, w11, w8
	cmp	w10, w12
	b.ne	LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w12, [sp, #36]
	sub	w11, w12, w11
	cmp	w10, w11
	b.ne	LBB0_2
; %bb.8:                                ;   in Loop: Header=BB0_4 Depth=1
	add	w8, w12, w10
	b	LBB0_3
LBB0_9:
	ldr	x8, [sp, #40]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_11
; %bb.10:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB0_11:
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
	.asciz	"%d "

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
