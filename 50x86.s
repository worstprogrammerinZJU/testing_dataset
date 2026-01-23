	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, sp
	fmov	d0, #1.00000000
	str	d0, [sp, #40]                   ; 8-byte Folded Spill
	str	d0, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	d2, [sp, #40]                   ; 8-byte Folded Reload
	mov	w8, #1
	stur	w8, [x29, #-28]                 ; 4-byte Folded Spill
	fmov	d1, d2
	fmov	d0, d2
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [x9, #16]                   ; 8-byte Folded Spill
	bl	_printf
	ldur	w8, [x29, #-28]                 ; 4-byte Folded Reload
	ldr	d0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	ldr	d1, [sp, #56]                   ; 8-byte Folded Reload
	fadd	d2, d2, d1
	fadd	d0, d0, d2
	stur	d0, [x29, #-16]                 ; 8-byte Folded Spill
	mov	x10, sp
	str	x9, [x10]
	str	d0, [x10, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	d1, [sp, #56]                   ; 8-byte Folded Reload
	ldur	d0, [x29, #-16]                 ; 8-byte Folded Reload
	ldur	w8, [x29, #-28]                 ; 4-byte Folded Reload
	fadd	d1, d1, d1
	fadd	d0, d0, d1
	stur	d0, [x29, #-8]                  ; 8-byte Folded Spill
	subs	d8, d1, #10
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	mov	w0, #0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"n e\n- -----------\n0 %.9lf\n"

l_.str.1:                               ; @.str.1
	.asciz	"%d %.9lf\n"

.subsections_via_symbols

