	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp, #40]
	add	x21, sp, #8
	str	x21, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldrb	w8, [sp, #8]
	cmp	w8, #48
	b.ne	LBB0_3
LBB0_1:
	ldr	x8, [sp, #40]
Lloh5:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh6:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh7:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_9
; %bb.2:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB0_3:
	mov	x8, #0                          ; =0x0
Lloh8:
	adrp	x19, l_.str.1@PAGE
Lloh9:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh10:
	adrp	x20, l_.str@PAGE
Lloh11:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=1
	str	x9, [sp]
	mov	x0, x19
	bl	_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	mov	x8, #0                          ; =0x0
	ldrb	w9, [sp, #8]
	cmp	w9, #48
	b.eq	LBB0_1
LBB0_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	mov	x9, x8
	ldrb	w10, [x21, x8]
	add	x8, x8, #1
	cbnz	w10, LBB0_5
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	cbz	x9, LBB0_4
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	mov	w9, #0                          ; =0x0
	mov	w10, #1                         ; =0x1
LBB0_8:                                 ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w11, w8, #2
	ldrsb	w11, [x21, w11, uxtw]
	lsl	w10, w10, #1
	sub	w11, w11, #48
	sub	w12, w10, #1
	madd	w9, w11, w12, w9
	sub	x8, x8, #1
	cmp	x8, #1
	b.gt	LBB0_8
	b	LBB0_4
LBB0_9:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh5, Lloh6, Lloh7
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
