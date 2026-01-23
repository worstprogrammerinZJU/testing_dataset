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
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _tree@GOTPAGE
	ldr	x8, [x8, _tree@GOTPAGEOFF]
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	adrp	x9, _n@PAGE
	ldrsw	x9, [x9, _n@PAGEOFF]
	lsr	x9, x9, #0
	add	x9, x9, #15
	and	x9, x9, #0xfffffffffffffff0
	str	x9, [sp, #40]                   ; 8-byte Folded Spill
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	mov	x9, sp
	subs	x0, x9, x10
	mov	sp, x0
	adrp	x9, _link@PAGE
	add	x9, x9, _link@PAGEOFF
	stur	x9, [x29, #-40]                 ; 8-byte Folded Spill
	ldr	x9, [x9, x10, lsl #3]
	str	x9, [x8, #8]
	ldrb	w9, [x8, x10, lsl #3]
	strb	w9, [x8, #16]
	adrp	x9, _num@PAGE
	add	x9, x9, _num@PAGEOFF
	str	w10, [x9, x10, lsl #2]
	adrp	x9, _posi@GOTPAGE
	ldr	x9, [x9, _posi@GOTPAGEOFF]
	str	w10, [x9, x10, lsl #2]
	adrp	x9, _n@PAGE
	add	x9, x9, _n@PAGEOFF
	b	LBB0_1
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	x0, #16
	bl	_malloc
	ldur	x10, [x29, #-40]                ; 8-byte Folded Reload
	ldr	x11, [x0]
	str	w11, [x8]
	ldr	x8, [x10]
	str	x8, [x0, #8]
	mov	w8, #1
	adrp	x9, _num@PAGE
	add	x9, x9, _num@PAGEOFF
	str	w8, [x9, x11, lsl #2]
	adrp	x9, _posi@GOTPAGE
	ldr	x9, [x9, _posi@GOTPAGEOFF]
	str	w10, [x9, x10, lsl #2]
	adrp	x9, _n@PAGE
	add	x9, x9, _n@PAGEOFF
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x9, _n@PAGE
	ldr	w8, [x9, _n@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x9, _n@PAGEOFF]
	adrp	x9, _m@PAGE
	ldr	w8, [x9, _m@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x9, _m@PAGEOFF]
	ldrsw	x8, [x9, _n@PAGEOFF]
	lsr	x9, x8, #0
	add	x8, x8, #15
	and	x8, x8, #0xfffffffffffffff0
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x8, sp
	subs	x0, x8, x10
	mov	sp, x0
	adrp	x8, _link@PAGE
	add	x8, x8, _link@PAGEOFF
	ldr	w8, [x8, x10, lsl #2]
	mov	w10, #31
	asr	w8, w8, w10
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x9, _link@PAGE
	add	x9, x9, _link@PAGEOFF
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x8, _link@PAGE
	add	x8, x8, _link@PAGEOFF
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldur	x8, [x29, #-40]                 ; 8-byte Folded Reload
	add	x8, x8, x0
	add	x8, x8, #1
	mov	x0, x8
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_10 Depth=2
	ldur	x8, [x29, #-40]                 ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x8, _num@PAGE
	add	x8, x8, _num@PAGEOFF
	ldr	w8, [x8, x0, lsl #2]
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	adrp	x8, _n@PAGE
	ldrsw	x1, [x8, _n@PAGEOFF]
	adrp	x0, _posi@GOTPAGE
	ldr	x0, [x0, _posi@GOTPAGEOFF]
	mov	x2, #4
	adrp	x3, _cmp@PAGE
	add	x3, x3, _cmp@PAGEOFF
	bl	_qsort
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	ldr	w8, [x8, _n@PAGEOFF]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_11
	b	LBB0_9
LBB0_9:
	ldur	x8, [x29, #-40]                 ; 8-byte Folded Reload
	adrp	x9, _num@PAGE