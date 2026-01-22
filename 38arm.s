	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	add	x8, sp, #12
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cmp	w8, #6
	b.lt	LBB0_3
; %bb.1:
	mov	w11, #4                         ; =0x4
	mov	w9, #5                          ; =0x5
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	add	w10, w11, #1
	add	w9, w9, w11
	cmp	w9, w8
	mov	x11, x10
	b.lt	LBB0_2
	b	LBB0_4
LBB0_3:
	mov	w9, #5                          ; =0x5
	mov	w10, #4                         ; =0x4
LBB0_4:
	sub	w8, w9, w8
	sub	w9, w10, #1
	cmp	w8, #1
	csel	w20, w9, w8, eq
	cinc	w21, w10, eq
	mov	w8, #2                          ; =0x2
	cinc	w22, w8, eq
	cmp	w22, w21
	b.hs	LBB0_9
; %bb.5:
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=1
	add	w22, w22, #1
	cmp	w21, w22
	b.eq	LBB0_9
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w20, w22
	b.eq	LBB0_6
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	str	x22, [sp]
	mov	x0, x19
	bl	_printf
	b	LBB0_6
LBB0_9:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d "

.subsections_via_symbols
