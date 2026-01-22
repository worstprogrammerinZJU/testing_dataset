	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
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
Lloh0:
	adrp	x20, _n@GOTPAGE
Lloh1:
	ldr	x20, [x20, _n@GOTPAGEOFF]
	str	x20, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x20]
	adrp	x21, _min@PAGE
	cmp	w8, #1
	b.lt	LBB0_7
; %bb.1:
	mov	x22, #0                         ; =0x0
Lloh4:
	adrp	x8, _f@GOTPAGE
Lloh5:
	ldr	x8, [x8, _f@GOTPAGEOFF]
	add	x23, x8, #4
Lloh6:
	adrp	x19, l_.str.1@PAGE
Lloh7:
	add	x19, x19, l_.str.1@PAGEOFF
	mov	w24, #2                         ; =0x2
	adrp	x25, _max@PAGE
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x22, x22, #1
	ldrsw	x8, [x20]
	add	x23, x23, #12
	cmp	x22, x8
	b.ge	LBB0_7
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	sub	x8, x23, #4
	stp	x8, x23, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	w10, w9, [x23, #-4]
	add	w8, w9, #1
	stp	w8, w24, [x23]
	ldr	w11, [x21, _min@PAGEOFF]
	cmp	w10, w11
	b.ge	LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	str	w10, [x21, _min@PAGEOFF]
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w10, [x25, _max@PAGEOFF]
	cmp	w9, w10
	b.lt	LBB0_2
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	str	w8, [x25, _max@PAGEOFF]
	b	LBB0_2
LBB0_7:
	ldr	w0, [x21, _min@PAGEOFF]
	bl	_bellman_ford
                                        ; kill: def $w0 killed $w0 def $x0
	str	x0, [sp]
Lloh8:
	adrp	x0, l_.str.2@PAGE
Lloh9:
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
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.globl	_bellman_ford                   ; -- Begin function bellman_ford
	.p2align	2
_bellman_ford:                          ; @bellman_ford
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
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
	mov	x19, x0
Lloh10:
	adrp	x8, _min@PAGE
Lloh11:
	ldr	w22, [x8, _min@PAGEOFF]
Lloh12:
	adrp	x8, _max@PAGE
Lloh13:
	ldrsw	x21, [x8, _max@PAGEOFF]
Lloh14:
	adrp	x23, _d@GOTPAGE
Lloh15:
	ldr	x23, [x23, _d@GOTPAGEOFF]
	cmp	w21, w22
	b.ge	LBB1_3
; %bb.1:
	str	wzr, [x23, w19, sxtw #2]
LBB1_2:
	ldr	w0, [x23, x21, lsl #2]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB1_3:
	sxtw	x24, w22
	mov	w25, #31073                     ; =0x7961
	movk	w25, #65534, lsl #16
	add	x20, x23, x24, lsl #2
	sub	w8, w21, w22
	ubfiz	x8, x8, #2, #32
Lloh16:
	adrp	x1, l_.memset_pattern@PAGE
Lloh17:
	add	x1, x1, l_.memset_pattern@PAGEOFF
	add	x2, x8, #4
	mov	x0, x20
	bl	_memset_pattern16
	str	wzr, [x23, w19, sxtw #2]
Lloh18:
	adrp	x8, _n@GOTPAGE
Lloh19:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh20:
	ldr	w8, [x8]
	add	x9, x20, #4
	sub	x10, x21, x24
	add	x11, x23, x21, lsl #2
	sub	x11, x11, #4
Lloh21:
	adrp	x12, _f@GOTPAGE
Lloh22:
	ldr	x12, [x12, _f@GOTPAGEOFF]
	mov	x13, x22
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_7 Depth 2
                                        ;     Child Loop BB1_16 Depth 2
                                        ;     Child Loop BB1_20 Depth 2
	cmp	w8, #1
	b.lt	LBB1_10
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	w14, #0                         ; =0x0
	add	x15, x12, #8
	mov	x16, x8
	b	LBB1_7
LBB1_6:                                 ;   in Loop: Header=BB1_7 Depth=2
	add	x15, x15, #12
	subs	x16, x16, #1
	b.eq	LBB1_11
LBB1_7:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldursw	x17, [x15, #-8]
	ldr	w0, [x23, x17, lsl #2]
	cmp	w0, w25
	b.eq	LBB1_6
; %bb.8:                                ;   in Loop: Header=BB1_7 Depth=2
	ldursw	x17, [x15, #-4]
	ldr	w1, [x15]
	ldr	w2, [x23, x17, lsl #2]
	add	w0, w1, w0
	cmp	w2, w0
	b.ge	LBB1_6
; %bb.9:                                ;   in Loop: Header=BB1_7 Depth=2
	str	w0, [x23, x17, lsl #2]
	mov	w14, #1                         ; =0x1
	b	LBB1_6
LBB1_10:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	w14, #0                         ; =0x0
LBB1_11:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x15, x10
	mov	x16, x9
	cmp	w22, w21
	b.lt	LBB1_16
LBB1_12:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x15, x11
	mov	x16, x21
	cmp	w21, w22
	b.gt	LBB1_20
LBB1_13:                                ;   in Loop: Header=BB1_4 Depth=1
	cbz	w14, LBB1_2
; %bb.14:                               ;   in Loop: Header=BB1_4 Depth=1
	add	w14, w13, #1
	cmp	w13, w21
	mov	x13, x14
	b.ne	LBB1_4
	b	LBB1_2
LBB1_15:                                ;   in Loop: Header=BB1_16 Depth=2
	add	x16, x16, #4
	subs	x15, x15, #1
	b.eq	LBB1_12
LBB1_16:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w17, [x16, #-4]
	cmp	w17, w25
	b.eq	LBB1_15
; %bb.17:                               ;   in Loop: Header=BB1_16 Depth=2
	ldr	w0, [x16]
	cmp	w17, w0
	b.le	LBB1_15
; %bb.18:                               ;   in Loop: Header=BB1_16 Depth=2
	str	w17, [x16]
	mov	w14, #1                         ; =0x1
	b	LBB1_15
LBB1_19:                                ;   in Loop: Header=BB1_20 Depth=2
	sub	x15, x15, #4
	sub	x16, x16, #1
	cmp	x16, x24
	b.le	LBB1_13
LBB1_20:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w17, [x15, #4]
	cmp	w17, w25
	b.eq	LBB1_19
; %bb.21:                               ;   in Loop: Header=BB1_20 Depth=2
	sub	w17, w17, #1
	ldr	w0, [x15]
	cmp	w17, w0
	b.le	LBB1_19
; %bb.22:                               ;   in Loop: Header=BB1_20 Depth=2
	str	w17, [x15]
	mov	w14, #1                         ; =0x1
	b	LBB1_19
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpLdr	Lloh12, Lloh13
	.loh AdrpAdrp	Lloh10, Lloh12
	.loh AdrpLdr	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh21, Lloh22
	.loh AdrpLdrGotLdr	Lloh18, Lloh19, Lloh20
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.globl	_max                            ; @max
.zerofill __DATA,__common,_max,4,2
	.section	__DATA,__data
	.globl	_min                            ; @min
	.p2align	2, 0x0
_min:
	.long	10000                           ; 0x2710

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_n,4,2                          ; @n
l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

	.comm	_f,120012,2                     ; @f
l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

	.comm	_d,40004,2                      ; @d
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; @.memset_pattern
l_.memset_pattern:
	.long	4294867297                      ; 0xfffe7961
	.long	4294867297                      ; 0xfffe7961
	.long	4294867297                      ; 0xfffe7961
	.long	4294867297                      ; 0xfffe7961

.subsections_via_symbols
