	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
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
	add	x20, sp, #12
	str	x20, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	tbnz	w8, #31, LBB0_13
; %bb.1:
Lloh2:
	adrp	x21, _Factorial@PAGE
Lloh3:
	add	x21, x21, _Factorial@PAGEOFF
Lloh4:
	adrp	x22, l_str@PAGE
Lloh5:
	add	x22, x22, l_str@PAGEOFF
Lloh6:
	adrp	x23, l_str.3@PAGE
Lloh7:
	add	x23, x23, l_str.3@PAGEOFF
Lloh8:
	adrp	x19, l_.str@PAGE
Lloh9:
	add	x19, x19, l_.str@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w10, #9                         ; =0x9
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w10, #9
	ccmp	w8, #0, #0, ne
	csel	x0, x23, x22, eq
	bl	_puts
	str	x20, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #12]
	tbnz	w8, #31, LBB0_13
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;       Child Loop BB0_7 Depth 3
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w9, #9                          ; =0x9
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_7 Depth 3
	tbnz	w9, #31, LBB0_10
LBB0_7:                                 ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_6 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w10, [x21, w9, uxtw #2]
	cmp	w8, w10
	b.ge	LBB0_10
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=3
	sub	w10, w9, #1
	cmp	w9, #0
	mov	x9, x10
	b.gt	LBB0_7
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=2
	mov	w9, #-1                         ; =0xffffffff
LBB0_10:                                ;   in Loop: Header=BB0_6 Depth=2
	tbnz	w9, #31, LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=2
	sub	w10, w9, #1
	ldr	w11, [x21, w9, uxtw #2]
	mov	x9, x10
	subs	w8, w8, w11
	str	w8, [sp, #12]
	b.gt	LBB0_6
	b	LBB0_3
LBB0_12:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #1                          ; =0x1
	mov	x10, x9
	b	LBB0_3
LBB0_13:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_Factorial                      ; @Factorial
	.p2align	2, 0x0
_Factorial:
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	6                               ; 0x6
	.long	24                              ; 0x18
	.long	120                             ; 0x78
	.long	720                             ; 0x2d0
	.long	5040                            ; 0x13b0
	.long	40320                           ; 0x9d80
	.long	362880                          ; 0x58980

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_str:                                  ; @str
	.asciz	"NO"

l_str.3:                                ; @str.3
	.asciz	"YES"

.subsections_via_symbols
