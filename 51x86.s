	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cude                           ; -- Begin function cude
	.p2align	2
_cude:                                  ; @cude
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w9, #5
	stur	w9, [x29, #-8]                  ; 4-byte Folded Spill
	mul	w8, w9, w0
	mul	w8, w8, w0
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	mov	w8, #2
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	ands	w10, w10, #0x1
	csinc	w8, w8, wzr, eq
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	b	LBB0_1
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	w9, [x29, #-8]                  ; 4-byte Folded Reload
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	add	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;       Child Loop BB0_7 Depth 3
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	add	w8, w8, #1
	mul	w9, w8, w0
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	subs	w8, w8, w9, uxtw
	cset	w8, le
	tbnz	w8, #0, LBB0_14
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	ldur	w9, [x29, #-8]                  ; 4-byte Folded Reload
	ldur	w10, [x29, #-12]                ; 4-byte Folded Reload
	mul	w10, w9, w10
	mul	w8, w8, w10
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldur	w8, [x29, #-8]                  ; 4-byte Folded Reload
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, w9, sxtw
	cset	w8, ls
	tbnz	w8, #0, LBB0_14
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldur	w10, [x29, #-12]                ; 4-byte Folded Reload
	mul	w9, w10, w8
	mul	w8, w8, w10
	add	w8, w8, w9
	subs	w8, w8, w10
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldur	w9, [x29, #-12]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-8]                  ; 4-byte Folded Reload
	add	w8, w8, #1
	add	w8, w8, w9
	subs	w8, w8, w9, uxtw
	cset	w8, le
	tbnz	w8, #0, LBB0_14
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldur	w8, [x29, #-8]                  ; 4-byte Folded Reload
	ldr	w9, [sp, #16]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	add	w8, w8, w9
	subs	w8, w8, w9, uxtw
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldur	w9, [x29, #-12]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-8]                  ; 4-byte Folded Reload
	add	w8, w8, #1
	add	w8, w8, w9
	subs	w8, w8, w9, uxtw
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	add	w8, w8, w8, uxtw
	subs	w8, w8, w8, uxtw
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	add	w8, w8, w8, uxtw
	subs	w8, w8, w8, uxtw
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_2 Depth=2
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	add	w8, w8, #1
	add	w8, w8, w8, uxtw
	subs	w8, w8, w8, uxtw
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	add	w8, w8, w8, uxtw
	subs	w8, w8, w8, uxtw
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_2 Depth=2
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	add	w8, w8, #1
	add	w8, w8, w8, uxtw
	subs	w8, w8, w8, uxtw
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_14
LBB0_14:
	ldur	x9,