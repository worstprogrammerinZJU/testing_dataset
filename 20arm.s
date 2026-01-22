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
	adrp	x11, _t@GOTPAGE
Lloh1:
	ldr	x11, [x11, _t@GOTPAGEOFF]
	mov	w9, #100                        ; =0x64
	smaddl	x26, w0, w9, x11
	add	w25, w1, #1
	sub	w12, w1, #1
	sxtw	x8, w1
	smaddl	x9, w0, w9, x8
Lloh2:
	adrp	x10, _p@PAGE
Lloh3:
	add	x10, x10, _p@PAGEOFF
	add	x28, x10, x9
	sub	w9, w0, #1
	mov	w10, w1
	str	x10, [sp, #40]                  ; 8-byte Folded Spill
	add	x8, x11, x8
	stp	x12, x8, [sp, #16]              ; 16-byte Folded Spill
	add	w27, w0, #1
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	mov	x23, x9
	mov	x24, x12
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x28]
	cmp	w8, #1
	b.eq	LBB0_25
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	ldp	x9, x8, [sp, #32]               ; 16-byte Folded Reload
	add	x20, x9, x22
	add	x19, x8, x22
	mov	w8, #1                          ; =0x1
	strb	w8, [x28]
	cmp	w20, #1
	b.lt	LBB0_11
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	cmp	w19, #1
	b.lt	LBB0_6
; %bb.4:                                ;   in Loop: Header=BB0_1 Depth=1
	ldp	x8, x9, [sp, #8]                ; 16-byte Folded Reload
	add	x0, x8, x22
	mov	w8, w0
	add	x1, x9, x22
Lloh4:
	adrp	x9, _t@GOTPAGE
Lloh5:
	ldr	x9, [x9, _t@GOTPAGEOFF]
	mov	w10, #100                       ; =0x64
	umaddl	x8, w8, w10, x9
	ldrb	w8, [x8, w1, uxtw]
	cmp	w8, #87
	b.ne	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_1 Depth=1
                                        ; kill: def $w0 killed $w0 killed $x0
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	_dfs
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #100                        ; =0x64
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	umaddl	x8, w23, w8, x9
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	add	x21, x9, x22
	ldrb	w8, [x8, x22]
	cmp	w8, #87
	b.ne	LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x21
	mov	x1, x19
	bl	_dfs
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x8, x8, x22
	add	x1, x8, #1
Lloh6:
	adrp	x8, _m@GOTPAGE
Lloh7:
	ldr	x8, [x8, _m@GOTPAGEOFF]
Lloh8:
	ldr	w8, [x8]
	cmp	w1, w8
	b.ge	LBB0_11
; %bb.9:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, w21
Lloh9:
	adrp	x9, _t@GOTPAGE
Lloh10:
	ldr	x9, [x9, _t@GOTPAGEOFF]
	mov	w10, #100                       ; =0x64
	umaddl	x8, w8, w10, x9
	ldrb	w8, [x8, w1, sxtw]
	cmp	w8, #87
	b.ne	LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x21
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	_dfs
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w24, w24
	cmp	w19, #1
	b.lt	LBB0_14
; %bb.12:                               ;   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [x26, x24]
	cmp	w8, #87
	b.ne	LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, x22
	mov	x0, x20
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	_dfs
LBB0_14:                                ;   in Loop: Header=BB0_1 Depth=1
	sxtw	x25, w25
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x8, x8, x22
	add	x21, x8, #1
Lloh11:
	adrp	x8, _m@GOTPAGE
Lloh12:
	ldr	x8, [x8, _m@GOTPAGEOFF]
Lloh13:
	ldr	w8, [x8]
	cmp	w21, w8
	b.ge	LBB0_17
; %bb.15:                               ;   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [x26, x25]
	cmp	w8, #87
	b.ne	LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x20
	mov	x1, x21
	bl	_dfs
LBB0_17:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	add	x8, x8, x22
	add	x20, x8, #1
Lloh14:
	adrp	x8, _n@GOTPAGE
Lloh15:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh16:
	ldr	w8, [x8]
	cmp	w20, w8
	b.ge	LBB0_25
; %bb.18:                               ;   in Loop: Header=BB0_1 Depth=1
	cmp	w19, #1
	b.lt	LBB0_21
; %bb.19:                               ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, x22
Lloh17:
	adrp	x8, _t@GOTPAGE
Lloh18:
	ldr	x8, [x8, _t@GOTPAGEOFF]
	mov	w9, #100                        ; =0x64
	smaddl	x8, w20, w9, x8
	ldrb	w8, [x8, w1, uxtw]
	cmp	w8, #87
	b.ne	LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x20
                                        ; kill: def $w1 killed $w1 killed $x1
	bl	_dfs
LBB0_21:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #100                        ; =0x64
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	smaddl	x8, w27, w8, x9
	ldrb	w8, [x8, x22]
	cmp	w8, #87
	b.ne	LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x0, x20
	mov	x1, x19
	bl	_dfs
LBB0_23:                                ;   in Loop: Header=BB0_1 Depth=1
Lloh19:
	adrp	x8, _m@GOTPAGE
Lloh20:
	ldr	x8, [x8, _m@GOTPAGEOFF]
Lloh21:
	ldr	w8, [x8]
	cmp	w21, w8
	b.ge	LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_1 Depth=1
Lloh22:
	adrp	x8, _t@GOTPAGE
Lloh23:
	ldr	x8, [x8, _t@GOTPAGEOFF]
	mov	w9, #100                        ; =0x64
	smaddl	x8, w20, w9, x8
	ldrb	w8, [x8, w21, sxtw]
	add	x22, x22, #1
	add	x26, x26, #100
	add	w25, w25, #1
	add	w24, w24, #1
	add	x28, x28, #101
	add	w27, w27, #1
	add	w23, w23, #1
	cmp	w8, #87
	b.eq	LBB0_1
LBB0_25:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGotLdr	Lloh6, Lloh7, Lloh8
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.loh AdrpLdrGotLdr	Lloh14, Lloh15, Lloh16
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpLdrGotLdr	Lloh19, Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh22, Lloh23
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
Lloh24:
	adrp	x21, _m@GOTPAGE
Lloh25:
	ldr	x21, [x21, _m@GOTPAGEOFF]
Lloh26:
	adrp	x22, _n@GOTPAGE
Lloh27:
	ldr	x22, [x22, _n@GOTPAGEOFF]
	stp	x22, x21, [sp]
Lloh28:
	adrp	x0, l_.str@PAGE
Lloh29:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB1_3
; %bb.1:
	mov	x20, #0                         ; =0x0
Lloh30:
	adrp	x23, _t@GOTPAGE
Lloh31:
	ldr	x23, [x23, _t@GOTPAGEOFF]
Lloh32:
	adrp	x19, l_.str.1@PAGE
Lloh33:
	add	x19, x19, l_.str.1@PAGEOFF
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	str	x23, [sp]
	mov	x0, x19
	bl	_scanf
	add	x20, x20, #1
	ldrsw	x8, [x22]
	add	x23, x23, #100
	cmp	x20, x8
	b.lt	LBB1_2
LBB1_3:
	ldr	w8, [x22]
	cmp	w8, #1
	b.lt	LBB1_12
; %bb.4:
	mov	x19, #0                         ; =0x0
	mov	w23, #0                         ; =0x0
Lloh34:
	adrp	x24, _t@GOTPAGE
Lloh35:
	ldr	x24, [x24, _t@GOTPAGEOFF]
Lloh36:
	adrp	x25, _p@PAGE
Lloh37:
	add	x25, x25, _p@PAGEOFF
	b	LBB1_6
LBB1_5:                                 ;   in Loop: Header=BB1_6 Depth=1
	add	x19, x19, #1
	ldrsw	x8, [x22]
	add	x24, x24, #100
	add	x25, x25, #100
	cmp	x19, x8
	b.ge	LBB1_13
LBB1_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_9 Depth 2
	ldr	w8, [x21]
	cmp	w8, #1
	b.lt	LBB1_5
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=1
	mov	x20, #0                         ; =0x0
	b	LBB1_9
LBB1_8:                                 ;   in Loop: Header=BB1_9 Depth=2
	add	x20, x20, #1
	ldrsw	x8, [x21]
	cmp	x20, x8
	b.ge	LBB1_5
LBB1_9:                                 ;   Parent Loop BB1_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w8, [x24, x20]
	cmp	w8, #87
	b.ne	LBB1_8
; %bb.10:                               ;   in Loop: Header=BB1_9 Depth=2
	ldrb	w8, [x25, x20]
	cbnz	w8, LBB1_8
; %bb.11:                               ;   in Loop: Header=BB1_9 Depth=2
	add	w23, w23, #1
	mov	x0, x19
	mov	x1, x20
	bl	_dfs
	b	LBB1_8
LBB1_12:
	mov	w23, #0                         ; =0x0
LBB1_13:
	str	x23, [sp]
Lloh38:
	adrp	x0, l_.str.2@PAGE
Lloh39:
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
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpLdrGot	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpLdrGot	Lloh30, Lloh31
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpLdrGot	Lloh34, Lloh35
	.loh AdrpAdd	Lloh38, Lloh39
	.cfi_endproc
                                        ; -- End function
	.globl	_p                              ; @p
.zerofill __DATA,__common,_p,10000,0
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
