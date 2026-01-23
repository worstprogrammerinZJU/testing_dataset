	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	x9, sp
	add	x8, sp, #36
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	str	x8, [x9, #8]
	mov	w8, #0
	str	w8, [x9, #16]
	bl	_scanf
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, x8, #48
	subs	x8, x8, #48
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   Parent Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
                                        ;       Child Loop BB0_4 Depth 3
	mov	x9, sp
	add	x8, sp, #40
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	x8, [x9]
	mov	w8, #0
	str	w8, [x9, #8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_scanf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #48
	subs	x8, x8, #48
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop Header: Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_4 Depth 3
	sub	x8, x29, #32
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	w8, #0
	str	w8, [x8, x8, lsl #2]
	b	LBB0_4
LBB0_4:                                 ;   Parent Loop Header: Depth=1
                                        ;     Parent Loop BB0_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldrsb	w0, [x0, x8]
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #48
	subs	x8, x8, #48
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	sub	x8, x29, #32
	add	x8, x8, #48
	subs	x8, x8, #48
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-32]
                                        ; implicit-def: $x12
	mov	x12, x8
	ldur	w8, [x29, #-28]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldur	w8, [x29, #-24]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	w9, [x29, #-20]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x12, [x9]
	str	x11, [x9, #8]
	str	x10, [x9, #16]
	str	x8, [x9, #24]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	add	w8, w0, #1
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB0_2
	b	LBB0_7
LBB0_7:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	bl	___stack_chk_fail
LBB0_9:
	mov	w0, #0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%s"

l_.str.2:                               ; @.str.2
	.asciz	"%d.%d.%d.%d\n"

.subsections_via_symbols

