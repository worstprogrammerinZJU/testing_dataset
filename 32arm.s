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
	add	x8, sp, #28
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB0_16
; %bb.1:
	mov	w9, #0                          ; =0x0
Lloh2:
	adrp	x23, _top@GOTPAGE
Lloh3:
	ldr	x23, [x23, _top@GOTPAGEOFF]
Lloh4:
	adrp	x19, l_.str@PAGE
Lloh5:
	add	x19, x19, l_.str@PAGEOFF
	add	x25, sp, #20
Lloh6:
	adrp	x26, _stack@GOTPAGE
Lloh7:
	ldr	x26, [x26, _stack@GOTPAGEOFF]
Lloh8:
	adrp	x21, l_.str.1@PAGE
Lloh9:
	add	x21, x21, l_.str.1@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
	ldr	w9, [sp, #16]                   ; 4-byte Folded Reload
	add	w9, w9, #1
	ldr	w8, [sp, #28]
	cmp	w9, w8
	b.ge	LBB0_16
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;       Child Loop BB0_9 Depth 3
                                        ;       Child Loop BB0_13 Depth 3
	str	w9, [sp, #16]                   ; 4-byte Folded Spill
	str	wzr, [x23]
	add	x8, sp, #24
	str	x8, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w28, #0                         ; =0x0
	mov	w27, #0                         ; =0x0
	b	LBB0_7
LBB0_5:                                 ;   in Loop: Header=BB0_7 Depth=2
	mov	w9, #1                          ; =0x1
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=2
	str	w9, [sp, #20]
	str	wzr, [x26, w8, sxtw #2]
	str	x9, [sp]
	mov	x0, x21
	bl	_printf
	add	w27, w27, #1
	ldr	w8, [sp, #24]
	mov	x28, x22
	cmp	w27, w8
	b.ge	LBB0_2
LBB0_7:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_9 Depth 3
                                        ;       Child Loop BB0_13 Depth 3
	str	x25, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w22, [sp, #20]
	sub	w24, w22, w28
	cmp	w24, #1
	b.lt	LBB0_11
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	ldrsw	x20, [x23]
	add	x0, x26, x20, lsl #2
	mvn	w8, w28
	add	w8, w22, w8
	ubfiz	x8, x8, #2, #32
	add	x2, x8, #4
Lloh10:
	adrp	x1, l_.memset_pattern@PAGE
Lloh11:
	add	x1, x1, l_.memset_pattern@PAGEOFF
	bl	_memset_pattern16
LBB0_9:                                 ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	w20, w20, #1
	subs	w24, w24, #1
	b.ne	LBB0_9
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=2
	str	w20, [x23]
LBB0_11:                                ;   in Loop: Header=BB0_7 Depth=2
	ldr	w9, [x23]
	subs	w8, w9, #1
	b.lt	LBB0_5
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=2
	add	w9, w9, #1
	mov	w10, #1                         ; =0x1
LBB0_13:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w11, [x26, w8, uxtw #2]
	cbnz	w11, LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=3
	add	w10, w10, #1
	sub	w8, w8, #1
	cmn	w8, #1
	b.ne	LBB0_13
	b	LBB0_6
LBB0_15:                                ;   in Loop: Header=BB0_7 Depth=2
	mov	x9, x10
	b	LBB0_6
LBB0_16:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_top,4,2                        ; @top
	.comm	_stack,400,2                    ; @stack
l_.str.1:                               ; @.str.1
	.asciz	"%d "

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; @.memset_pattern
l_.memset_pattern:
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1

.subsections_via_symbols
