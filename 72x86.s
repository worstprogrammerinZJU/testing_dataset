.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #64
	str	w8, [sp, #16]
	mov	x9, sp
	adrp	x8, _n@GOTPAGE
	ldr	x8, [x8, _n@GOTPAGEOFF]
	str	x8, [x9]
	adrp	x8, _k@GOTPAGE
	ldr	x8, [x8, _k@GOTPAGEOFF]
	str	x8, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adrp	x8, _n@GOTPAGE
	ldr	x8, [x8, _n@GOTPAGEOFF]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_1
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	mov	x9, sp
	adrp	x8, _breed@PAGE
	add	x8, x8, _breed@PAGEOFF
	str	x8, [x9]
	add	x8, sp, #8
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldrsw	x9, [sp, #8]
	adrp	x8, _breed@PAGE
	add	x8, x8, _breed@PAGEOFF
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x9, sp
	adrp	x8, _breed@PAGE
	add	x8, x8, _breed@PAGEOFF
	str	x8, [x9]
	add	x8, sp, #12
	str	x8, [x9, #8]
	mov	x0, x8
	bl	_scanf
	ldrsw	x9, [sp, #8]
	adrp	x8, _breed@PAGE
	add	x8, x8, _breed@PAGEOFF
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_3
LBB0_3:                                 ; =>Loop: Header=BB0_6 Depth=1
	mov	w8, #1
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	add	x8, sp, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	adrp	x9, _n@GOTPAGE
	ldr	x9, [x9, _n@GOTPAGEOFF]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_4
LBB0_4:                                 ; =>Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	add	w8, w8, #1
	adrp	x9, _n@GOTPAGE
	ldr	x9, [x9, _n@GOTPAGEOFF]
	str	w8, [x9, x8, lsl #2]
	adrp	x8, _k@GOTPAGE
	ldr	x8, [x8, _k@GOTPAGEOFF]
	ldrsw	x9, [x8]
	mov	x8, #0
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB0_8
	b	LBB0_5
LBB0_5:                                 ; =>Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	adrp	x9, _n@GOTPAGE
	ldr	x9, [x9, _n@GOTPAGEOFF]
	str	w8, [x9, x8, lsl #2]
	mov	x0, #0
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x1, #40004
	bl	_memset_chk
	b	LBB0_8
LBB0_6:
	mov	w8, #1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_7
LBB0_7:
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	mov	x0, #0
	bl	_printf
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
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