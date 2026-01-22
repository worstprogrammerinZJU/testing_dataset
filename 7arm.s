	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_balance                        ; -- Begin function balance
	.p2align	2
_balance:                               ; @balance
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x2
	ldrb	w9, [x0]
Lloh0:
	adrp	x8, _coin@GOTPAGE
Lloh1:
	ldr	x8, [x8, _coin@GOTPAGEOFF]
	mov	w20, #0                         ; =0x0
	cbz	w9, LBB0_3
; %bb.1:
	add	x10, x0, #1
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	add	x9, x8, w9, sxtb #2
	sub	x9, x9, #260
	ldr	w9, [x9]
	add	w20, w9, w20
	ldrb	w9, [x10], #1
	cbnz	w9, LBB0_2
LBB0_3:
	ldrb	w10, [x1]
	cbz	w10, LBB0_6
; %bb.4:
	mov	w21, #0                         ; =0x0
	add	x9, x1, #1
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	add	x10, x8, w10, sxtb #2
	sub	x10, x10, #260
	ldr	w10, [x10]
	add	w21, w10, w21
	ldrb	w10, [x9], #1
	cbnz	w10, LBB0_5
	b	LBB0_7
LBB0_6:
	mov	w21, #0                         ; =0x0
LBB0_7:
Lloh2:
	adrp	x1, l_.str@PAGE
Lloh3:
	add	x1, x1, l_.str@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cbnz	w0, LBB0_9
; %bb.8:
	cmp	w20, w21
	b.eq	LBB0_11
LBB0_9:
Lloh4:
	adrp	x1, l_.str.1@PAGE
Lloh5:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cbnz	w0, LBB0_12
; %bb.10:
	cmp	w20, w21
	b.le	LBB0_12
LBB0_11:
	mov	w0, #1                          ; =0x1
	b	LBB0_13
LBB0_12:
Lloh6:
	adrp	x1, l_.str.2@PAGE
Lloh7:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x0, x19
	bl	_strcmp
	cmp	w0, #0
	ccmp	w20, w21, #0, eq
	cset	w0, lt
LBB0_13:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #224
	stp	x28, x27, [sp, #128]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #144]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
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
Lloh8:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh9:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh10:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
	add	x8, sp, #24
	str	x8, [sp]
Lloh11:
	adrp	x0, l_.str.3@PAGE
Lloh12:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB1_14
; %bb.1:
	mov	w24, #0                         ; =0x0
Lloh13:
	adrp	x19, l_.str.4@PAGE
Lloh14:
	add	x19, x19, l_.str.4@PAGEOFF
Lloh15:
	adrp	x25, _coin@GOTPAGE
Lloh16:
	ldr	x25, [x25, _coin@GOTPAGEOFF]
Lloh17:
	adrp	x27, l_str.8@PAGE
Lloh18:
	add	x27, x27, l_str.8@PAGEOFF
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	add	w8, w26, #65
	str	x8, [sp]
Lloh19:
	adrp	x0, l_.str.5@PAGE
Lloh20:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	cmn	w28, #1
Lloh21:
	adrp	x8, l_str@PAGE
Lloh22:
	add	x8, x8, l_str@PAGEOFF
	csel	x0, x27, x8, eq
	bl	_puts
	add	w24, w24, #1
	ldr	w8, [sp, #24]
	cmp	w24, w8
	b.ge	LBB1_14
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_4 Depth 2
                                        ;     Child Loop BB1_6 Depth 2
                                        ;       Child Loop BB1_7 Depth 3
                                        ;         Child Loop BB1_8 Depth 4
	add	x20, sp, #30
	add	x21, sp, #60
	add	x22, sp, #90
	mov	w23, #3                         ; =0x3
LBB1_4:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	stp	x21, x20, [sp, #8]
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	add	x20, x20, #10
	add	x21, x21, #10
	add	x22, x22, #10
	subs	x23, x23, #1
	b.ne	LBB1_4
; %bb.5:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	w8, #-1                         ; =0xffffffff
LBB1_6:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_7 Depth 3
                                        ;         Child Loop BB1_8 Depth 4
	mov	x26, #0                         ; =0x0
	mov	x28, x8
LBB1_7:                                 ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_6 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_8 Depth 4
	mov	x20, #0                         ; =0x0
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x25, #16]
	add	x21, sp, #30
	add	x22, sp, #60
	add	x23, sp, #90
	str	q0, [x25]
	str	w28, [x25, x26, lsl #2]
LBB1_8:                                 ;   Parent Loop BB1_3 Depth=1
                                        ;     Parent Loop BB1_6 Depth=2
                                        ;       Parent Loop BB1_7 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	mov	x0, x23
	mov	x1, x22
	mov	x2, x21
	bl	_balance
	cbz	w0, LBB1_10
; %bb.9:                                ;   in Loop: Header=BB1_8 Depth=4
	add	x20, x20, #1
	add	x21, x21, #10
	add	x22, x22, #10
	add	x23, x23, #10
	cmp	x20, #3
	b.ne	LBB1_8
LBB1_10:                                ;   in Loop: Header=BB1_7 Depth=3
	cmp	w20, #3
	b.eq	LBB1_2
; %bb.11:                               ;   in Loop: Header=BB1_7 Depth=3
	add	x26, x26, #1
	cmp	x26, #12
	b.ne	LBB1_7
; %bb.12:                               ;   in Loop: Header=BB1_6 Depth=2
	add	w8, w28, #2
	tbnz	w28, #31, LBB1_6
; %bb.13:                               ;   in Loop: Header=BB1_3 Depth=1
	mov	w26, #12                        ; =0xc
	mov	w28, #3                         ; =0x3
	b	LBB1_2
LBB1_14:
	ldur	x8, [x29, #-88]
Lloh23:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh24:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh25:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_16
; %bb.15:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
LBB1_16:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh8, Lloh9, Lloh10
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpLdrGotLdr	Lloh23, Lloh24, Lloh25
	.cfi_endproc
                                        ; -- End function
	.comm	_coin,48,2                      ; @coin
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"even"

l_.str.1:                               ; @.str.1
	.asciz	"up"

l_.str.2:                               ; @.str.2
	.asciz	"down"

l_.str.3:                               ; @.str.3
	.asciz	"%d"

l_.str.4:                               ; @.str.4
	.asciz	"%s%s%s"

l_.str.5:                               ; @.str.5
	.asciz	"%c is the counterfeit coin and it is "

l_str:                                  ; @str
	.asciz	"heavy."

l_str.8:                                ; @str.8
	.asciz	"light."

.subsections_via_symbols
