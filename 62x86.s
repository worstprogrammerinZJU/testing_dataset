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
	adrp	x8, _n@GOTPAGE
	ldr	x8, [x8, _n@GOTPAGEOFF]
	stur	x8, [x29, #-8]                  ; 8-byte Folded Spill
	add	x9, x8, #4
	stur	x9, [x29, #-16]                 ; 8-byte Folded Spill
	mov	w9, #31073
	movk	w9, #65534, lsl #16
	stur	w9, [x29, #-4]                  ; 4-byte Folded Spill
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	mov	w9, #1
	str	w9, [x8, #4]
	ldr	w8, [x8]
	add	w9, w8, #1
	str	w9, [x8, #4]
	mov	w9, #2
	str	w9, [x8, #8]
	adrp	x9, _min@PAGE
	ldr	w9, [x9, _min@PAGEOFF]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	w8, #1
	stur	w8, [x29, #-4]
	adrp	x8, _f@GOTPAGE
	ldr	x8, [x8, _f@GOTPAGEOFF]
	ldr	w9, [x8]
	adrp	x10, _max@PAGE
	ldr	w10, [x10, _max@PAGEOFF]
	subs	w8, w8, w10
	cset	w8, gt
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x9, _max@PAGE
	mov	w8, #1
	str	w8, [x9, _max@PAGEOFF]
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x8, _max@PAGE
	ldr	w8, [x8, _max@PAGEOFF]
	subs	w8, w0, w8
	cset	w8, lt
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x9, _max@PAGE
	mov	x8, x0
	str	w8, [x9, _max@PAGEOFF]
	b	LBB0_6
LBB0_6:
	adrp	x8, _min@PAGE
	ldr	w0, [x8, _min@PAGEOFF]
	bl	_bellman_ford
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x0
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
                                        ; -- End function
	.globl	_bellman_ford                   ; -- Begin function bellman_ford
	.p2align	2
_bellman_ford:                          ; @bellman_ford
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _d@GOTPAGE
	ldr	x8, [x8, _d@GOTPAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	adrp	x8, _min@PAGE
	ldr	w8, [x8, _min@PAGEOFF]
	adrp	x9, _max@PAGE
	ldrsw	x9, [x9, _max@PAGEOFF]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB1_1
	b	LBB1_1
LBB1_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	mov	w8, #0
	str	w8, [x9, _d@GOTPAGEOFF]
	b	LBB1_2
LBB1_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w0, [x8, _max@PAGEOFF]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB1_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldursw	x9, [x29, #-4]
	add	x8, x8, x9, lsl #2
	ldur	w9, [x29, #-4]
	adrp	x10, _max@PAGE
	ldrsw	x10, [x10, _max@PAGEOFF]
	subs	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, eq
	and	w10, w8, #0x1
	mov	x9, #0
	mov	x8, #4
	ands	w10, w10, #0x1
	csel	x2, x8, x9, ne
	adrp	x1, l_.memset_pattern@PAGE
	add	x1, x1, l_.memset_pattern@PAGEOFF
	bl	_memset_pattern16
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	adrp	x10, _min@PAGE
	ldr	w10, [x10, _min@PAGEOFF]
	ands	w8, w8, w10
	cset	w8, ne
	tbnz	w8, #0, LBB1_3
	b	LBB1_2
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_13 Depth 2
                                        ;     Child Loop BB1_17 Depth 2
                                        ;     Child Loop BB1_6 Depth 2
	subs	w8, w0, #0
	cset	w8, le
	tbnz	w8, #0, LBB1_3
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_1 Depth=1
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_1 Depth=1
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB1_5
LBB1_5:                                 ;