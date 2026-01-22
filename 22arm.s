	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0]
	ldr	w9, [x1]
	cmp	w8, w9
	csetm	w8, gt
	csinc	w0, w8, wzr, ge
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	mov	w9, #8032                       ; =0x1f60
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #3936
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x22, sp, #20
	str	x22, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #20]
	cbz	w8, LBB1_17
; %bb.1:
Lloh7:
	adrp	x19, l_.str@PAGE
Lloh8:
	add	x19, x19, l_.str@PAGEOFF
Lloh9:
	adrp	x20, _cmp@PAGE
Lloh10:
	add	x20, x20, _cmp@PAGEOFF
	mov	w23, #-200                      ; =0xffffff38
Lloh11:
	adrp	x21, l_.str.1@PAGE
Lloh12:
	add	x21, x21, l_.str.1@PAGEOFF
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	str	x11, [sp]
	mov	x0, x21
	bl	_printf
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #20]
	cbz	w8, LBB1_17
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
                                        ;     Child Loop BB1_8 Depth 2
                                        ;     Child Loop BB1_11 Depth 2
                                        ;     Child Loop BB1_14 Depth 2
                                        ;       Child Loop BB1_15 Depth 3
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.lt	LBB1_6
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	x24, #0                         ; =0x0
	add	x25, sp, #4024
LBB1_5:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x25, [sp]
	mov	x0, x19
	bl	_scanf
	add	x24, x24, #1
	ldrsw	x8, [sp, #20]
	add	x25, x25, #4
	cmp	x24, x8
	b.lt	LBB1_5
LBB1_6:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.lt	LBB1_10
; %bb.7:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	x24, #0                         ; =0x0
	add	x25, sp, #24
LBB1_8:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x25, [sp]
	mov	x0, x19
	bl	_scanf
	add	x24, x24, #1
	ldrsw	x8, [sp, #20]
	add	x25, x25, #4
	cmp	x24, x8
	b.lt	LBB1_8
; %bb.9:                                ;   in Loop: Header=BB1_3 Depth=1
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
LBB1_10:                                ;   in Loop: Header=BB1_3 Depth=1
	sxtw	x1, w8
	add	x0, sp, #4024
	mov	w2, #4                          ; =0x4
	mov	x3, x20
	bl	_qsort
	ldrsw	x1, [sp, #20]
	add	x24, sp, #24
	add	x0, sp, #24
	mov	w2, #4                          ; =0x4
	mov	x3, x20
	bl	_qsort
	ldr	w11, [sp, #4024]
	ldrsw	x8, [sp, #20]
	mov	x9, #-1                         ; =0xffffffffffffffff
LBB1_11:                                ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x10, x24
	add	x9, x9, #1
	ldr	w12, [x24], #4
	cmp	w11, w12
	ccmp	x9, x8, #0, lt
	b.lt	LBB1_11
; %bb.12:                               ;   in Loop: Header=BB1_3 Depth=1
	mul	w11, w8, w23
	cmp	w8, w9
	b.le	LBB1_2
; %bb.13:                               ;   in Loop: Header=BB1_3 Depth=1
	mov	w12, w8
LBB1_14:                                ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_15 Depth 3
	mul	w13, w9, w23
	add	x14, sp, #4024
	mov	x15, x9
	mov	x16, x10
LBB1_15:                                ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_14 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w17, [x14], #4
	ldr	w0, [x16], #4
	add	w1, w13, #200
	sub	w2, w13, #200
	cmp	w17, w0
	csel	w13, w2, w13, lt
	csel	w13, w1, w13, gt
	add	w15, w15, #1
	cmp	w8, w15
	b.gt	LBB1_15
; %bb.16:                               ;   in Loop: Header=BB1_14 Depth=2
	cmp	w13, w11
	csel	w11, w13, w11, gt
	add	x9, x9, #1
	add	x10, x10, #4
	cmp	x9, x12
	b.ne	LBB1_14
	b	LBB1_2
LBB1_17:
	ldur	x8, [x29, #-72]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_19
; %bb.18:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #1, lsl #12             ; =4096
	add	sp, sp, #3936
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB1_19:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
