	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #848
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
	stur	x8, [x29, #-96]
	add	x20, sp, #32
	add	x8, sp, #28
	stp	x8, x20, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w9, [sp, #28]
	cmp	w9, #2
	b.lt	LBB0_6
; %bb.1:
	mov	x24, #0                         ; =0x0
	mov	x27, #0                         ; =0x0
	add	x8, x20, #4
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	mov	w25, #400                       ; =0x190
	mov	w26, #1                         ; =0x1
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	umaddl	x22, w21, w25, x20
	lsl	x23, x26, #2
	add	x8, x22, x23
	str	x8, [sp]
	mov	x0, x19
	bl	_scanf
	madd	x8, x27, x25, x20
	add	x8, x23, x8
	ldur	w8, [x8, #-4]
	ldr	w9, [x22, x23]
	add	w8, w9, w8
	str	w8, [x22, x23]
	add	x26, x26, #1
	ldrsw	x9, [sp, #28]
	add	x24, x24, #1
	mov	x27, x21
	cmp	x26, x9
	b.ge	LBB0_7
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	w8, #1                          ; =0x1
	sub	x21, x8, x27
	umull	x22, w21, w25
	umaddl	x8, w21, w25, x20
	str	x8, [sp]
	mov	x0, x19
	bl	_scanf
	mul	x8, x27, x25
	ldr	w8, [x20, x8]
	ldr	w9, [x20, x22]
	add	w8, w9, w8
	str	w8, [x20, x22]
	cmp	x26, #2
	b.lo	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	umaddl	x28, w21, w25, x8
	mov	x22, x24
	madd	x23, x27, x25, x8
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x28, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	w8, w9, [x23, #-4]
	cmp	w8, w9
	csel	w8, w8, w9, gt
	ldr	w9, [x28]
	add	w8, w9, w8
	str	w8, [x28], #4
	add	x23, x23, #4
	subs	x22, x22, #1
	b.ne	LBB0_5
	b	LBB0_2
LBB0_6:
	mov	x21, #0                         ; =0x0
LBB0_7:
	mov	w8, #400                        ; =0x190
	umull	x8, w21, w8
	ldr	w8, [x20, x8]
	cmp	w9, #2
	b.lt	LBB0_10
; %bb.8:
	mov	w10, w9
	mov	w9, #400                        ; =0x190
	add	x11, sp, #32
	umaddl	x9, w21, w9, x11
	add	x9, x9, #4
	sub	x10, x10, #1
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x9], #4
	cmp	w8, w11
	csel	w8, w8, w11, gt
	subs	x10, x10, #1
	b.ne	LBB0_9
LBB0_10:
	str	x8, [sp]
Lloh7:
	adrp	x0, l_.str.2@PAGE
Lloh8:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	x8, [x29, #-96]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_12
; %bb.11:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #848
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_12:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.loh AdrpAdd	Lloh7, Lloh8
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d\n%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
