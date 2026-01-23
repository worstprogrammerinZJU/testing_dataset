.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
; %bb.0:
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	cset	w8, ge
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csetm	w0, eq
	ret
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #16
	b	LBB1_1
LBB1_1:
	adrp	x8, _speed@GOTPAGE
	ldr	x8, [x8, _speed@GOTPAGEOFF]
	str	x8, [sp]                        ; 8-byte Folded Spill
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	add	x1, sp, #24
	bl	_scanf
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_16
	b	LBB1_1
LBB1_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	w9, #0
	str	w9, [sp, #16]                   ; 4-byte Folded Spill
	bic	w8, w8, #0x1
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	mov	w1, #0
	mov	x2, #4
	bl	_memset
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #20]                   ; 4-byte Folded Reload
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	strb	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [sp, #24]
	stlr	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x8, #5]
	stur	x8, [x1, #5]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_memset
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldur	x8, [x8, #2]
	stur	x8, [x1, #4]
	add	w0, w8, #0
	mov	w1, #0
	bl	_gethrk
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	add	sp, sp, #16
	ret
	.cfi.endp
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_n,4,2                          ; @n
	.comm	_speed,4000,3                   ; @speed
l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols