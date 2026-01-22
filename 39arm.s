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
	add	x20, sp, #12
	str	x20, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_10
; %bb.1:
	mov	w21, #-20                       ; =0xffffffec
	mov	w22, #26215                     ; =0x6667
	movk	w22, #26214, lsl #16
	mov	w23, #10                        ; =0xa
Lloh2:
	adrp	x19, l_.str@PAGE
Lloh3:
	add	x19, x19, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
	str	x20, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_10
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
	ldr	w9, [sp, #12]
	cmp	w9, #19
	b.lt	LBB0_7
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	sub	w10, w9, #18
	mov	w24, #9                         ; =0x9
	mov	w8, #1                          ; =0x1
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x9, x10
	add	w11, w24, w24, lsl #2
	madd	w10, w24, w21, w10
	lsl	w24, w11, #1
	add	w8, w8, w8, lsl #2
	lsl	w8, w8, #1
	cmp	w10, #0
	b.gt	LBB0_5
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	str	w9, [sp, #12]
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #1                          ; =0x1
	mov	w24, #9                         ; =0x9
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	sdiv	w10, w9, w24
	msub	w9, w10, w24, w9
	cmp	w9, #0
	csel	w9, w24, w9, eq
	add	w8, w8, w9
	sub	w25, w8, #1
	str	x25, [sp]
	mov	x0, x19
	bl	_printf
	ldr	w8, [sp, #12]
	smull	x9, w25, w22
	lsr	x10, x9, #63
	asr	x9, x9, #34
	add	w9, w9, w10
	cmp	w8, w24
	csel	w24, w25, w9, gt
	cbz	w24, LBB0_2
LBB0_9:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	smull	x8, w24, w22
	lsr	x9, x8, #63
	asr	x8, x8, #34
	add	w25, w8, w9
	msub	w8, w25, w23, w24
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	add	w8, w24, #9
	mov	x24, x25
	cmp	w8, #18
	b.hi	LBB0_9
	b	LBB0_2
LBB0_10:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

.subsections_via_symbols
