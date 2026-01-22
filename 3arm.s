	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
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
	stur	x8, [x29, #-56]
	add	x8, sp, #32
	str	x8, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #32]
	cmp	w8, #1
	b.lt	LBB0_7
; %bb.1:
	mov	w21, #0                         ; =0x0
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
	sub	x22, x29, #72
Lloh7:
	adrp	x20, l_.str.2@PAGE
Lloh8:
	add	x20, x20, l_.str.2@PAGEOFF
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
                                        ;       Child Loop BB0_4 Depth 3
	add	x23, sp, #38
	str	x23, [sp]
	mov	x0, x19
	bl	_scanf
	mov	x8, #0                          ; =0x0
LBB0_3:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_4 Depth 3
	mov	x9, #0                          ; =0x0
	mov	w10, #0                         ; =0x0
	str	wzr, [x22, x8, lsl #2]
LBB0_4:                                 ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrsb	w11, [x23, x9]
	add	w10, w11, w10, lsl #1
	sub	w10, w10, #48
	add	x9, x9, #1
	cmp	x9, #8
	b.ne	LBB0_4
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=2
	str	w10, [x22, x8, lsl #2]
	add	x8, x8, #1
	add	x23, x23, #8
	cmp	x8, #4
	b.ne	LBB0_3
; %bb.6:                                ;   in Loop: Header=BB0_2 Depth=1
	ldp	w8, w9, [x29, #-72]
	ldp	w10, w11, [x29, #-64]
	stp	x10, x11, [sp, #16]
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	add	w21, w21, #1
	ldr	w8, [sp, #32]
	cmp	w21, w8
	b.lt	LBB0_2
LBB0_7:
	ldur	x8, [x29, #-56]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_9
; %bb.8:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB0_9:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%s"

l_.str.2:                               ; @.str.2
	.asciz	"%d.%d.%d.%d\n"

.subsections_via_symbols
