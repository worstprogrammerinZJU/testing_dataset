	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
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
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	add	x8, sp, #28
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB0_7
; %bb.1:
	mov	w22, #0                         ; =0x0
	add	x23, sp, #20
	add	x24, sp, #24
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x20, l_str@PAGE
Lloh5:
	add	x20, x20, l_str@PAGEOFF
Lloh6:
	adrp	x21, l_.str.3@PAGE
Lloh7:
	add	x21, x21, l_.str.3@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x20
	bl	_puts
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	w22, w22, #1
	ldr	w8, [sp, #28]
	cmp	w22, w8
	b.ge	LBB0_7
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	stp	x24, x23, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	w10, w9, [sp, #20]
	subs	w8, w9, w10
	b.mi	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	add	w9, w10, w9
	and	w10, w9, #0x80000001
	cmp	w10, #1
	b.eq	LBB0_2
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	add	w9, w9, w9, lsr #31
	asr	w9, w9, #1
	lsr	w8, w8, #1
	stp	x9, x8, [sp]
	mov	x0, x21
	bl	_printf
	b	LBB0_3
LBB0_7:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

l_.str.3:                               ; @.str.3
	.asciz	"%d %d\n"

l_str:                                  ; @str
	.asciz	"impossible"

.subsections_via_symbols
