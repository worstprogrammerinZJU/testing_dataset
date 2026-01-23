.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #96
	.cset	w8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	x9, sp
	add	x8, sp, #28
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_10
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [x9]
	mov	x8, #1677
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	x8, [x9, #8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_bzero
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	mov	w8, #0
	and	w10, w8, #0x1
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w9, [sp, #28]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	mov	x0, #1677
	bl	_printf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x9, x8, #4
	subs	x9, x9, #16
	cset	w9, ne
	tbnz	w9, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ; =>Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-24]
	sdiv	w8, w8, w9
	ldur	w9, [x29, #-20]
	subs	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ; =>Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_5
LBB0_5:                                 ; =>Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	sdiv	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ; =>Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-16]
	sdiv	w8, w8, w9
	ldur	w9, [x29, #-12]
	subs	w9, w9, w8
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ; =>Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_8
LBB0_8:                                 ; =>Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-20]
	sdiv	w8, w8, w9
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ; =>Loop: Header=BB0_4 Depth=1
	bl	___stack_chk_fail
LBB0_10:
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	mov	w1, #0
	mov	w2, #0
	bl	_memset
	sub	sp, sp, #96
	add	sp, sp, #96
	ret
LBB0_11:
	bl	___stack_chk_fail
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d "

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols