.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, sp
	add	x8, sp, #8
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #8]
	subs	w8, w8, #6
	cset	w8, lt
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_1:
	mov	w8, #5
	movk	w8, #5, lsl #16
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	mov	w9, #4
	ands	w8, w8, #0x1
	csinc	w8, w8, wzr, ne
	cset	w8, eq
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	asr	w8, w8, #1
	subs	w8, w8, #0
	cset	w8, hs
	tbnz	w8, #0, LBB0_9
	b	LBB0_2
LBB0_2:
	mov	w8, #5
	movk	w8, #5, lsl #16
	str	w8, [sp]                        ; 4-byte Folded Spill
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	mov	w9, #4
	ands	w8, w8, #0x1
	cset	w8, eq
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_9
	b	LBB0_3
LBB0_3:
	mov	w8, #5
	movk	w8, #5, lsl #16
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ls
	tbnz	w8, #0, LBB0_9
	b	LBB0_4
LBB0_4:
	mov	w8, #5
	movk	w8, #5, lsl #16
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ls
	tbnz	w8, #0, LBB0_9
	b	LBB0_5
LBB0_5:
	mov	w8, #5
	movk	w8, #5, lsl #16
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	subs	w8, w8, #0
	cset	w8, ls
	tbnz	w8, #0, LBB0_9
	b	LBB0_6
LBB0_6:
	mov	w0, #5
	movk	w0, #5, lsl #16
	mov	w1, #5
	mov	x8, sp
	str	w1, [x8]
	mov	w2, #0
	mov	w3, #5
	mov	w4, #5
	bl	_memcmp
	b	LBB0_8
LBB0_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d "

.subsections_via_symbols