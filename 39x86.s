.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_pro                            ; -- Begin function pro
	.p2align	2
_pro:                                   ; @pro
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w8, #1
	subs	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	mov	x8, x0
	asr	w8, w8, #2
	and	w9, w8, #0x1
	mov	w8, #1
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, ne
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_1
	b	LBB0_2
LBB0_2:
	add	sp, sp, #16
	ret
                                        ; -- End function
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
	add	x8, sp, #12
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_11
	b	LBB1_1
LBB1_1:
	mov	x9, sp
	add	x8, sp, #8
	str	x8, [x9]
	add	x8, sp, #12
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_11
	b	LBB1_2
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
                                        ;       Child Loop BB1_8 Depth 3
	ldr	w8, [sp, #8]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	w9, [sp, #12]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	add	sp, sp, #32
	ret
LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=1
	mov	x9, sp
	add	x8, sp, #8
	str	x8, [x9]
	add	x8, sp, #12
	str	x8, [x9, #8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB1_11
	b	LBB1_4
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
                                        ;       Child Loop BB1_9 Depth 3
	ldr	w8, [sp, #8]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	w9, [sp, #12]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	add	sp, sp, #32
	ret
LBB1_5:                                 ;   in Loop: Header=BB1_2 Depth=1
	mov	x8, x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_end_function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d "

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols