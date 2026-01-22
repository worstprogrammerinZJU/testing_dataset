	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
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
Lloh0:
	adrp	x21, _color@GOTPAGE
Lloh1:
	ldr	x21, [x21, _color@GOTPAGEOFF]
	mov	w20, #16                        ; =0x10
Lloh2:
	adrp	x19, l_.str@PAGE
Lloh3:
	add	x19, x19, l_.str@PAGEOFF
	mov	x22, x21
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x8, x22, #4
	add	x9, x22, #8
	stp	x8, x9, [sp, #8]
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	add	x22, x22, #12
	subs	x20, x20, #1
	b.ne	LBB0_1
; %bb.2:
	add	x22, sp, #52
	add	x23, sp, #56
	add	x24, sp, #60
	stp	x23, x22, [sp, #8]
	str	x24, [sp]
Lloh4:
	adrp	x0, l_.str@PAGE
Lloh5:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldp	w9, w8, [sp, #56]
	ldr	w10, [sp, #52]
	cmn	w8, #1
	b.ne	LBB0_5
; %bb.3:
	cmn	w9, #1
	b.ne	LBB0_5
; %bb.4:
	cmn	w10, #1
	b.eq	LBB0_11
LBB0_5:
	mov	w25, #12                        ; =0xc
Lloh6:
	adrp	x19, l_.str.1@PAGE
Lloh7:
	add	x19, x19, l_.str.1@PAGEOFF
                                        ; implicit-def: $w26
Lloh8:
	adrp	x20, l_.str@PAGE
Lloh9:
	add	x20, x20, l_.str@PAGEOFF
LBB0_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	mov	x11, #0                         ; =0x0
	add	x12, x21, #8
	mov	w13, #3392                      ; =0xd40
	movk	w13, #3, lsl #16
LBB0_7:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	w14, w15, [x12, #-8]
	sub	w14, w8, w14
	mul	w14, w14, w14
	sub	w15, w9, w15
	madd	w14, w15, w15, w14
	ldr	w15, [x12], #12
	sub	w15, w10, w15
	madd	w14, w15, w15, w14
	cmp	w14, w13
	csel	w13, w14, w13, lt
	csel	w26, w11, w26, lt
	add	x11, x11, #1
	cmp	x11, #16
	b.ne	LBB0_7
; %bb.8:                                ;   in Loop: Header=BB0_6 Depth=1
	smaddl	x11, w26, w25, x21
	ldp	w12, w13, [x11]
	ldr	w11, [x11, #8]
	stp	x13, x11, [sp, #32]
	stp	x10, x12, [sp, #16]
	stp	x8, x9, [sp]
	mov	x0, x19
	bl	_printf
	stp	x23, x22, [sp, #8]
	str	x24, [sp]
	mov	x0, x20
	bl	_scanf
	ldp	w9, w8, [sp, #56]
	ldr	w10, [sp, #52]
	cmn	w8, #1
	b.ne	LBB0_6
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	cmn	w9, #1
	b.ne	LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	cmn	w10, #1
	b.ne	LBB0_6
LBB0_11:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d%d"

	.comm	_color,192,2                    ; @color
l_.str.1:                               ; @.str.1
	.asciz	"(%d,%d,%d) maps to (%d,%d,%d)\n"

.subsections_via_symbols
