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
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, sp
	add	x9, sp, #16
	str	x9, [x8]
	fmov	s0, #12.00000000
	str	s0, [sp, #20]                   ; 4-byte Folded Spill
	bl	_strp
	ldr	s1, [sp, #20]                   ; 4-byte Folded Reload
	fmov	d0, d0
	fmul	d0, d0, d1
	fadd	d0, d0, d1
	fneg	d0, d0
	frintm	d0, d0
	fprinta	d0, d0
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_memcpy
	ldr	d1, [sp, #8]                    ; 8-byte Folded Reload
	fmov	d0, d0
	fdiv	d0, d0, d1
	frintm	d0, d0
	frinta	d0, d0
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_memcpy
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