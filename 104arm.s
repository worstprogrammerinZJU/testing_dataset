	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_diff                           ; -- Begin function diff
	.p2align	2
_diff:                                  ; @diff
	.cfi_startproc
; %bb.0:
Lloh0:
	adrp	x8, _n@GOTPAGE
Lloh1:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh2:
	ldr	w8, [x8]
	add	w8, w8, w0
Lloh3:
	adrp	x9, _N@GOTPAGE
Lloh4:
	ldr	x9, [x9, _N@GOTPAGEOFF]
Lloh5:
	ldr	w9, [x9]
	sdiv	w10, w8, w9
	msub	w0, w10, w9, w8
	ret
	.loh AdrpLdrGotLdr	Lloh3, Lloh4, Lloh5
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.cfi_endproc
                                        ; -- End function
	.globl	_root                           ; -- Begin function root
	.p2align	2
_root:                                  ; @root
	.cfi_startproc
; %bb.0:
Lloh6:
	adrp	x9, _num@GOTPAGE
Lloh7:
	ldr	x9, [x9, _num@GOTPAGEOFF]
	mov	x10, x0
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	mov	x8, x10
	ldr	w10, [x9, w10, sxtw #2]
	cmp	w10, w8
	b.ne	LBB1_1
; %bb.2:
	cmp	w8, w0
	b.eq	LBB1_4
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x9, w0, sxtw #2]
	str	w8, [x9, w0, sxtw #2]
	mov	x0, x10
	cmp	w10, w8
	b.ne	LBB1_3
LBB1_4:
	mov	x0, x8
	ret
	.loh AdrpLdrGot	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
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
	add	x8, sp, #32
	str	x8, [sp]
Lloh8:
	adrp	x0, l_.str@PAGE
Lloh9:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #32]
	sub	w9, w8, #1
	str	w9, [sp, #32]
	cbz	w8, LBB2_32
; %bb.1:
Lloh10:
	adrp	x24, _n@GOTPAGE
Lloh11:
	ldr	x24, [x24, _n@GOTPAGEOFF]
Lloh12:
	adrp	x25, _N@GOTPAGE
Lloh13:
	ldr	x25, [x25, _N@GOTPAGEOFF]
Lloh14:
	adrp	x26, _num@GOTPAGE
Lloh15:
	ldr	x26, [x26, _num@GOTPAGEOFF]
	add	x28, sp, #40
	add	x19, sp, #44
	add	x27, sp, #31
Lloh16:
	adrp	x20, l_.str.2@PAGE
Lloh17:
	add	x20, x20, l_.str.2@PAGEOFF
Lloh18:
	adrp	x22, l_str@PAGE
Lloh19:
	add	x22, x22, l_str@PAGEOFF
Lloh20:
	adrp	x23, l_str.7@PAGE
Lloh21:
	add	x23, x23, l_str.7@PAGEOFF
	b	LBB2_3
LBB2_2:                                 ;   in Loop: Header=BB2_3 Depth=1
	ldr	w8, [sp, #32]
	sub	w9, w8, #1
	str	w9, [sp, #32]
	cbz	w8, LBB2_32
LBB2_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_5 Depth 2
                                        ;     Child Loop BB2_10 Depth 2
                                        ;       Child Loop BB2_23 Depth 3
                                        ;       Child Loop BB2_25 Depth 3
                                        ;       Child Loop BB2_27 Depth 3
                                        ;       Child Loop BB2_29 Depth 3
                                        ;       Child Loop BB2_12 Depth 3
                                        ;       Child Loop BB2_14 Depth 3
                                        ;       Child Loop BB2_16 Depth 3
                                        ;       Child Loop BB2_18 Depth 3
	add	x8, sp, #36
	stp	x24, x8, [sp]
Lloh22:
	adrp	x0, l_.str.1@PAGE
Lloh23:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	w8, [x24]
	lsl	w9, w8, #1
	str	w9, [x25]
	cmp	w8, #1
	b.lt	LBB2_6
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	w9, #1
	csinc	w9, w9, wzr, gt
LBB2_5:                                 ;   Parent Loop BB2_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	w8, [x26, x8, lsl #2]
	add	x8, x8, #1
	cmp	x9, x8
	b.ne	LBB2_5
LBB2_6:                                 ;   in Loop: Header=BB2_3 Depth=1
	ldr	w8, [sp, #36]
	cmp	w8, #1
	b.lt	LBB2_2
; %bb.7:                                ;   in Loop: Header=BB2_3 Depth=1
	mov	w21, #0                         ; =0x0
	b	LBB2_10
LBB2_8:                                 ;   in Loop: Header=BB2_10 Depth=2
	str	w11, [x26, w10, sxtw #2]
	add	w11, w11, w8
	sdiv	w12, w11, w9
	msub	w11, w12, w9, w11
	add	w8, w10, w8
	sdiv	w10, w8, w9
	msub	w8, w10, w9, w8
	str	w11, [x26, w8, sxtw #2]
LBB2_9:                                 ;   in Loop: Header=BB2_10 Depth=2
	add	w21, w21, #1
	ldr	w8, [sp, #36]
	cmp	w21, w8
	b.ge	LBB2_2
LBB2_10:                                ;   Parent Loop BB2_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_23 Depth 3
                                        ;       Child Loop BB2_25 Depth 3
                                        ;       Child Loop BB2_27 Depth 3
                                        ;       Child Loop BB2_29 Depth 3
                                        ;       Child Loop BB2_12 Depth 3
                                        ;       Child Loop BB2_14 Depth 3
                                        ;       Child Loop BB2_16 Depth 3
                                        ;       Child Loop BB2_18 Depth 3
	bl	_getchar
	stp	x19, x28, [sp, #8]
	str	x27, [sp]
	mov	x0, x20
	bl	_scanf
	ldrb	w8, [sp, #31]
	ldr	w9, [sp, #44]
	cmp	w8, #65
	b.ne	LBB2_22
; %bb.11:                               ;   in Loop: Header=BB2_10 Depth=2
	mov	x10, x9
LBB2_12:                                ;   Parent Loop BB2_3 Depth=1
                                        ;     Parent Loop BB2_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x8, x10
	ldr	w10, [x26, w10, sxtw #2]
	cmp	w10, w8
	b.ne	LBB2_12
; %bb.13:                               ;   in Loop: Header=BB2_10 Depth=2
	cmp	w8, w9
	b.eq	LBB2_15
LBB2_14:                                ;   Parent Loop BB2_3 Depth=1
                                        ;     Parent Loop BB2_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w10, [x26, w9, sxtw #2]
	str	w8, [x26, w9, sxtw #2]
	mov	x9, x10
	cmp	w10, w8
	b.ne	LBB2_14
LBB2_15:                                ;   in Loop: Header=BB2_10 Depth=2
	ldr	w10, [sp, #40]
	mov	x11, x10
LBB2_16:                                ;   Parent Loop BB2_3 Depth=1
                                        ;     Parent Loop BB2_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x9, x11
	ldr	w11, [x26, w11, sxtw #2]
	cmp	w11, w9
	b.ne	LBB2_16
; %bb.17:                               ;   in Loop: Header=BB2_10 Depth=2
	cmp	w9, w10
	b.eq	LBB2_19
LBB2_18:                                ;   Parent Loop BB2_3 Depth=1
                                        ;     Parent Loop BB2_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w11, [x26, w10, sxtw #2]
	str	w9, [x26, w10, sxtw #2]
	mov	x10, x11
	cmp	w11, w9
	b.ne	LBB2_18
LBB2_19:                                ;   in Loop: Header=BB2_10 Depth=2
	ldr	w10, [x24]
	sdiv	w11, w8, w10
	msub	w11, w11, w10, w8
	sdiv	w12, w9, w10
	msub	w10, w12, w10, w9
	cmp	w11, w10
	b.ne	LBB2_30
; %bb.20:                               ;   in Loop: Header=BB2_10 Depth=2
	cmp	w8, w9
	b.ne	LBB2_31
; %bb.21:                               ;   in Loop: Header=BB2_10 Depth=2
Lloh24:
	adrp	x0, l_str.6@PAGE
Lloh25:
	add	x0, x0, l_str.6@PAGEOFF
	bl	_puts
	b	LBB2_9
LBB2_22:                                ;   in Loop: Header=BB2_10 Depth=2
	ldr	w8, [x24]
	add	w10, w8, w9
	ldr	w9, [x25]
	sdiv	w11, w10, w9
	msub	w11, w11, w9, w10
	mov	x12, x11
LBB2_23:                                ;   Parent Loop BB2_3 Depth=1
                                        ;     Parent Loop BB2_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x10, x12
	ldr	w12, [x26, w12, sxtw #2]
	cmp	w12, w10
	b.ne	LBB2_23
; %bb.24:                               ;   in Loop: Header=BB2_10 Depth=2
	cmp	w10, w11
	b.eq	LBB2_26
LBB2_25:                                ;   Parent Loop BB2_3 Depth=1
                                        ;     Parent Loop BB2_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w12, [x26, w11, sxtw #2]
	str	w10, [x26, w11, sxtw #2]
	mov	x11, x12
	cmp	w12, w10
	b.ne	LBB2_25
LBB2_26:                                ;   in Loop: Header=BB2_10 Depth=2
	ldr	w12, [sp, #40]
	mov	x13, x12
LBB2_27:                                ;   Parent Loop BB2_3 Depth=1
                                        ;     Parent Loop BB2_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x11, x13
	ldr	w13, [x26, w13, sxtw #2]
	cmp	w13, w11
	b.ne	LBB2_27
; %bb.28:                               ;   in Loop: Header=BB2_10 Depth=2
	cmp	w11, w12
	b.eq	LBB2_8
LBB2_29:                                ;   Parent Loop BB2_3 Depth=1
                                        ;     Parent Loop BB2_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w13, [x26, w12, sxtw #2]
	str	w11, [x26, w12, sxtw #2]
	mov	x12, x13
	cmp	w13, w11
	b.ne	LBB2_29
	b	LBB2_8
LBB2_30:                                ;   in Loop: Header=BB2_10 Depth=2
	mov	x0, x23
	bl	_puts
	b	LBB2_9
LBB2_31:                                ;   in Loop: Header=BB2_10 Depth=2
	mov	x0, x22
	bl	_puts
	b	LBB2_9
LBB2_32:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh24, Lloh25
	.cfi_endproc
                                        ; -- End function
	.comm	_n,4,2                          ; @n
	.comm	_N,4,2                          ; @N
	.comm	_num,800008,2                   ; @num
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

l_.str.2:                               ; @.str.2
	.asciz	"%c%d%d"

l_str:                                  ; @str
	.asciz	"In different gangs."

l_str.6:                                ; @str.6
	.asciz	"In the same gang."

l_str.7:                                ; @str.7
	.asciz	"Not sure yet."

.subsections_via_symbols
