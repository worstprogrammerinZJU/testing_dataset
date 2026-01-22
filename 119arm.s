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
	adrp	x19, _n@GOTPAGE
Lloh1:
	ldr	x19, [x19, _n@GOTPAGEOFF]
	str	x19, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x19]
	adrp	x22, _m@PAGE
	cmp	w8, #1
	b.lt	LBB0_10
; %bb.1:
	mov	w23, #1                         ; =0x1
	add	x24, sp, #28
Lloh4:
	adrp	x19, l_.str.1@PAGE
Lloh5:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh6:
	adrp	x25, _max@GOTPAGE
Lloh7:
	ldr	x25, [x25, _max@GOTPAGEOFF]
	add	x26, sp, #20
	add	x27, sp, #24
Lloh8:
	adrp	x20, l_.str@PAGE
Lloh9:
	add	x20, x20, l_.str@PAGEOFF
Lloh10:
	adrp	x28, _time@PAGE
Lloh11:
	add	x28, x28, _time@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x8, x23, #1
Lloh12:
	adrp	x9, _n@GOTPAGE
Lloh13:
	ldr	x9, [x9, _n@GOTPAGEOFF]
Lloh14:
	ldrsw	x9, [x9]
	cmp	x23, x9
	mov	x23, x8
	b.ge	LBB0_10
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	stp	x26, x24, [sp]
	mov	x0, x19
	bl	_scanf
	str	wzr, [x25]
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB0_8
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w21, #0                         ; =0x0
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	add	w21, w21, #1
	ldr	w8, [sp, #28]
	cmp	w21, w8
	b.ge	LBB0_8
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x27, [sp]
	mov	x0, x20
	bl	_scanf
	ldrsw	x8, [sp, #24]
	ldr	w8, [x28, x8, lsl #2]
	ldr	w9, [x25]
	cmp	w8, w9
	b.le	LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	str	w8, [x25]
	b	LBB0_5
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [x25]
	ldr	w10, [x28, x23, lsl #2]
	add	w8, w8, w10
	add	w8, w9, w8
	str	w8, [x28, x23, lsl #2]
	ldr	w9, [x22, _m@PAGEOFF]
	cmp	w8, w9
	b.le	LBB0_2
; %bb.9:                                ;   in Loop: Header=BB0_3 Depth=1
	str	w8, [x22, _m@PAGEOFF]
	b	LBB0_2
LBB0_10:
	ldr	w8, [x22, _m@PAGEOFF]
	str	x8, [sp]
Lloh15:
	adrp	x0, l_.str.2@PAGE
Lloh16:
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
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGotLdr	Lloh12, Lloh13, Lloh14
	.loh AdrpAdd	Lloh15, Lloh16
	.cfi_endproc
                                        ; -- End function
	.globl	_m                              ; @m
.zerofill __DATA,__common,_m,4,2
	.globl	_time                           ; @time
.zerofill __DATA,__common,_time,40004,2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_n,4,2                          ; @n
l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

	.comm	_max,4,2                        ; @max
l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
