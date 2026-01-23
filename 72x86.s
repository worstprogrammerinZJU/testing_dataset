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
	adrp	x10, _n@GOTPAGE
	ldr	x10, [x10, _n@GOTPAGEOFF]
	str	x10, [sp, #24]                  ; 8-byte Folded Spill
	adrp	x8, _k@GOTPAGE
	ldr	x8, [x8, _k@GOTPAGEOFF]
	stur	x8, [x29, #-8]                  ; 8-byte Folded Spill
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_1
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	sub	x8, x29, #12
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	mov	x9, sp
	str	x8, [x9]
	adrp	x8, _breed@PAGE
	add	x8, x8, _breed@PAGEOFF
	str	x8, [x9, #8]
	mov	w8, #0
	str	w8, [x9, #16]
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w8, [sp, #40]                   ; 8-byte Folded Reload
	add	w8, w8, #1
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	bl	_scanf
	ldursw	x9, [x29, #-12]
	adrp	x8, _breed@PAGE
	add	x8, x8, _breed@PAGEOFF
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldur	x9, [x29, #-8]                  ; 8-byte Folded Reload
	ldr	w10, [sp, #20]                  ; 4-byte Folded Reload
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	w11, w10, #1
	adrp	x10, _breed@PAGE
	add	x10, x10, _breed@PAGEOFF
	str	w11, [x10, w11, sxtw #2]
	ldrsw	x9, [x9]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	mov	x9, x0
	add	x2, x9, w8, sxtw #2
	mov	w1, #0
	mov	x3, #40004
	bl	___memset_chk
	b	LBB0_6
LBB0_6:
	mov	w8, #1
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB0_7
LBB0_7:
	ldr	w10, [sp, #20]                  ; 4-byte Folded Reload
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
                                        ; -- End function
	.globl	_breed                          ; @breed
.zerofill __DATA,__common,_breed,40004,2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

	.comm	_n,4,2                          ; @n
	.comm	_k,4,2                          ; @k
l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols

