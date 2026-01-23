	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_sentence                       ; -- Begin function sentence
	.p2align	2
_sentence:                              ; @sentence
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _str@GOTPAGE
	ldr	x8, [x8, _str@GOTPAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	w0, [x29, #-4]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldrb	w8, [x8, w0, sxtw]
	subs	w8, w8, #10
	cset	w8, ls
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #3
	cset	w8, lo
	tbnz	w8, #0, LBB0_1
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #73
	cset	w8, eq
	tbnz	w8, #0, LBB0_1
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #78
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_1
LBB0_6:
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ne
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _str@GOTPAGE
	ldr	x8, [x8, _str@GOTPAGEOFF]
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	mov	x9, sp
	mov	x10, x8
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_6
	b	LBB1_1
LBB1_1:
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	stur	x8, [x29, #-8]                  ; 8-byte Folded Spill
	adrp	x9, l_.str.4@PAGE
	add	x9, x9, l_.str.4@PAGEOFF
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	adrp	x9, l_.str.3@PAGE
	add	x9, x9, l_.str.3@PAGEOFF
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=1
	bl	_puts
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	ldur	x0, [x29, #-8]                  ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_5
	b	LBB1_4
LBB1_4:                                 ; =>This Inner Loop Header: Depth=1
	mov	w0, #0
	bl	_sentence
	subs	w8, w0, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_6
	b	LBB1_5
LBB1_5:                                 ;   in Loop: Header=BB1_4 Depth=1
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x0, w8, uxtw
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_7
	b	LBB1_6
LBB1_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
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

