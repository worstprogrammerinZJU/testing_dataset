	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #4
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-4]
	lsl	w9, w8, #1
	cmp	w8, #3
	b.ge	LBB0_6
; %bb.1:
	mov	w10, #1                         ; =0x1
LBB0_2:
	cmp	w8, #6
	b.lt	LBB0_5
; %bb.3:
	mov	w11, #6                         ; =0x6
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	sub	w12, w11, #3
	udiv	w13, w8, w12
	msub	w12, w13, w12, w8
	cmp	w12, #0
	cinc	w10, w10, eq
	sub	w12, w11, #1
	mul	w12, w11, w12
	add	w11, w11, #2
	cmp	w12, w9
	b.le	LBB0_4
LBB0_5:
	str	x10, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB0_6:
	mov	w11, #5                         ; =0x5
	mov	w12, #1                         ; =0x1
	mov	w10, #1                         ; =0x1
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=1
	sub	w13, w11, #1
	mul	w13, w11, w13
	add	w11, w11, #2
	add	w12, w12, #1
	cmp	w13, w9
	b.gt	LBB0_2
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	sub	w13, w11, #3
	udiv	w14, w8, w13
	msub	w13, w14, w13, w8
	cbz	w13, LBB0_7
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=1
	udiv	w13, w8, w12
	msub	w13, w13, w12, w8
	cmp	w13, #0
	cinc	w10, w10, eq
	b	LBB0_7
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
