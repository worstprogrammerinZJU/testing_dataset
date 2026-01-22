	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_point                          ; -- Begin function point
	.p2align	2
_point:                                 ; @point
	.cfi_startproc
; %bb.0:
	fmov	d1, #3.00000000
	fcmp	d0, d1
	b.ls	LBB0_3
; %bb.1:
	fmov	d1, #6.00000000
	fcmp	d0, d1
	b.ls	LBB0_4
; %bb.2:
	mov	w8, #60                         ; =0x3c
	fmov	d1, #9.00000000
	mov	w9, #40                         ; =0x28
	fmov	d2, #12.00000000
	fmov	d3, #15.00000000
	fcmp	d0, d3
	mov	w10, #20                        ; =0x14
	csel	w10, wzr, w10, hi
	fcmp	d0, d2
	csel	w9, w9, w10, ls
	fcmp	d0, d1
	csel	w0, w8, w9, ls
	ret
LBB0_3:
	mov	w0, #100                        ; =0x64
	ret
LBB0_4:
	mov	w0, #80                         ; =0x50
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	d13, d12, [sp, #32]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #48]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #64]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #80]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
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
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
	add	x21, sp, #16
	add	x22, sp, #24
	stp	x22, x21, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	d0, [sp, #24]
	mov	x8, #-4586634745500139520       ; =0xc059000000000000
	fmov	d1, x8
	fcmp	d0, d1
	b.eq	LBB1_34
; %bb.1:
	fmov	d8, #3.00000000
	fmov	d9, #6.00000000
Lloh2:
	adrp	x19, l_.str@PAGE
Lloh3:
	add	x19, x19, l_.str@PAGEOFF
	mov	w23, #20                        ; =0x14
	fmov	d10, #9.00000000
	fmov	d11, #12.00000000
	fmov	d12, #15.00000000
Lloh4:
	adrp	x24, l_str@PAGE
Lloh5:
	add	x24, x24, l_str@PAGEOFF
Lloh6:
	adrp	x25, l_str.5@PAGE
Lloh7:
	add	x25, x25, l_str.5@PAGEOFF
	fmov	d13, x8
Lloh8:
	adrp	x26, l_str.6@PAGE
Lloh9:
	add	x26, x26, l_str.6@PAGEOFF
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	stp	x27, x28, [sp]
Lloh10:
	adrp	x0, l_.str.1@PAGE
Lloh11:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	cmp	w27, w28
	csel	x8, x25, x24, hi
	csel	x0, x26, x8, eq
	bl	_puts
	stp	x22, x21, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	d0, [sp, #24]
	fcmp	d0, d13
	b.eq	LBB1_34
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_15 Depth 2
                                        ;     Child Loop BB1_26 Depth 2
	ldr	d1, [sp, #16]
	fmul	d1, d1, d1
	fmadd	d0, d0, d0, d1
	fsqrt	d0, d0
	fcmp	d0, d8
	b.ls	LBB1_8
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	fcmp	d0, d9
	b.ls	LBB1_9
; %bb.5:                                ;   in Loop: Header=BB1_3 Depth=1
	fcmp	d0, d10
	b.ls	LBB1_10
; %bb.6:                                ;   in Loop: Header=BB1_3 Depth=1
	fcmp	d0, d11
	b.ls	LBB1_11
; %bb.7:                                ;   in Loop: Header=BB1_3 Depth=1
	fcmp	d0, d12
	csel	w27, wzr, w23, hi
	b	LBB1_12
LBB1_8:                                 ;   in Loop: Header=BB1_3 Depth=1
	mov	w27, #100                       ; =0x64
	b	LBB1_12
LBB1_9:                                 ;   in Loop: Header=BB1_3 Depth=1
	mov	w27, #80                        ; =0x50
	b	LBB1_12
LBB1_10:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	w27, #60                        ; =0x3c
	b	LBB1_12
LBB1_11:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	w27, #40                        ; =0x28
LBB1_12:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	w28, #1                         ; =0x1
	b	LBB1_15
LBB1_13:                                ;   in Loop: Header=BB1_15 Depth=2
	mov	w8, #100                        ; =0x64
LBB1_14:                                ;   in Loop: Header=BB1_15 Depth=2
	add	w27, w8, w27
	subs	w28, w28, #1
	b.ne	LBB1_23
LBB1_15:                                ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	stp	x22, x21, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	d1, d0, [sp, #16]
	fmul	d1, d1, d1
	fmadd	d0, d0, d0, d1
	fsqrt	d0, d0
	fcmp	d0, d8
	b.ls	LBB1_13
; %bb.16:                               ;   in Loop: Header=BB1_15 Depth=2
	fcmp	d0, d9
	b.ls	LBB1_20
; %bb.17:                               ;   in Loop: Header=BB1_15 Depth=2
	fcmp	d0, d10
	b.ls	LBB1_21
; %bb.18:                               ;   in Loop: Header=BB1_15 Depth=2
	fcmp	d0, d11
	b.ls	LBB1_22
; %bb.19:                               ;   in Loop: Header=BB1_15 Depth=2
	fcmp	d0, d12
	csel	w8, wzr, w23, hi
	b	LBB1_14
LBB1_20:                                ;   in Loop: Header=BB1_15 Depth=2
	mov	w8, #80                         ; =0x50
	b	LBB1_14
LBB1_21:                                ;   in Loop: Header=BB1_15 Depth=2
	mov	w8, #60                         ; =0x3c
	b	LBB1_14
LBB1_22:                                ;   in Loop: Header=BB1_15 Depth=2
	mov	w8, #40                         ; =0x28
	b	LBB1_14
LBB1_23:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	w28, #0                         ; =0x0
	mov	w20, #3                         ; =0x3
	b	LBB1_26
LBB1_24:                                ;   in Loop: Header=BB1_26 Depth=2
	mov	w8, #100                        ; =0x64
LBB1_25:                                ;   in Loop: Header=BB1_26 Depth=2
	add	w28, w8, w28
	subs	w20, w20, #1
	b.eq	LBB1_2
LBB1_26:                                ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	stp	x22, x21, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	d1, d0, [sp, #16]
	fmul	d1, d1, d1
	fmadd	d0, d0, d0, d1
	fsqrt	d0, d0
	fcmp	d0, d8
	b.ls	LBB1_24
; %bb.27:                               ;   in Loop: Header=BB1_26 Depth=2
	fcmp	d0, d9
	b.ls	LBB1_31
; %bb.28:                               ;   in Loop: Header=BB1_26 Depth=2
	fcmp	d0, d10
	b.ls	LBB1_32
; %bb.29:                               ;   in Loop: Header=BB1_26 Depth=2
	fcmp	d0, d11
	b.ls	LBB1_33
; %bb.30:                               ;   in Loop: Header=BB1_26 Depth=2
	fcmp	d0, d12
	csel	w8, wzr, w23, hi
	b	LBB1_25
LBB1_31:                                ;   in Loop: Header=BB1_26 Depth=2
	mov	w8, #80                         ; =0x50
	b	LBB1_25
LBB1_32:                                ;   in Loop: Header=BB1_26 Depth=2
	mov	w8, #60                         ; =0x3c
	b	LBB1_25
LBB1_33:                                ;   in Loop: Header=BB1_26 Depth=2
	mov	w8, #40                         ; =0x28
	b	LBB1_25
LBB1_34:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #48]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%lf%lf"

l_.str.1:                               ; @.str.1
	.asciz	"SCORE: %d to %d, "

l_str:                                  ; @str
	.asciz	"PLAYER 2 WINS."

l_str.5:                                ; @str.5
	.asciz	"PLAYER 1 WINS."

l_str.6:                                ; @str.6
	.asciz	"TIE."

.subsections_via_symbols
