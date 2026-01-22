	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cude                           ; -- Begin function cude
	.p2align	2
_cude:                                  ; @cude
	.cfi_startproc
; %bb.0:
	cmp	w0, #5
	b.lt	LBB0_14
; %bb.1:
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
	mov	x19, x0
	mul	w8, w0, w0
	mul	w21, w8, w0
	sub	w9, w0, #3
	mov	w8, #2                          ; =0x2
	stp	w9, w8, [sp, #36]               ; 8-byte Folded Spill
	mov	w8, #5                          ; =0x5
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
Lloh0:
	adrp	x20, l_.str@PAGE
Lloh1:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	cmp	w25, w8
	b.eq	LBB0_13
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;       Child Loop BB0_11 Depth 3
	ldr	w25, [sp, #40]                  ; 4-byte Folded Reload
	add	w8, w25, #1
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	cmp	w8, w19
	b.ge	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mul	w8, w25, w25
	mul	w26, w8, w25
	ldp	w28, w23, [sp, #40]             ; 8-byte Folded Reload
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	add	w23, w23, #1
	mov	x28, x22
	cmp	w22, w19
	b.eq	LBB0_2
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_11 Depth 3
	mul	w8, w28, w28
	madd	w24, w8, w28, w26
	cmp	w24, w21
	b.ge	LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	add	w22, w28, #1
	cmp	w22, w19
	b.ge	LBB0_5
; %bb.8:                                ;   in Loop: Header=BB0_6 Depth=2
	mov	x27, x23
	b	LBB0_11
LBB0_9:                                 ;   in Loop: Header=BB0_11 Depth=3
	stp	x28, x8, [sp, #16]
	stp	x19, x25, [sp]
	mov	x0, x20
	bl	_printf
	cmp	w27, w19
	b.ge	LBB0_5
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=3
	add	w27, w27, #1
LBB0_11:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_6 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	sub	w8, w27, #1
	mul	w9, w8, w8
	madd	w9, w9, w8, w24
	cmp	w9, w21
	b.eq	LBB0_9
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=3
	ccmp	w27, w19, #0, le
	b.lt	LBB0_10
	b	LBB0_5
LBB0_13:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
LBB0_14:
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
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
	add	x8, sp, #44
	str	x8, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #44]
	cmp	w8, #6
	b.ge	LBB1_2
LBB1_1:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB1_2:
	mov	w20, #6                         ; =0x6
Lloh4:
	adrp	x19, l_.str@PAGE
Lloh5:
	add	x19, x19, l_.str@PAGEOFF
	b	LBB1_4
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	add	w8, w20, #1
	ldr	w9, [sp, #44]
	cmp	w20, w9
	mov	x20, x8
	b.ge	LBB1_1
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
                                        ;       Child Loop BB1_9 Depth 3
                                        ;         Child Loop BB1_14 Depth 4
	mul	w8, w20, w20
	mul	w21, w8, w20
	sub	w9, w20, #3
	mov	w8, #2                          ; =0x2
	stp	w9, w8, [sp, #32]               ; 8-byte Folded Spill
	mov	w8, #5                          ; =0x5
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	b	LBB1_6
LBB1_5:                                 ;   in Loop: Header=BB1_6 Depth=2
	ldr	w8, [sp, #40]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
	cmp	w25, w8
	b.eq	LBB1_3
LBB1_6:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_9 Depth 3
                                        ;         Child Loop BB1_14 Depth 4
	ldr	w25, [sp, #36]                  ; 4-byte Folded Reload
	add	w8, w25, #1
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	cmp	w8, w20
	b.hs	LBB1_5
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=2
	mul	w8, w25, w25
	mul	w26, w8, w25
	ldp	w28, w23, [sp, #36]             ; 8-byte Folded Reload
	b	LBB1_9
LBB1_8:                                 ;   in Loop: Header=BB1_9 Depth=3
	add	w23, w23, #1
	mov	x28, x22
	cmp	w22, w20
	b.eq	LBB1_5
LBB1_9:                                 ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_6 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_14 Depth 4
	mul	w8, w28, w28
	madd	w24, w8, w28, w26
	cmp	w24, w21
	b.ge	LBB1_5
; %bb.10:                               ;   in Loop: Header=BB1_9 Depth=3
	add	w22, w28, #1
	cmp	w22, w20
	b.ge	LBB1_8
; %bb.11:                               ;   in Loop: Header=BB1_9 Depth=3
	mov	x27, x23
	b	LBB1_14
LBB1_12:                                ;   in Loop: Header=BB1_14 Depth=4
	ccmp	w27, w20, #0, le
	b.ge	LBB1_8
LBB1_13:                                ;   in Loop: Header=BB1_14 Depth=4
	add	w27, w27, #1
LBB1_14:                                ;   Parent Loop BB1_4 Depth=1
                                        ;     Parent Loop BB1_6 Depth=2
                                        ;       Parent Loop BB1_9 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	sub	w8, w27, #1
	mul	w9, w8, w8
	madd	w9, w9, w8, w24
	cmp	w9, w21
	b.ne	LBB1_12
; %bb.15:                               ;   in Loop: Header=BB1_14 Depth=4
	stp	x28, x8, [sp, #16]
	stp	x20, x25, [sp]
	mov	x0, x19
	bl	_printf
	cmp	w27, w20
	b.lt	LBB1_13
	b	LBB1_8
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Cube = %d, Triple = (%d,%d,%d)\n"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

.subsections_via_symbols
