	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp, #40]
	add	x23, sp, #31
	add	x24, sp, #24
	stp	x24, x23, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #24]
	cbnz	w8, LBB0_2
; %bb.1:
	ldrb	w8, [sp, #31]
	cmp	w8, #48
	b.eq	LBB0_41
LBB0_2:
Lloh5:
	adrp	x25, l___const.main.l@PAGE
Lloh6:
	add	x25, x25, l___const.main.l@PAGEOFF
Lloh7:
	adrp	x19, l_.str.5@PAGE
Lloh8:
	add	x19, x19, l_.str.5@PAGEOFF
Lloh9:
	adrp	x21, l_.str@PAGE
Lloh10:
	add	x21, x21, l_.str@PAGEOFF
Lloh11:
	adrp	x26, l___const.main.c@PAGE
Lloh12:
	add	x26, x26, l___const.main.c@PAGEOFF
Lloh13:
	adrp	x22, l_.str.3@PAGE
Lloh14:
	add	x22, x22, l_.str.3@PAGEOFF
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;       Child Loop BB0_8 Depth 3
                                        ;     Child Loop BB0_12 Depth 2
                                        ;       Child Loop BB0_15 Depth 3
                                        ;         Child Loop BB0_17 Depth 4
                                        ;     Child Loop BB0_21 Depth 2
                                        ;       Child Loop BB0_23 Depth 3
                                        ;     Child Loop BB0_27 Depth 2
                                        ;       Child Loop BB0_30 Depth 3
                                        ;         Child Loop BB0_32 Depth 4
                                        ;     Child Loop BB0_36 Depth 2
                                        ;       Child Loop BB0_38 Depth 3
	ldrb	w8, [sp, #31]
	cbz	w8, LBB0_9
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x27, #0                         ; =0x0
	add	x28, sp, #31
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	mov	x0, x22
	bl	_printf
	add	x27, x27, #1
	add	x28, x23, x27
	ldrb	w8, [x28]
	cbz	w8, LBB0_9
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_8 Depth 3
	mov	w0, #32                         ; =0x20
	bl	_putchar
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	mov	w20, #0                         ; =0x0
LBB0_8:                                 ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_6 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrsb	x8, [x28]
	add	x8, x8, x26
	ldursb	w0, [x8, #-48]
	bl	_putchar
	add	w20, w20, #1
	ldr	w8, [sp, #24]
	cmp	w20, w8
	b.lt	LBB0_8
	b	LBB0_5
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_18
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	w27, #0                         ; =0x0
	b	LBB0_12
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=2
	mov	w0, #10                         ; =0xa
	bl	_putchar
	add	w27, w27, #1
	ldr	w8, [sp, #24]
	cmp	w27, w8
	b.ge	LBB0_18
LBB0_12:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_15 Depth 3
                                        ;         Child Loop BB0_17 Depth 4
	ldrb	w8, [sp, #31]
	cbz	w8, LBB0_11
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=2
	mov	x28, #0                         ; =0x0
	b	LBB0_15
LBB0_14:                                ;   in Loop: Header=BB0_15 Depth=3
	ldrsb	x8, [x23, x28]
	add	x8, x25, x8, lsl #1
	ldursb	x8, [x8, #-95]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	add	x28, x28, #1
	ldrb	w8, [x23, x28]
	cbz	w8, LBB0_11
LBB0_15:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB0_17 Depth 4
	add	x8, x25, w8, sxtb #1
	ldursb	w0, [x8, #-96]
	bl	_putchar
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_14
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=3
	mov	w20, #0                         ; =0x0
LBB0_17:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ;       Parent Loop BB0_15 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	mov	w0, #32                         ; =0x20
	bl	_putchar
	add	w20, w20, #1
	ldr	w8, [sp, #24]
	cmp	w20, w8
	b.lt	LBB0_17
	b	LBB0_14
LBB0_18:                                ;   in Loop: Header=BB0_3 Depth=1
	ldrb	w8, [sp, #31]
	cbz	w8, LBB0_24
; %bb.19:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x27, #0                         ; =0x0
	add	x28, sp, #31
	b	LBB0_21
LBB0_20:                                ;   in Loop: Header=BB0_21 Depth=2
	mov	x0, x22
	bl	_printf
	add	x27, x27, #1
	add	x28, x23, x27
	ldrb	w8, [x28]
	cbz	w8, LBB0_24
LBB0_21:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_23 Depth 3
	mov	w0, #32                         ; =0x20
	bl	_putchar
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_20
; %bb.22:                               ;   in Loop: Header=BB0_21 Depth=2
	mov	w20, #0                         ; =0x0
LBB0_23:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_21 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrsb	x8, [x28]
	add	x8, x8, x26
	ldursb	w0, [x8, #-38]
	bl	_putchar
	add	w20, w20, #1
	ldr	w8, [sp, #24]
	cmp	w20, w8
	b.lt	LBB0_23
	b	LBB0_20
LBB0_24:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_33
; %bb.25:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	w27, #0                         ; =0x0
	b	LBB0_27
LBB0_26:                                ;   in Loop: Header=BB0_27 Depth=2
	mov	w0, #10                         ; =0xa
	bl	_putchar
	add	w27, w27, #1
	ldr	w8, [sp, #24]
	cmp	w27, w8
	b.ge	LBB0_33
LBB0_27:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_30 Depth 3
                                        ;         Child Loop BB0_32 Depth 4
	ldrb	w8, [sp, #31]
	cbz	w8, LBB0_26
; %bb.28:                               ;   in Loop: Header=BB0_27 Depth=2
	mov	x28, #0                         ; =0x0
	b	LBB0_30
LBB0_29:                                ;   in Loop: Header=BB0_30 Depth=3
	ldrsb	x8, [x23, x28]
	add	x8, x25, x8, lsl #1
	ldursb	x8, [x8, #-75]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	add	x28, x28, #1
	ldrb	w8, [x23, x28]
	cbz	w8, LBB0_26
LBB0_30:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_27 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB0_32 Depth 4
	add	x8, x25, w8, sxtb #1
	ldursb	w0, [x8, #-76]
	bl	_putchar
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_29
; %bb.31:                               ;   in Loop: Header=BB0_30 Depth=3
	mov	w20, #0                         ; =0x0
LBB0_32:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_27 Depth=2
                                        ;       Parent Loop BB0_30 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	mov	w0, #32                         ; =0x20
	bl	_putchar
	add	w20, w20, #1
	ldr	w8, [sp, #24]
	cmp	w20, w8
	b.lt	LBB0_32
	b	LBB0_29
LBB0_33:                                ;   in Loop: Header=BB0_3 Depth=1
	ldrb	w8, [sp, #31]
	cbz	w8, LBB0_39
; %bb.34:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x27, #0                         ; =0x0
	add	x28, sp, #31
	b	LBB0_36
LBB0_35:                                ;   in Loop: Header=BB0_36 Depth=2
	mov	x0, x22
	bl	_printf
	add	x27, x27, #1
	add	x28, x23, x27
	ldrb	w8, [x28]
	cbz	w8, LBB0_39
LBB0_36:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_38 Depth 3
	mov	w0, #32                         ; =0x20
	bl	_putchar
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_35
; %bb.37:                               ;   in Loop: Header=BB0_36 Depth=2
	mov	w20, #0                         ; =0x0
LBB0_38:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_36 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrsb	x8, [x28]
	add	x8, x8, x26
	ldursb	w0, [x8, #-28]
	bl	_putchar
	add	w20, w20, #1
	ldr	w8, [sp, #24]
	cmp	w20, w8
	b.lt	LBB0_38
	b	LBB0_35
LBB0_39:                                ;   in Loop: Header=BB0_3 Depth=1
Lloh15:
	adrp	x0, l_str@PAGE
Lloh16:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	stp	x24, x23, [sp]
	mov	x0, x21
	bl	_scanf
	ldr	w8, [sp, #24]
	cbnz	w8, LBB0_3
; %bb.40:                               ;   in Loop: Header=BB0_3 Depth=1
	ldrb	w8, [sp, #31]
	cmp	w8, #48
	b.ne	LBB0_3
LBB0_41:
	ldr	x8, [sp, #40]
Lloh17:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh18:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh19:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_43
; %bb.42:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB0_43:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpLdrGotLdr	Lloh17, Lloh18, Lloh19
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
l___const.main.c:                       ; @__const.main.c
	.ascii	"- -- -----"
	.ascii	"  ----- --"
	.ascii	"- -- -- --"

l___const.main.l:                       ; @__const.main.l
	.space	2,124
	.ascii	" |"
	.ascii	" |"
	.ascii	" |"
	.space	2,124
	.ascii	"| "
	.ascii	"| "
	.ascii	" |"
	.space	2,124
	.space	2,124
	.space	2,124
	.ascii	" |"
	.ascii	"| "
	.ascii	" |"
	.ascii	" |"
	.ascii	" |"
	.space	2,124
	.ascii	" |"
	.space	2,124
	.ascii	" |"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d %s"

l_.str.3:                               ; @.str.3
	.asciz	"  "

l_.str.5:                               ; @.str.5
	.asciz	"%c "

l_str:                                  ; @str
	.asciz	"\n"

.subsections_via_symbols
