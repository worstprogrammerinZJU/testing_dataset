	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movi	d0, #0000000000000000
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	mov	w8, #12
	stur	w8, [x29, #-4]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	stur	d0, [x29, #-8]                  ; 8-byte Folded Spill
	mov	x9, sp
	sub	x8, x29, #8
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	d0, [x29, #-8]                  ; 8-byte Folded Reload
	ldur	d1, [x29, #-8]
	fadd	d0, d0, d1
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	ldur	d0, [x29, #-8]                  ; 8-byte Folded Reload
	fmov	d1, #12.00000000
	fdiv	d0, d0, d1
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%lf"

l_.str.1:                               ; @.str.1
	.asciz	"$%.2lf\n"

.subsections_via_symbols

