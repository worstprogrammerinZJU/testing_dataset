	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
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
	add	x21, sp, #16
	add	x22, sp, #24
	stp	x22, x21, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	cbz	w0, LBB0_5
; %bb.1:
	fmov	d8, #6.00000000
	mov	x23, #5956                      ; =0x1744
	movk	x23, #21569, lsl #16
	movk	x23, #8699, lsl #32
	movk	x23, #49161, lsl #48
	mov	x24, #6148914691236517205       ; =0x5555555555555555
	movk	x24, #16341, lsl #48
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x20, l_.str@PAGE
Lloh5:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	fmul	d2, d0, d0
	fmul	d1, d1, d8
	fmov	d3, x23
	fdiv	d1, d1, d3
	fmadd	d0, d2, d0, d1
	fmov	d1, x24
	bl	_pow
	str	d0, [sp]
	mov	x0, x19
	bl	_printf
	stp	x22, x21, [sp]
	mov	x0, x20
	bl	_scanf
	cbz	w0, LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldp	d1, d0, [sp, #16]
	fcmp	d0, #0.0
	b.ne	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	fcmp	d1, #0.0
	b.ne	LBB0_2
LBB0_5:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%lf%lf"

l_.str.1:                               ; @.str.1
	.asciz	"%.3lf\n"

.subsections_via_symbols
