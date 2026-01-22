	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_dfs                            ; -- Begin function dfs
	.p2align	2
_dfs:                                   ; @dfs
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
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
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
                                        ; kill: def $w1 killed $w1 def $x1
	mov	x22, #0                         ; =0x0
	mov	w8, w0
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
Lloh0:
	adrp	x10, _t@GOTPAGE
Lloh1:
	ldr	x10, [x10, _t@GOTPAGEOFF]
	mov	w9, #100                        ; =0x64
	smaddl	x26, w0, w9, x10
	add	w23, w1, #1
	sub	w11, w1, #1
	sxtw	x8, w1
	smaddl	x9, w0, w9, x8
	add	x28, x10, x9
	sub	w9, w0, #1
	mov	w12, w1
	str	x12, [sp, #40]                  ; 8-byte Folded Spill
	add	x8, x10, x8
	stp	x11, x8, [sp, #16]              ; 16-byte Folded Spill
	add	w27, w0, #1
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	mov	x25, x9
	mov	x24, x11
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldp	x9, x8, [sp, #32]               ; 16-byte Folded Reload
	add	x20, x9, x22
	add	x19, x8, x22
	mov	w8, #42                         ; =0x2a
	strb	w8, [x28]
	cmp	w20, #1
	b.lt	LBB0_10
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	cmp	w19, #1
	b.lt	LBB0_5
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	ldp	x8, x9, [sp, #8]                ; 16-byte Folded Reload
	add	x0, x8, x22
	mov	w8, w0
	add	x1, x9, x22
Lloh2:
	adrp	x9, _t@GOTPAGE
Lloh3:
	ldr	x9, [x9, _t@GOTPAGEOFF]
	mov	w10, #100                       ; =0x64
	umaddl	x8, w8, w10, x9
	ldrb	w8, [x8, w1, uxtw]
	cmp	w8, #64
	b.ne	LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_1 Depth=1
                                        ; kill: def $w0 killed $w0 killed $x0
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	_dfs
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #100                        ; =0x64
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	umaddl	x8, w25, w8, x9
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	add	x21, x9, x22
	ldrb	w8, [x8, x22]
	cmp	w8, #64
	b.ne	LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x21
	mov	x1, x19
	bl	_dfs
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x8, x8, x22
	add	x1, x8, #1
Lloh4:
	adrp	x8, _m@GOTPAGE
Lloh5:
	ldr	x8, [x8, _m@GOTPAGEOFF]
Lloh6:
	ldr	w8, [x8]
	cmp	w1, w8
	b.ge	LBB0_10
; %bb.8:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, w21
Lloh7:
	adrp	x9, _t@GOTPAGE
Lloh8:
	ldr	x9, [x9, _t@GOTPAGEOFF]
	mov	w10, #100                       ; =0x64
	umaddl	x8, w8, w10, x9
	ldrb	w8, [x8, w1, sxtw]
	cmp	w8, #64
	b.ne	LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x21
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	_dfs
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w24, w24
	cmp	w19, #1
	b.lt	LBB0_13
; %bb.11:                               ;   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [x26, x24]
	cmp	w8, #64
	b.ne	LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, x22
	mov	x0, x20
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	_dfs
LBB0_13:                                ;   in Loop: Header=BB0_1 Depth=1
	sxtw	x23, w23
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x8, x8, x22
	add	x21, x8, #1
Lloh9:
	adrp	x8, _m@GOTPAGE
Lloh10:
	ldr	x8, [x8, _m@GOTPAGEOFF]
Lloh11:
	ldr	w8, [x8]
	cmp	w21, w8
	b.ge	LBB0_16
; %bb.14:                               ;   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [x26, x23]
	cmp	w8, #64
	b.ne	LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x20
	mov	x1, x21
	bl	_dfs
LBB0_16:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	add	x8, x8, x22
	add	x20, x8, #1
Lloh12:
	adrp	x8, _n@GOTPAGE
Lloh13:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh14:
	ldr	w8, [x8]
	cmp	w20, w8
	b.ge	LBB0_24
; %bb.17:                               ;   in Loop: Header=BB0_1 Depth=1
	cmp	w19, #1
	b.lt	LBB0_20
; %bb.18:                               ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, x22
Lloh15:
	adrp	x8, _t@GOTPAGE
Lloh16:
	ldr	x8, [x8, _t@GOTPAGEOFF]
	mov	w9, #100                        ; =0x64
	smaddl	x8, w20, w9, x8
	ldrb	w8, [x8, w1, uxtw]
	cmp	w8, #64
	b.ne	LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x20
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	_dfs
LBB0_20:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #100                        ; =0x64
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	smaddl	x8, w27, w8, x9
	ldrb	w8, [x8, x22]
	cmp	w8, #64
	b.ne	LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x20
	mov	x1, x19
	bl	_dfs
LBB0_22:                                ;   in Loop: Header=BB0_1 Depth=1
Lloh17:
	adrp	x8, _m@GOTPAGE
Lloh18:
	ldr	x8, [x8, _m@GOTPAGEOFF]
Lloh19:
	ldr	w8, [x8]
	cmp	w21, w8
	b.ge	LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_1 Depth=1
Lloh20:
	adrp	x8, _t@GOTPAGE
Lloh21:
	ldr	x8, [x8, _t@GOTPAGEOFF]
	mov	w9, #100                        ; =0x64
	smaddl	x8, w20, w9, x8
	ldrb	w8, [x8, w21, sxtw]
	add	x22, x22, #1
	add	x26, x26, #100
	add	w23, w23, #1
	add	w24, w24, #1
	add	x28, x28, #101
	add	w27, w27, #1
	add	w25, w25, #1
	cmp	w8, #64
	b.eq	LBB0_1
LBB0_24:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGotLdr	Lloh4, Lloh5, Lloh6
	.loh AdrpLdrGot	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.loh AdrpLdrGotLdr	Lloh12, Lloh13, Lloh14
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpLdrGotLdr	Lloh17, Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh20, Lloh21
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
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
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
Lloh22:
	adrp	x24, _m@GOTPAGE
Lloh23:
	ldr	x24, [x24, _m@GOTPAGEOFF]
Lloh24:
	adrp	x25, _n@GOTPAGE
Lloh25:
	ldr	x25, [x25, _n@GOTPAGEOFF]
	stp	x25, x24, [sp]
Lloh26:
	adrp	x0, l_.str@PAGE
Lloh27:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x25]
	ldr	w9, [x24]
	orr	w8, w8, w9
	cbz	w8, LBB1_15
; %bb.1:
Lloh28:
	adrp	x26, _t@GOTPAGE
Lloh29:
	ldr	x26, [x26, _t@GOTPAGEOFF]
Lloh30:
	adrp	x19, l_.str.1@PAGE
Lloh31:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh32:
	adrp	x20, l_.str.2@PAGE
Lloh33:
	add	x20, x20, l_.str.2@PAGEOFF
Lloh34:
	adrp	x21, l_.str@PAGE
Lloh35:
	add	x21, x21, l_.str@PAGEOFF
	b	LBB1_4
LBB1_2:                                 ;   in Loop: Header=BB1_4 Depth=1
	mov	w27, #0                         ; =0x0
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	str	x27, [sp]
	mov	x0, x20
	bl	_printf
	stp	x25, x24, [sp]
	mov	x0, x21
	bl	_scanf
	ldr	w8, [x25]
	ldr	w9, [x24]
	orr	w8, w8, w9
	cbz	w8, LBB1_15
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
                                        ;     Child Loop BB1_10 Depth 2
                                        ;       Child Loop BB1_13 Depth 3
	ldr	w8, [x25]
	cmp	w8, #1
	b.lt	LBB1_7
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x22, #0                         ; =0x0
	mov	x23, x26
LBB1_6:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x23, [sp]
	mov	x0, x19
	bl	_scanf
	add	x22, x22, #1
	ldrsw	x8, [x25]
	add	x23, x23, #100
	cmp	x22, x8
	b.lt	LBB1_6
LBB1_7:                                 ;   in Loop: Header=BB1_4 Depth=1
	ldr	w8, [x25]
	cmp	w8, #1
	b.lt	LBB1_2
; %bb.8:                                ;   in Loop: Header=BB1_4 Depth=1
	mov	x22, #0                         ; =0x0
	mov	w27, #0                         ; =0x0
	mov	x28, x26
	b	LBB1_10
LBB1_9:                                 ;   in Loop: Header=BB1_10 Depth=2
	add	x22, x22, #1
	ldrsw	x8, [x25]
	add	x28, x28, #100
	cmp	x22, x8
	b.ge	LBB1_3
LBB1_10:                                ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_13 Depth 3
	ldr	w8, [x24]
	cmp	w8, #1
	b.lt	LBB1_9
; %bb.11:                               ;   in Loop: Header=BB1_10 Depth=2
	mov	x23, #0                         ; =0x0
	b	LBB1_13
LBB1_12:                                ;   in Loop: Header=BB1_13 Depth=3
	add	x23, x23, #1
	ldrsw	x8, [x24]
	cmp	x23, x8
	b.ge	LBB1_9
LBB1_13:                                ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrb	w8, [x28, x23]
	cmp	w8, #64
	b.ne	LBB1_12
; %bb.14:                               ;   in Loop: Header=BB1_13 Depth=3
	add	w27, w27, #1
	mov	x0, x22
	mov	x1, x23
	bl	_dfs
	b	LBB1_12
LBB1_15:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpLdrGot	Lloh22, Lloh23
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpLdrGot	Lloh28, Lloh29
	.cfi_endproc
                                        ; -- End function
	.comm	_t,10000,0                      ; @t
	.comm	_m,4,2                          ; @m
	.comm	_n,4,2                          ; @n
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%s"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
