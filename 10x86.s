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
	adrp	x8, _str@GOTPAGE
	ldr	x8, [x8, _str@GOTPAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, sp
	mov	x10, x8
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	b	LBB0_1
LBB0_1:                                 ;   in Loop: Header=BB0_1 Depth=1
	subs	w8, w0, #48
	mul	w9, w8, w0
	mov	w8, #0
	add	w8, w8, w9
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	add	w8, w0, #1
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #63
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ; =>Loop: Header=BB0_1 Depth=1
	adrp	x9, _qu@GOTPAGE
	ldr	x9, [x9, _qu@GOTPAGEOFF]
	mov	w8, #10
	str	w8, [x9]
	b	LBB0_5
LBB0_5:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldrb	w8, [x8, #9]
	subs	w8, w8, #88
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_6
LBB0_6:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	w8, w8, #63
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_7
LBB0_7:
	mov	w8, #9
	str	w8, [x9]
	b	LBB0_11
LBB0_8:
	add	w8, w0, #10
	b	LBB0_11
LBB0_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	w8, w0, w8, sxtb
	subs	w8, w8, #48
	b	LBB0_11
LBB0_10:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w9, [x8]
	mov	w8, #10
	subs	w8, w8, w9
	mov	w1, #0
	mov	x3, x8
	bl	_bzero
	b	LBB0_11
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	mov	w8, #47795
	movk	w8, #47795, lsl #16
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	mul	w8, w8, w0
	mov	w9, #34765
	movk	w9, #34765, lsl #16
	add	w8, w8, w9
	mov	w9, #53285
	movk	w9, #53285, lsl #16
	subs	w8, w8, w9
	cset	w8, lo
	tbnz	w8, #0, LBB0_15
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_11 Depth=1
	mov	w8, #-1171354717
	mul	w8, w8, w0
	mov	w9, #23952
	movk	w9, #23952, lsl #16
	add	w8, w8, w9
	mov	w9, #53285
	movk	w9, #53285, lsl #16
	subs	w8, w8, w9
	cset	w8, ls
	tbnz	w8, #0, LBB0_16
	b	LBB0_13
LBB0_13:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_17
LBB0_14:
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	b	LBB0_15
LBB0_15:
	bl	_puts
	b	LBB0_16
LBB0_16:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

	.comm	_str,20,3                       ; @str
	.comm	_qu,4,2                         ; @qu
l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

l_str.4:                                ; @str.4
	.asciz	"-1"

l_str.5:                                ; @str.5
	.asciz	"X"

.subsections_via_symbols