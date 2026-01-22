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
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #4048
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
	.cfi_offset w27, -88
	.cfi_offset w28, -96
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
Lloh3:
	adrp	x25, _n@GOTPAGE
Lloh4:
	ldr	x25, [x25, _n@GOTPAGEOFF]
Lloh5:
	adrp	x26, _m@GOTPAGE
Lloh6:
	ldr	x26, [x26, _m@GOTPAGEOFF]
	stp	x26, x25, [sp]
Lloh7:
	adrp	x0, l_.str@PAGE
Lloh8:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x26]
	ldr	w9, [x25]
	orr	w8, w8, w9
	cbz	w8, LBB1_15
; %bb.1:
	add	x27, sp, #28
	add	x19, x27, #4
Lloh9:
	adrp	x24, _card@GOTPAGE
Lloh10:
	ldr	x24, [x24, _card@GOTPAGEOFF]
Lloh11:
	adrp	x21, l_.str.1@PAGE
Lloh12:
	add	x21, x21, l_.str.1@PAGEOFF
	mov	w28, #1                         ; =0x1
	mov	w22, #1                         ; =0x1
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	mov	w8, #0                          ; =0x0
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	add	w20, w22, #1
	stp	x22, x8, [sp]
Lloh13:
	adrp	x0, l_.str.2@PAGE
Lloh14:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	stp	x26, x25, [sp]
Lloh15:
	adrp	x0, l_.str@PAGE
Lloh16:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x26]
	ldr	w9, [x25]
	mov	x22, x20
	orr	w8, w8, w9
	cbz	w8, LBB1_15
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
                                        ;     Child Loop BB1_12 Depth 2
                                        ;       Child Loop BB1_13 Depth 3
	ldr	w23, [x25]
	cmp	w23, #1
	b.lt	LBB1_8
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x23, #0                         ; =0x0
	mov	x20, x24
LBB1_6:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x20, [sp]
	mov	x0, x21
	bl	_scanf
	add	x23, x23, #1
	ldrsw	x8, [x25]
	add	x20, x20, #4
	cmp	x23, x8
	b.lt	LBB1_6
; %bb.7:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x23, x8
LBB1_8:                                 ;   in Loop: Header=BB1_4 Depth=1
	ldr	w8, [x26]
	mul	w8, w8, w23
	cmp	w8, #1
	b.lt	LBB1_10
; %bb.9:                                ;   in Loop: Header=BB1_4 Depth=1
	ubfiz	x1, x8, #2, #32
	mov	x0, x19
	bl	_bzero
LBB1_10:                                ;   in Loop: Header=BB1_4 Depth=1
	sxtw	x1, w23
	mov	x0, x24
	mov	w2, #4                          ; =0x4
Lloh17:
	adrp	x3, _cmp@PAGE
Lloh18:
	add	x3, x3, _cmp@PAGEOFF
	bl	_qsort
	ldr	w9, [x25]
	cmp	w9, #1
	b.lt	LBB1_2
; %bb.11:                               ;   in Loop: Header=BB1_4 Depth=1
	mov	x10, #0                         ; =0x0
	mov	w8, #0                          ; =0x0
	ldr	w11, [x26]
	mul	w11, w11, w9
LBB1_12:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_13 Depth 3
	add	x12, x19, w11, sxtw #2
	add	w11, w11, #1
LBB1_13:                                ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w13, [x12, #-4]!
	sub	w11, w11, #1
	cmp	w13, #1
	b.eq	LBB1_13
; %bb.14:                               ;   in Loop: Header=BB1_12 Depth=2
	ldrsw	x13, [x24, x10, lsl #2]
	cmp	w13, w11
	cinc	w8, w8, eq
	str	w28, [x12]
	str	w28, [x27, x13, lsl #2]
	add	x10, x10, #1
	cmp	x10, x9
	b.ne	LBB1_12
	b	LBB1_3
LBB1_15:
	ldur	x8, [x29, #-96]
Lloh19:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh20:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh21:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_17
; %bb.16:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #4048
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB1_17:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGot	Lloh5, Lloh6
	.loh AdrpLdrGot	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpLdrGotLdr	Lloh19, Lloh20, Lloh21
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

	.comm	_m,4,2                          ; @m
	.comm	_n,4,2                          ; @n
l_.str.1:                               ; @.str.1
	.asciz	"%d"

	.comm	_card,200,2                     ; @card
l_.str.2:                               ; @.str.2
	.asciz	"Case %d: %d\n"

.subsections_via_symbols
