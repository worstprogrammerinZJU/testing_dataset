.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
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
	mov	x8, sp
	fmov	d0, #1.00000000
	str	d0, [sp, #24]                   ; 8-byte Folded Spill
	str	d0, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	d2, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, sp
	str	d2, [x8]
	str	d1, [x8, #8]
	str	d0, [sp, #16]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_memcpy
	ldr	d2, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, sp
	str	d2, [x8]
	str	d1, [x8, #8]
	str	d0, [sp, #8]
	mov	w9, #1
	str	w9, [sp, #32]                   ; 4-byte Folded Spill
	and	w10, w9, #0x1
	mov	x9, sp
	str	d2, [x9]
	str	d1, [x9, #8]
	str	d0, [x9, #16]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x9
	str	x8, [x9, #8]
	bl	_printf
	ldr	d2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, sp
	str	d2, [x8]
	str	d0, [x8, #8]
	str	d1, [sp, #32]                   ; 8-byte Folded Spill
	str	d0, [x8, #16]
	add	w8, w8, #1
	subs	w8, w8, #10
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_1
LBB0_1:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"n e\n- -----------\n0 %.9lf\n"

l_.str.1:                               ; @.str.1
	.asciz	"%d %.9lf\n"

.subsections_via_symbols