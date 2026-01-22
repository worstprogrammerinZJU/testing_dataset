	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	sub	x8, x29, #52
	add	x9, sp, #48
	stp	x9, x8, [sp, #16]
	add	x8, sp, #56
	add	x9, sp, #64
	stp	x9, x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-52]
	cmp	w8, #1
	b.lt	LBB0_3
; %bb.1:
	mov	w21, #0                         ; =0x0
	add	x22, sp, #40
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
	fmov	d8, #1.00000000
Lloh4:
	adrp	x20, l_.str.2@PAGE
Lloh5:
	add	x20, x20, l_.str.2@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	d1, d0, [sp, #48]
	fmul	d2, d0, d1
	ldr	d3, [sp, #40]
	fmul	d2, d2, d3
	ldr	d4, [sp, #64]
	fmul	d2, d2, d4
	fmul	d0, d0, d0
	fmul	d0, d0, d1
	fmul	d0, d1, d0
	fmul	d0, d3, d0
	fmadd	d0, d0, d3, d8
	fsqrt	d0, d0
	fdiv	d0, d2, d0
	str	d0, [sp]
	mov	x0, x20
	bl	_printf
	add	w21, w21, #1
	ldur	w8, [x29, #-52]
	cmp	w21, w8
	b.lt	LBB0_2
LBB0_3:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%lf%lf%lf%d"

l_.str.1:                               ; @.str.1
	.asciz	"%lf"

l_.str.2:                               ; @.str.2
	.asciz	"%.3lf\n"

.subsections_via_symbols
