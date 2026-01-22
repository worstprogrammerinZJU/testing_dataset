	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	.cfi_offset b10, -56
	.cfi_offset b11, -64
	mov	x8, #4607182418800017408        ; =0x3ff0000000000000
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	w20, #1                         ; =0x1
	fmov	d8, #1.00000000
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
	fmov	d9, #1.00000000
	fmov	d10, #1.00000000
	fmov	d11, #1.00000000
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	fdiv	d9, d9, d11
	fadd	d10, d10, d9
	str	x20, [sp]
	str	d10, [sp, #8]
	mov	x0, x19
	bl	_printf
	fadd	d11, d11, d8
	add	w20, w20, #1
	cmp	w20, #10
	b.ne	LBB0_1
; %bb.2:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"n e\n- -----------\n0 %.9lf\n"

l_.str.1:                               ; @.str.1
	.asciz	"%d %.9lf\n"

.subsections_via_symbols
