.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #112
	.p2align	2
	str	xzr, [sp, #72]
	str	xzr, [sp, #80]
	str	xzr, [sp, #88]
	str	xzr, [sp, #96]
	str	xzr, [sp, #104]
	str	xzr, [sp, #112]
	str	xzr, [sp, #120]
	str	xzr, [sp, #128]
	str	xzr, [sp, #136]
	str	xzr, [sp, #144]
	str	xzr, [sp, #152]
	str	wzr, [sp, #160]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
	mov	w8, #1
	add	w8, w8, #1
	subs	w8, w8, #4
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_0
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	bl	_gets
	ldrb	w8, [sp, #16]
	tbz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_4
	.p2align	2
LBB0_5:                                 ;   in Loop: Header=BB0_4 Depth=2
	ldr	x8, [sp, #16]
	and	x8, x8, #0xff
	stur	x8, [x29, #-16]
	b	LBB0_4
LBB0_6:                                 ;   in Loop: Header=BB0_4 Depth=2
	adrp	x8, l_.str.6@PAGE
	add	x8, x8, l_.str.6@PAGEOFF
	ldr	x8, [x8]
	and	x8, x8, #0xff
	stur	x8, [x29, #-16]
	b	LBB0_4
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=2
	adrp	x8, l_.str.7@PAGE
	add	x8, x8, l_.str.7@PAGEOFF
	ldr	x8, [x8]
	and	x8, x8, #0xff
	stur	x8, [x29, #-16]
	b	LBB0_4
LBB0_8:
	mov	x9, sp
	str	x8, [x9]
	mov	x8, #65
	str	x8, [x9, #8]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	mov	w8, #1
	add	w8, w8, #1
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	mov	w8, #0
	add	w8, w8, #1
	str	w8, [sp]                        ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_12
	b	LBB0_10
LBB0_10:
	bl	___stack_chk_fail
LBB0_11:
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	add	sp, sp, #112
	ret
LBB0_12:
	bl	___stack_chk_fail
LBB0_13:
	mov	w0, #0
	add	sp, sp, #112
	ret
LBB0_14:
	mov	w0, #1
	mov	x1, #80
	adrp	x2, l_.str@PAGE
	add	x2, x2, l_.str@PAGEOFF
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	add	sp, sp, #112
	ret
LBB0_15:
	mov	w8, #0
	mov	w9, #0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	add	w8, w8, #1
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_17
	b	LBB0_16
LBB0_16:
	mov	w8, #0
	add	w8, w8, #1
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_18
	b	LBB0_17
LBB0_17:
	mov	w0, #0
	add	sp, sp, #112
	ret
LBB0_18:
	mov	w0, #0
	add	sp, sp, #112
	ret
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"* "

l_.str.1:                               ; @.str.1
	.asciz	"  "

l_.str.4:                               ; @.str.4
	.asciz	"%c "

l_str:                                  ; @str
	.asciz	"Z"

l_str.6:                                ; @str.6
	.asciz	" "

l_str.7:                                ; @str.7
	.asciz	"*"

.subsections_via_symbols