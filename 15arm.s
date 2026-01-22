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
	add	x8, sp, #29
	str	x8, [sp]
Lloh3:
	adrp	x19, l_.str@PAGE
Lloh4:
	add	x19, x19, l_.str@PAGEOFF
	mov	x0, x19
	bl	_scanf
	add	x20, sp, #18
	str	x20, [sp]
	mov	x0, x19
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_6
; %bb.1:
	add	x21, x20, #1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	str	x20, [sp]
	mov	x0, x19
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_6
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldrb	w10, [sp, #18]
	cbz	w10, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	add	x8, sp, #29
	mov	x9, x21
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x8]
	add	w10, w10, w11
	sub	w11, w10, #48
	sxtb	w12, w11
	sub	w10, w10, #58
	cmp	w12, #57
	csel	w10, w10, w11, gt
	strb	w10, [x8], #1
	ldrb	w10, [x9], #1
	cbnz	w10, LBB0_5
	b	LBB0_2
LBB0_6:
	add	x0, sp, #29
	bl	_puts
	ldr	x8, [sp, #40]
Lloh5:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh6:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh7:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_8
; %bb.7:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB0_8:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh5, Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

.subsections_via_symbols
