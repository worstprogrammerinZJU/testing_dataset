	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_sentence                       ; -- Begin function sentence
	.p2align	2
_sentence:                              ; @sentence
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh0:
	adrp	x19, _str@GOTPAGE
Lloh1:
	ldr	x19, [x19, _str@GOTPAGEOFF]
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	w0, w0, #1
	bl	_sentence
	tbnz	w0, #31, LBB0_8
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x19, w0, sxtw]
	sub	w9, w8, #112
	cmp	w9, #10
	b.ls	LBB0_7
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	sub	w9, w8, #67
	cmp	w9, #3
	b.lo	LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, #73
	b.eq	LBB0_1
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, #78
	b.ne	LBB0_8
; %bb.6:                                ;   in Loop: Header=BB0_2 Depth=1
	add	w0, w0, #1
	b	LBB0_2
LBB0_7:
	add	w0, w0, #1
	b	LBB0_9
LBB0_8:
	mov	w0, #-1                         ; =0xffffffff
LBB0_9:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
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
Lloh2:
	adrp	x20, _str@GOTPAGE
Lloh3:
	ldr	x20, [x20, _str@GOTPAGEOFF]
	str	x20, [sp]
Lloh4:
	adrp	x0, l_.str@PAGE
Lloh5:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB1_7
; %bb.1:
Lloh6:
	adrp	x21, l_str.4@PAGE
Lloh7:
	add	x21, x21, l_str.4@PAGEOFF
Lloh8:
	adrp	x19, l_.str@PAGE
Lloh9:
	add	x19, x19, l_.str@PAGEOFF
Lloh10:
	adrp	x22, l_str.3@PAGE
Lloh11:
	add	x22, x22, l_str.3@PAGEOFF
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	mov	x0, x22
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	bl	_puts
	str	x20, [sp]
	mov	x0, x19
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB1_7
LBB1_4:                                 ; =>This Inner Loop Header: Depth=1
	mov	w0, #0                          ; =0x0
	bl	_sentence
	cmp	w0, #1
	b.lt	LBB1_2
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	ldrb	w8, [x20, w0, uxtw]
	cbnz	w8, LBB1_2
; %bb.6:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x0, x21
	b	LBB1_3
LBB1_7:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.comm	_str,300,0                      ; @str
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

l_str.3:                                ; @str.3
	.asciz	"NO"

l_str.4:                                ; @str.4
	.asciz	"YES"

.subsections_via_symbols
