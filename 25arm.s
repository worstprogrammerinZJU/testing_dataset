	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	adrp	x21, _n@PAGE
	ldrsw	x8, [x21, _n@PAGEOFF]
Lloh0:
	adrp	x22, _tree@GOTPAGE
Lloh1:
	ldr	x22, [x22, _tree@GOTPAGEOFF]
	sub	x9, x22, x8
	add	x0, x9, x8, lsl #5
	bl	_gets
Lloh2:
	adrp	x23, _num@PAGE
Lloh3:
	add	x23, x23, _num@PAGEOFF
	adrp	x24, _m@PAGE
	cbz	x0, LBB0_12
; %bb.1:
Lloh4:
	adrp	x25, _link@PAGE
Lloh5:
	add	x25, x25, _link@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w0, #16                         ; =0x10
	bl	_malloc
	str	w28, [x0]
	ldr	x8, [x25, x26, lsl #3]
	str	x0, [x25, x26, lsl #3]
	str	x8, [x0, #8]
Lloh6:
	adrp	x23, _num@PAGE
Lloh7:
	add	x23, x23, _num@PAGEOFF
	mov	w8, #1                          ; =0x1
	str	w8, [x23, x20, lsl #2]
Lloh8:
	adrp	x8, _posi@GOTPAGE
Lloh9:
	ldr	x8, [x8, _posi@GOTPAGEOFF]
	str	w28, [x8, x20, lsl #2]
Lloh10:
	adrp	x8, _n@PAGE
Lloh11:
	add	x8, x8, _n@PAGEOFF
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	w9, w28, #1
	str	w9, [x8]
	ldr	w8, [x24, _m@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x24, _m@PAGEOFF]
	ldrsw	x8, [x21, _n@PAGEOFF]
	sub	x9, x22, x8
	add	x0, x9, x8, lsl #5
	bl	_gets
	cbz	x0, LBB0_12
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
	ldr	w28, [x21, _n@PAGEOFF]
	sxtw	x20, w28
	sub	x8, x22, x20
	add	x19, x8, x20, lsl #5
	ldrb	w10, [x19]
	cbz	w10, LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x8, #0                          ; =0x0
	add	x9, x19, #1
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lsl	x8, x8, #4
	add	x8, x8, w10, sxtb
	and	x10, x8, #0xf0000000
	eor	x8, x8, x10, lsr #24
	bic	x8, x8, x10
	ldrb	w10, [x9], #1
	cbnz	w10, LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x9, #38987                      ; =0x984b
	movk	x9, #21657, lsl #16
	movk	x9, #4787, lsl #32
	movk	x9, #41763, lsl #48
	umulh	x9, x8, x9
	sub	x10, x8, x9
	add	x9, x9, x10, lsr #1
	lsr	x9, x9, #13
	mov	w10, #10007                     ; =0x2717
	msub	x26, x9, x10, x8
	ldr	x27, [x25, x26, lsl #3]
	cbnz	x27, LBB0_9
	b	LBB0_2
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x26, #0                         ; =0x0
	ldr	x27, [x25, x26, lsl #3]
	cbz	x27, LBB0_2
LBB0_9:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsw	x23, [x27]
	sub	x8, x22, x23
	add	x1, x8, x23, lsl #5
	mov	x0, x19
	bl	_strcmp
	cbz	w0, LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=2
	ldr	x27, [x27, #8]
	cbnz	x27, LBB0_9
	b	LBB0_2
LBB0_11:                                ;   in Loop: Header=BB0_4 Depth=1
Lloh12:
	adrp	x9, _num@PAGE
Lloh13:
	add	x9, x9, _num@PAGEOFF
	add	x8, x9, x23, lsl #2
	mov	x23, x9
	ldr	w28, [x8]
	b	LBB0_3
LBB0_12:
	ldrsw	x1, [x21, _n@PAGEOFF]
Lloh14:
	adrp	x19, _posi@GOTPAGE
Lloh15:
	ldr	x19, [x19, _posi@GOTPAGEOFF]
Lloh16:
	adrp	x3, _cmp@PAGE
Lloh17:
	add	x3, x3, _cmp@PAGEOFF
	mov	x0, x19
	mov	w2, #4                          ; =0x4
	bl	_qsort
	ldr	w8, [x21, _n@PAGEOFF]
	cmp	w8, #1
	b.lt	LBB0_15
; %bb.13:
	mov	x25, #0                         ; =0x0
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d8, x8
Lloh18:
	adrp	x20, l_.str@PAGE
Lloh19:
	add	x20, x20, l_.str@PAGEOFF
LBB0_14:                                ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [x19, x25, lsl #2]
	sub	x9, x22, x8
	add	x9, x9, x8, lsl #5
	ldr	s0, [x23, x8, lsl #2]
	sshll.2d	v0, v0, #0
	scvtf	d0, d0
	fmul	d0, d0, d8
	ldr	s1, [x24, _m@PAGEOFF]
	sshll.2d	v1, v1, #0
	scvtf	d1, d1
	fdiv	d0, d0, d1
	str	x9, [sp]
	str	d0, [sp, #8]
	mov	x0, x20
	bl	_printf
	add	x25, x25, #1
	ldrsw	x8, [x21, _n@PAGEOFF]
	cmp	x25, x8
	b.lt	LBB0_14
LBB0_15:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpAdd	Lloh18, Lloh19
	.cfi_endproc
                                        ; -- End function
	.globl	_ELFhash                        ; -- Begin function ELFhash
	.p2align	2
_ELFhash:                               ; @ELFhash
	.cfi_startproc
; %bb.0:
	ldrb	w10, [x0]
	cbz	w10, LBB1_4
; %bb.1:
	mov	x8, #0                          ; =0x0
	add	x9, x0, #1
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	lsl	x8, x8, #4
	add	x8, x8, w10, sxtb
	and	x10, x8, #0xf0000000
	eor	x8, x8, x10, lsr #24
	bic	x8, x8, x10
	ldrb	w10, [x9], #1
	cbnz	w10, LBB1_2
; %bb.3:
	mov	x9, #38987                      ; =0x984b
	movk	x9, #21657, lsl #16
	movk	x9, #4787, lsl #32
	movk	x9, #41763, lsl #48
	umulh	x9, x8, x9
	sub	x10, x8, x9
	add	x9, x9, x10, lsr #1
	lsr	x9, x9, #13
	mov	w10, #10007                     ; =0x2717
	msub	w0, w9, w10, w8
	ret
LBB1_4:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
	.cfi_startproc
; %bb.0:
	ldrsw	x8, [x0]
	ldrsw	x9, [x1]
Lloh20:
	adrp	x10, _tree@GOTPAGE
Lloh21:
	ldr	x10, [x10, _tree@GOTPAGEOFF]
	sub	x11, x10, x8
	add	x0, x11, x8, lsl #5
	sub	x8, x10, x9
	add	x1, x8, x9, lsl #5
	b	_strcmp
	.loh AdrpLdrGot	Lloh20, Lloh21
	.cfi_endproc
                                        ; -- End function
	.globl	_link                           ; @link
.zerofill __DATA,__common,_link,80056,3
	.globl	_num                            ; @num
.zerofill __DATA,__common,_num,40000,2
	.globl	_n                              ; @n
.zerofill __DATA,__common,_n,4,2
	.globl	_m                              ; @m
.zerofill __DATA,__common,_m,4,2
	.comm	_tree,310000,0                  ; @tree
	.comm	_posi,40000,2                   ; @posi
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s %.4lf\n"

.subsections_via_symbols
