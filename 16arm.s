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
	cmp	w8, #2
	b.ne	LBB0_2
; %bb.1:
Lloh2:
	adrp	x0, l_str@PAGE
Lloh3:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
LBB0_2:
	ldur	w8, [x29, #-4]
	cmp	w8, #4
	b.ne	LBB0_4
; %bb.3:
Lloh4:
	adrp	x0, l_str.6@PAGE
Lloh5:
	add	x0, x0, l_str.6@PAGEOFF
	bl	_puts
LBB0_4:
	ldur	w8, [x29, #-4]
	cmp	w8, #6
	b.ne	LBB0_6
; %bb.5:
Lloh6:
	adrp	x0, l_str.7@PAGE
Lloh7:
	add	x0, x0, l_str.7@PAGEOFF
	bl	_puts
LBB0_6:
	ldur	w8, [x29, #-4]
	cmp	w8, #8
	b.ne	LBB0_8
; %bb.7:
Lloh8:
	adrp	x0, l_str.8@PAGE
Lloh9:
	add	x0, x0, l_str.8@PAGEOFF
	bl	_puts
LBB0_8:
	ldur	w8, [x29, #-4]
	cmp	w8, #10
	b.ne	LBB0_10
; %bb.9:
Lloh10:
	adrp	x0, l_str.9@PAGE
Lloh11:
	add	x0, x0, l_str.9@PAGEOFF
	bl	_puts
LBB0_10:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_str:                                  ; @str
	.asciz	"10"

l_str.6:                                ; @str.6
	.asciz	"670"

l_str.7:                                ; @str.7
	.asciz	"55252"

l_str.8:                                ; @str.8
	.asciz	"4816030"

l_str.9:                                ; @str.9
	.asciz	"432457640"

.subsections_via_symbols
