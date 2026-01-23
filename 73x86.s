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
	mov	x9, sp
	sub	x8, x29, #36
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-36]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	sub	x8, x29, #36
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-36]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	mov	x9, sp
	str	xzr, [x9]
	str	xzr, [x9, #8]
	mov	x8, sp
	str	xzr, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	x9, [sp]
	adrp	x8, _x9
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, sp
	str	x9, [x8]
	bl	_scanf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	w9, [x29, #-36]
	subs	w9, w9, #0
	cset	w9, eq
	tbnz	w9, #0, LBB0_8
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	x9, sp
	str	xzr, [x9]
	str	xzr, [x9, #8]
	mov	x8, sp
	str	xzr, [x8]
	mov	x10, #0
	str	x10, [sp, #16]                  ; 8-byte Folded Spill
	mov	x11, #0
	str	x11, [sp, #24]                  ; 8-byte Folded Spill
	str	x11, [x9]
	mov	x11, #0
	str	x11, [x9, #8]
	mov	x11, x10
	str	x11, [x9, #16]
	mov	x11, x10
	str	x11, [x9, #24]
	str	x11, [x9, #32]
	mov	x11, x10
	str	x11, [x9, #40]
	str	x10, [x9, #48]
	mov	x10, x10
	str	x10, [x9, #56]
	str	x8, [x9, #64]
	mov	x8, x10
	str	x8, [x9, #72]
	str	x10, [x9, #80]
	str	x8, [x9, #88]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	w8, [x8, #12]
	b	LBB0_5
LBB0_4:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d "

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols