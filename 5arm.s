	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
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
	add	x24, sp, #36
	add	x25, sp, #40
	add	x26, sp, #44
	stp	x25, x24, [sp, #8]
	str	x26, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	s0, [sp, #44]
	fcmp	s0, #0.0
	b.ne	LBB0_2
LBB0_1:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB0_2:
	mov	w27, #199                       ; =0xc7
	fmov	s8, #4.50000000
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
	fmov	s9, #6.00000000
Lloh4:
	adrp	x20, l_.str.3@PAGE
Lloh5:
	add	x20, x20, l_.str.3@PAGEOFF
	fmov	s10, #5.00000000
Lloh6:
	adrp	x21, l_.str.4@PAGE
Lloh7:
	add	x21, x21, l_.str.4@PAGEOFF
Lloh8:
	adrp	x22, l_.str.5@PAGE
Lloh9:
	add	x22, x22, l_.str.5@PAGEOFF
Lloh10:
	adrp	x23, l_.str@PAGE
Lloh11:
	add	x23, x23, l_.str@PAGEOFF
	b	LBB0_4
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
	stp	x25, x24, [sp, #8]
	str	x26, [sp]
	mov	x0, x23
	bl	_scanf
	ldr	s0, [sp, #44]
	fcmp	s0, #0.0
	b.eq	LBB0_1
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldp	w8, w9, [sp, #36]
	cmp	w9, #149
	ccmp	w8, w27, #4, gt
	cset	w8, gt
	fcmp	s0, s8
	csel	w28, wzr, w8, hi
	cmp	w28, #1
	b.ne	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x19
	bl	_printf
	mov	w8, #1                          ; =0x1
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	s0, [sp, #44]
	fcmp	s0, s9
	b.hi	LBB0_13
; %bb.8:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w9, [sp, #40]
	cmp	w9, #300
	b.lt	LBB0_13
; %bb.9:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w9, [sp, #36]
	cmp	w9, #500
	b.lt	LBB0_13
; %bb.10:                               ;   in Loop: Header=BB0_4 Depth=1
	cbz	w28, LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_4 Depth=1
	mov	w0, #32                         ; =0x20
	bl	_putchar
LBB0_12:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x20
	bl	_printf
	mov	w8, #1                          ; =0x1
LBB0_13:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	s0, [sp, #44]
	fcmp	s0, s10
	b.hi	LBB0_19
; %bb.14:                               ;   in Loop: Header=BB0_4 Depth=1
	ldr	w9, [sp, #40]
	cmp	w9, #200
	b.lt	LBB0_19
; %bb.15:                               ;   in Loop: Header=BB0_4 Depth=1
	ldr	w9, [sp, #36]
	cmp	w9, #300
	b.lt	LBB0_19
; %bb.16:                               ;   in Loop: Header=BB0_4 Depth=1
	cbz	w8, LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_4 Depth=1
	mov	w0, #32                         ; =0x20
	bl	_putchar
LBB0_18:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x21
	bl	_printf
	mov	w8, #1                          ; =0x1
LBB0_19:                                ;   in Loop: Header=BB0_4 Depth=1
	cbnz	w8, LBB0_3
; %bb.20:                               ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x22
	bl	_printf
	b	LBB0_3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%f%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"Wide Receiver"

l_.str.3:                               ; @.str.3
	.asciz	"Lineman"

l_.str.4:                               ; @.str.4
	.asciz	"Quarterback"

l_.str.5:                               ; @.str.5
	.asciz	"No positions"

.subsections_via_symbols
