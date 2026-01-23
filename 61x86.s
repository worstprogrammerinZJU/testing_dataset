	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adrp	x9, _speed@GOTPAGE
	ldr	x9, [x9, _speed@GOTPAGEOFF]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, ge
	and	w9, w8, #0x1
	mov	w8, #0
	ands	w9, w9, #0x1
	csinv	w0, w8, wzr, eq
	add	sp, sp, #16
	ret
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _n@GOTPAGE
	ldr	x8, [x8, _n@GOTPAGEOFF]
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	adrp	x8, _speed@GOTPAGE
	ldr	x8, [x8, _speed@GOTPAGEOFF]
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	mov	x9, sp
	sub	x8, x29, #36
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-36]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_17
	b	LBB1_1
LBB1_1:
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	ldur	x10, [x29, #-24]                ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [x9, #16]
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	ldr	w8, [x8, #4]
	add	w10, w8, #0
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB1_3
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
                                        ;     Child Loop BB1_9 Depth 2
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [x9, #8]
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_7
	b	LBB1_5
LBB1_5:                                 ;   in Loop: Header=BB1_3 Depth=1
	b	LBB1_6
LBB1_6:                                 ;   in Loop: Header=BB1_3 Depth=1
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x0
	sxtw	x0, w8
	mov	x2, #4
	adrp	x8, _cmp@PAGE
	add	x8, x8, _cmp@PAGEOFF
	str	x8, [x9]
	mov	x1, #4
	bl	_qsort
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	ldrsw	x8, [x8]
	subs	x8, x8, #4
	cset	w8, lt
	tbnz	w8, #0, LBB1_10
	b	LBB1_7
LBB1_7:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mov	w8, #2
	mul	w0, w8, w10
	ldr	w9, [x8]
	ldr	w10, [x8]
	add	w10, w9, w10
	mov	x9, #4
	mul	x10, x9, x10
	add	x9, x9, x10
	str	x9, [x8]
	ldr	w8, [x8]
	ldr	w9, [x8, #4]
	ldr	w8, [x8]
	add	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB1_9
	b	LBB1_8
LBB1_8:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mov	w8, #3
	mul	w0, w8, w10
	ldr	w9, [x8]
	ldr	w10, [x8]
	add	w10, w9, w10
	mov	w9, #4
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	ldr	w8, [x8]
	ldr	w9, [x8, #4]
	ldr	w8, [x8]
	add	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB1_10
	b	LBB1_9
LBB1_9:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	add	w10, w9, w10, lsl #1
	mov	w9, #2
	mul	w9, w9, w10
	ldr	w8, [x8]
	add	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, gt
	tbnz	w8, #0, LBB1_11
	b	LBB1_10
LBB1_10:                                ;   in Loop: Header=BB1_3 Depth=1
	ldur	x9, [x29, #-16]                 ; 8-byte Folded Reload
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	add	w8, w8, w9
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB1_15
	b	LBB1