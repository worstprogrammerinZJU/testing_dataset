	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
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
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
Lloh0:
	adrp	x21, _k@GOTPAGE
Lloh1:
	ldr	x21, [x21, _k@GOTPAGEOFF]
Lloh2:
	adrp	x22, _n@GOTPAGE
Lloh3:
	ldr	x22, [x22, _n@GOTPAGEOFF]
	stp	x22, x21, [sp]
Lloh4:
	adrp	x0, l_.str@PAGE
Lloh5:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x22]
	mov	w23, #1                         ; =0x1
	cmp	w8, #1
	b.lt	LBB0_6
; %bb.1:
	mov	w27, #0                         ; =0x0
	mov	w24, #0                         ; =0x0
	add	x26, sp, #28
Lloh6:
	adrp	x19, l_.str.1@PAGE
Lloh7:
	add	x19, x19, l_.str.1@PAGEOFF
	mov	w25, #1                         ; =0x1
Lloh8:
	adrp	x20, _breed@PAGE
Lloh9:
	add	x20, x20, _breed@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	w24, w24, #1
	ldr	w8, [x22]
	cmp	w24, w8
	b.ge	LBB0_7
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	str	x26, [sp]
	mov	x0, x19
	bl	_scanf
	ldrsw	x8, [sp, #28]
	ldr	w9, [x20, x8, lsl #2]
	cbnz	w9, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	add	w27, w27, #1
	str	w23, [x20, x8, lsl #2]
	ldrsw	x8, [x21]
	cmp	w27, w8
	b.ne	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	add	w25, w25, #1
	orr	x2, x23, x8, lsl #2
	mov	x0, x20
	mov	w1, #0                          ; =0x0
	mov	w3, #40004                      ; =0x9c44
	bl	___memset_chk
	mov	w27, #0                         ; =0x0
	b	LBB0_2
LBB0_6:
	mov	w25, #1                         ; =0x1
LBB0_7:
	str	x25, [sp]
Lloh10:
	adrp	x0, l_.str.2@PAGE
Lloh11:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.globl	_breed                          ; @breed
.zerofill __DATA,__common,_breed,40004,2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

	.comm	_n,4,2                          ; @n
	.comm	_k,4,2                          ; @k
l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
