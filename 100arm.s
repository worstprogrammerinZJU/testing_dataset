	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	d11, d10, [sp, #48]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #64]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	add	x8, sp, #24
	str	x8, [sp, #16]
	add	x8, sp, #44
	add	x9, sp, #32
	stp	x9, x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #44]
	cbz	w8, LBB0_5
; %bb.1:
	ldr	d0, [sp, #24]
	fcmp	d0, #0.0
	b.eq	LBB0_5
; %bb.2:
	mov	w21, #1                         ; =0x1
	mov	x9, #53655                      ; =0xd197
	movk	x9, #23166, lsl #16
	movk	x9, #8699, lsl #32
	movk	x9, #16393, lsl #48
	fmov	d8, x9
	mov	x9, #263882790666240            ; =0xf00000000000
	movk	x9, #16622, lsl #48
	fmov	d9, x9
	mov	x9, #35184372088832             ; =0x200000000000
	movk	x9, #16556, lsl #48
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
	fmov	d10, x9
	add	x22, sp, #24
	add	x23, sp, #44
	add	x24, sp, #32
Lloh4:
	adrp	x20, l_.str@PAGE
Lloh5:
	add	x20, x20, l_.str@PAGEOFF
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d1, [sp, #32]
	fmul	d1, d1, d8
	scvtf	d2, w8
	fmul	d1, d1, d2
	fdiv	d1, d1, d9
	fmul	d2, d1, d10
	fdiv	d0, d2, d0
	str	x21, [sp]
	stp	d1, d0, [sp, #8]
	mov	x0, x19
	bl	_printf
	stp	x23, x22, [sp, #8]
	str	x24, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #44]
	cbz	w8, LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	d0, [sp, #24]
	add	w21, w21, #1
	fcmp	d0, #0.0
	b.ne	LBB0_3
LBB0_5:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%lf%d%lf"

l_.str.1:                               ; @.str.1
	.asciz	"Trip #%d: %.2lf %.2lf\n"

.subsections_via_symbols
