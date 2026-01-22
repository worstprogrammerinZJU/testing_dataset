	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
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
	add	x8, sp, #44
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #44]
	cmp	w8, #1
	b.lt	LBB0_3
; %bb.1:
	mov	w21, #0                         ; =0x0
	add	x22, sp, #24
	add	x23, sp, #32
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
	mov	x8, #11544                      ; =0x2d18
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16393, lsl #48
	fmov	d8, x8
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d9, x8
Lloh4:
	adrp	x20, l_.str.2@PAGE
Lloh5:
	add	x20, x20, l_.str.2@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	add	w21, w21, #1
	stp	x23, x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	d1, d0, [sp, #24]
	fmul	d1, d1, d1
	fmadd	d0, d0, d0, d1
	fmul	d0, d0, d8
	fdiv	d0, d0, d9
	fcvtzs	w8, d0
	add	w8, w8, #1
	stp	x21, x8, [sp]
	mov	x0, x20
	bl	_printf
	ldr	w8, [sp, #44]
	cmp	w21, w8
	b.lt	LBB0_2
LBB0_3:
Lloh6:
	adrp	x0, l_str@PAGE
Lloh7:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%lf %lf"

l_.str.2:                               ; @.str.2
	.asciz	"Property %d: This property will begin eroding in year %d.\n"

l_str:                                  ; @str
	.asciz	"END OF OUTPUT."

.subsections_via_symbols
