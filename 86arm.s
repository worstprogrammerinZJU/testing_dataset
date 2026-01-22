	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
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
	add	x21, sp, #8
	str	x21, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #8]
	cmn	w8, #1
	b.eq	LBB0_15
; %bb.1:
	add	x22, x21, #4
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh7:
	adrp	x20, l_.str@PAGE
Lloh8:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #8]
	cmn	w8, #1
	b.eq	LBB0_15
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
                                        ;       Child Loop BB0_13 Depth 3
	ldr	w8, [sp, #8]
	cbz	w8, LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w23, #0                         ; =0x0
	mov	x24, x22
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x24, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [x24], #4
	add	w23, w23, #1
	cbnz	w8, LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	cbnz	w23, LBB0_9
	b	LBB0_2
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w23, #0                         ; =0x0
	cbz	w23, LBB0_2
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x9, #0                          ; =0x0
	mov	w8, #0                          ; =0x0
	mov	w10, w23
	b	LBB0_12
LBB0_10:                                ;   in Loop: Header=BB0_12 Depth=2
	add	w8, w8, #1
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=2
	add	x9, x9, #1
	cmp	x9, x10
	b.eq	LBB0_3
LBB0_12:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_13 Depth 3
	add	x11, sp, #8
	ldr	w12, [x11, x9, lsl #2]
	lsl	w12, w12, #1
	mov	x13, x10
LBB0_13:                                ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w14, [x11], #4
	cmp	w14, w12
	b.eq	LBB0_10
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=3
	subs	x13, x13, #1
	b.ne	LBB0_13
	b	LBB0_11
LBB0_15:
	ldur	x8, [x29, #-56]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_17
; %bb.16:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB0_17:
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
	.asciz	"%d\n"

.subsections_via_symbols
