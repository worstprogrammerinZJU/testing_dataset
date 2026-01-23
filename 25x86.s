.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x4059000000000000              ; double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, _tree@GOTPAGE
	ldr	x0, [x0, _tree@GOTPAGEOFF]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	adrp	x8, _n@PAGE
	ldrsw	x8, [x8, _n@PAGEOFF]
	lsl	x8, x8, #5
	subs	x0, x8, x9
	bl	_gets
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_14
	b	LBB0_1
LBB0_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	b	LBB0_2
	.p2align	2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	x0, #16
	bl	_malloc
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldur	q0, [x0, #16]
	str	q0, [x8]
	str	x0, [x8, #16]
	adrp	x9, _num@PAGE
	add	x9, x9, _num@PAGEOFF
	mov	w8, #1
	str	w8, [x9, x1]
	adrp	x8, _posi@GOTPAGE
	ldr	x8, [x8, _posi@GOTPAGEOFF]
	str	w8, [x9, x1]
	ldr	w8, [sp, #32]
	mov	x0, x8
	b	LBB0_13
LBB0_3:
	mov	w8, #1
	movk	w8, #53588, lsl #16
	movk	w8, #4095, lsl #32
	movk	w8, #1638, lsl #48
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	mov	x0, #16
	movk	x0, #53588, lsl #16
	movk	x0, #4095, lsl #32
	movk	x0, #1638, lsl #48
	bl	_qadd
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.p2align	2
lBB0_7:
	adrp	x8, _num@PAGE
	add	x8, x8, _num@PAGEOFF
	ldr	w8, [x8]
	mov	w0, #0
	str	w0, [x8]
	ret
	.p2align	2
lBB0_8:
	adrp	x0, _tree@GOTPAGE
	ldr	x0, [x0, _tree@GOTPAGEOFF]
	bl	_memcmp
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.p2align	2
	.globl	_ELFhash                        ; -- Begin function ELFhash
	.p2align	2
_ELFhash:                               ; @ELFhash
## %bb.0:
	mov	w8, #0
	movk	w8, #0, #2435, lsl #16
	movk	w8, #2867, lsl #32
	movk	w8, #1638, lsl #48
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, ne
	tbnz	w8, #0, LBB1_2
	b	LBB1_3
LBB1_2:
	mov	w0, #0
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #16
	ret
	.p2align	2
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
; %bb.0:
	ldr	x8, [sp, #24]                   ; @tree@GOTPAGE
	ldr	x8, [x8, _tree@GOTPAGEOFF]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #16
	ret
	.p2align	2
	.globl	_link                           ; @link
.zerofill __DATA,__common,_link,80056,2
	.globl	_num                            ; @num
.zerofill __DATA,__common,_num,40000,2
	.globl	_n                              ; @n
.zerofill __DATA,__common,_n,4,2
	.globl	_m                              ; @m
.zerofill __DATA,__common,_m,4,2
	.comm	_tree,310000,2                  ; @tree
	.comm	_posi,40000,2                   ; @posi
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s %.4lf\n"

.subsections_via_symbols