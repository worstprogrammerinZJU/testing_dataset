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
	mov	w9, #1                          ; =0x1
	ldur	w10, [x29, #-4]
	mov	w8, #1                          ; =0x1
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	w8, w8, #1
	add	w9, w8, w9
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	subs	w11, w9, w10
	b.lt	LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	and	w11, w11, #0x80000001
	cmp	w11, #1
	b.eq	LBB0_1
; %bb.4:
	str	x8, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
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
