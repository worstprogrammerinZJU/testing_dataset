	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_dp                             ; -- Begin function dp
	.p2align	2
_dp:                                    ; @dp
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
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
	adrp	x23, _q@PAGE
Lloh1:
	add	x23, x23, _q@PAGEOFF
	mov	w8, #400                        ; =0x190
	smaddl	x22, w0, w8, x23
	ldr	w8, [x22, w1, sxtw #2]
	cbnz	w8, LBB0_23
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	sxtw	x24, w20
	sxtw	x25, w19
Lloh2:
	adrp	x26, _p@GOTPAGE
Lloh3:
	ldr	x26, [x26, _p@GOTPAGEOFF]
	subs	w0, w0, #1
	b.lt	LBB0_6
; %bb.2:
	mov	w8, #400                        ; =0x190
	umaddl	x9, w0, w8, x26
	ldr	w9, [x9, x25, lsl #2]
	smaddl	x8, w24, w8, x26
	ldr	w8, [x8, x25, lsl #2]
	cmp	w9, w8
	b.le	LBB0_6
; %bb.3:
	mov	w8, #400                        ; =0x190
	umaddl	x21, w0, w8, x23
	ldr	w8, [x21, x25, lsl #2]
	cbnz	w8, LBB0_5
; %bb.4:
                                        ; kill: def $w0 killed $w0 killed $x0
	mov	x1, x19
	bl	_dp
LBB0_5:
	ldr	w8, [x21, x25, lsl #2]
	cmp	w8, #0
	csinv	w27, w8, wzr, ge
	b	LBB0_7
LBB0_6:
	mov	w27, #-1                        ; =0xffffffff
LBB0_7:
Lloh4:
	adrp	x8, _r@GOTPAGE
Lloh5:
	ldr	x8, [x8, _r@GOTPAGEOFF]
Lloh6:
	ldr	w8, [x8]
	sub	w8, w8, #1
	cmp	w8, w20
	b.le	LBB0_12
; %bb.8:
	mov	w8, #400                        ; =0x190
	smaddl	x8, w24, w8, x26
	add	x8, x8, x25, lsl #2
	ldr	w9, [x8, #400]
	ldr	w8, [x8]
	cmp	w9, w8
	b.le	LBB0_12
; %bb.9:
	add	x0, x24, #1
	mov	w8, #400                        ; =0x190
	madd	x21, x0, x8, x23
	ldr	w8, [x21, x25, lsl #2]
	cbnz	w8, LBB0_11
; %bb.10:
                                        ; kill: def $w0 killed $w0 killed $x0
	mov	x1, x19
	bl	_dp
LBB0_11:
	ldr	w8, [x21, x25, lsl #2]
	cmp	w8, w27
	csel	w27, w8, w27, gt
LBB0_12:
	subs	w21, w19, #1
	b.lt	LBB0_17
; %bb.13:
	mov	w8, #400                        ; =0x190
	smaddl	x8, w24, w8, x26
	ldr	w9, [x8, w21, uxtw #2]
	ldr	w8, [x8, x25, lsl #2]
	cmp	w9, w8
	b.le	LBB0_17
; %bb.14:
	mov	w8, #400                        ; =0x190
	smaddl	x28, w24, w8, x23
	ldr	w8, [x28, x21, lsl #2]
	cbnz	w8, LBB0_16
; %bb.15:
	mov	x0, x20
	mov	x1, x21
	bl	_dp
LBB0_16:
	ldr	w8, [x28, x21, lsl #2]
	cmp	w8, w27
	csel	w27, w8, w27, gt
LBB0_17:
Lloh7:
	adrp	x8, _c@GOTPAGE
Lloh8:
	ldr	x8, [x8, _c@GOTPAGEOFF]
Lloh9:
	ldr	w8, [x8]
	sub	w8, w8, #1
	cmp	w8, w19
	b.le	LBB0_22
; %bb.18:
	add	x21, x25, #1
	mov	w8, #400                        ; =0x190
	smaddl	x8, w24, w8, x26
	ldr	w9, [x8, x21, lsl #2]
	ldr	w8, [x8, x25, lsl #2]
	cmp	w9, w8
	b.le	LBB0_22
; %bb.19:
	mov	w8, #400                        ; =0x190
	smaddl	x23, w24, w8, x23
	ldr	w8, [x23, x21, lsl #2]
	cbnz	w8, LBB0_21
; %bb.20:
	mov	x0, x20
	mov	x1, x21
	bl	_dp
LBB0_21:
	ldr	w8, [x23, x21, lsl #2]
	cmp	w8, w27
	csel	w27, w8, w27, gt
LBB0_22:
	add	w8, w27, #1
	str	w8, [x22, w19, sxtw #2]
LBB0_23:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGotLdr	Lloh4, Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
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
Lloh10:
	adrp	x21, _c@GOTPAGE
Lloh11:
	ldr	x21, [x21, _c@GOTPAGEOFF]
Lloh12:
	adrp	x22, _r@GOTPAGE
Lloh13:
	ldr	x22, [x22, _r@GOTPAGEOFF]
	stp	x22, x21, [sp]
Lloh14:
	adrp	x0, l_.str@PAGE
Lloh15:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB1_6
; %bb.1:
	mov	x20, #0                         ; =0x0
Lloh16:
	adrp	x23, _p@GOTPAGE
Lloh17:
	ldr	x23, [x23, _p@GOTPAGEOFF]
Lloh18:
	adrp	x19, l_.str.1@PAGE
Lloh19:
	add	x19, x19, l_.str.1@PAGEOFF
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	add	x20, x20, #1
	ldrsw	x8, [x22]
	add	x23, x23, #400
	cmp	x20, x8
	b.ge	LBB1_6
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB1_2
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	x24, #0                         ; =0x0
	mov	x25, x23
LBB1_5:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x25, [sp]
	mov	x0, x19
	bl	_scanf
	add	x24, x24, #1
	ldrsw	x8, [x21]
	add	x25, x25, #4
	cmp	x24, x8
	b.lt	LBB1_5
	b	LBB1_2
LBB1_6:
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB1_13
; %bb.7:
	mov	x19, #0                         ; =0x0
	mov	w23, #0                         ; =0x0
Lloh20:
	adrp	x24, _q@PAGE
Lloh21:
	add	x24, x24, _q@PAGEOFF
	b	LBB1_9
LBB1_8:                                 ;   in Loop: Header=BB1_9 Depth=1
	add	x19, x19, #1
	ldrsw	x8, [x22]
	add	x24, x24, #400
	cmp	x19, x8
	b.ge	LBB1_12
LBB1_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_11 Depth 2
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB1_8
; %bb.10:                               ;   in Loop: Header=BB1_9 Depth=1
	mov	x20, #0                         ; =0x0
LBB1_11:                                ;   Parent Loop BB1_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x19
	mov	x1, x20
	bl	_dp
	ldr	w8, [x24, x20, lsl #2]
	cmp	w8, w23
	csel	w23, w8, w23, gt
	add	x20, x20, #1
	ldrsw	x8, [x21]
	cmp	x20, x8
	b.lt	LBB1_11
	b	LBB1_8
LBB1_12:
	add	w8, w23, #1
	b	LBB1_14
LBB1_13:
	mov	w8, #1                          ; =0x1
LBB1_14:
	str	x8, [sp]
Lloh22:
	adrp	x0, l_.str.2@PAGE
Lloh23:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh22, Lloh23
	.cfi_endproc
                                        ; -- End function
	.globl	_q                              ; @q
.zerofill __DATA,__common,_q,40000,2
	.comm	_p,40000,2                      ; @p
	.comm	_r,4,2                          ; @r
	.comm	_c,4,2                          ; @c
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
