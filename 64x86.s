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
	sub	x8, x29, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-4]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	adrp	x9, _reverse@GOTPAGE
	ldr	x9, [x9, _reverse@GOTPAGEOFF]
	br	x9
LBB0_2:                                 ;   in Loop: Header=BB0_6 Depth=1
	mov	w8, #0
	stur	w8, [x29, #-20]                 ; 4-byte Folded Spill
	adrp	x9, _reverse@GOTPAGE
	ldr	x9, [x9, _reverse@GOTPAGEOFF]
	str	w8, [x9]
	subs	w8, w8, #1
	and	w1, w8, #0x1
	bl	_mergesort
	ldr	w2, [x8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	w1, #1
	bl	_printf
	ldur	w9, [x29, #-20]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	x9, sp
	sub	x8, x29, #8
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_6 Depth=1
	adrp	x8, _x@GOTPAGE
	ldr	x8, [x8, _x@GOTPAGEOFF]
	ldr	w8, [x8]
	add	w8, w8, #1
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x9, sp
	adrp	x8, _x@GOTPAGE
	ldr	x8, [x8, _x@GOTPAGEOFF]
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	mov	x8, #1
	add	x9, x8, #1
	ldursw	x10, [x29, #-8]
	add	x8, x8, x10
	subs	x8, x8, x9
	cset	w8, lt
	tbnz	w8, #0, LBB0_6
	b	LBB0_6
LBB0_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
                                        ; -- End function
	.globl	_mergesort                      ; -- Begin function mergesort
	.p2align	2
_mergesort:                             ; @mergesort
; %bb.0:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB1_1
	b	LBB1_2
LBB1_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x9
	cset	w8, gt
	tbnz	w8, #0, LBB1_3
	b	LBB1_2
LBB1_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB1_4
	b	LBB1_3
LBB1_3:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x9
	cset	w8, lt
	tbnz	w8, #0, LBB1_5
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x10, x8, #1
	ldr	w8, [x9, x10, lsl #2]
	ldrsw	x9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB1_6
	b	LBB1_5
LBB1_5:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x10, x8, #1
	ldr	w8, [x9, x10, lsl #2]
	ldrsw	x9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB1_7
	b	LBB1_6
LBB1_6:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, #1
	ldr	w8, [x9, x8, lsl #2]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB1_8
	b	LBB1_7
LBB1_7:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x9
	cset	w8, le
	tbnz	w8, #0, LBB1_2
	b	LBB1_8
LBB1_8:
	b	LBB1_9
LBB1_9:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	