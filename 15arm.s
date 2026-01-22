	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh0:
	adrp	x19, _str@GOTPAGE
Lloh1:
	ldr	x19, [x19, _str@GOTPAGEOFF]
	str	x19, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	mov	x10, #0                         ; =0x0
	mov	w8, #0                          ; =0x0
	mov	w11, #10                        ; =0xa
Lloh4:
	adrp	x9, _qu@GOTPAGE
Lloh5:
	ldr	x9, [x9, _qu@GOTPAGEOFF]
	b	LBB0_3
LBB0_1:                                 ;   in Loop: Header=BB0_3 Depth=1
	sub	w12, w12, #48
	madd	w8, w12, w11, w8
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x10, x10, #1
	sub	w11, w11, #1
	cmp	x10, #9
	b.eq	LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldrsb	w12, [x19, x10]
	cmp	w12, #63
	b.ne	LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	str	w10, [x9]
	b	LBB0_2
LBB0_5:
	ldrb	w10, [x19, #9]
	cmp	w10, #88
	b.eq	LBB0_8
; %bb.6:
	cmp	w10, #63
	b.ne	LBB0_9
; %bb.7:
	mov	w10, #9                         ; =0x9
	str	w10, [x9]
	b	LBB0_10
LBB0_8:
	add	w8, w8, #10
	b	LBB0_10
LBB0_9:
	sxtb	w10, w10
	add	w8, w8, w10
	sub	w8, w8, #48
LBB0_10:
	mov	w10, #0                         ; =0x0
	mov	w11, #10                        ; =0xa
	ldr	w9, [x9]
	sub	w9, w11, w9
	mov	w11, #35747                     ; =0x8ba3
	movk	w11, #47662, lsl #16
	mov	w12, #59578                     ; =0xe8ba
	movk	w12, #2978, lsl #16
	mov	w13, #53621                     ; =0xd175
	movk	w13, #5957, lsl #16
	mov	x14, x8
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	madd	w15, w14, w11, w12
	cmp	w15, w13
	b.lo	LBB0_15
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=1
	add	w10, w10, #1
	add	w14, w14, w9
	cmp	w10, #10
	b.ne	LBB0_11
; %bb.13:
	add	w8, w8, #10
	mov	w9, #35747                      ; =0x8ba3
	movk	w9, #47662, lsl #16
	mov	w10, #59578                     ; =0xe8ba
	movk	w10, #2978, lsl #16
	madd	w8, w8, w9, w10
	mov	w9, #53620                      ; =0xd174
	movk	w9, #5957, lsl #16
	cmp	w8, w9
	b.ls	LBB0_16
; %bb.14:
Lloh6:
	adrp	x0, l_str.4@PAGE
Lloh7:
	add	x0, x0, l_str.4@PAGEOFF
	b	LBB0_17
LBB0_15:
	str	x10, [sp]
Lloh8:
	adrp	x0, l_.str.1@PAGE
Lloh9:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_18
LBB0_16:
Lloh10:
	adrp	x0, l_str.5@PAGE
Lloh11:
	add	x0, x0, l_str.5@PAGEOFF
LBB0_17:
	bl	_puts
LBB0_18:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

	.comm	_str,20,0                       ; @str
	.comm	_qu,4,2                         ; @qu
l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

l_str.4:                                ; @str.4
	.asciz	"-1"

l_str.5:                                ; @str.5
	.asciz	"X"

.subsections_via_symbols
