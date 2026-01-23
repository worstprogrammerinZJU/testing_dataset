	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #8
	str	x8, [sp, #16]
	sub	x8, x29, #16
	sub	x9, x29, #4
	stp	x9, x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-8]
	cmp	w8, #1
	b.lt	LBB0_4
; %bb.1:
	ldur	s0, [x29, #-4]
	sshll.2d	v0, v0, #0
	scvtf	d0, d0
	mov	x9, #4636737291354636288        ; =0x4059000000000000
	fmov	d1, x9
	fdiv	d0, d0, d1
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	ldur	d1, [x29, #-16]
	mov	x9, x8
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	fmul	d1, d0, d1
	subs	w9, w9, #1
	b.ne	LBB0_2
; %bb.3:
	stur	d1, [x29, #-16]
	b	LBB0_5
LBB0_4:
	mov	w8, #0                          ; =0x0
LBB0_5:
	stur	w8, [x29, #-4]
	ldur	d0, [x29, #-16]
	fcvtzs	w8, d0
	str	x8, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d %lf %d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
