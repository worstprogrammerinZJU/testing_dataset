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
	adrp	x8, _f@GOTPAGE
	ldr	x8, [x8, _f@GOTPAGEOFF]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x8, x8, #4
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	mov	x8, #39793
	movk	x8, #65534, lsl #16
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	add	x8, x8, #12
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	adrp	x8, _n@GOTPAGE
	ldr	x8, [x8, _n@GOTPAGEOFF]
	stur	x8, [x29, #-8]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	mov	x8, sp
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
	mov	w9, #0
	stur	w9, [x29, #-28]                 ; 4-byte Folded Spill
	tbz	w8, #0, LBB0_2
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	str	x8, [x9, #8]
	str	x8, [x9, #16]
	mov	w1, #0
	bl	_scanf
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	ldur	w8, [x29, #-24]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]                 ; 8-byte Folded Reload
	ldur	w9, [x29, #-8]                  ; 8-byte Folded Reload
	ldur	w9, [x29, #-16]                 ; 8-byte Folded Reload
	ldur	w9, [x29, #-16]                 ; 8-byte Folded Reload
	add	w9, w9, #1
	str	w9, [x8]
	adrp	x9, _min@PAGE
	ldr	w9, [x9, _min@PAGEOFF]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	x9, [x29, #-24]                 ; 8-byte Folded Reload
	ldur	w8, [x29, #-16]                 ; 8-byte Folded Reload
	add	w8, w8, #1
	ldur	x9, [x29, #-16]                 ; 8-byte Folded Reload
	add	w8, w8, #1
	ldur	x9, [x29, #-24]                 ; 8-byte Folded Reload
	add	w9, w9, #1
	ldur	x10, [x29, #-16]                ; 8-byte Folded Reload
	add	w9, w9, #1
	str	w9, [x10]
	add	x9, x9, #1
	str	x9, [x8]
	ldur	x9, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x8, x9
	ldur	x9, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x8, x9
	str	x8, [x9]
	ldur	x9, [x29, #-16]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	ldur	x9, [x29, #-16]                 ; 8-byte Folded Reload
	add	x9, x9, #1
	str	x9, [x8]
	add	x8, x8, x9
	str	x8, [x9]
	ldur	x9, [x29, #-16]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [x9]
	str	x8, [x9]
	ldur	x8, [x29, #-1