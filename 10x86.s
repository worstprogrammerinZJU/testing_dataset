	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _str@GOTPAGE
	ldr	x8, [x8, _str@GOTPAGEOFF]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	w9, #35763
	movk	w9, #47630, lsl #16
	stur	w9, [x29, #-20]                 ; 4-byte Folded Spill
	mov	w9, #33123
	movk	w9, #35765, lsl #16
	stur	w9, [x29, #-16]                 ; 4-byte Folded Spill
	mov	w9, #53949
	movk	w9, #29279, lsl #16
	stur	w9, [x29, #-12]                 ; 4-byte Folded Spill
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	mov	w8, #10
	b	LBB0_1
LBB0_1:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w9, [x29, #-12]                 ; 4-byte Folded Reload
	ldur	w10, [x29, #-16]                ; 4-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	w8, w8, #1
	mul	w8, w8, w10
	add	w8, w8, w9
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w9, [x29, #-16]                 ; 4-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	w9, w8, #1
	subs	w8, w9, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldrsb	w8, [x8, #1]
	subs	w8, w8, #63
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x9, _qu@GOTPAGE
	ldr	x9, [x9, _qu@GOTPAGEOFF]
	mov	w8, #0
	str	w8, [x9]
	b	LBB0_6
LBB0_5:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldrb	w8, [x8, #7]
	subs	w8, w8, #88
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_6
LBB0_6:
	ldur	w8, [x29, #-16]                 ; 4-byte Folded Reload
	subs	w8, w8, #63
	cset	w8, ne
	tbnz	w8, #0, LBB0_9
	b	LBB0_7
LBB0_7:
	adrp	x9, _qu@GOTPAGE
	ldr	x9, [x9, _qu@GOTPAGEOFF]
	mov	w8, #9
	str	w8, [x9]
	b	LBB0_10
LBB0_8:
	add	w8, w0, #10
	b	LBB0_10
LBB0_9:
	ldur	w8, [x29, #-20]                 ; 4-byte Folded Reload
	add	w8, w8, w0, sxtb
	subs	w8, w8, #48
	b	LBB0_10
LBB0_10:
	adrp	x8, _qu@GOTPAGE
	ldr	x8, [x8, _qu@GOTPAGEOFF]
	ldr	w9, [x8]
	mov	w8, #10
	subs	w10, w8, w9
	mov	x9, sp
	str	xzr, [x9]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #8]
	b	LBB0_11
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-12]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-20]                 ; 4-byte Folded Reload
	mul	w8, w8, w9
	mov	w10, #59555
	movk	w10, #3004, lsl #16
	add	w8, w8, w10
	mov	w9, #53605
	movk	w9, #6029, lsl #16
	subs	w8, w8, w9
	cset	w8, lo
	tbnz	w8, #0, LBB0_18
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	add	w9, w8, #1
	add	w8, w8, #2
	subs	w8, w9, #10
	cset	w8, ne
	tbnz	w8, #0, LBB0_11
	b	LBB0_13
LBB0_13:
	ldur	w9, [x29, #-20]                 ; 4-byte Folded Reload
	ldur	w8, [x29, #-16]                 ; 4-byte Folded Reload
	mul	w8, w8, w9
	mov	w9, #23848
	movk	w9, #20868, lsl #16
	add	w8, w8, w9
	mov	w9, #53604
	movk	w9, #6029, lsl #16
	subs	w8, w8, w9
	cset	w8, ls
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:
	adrp	x0, l_str.4@PAGE
	add	x0, x0, l_str.4@PAGEOFF
	b	LBB0_15
LBB0_15:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_16
LBB0_16:
	adrp	x0, l_str.5@PAGE
	add	x0, x0, l_str.5@PAGEOFF
	b	LBB0_17
LBB0_17:
	bl	_puts
	b	LBB0_18
LBB0_18:
	mov	w0, #0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

	.comm	_str,20,0                       ; @str
	.comm	_qu,4,2                         ; @qu
l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

l_str.4:                                ; @str.4
	