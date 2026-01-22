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
	add	x8, sp, #12
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.lt	LBB0_8
; %bb.1:
	mov	w21, #0                         ; =0x0
	add	x22, sp, #8
Lloh2:
	adrp	x19, l_.str@PAGE
Lloh3:
	add	x19, x19, l_.str@PAGEOFF
	mov	w23, #26215                     ; =0x6667
	movk	w23, #26214, lsl #16
Lloh4:
	adrp	x20, l_.str.1@PAGE
Lloh5:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	add	w21, w21, #1
	ldr	w8, [sp, #12]
	cmp	w21, w8
	b.ge	LBB0_8
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w9, [sp, #8]
	cbz	w9, LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	smull	x10, w9, w23
	lsr	x11, x10, #63
	asr	x10, x10, #33
	add	w12, w9, #4
	add	w9, w10, w11
	add	w8, w9, w8
	cmp	w12, #8
	b.hi	LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	str	w9, [sp, #8]
	b	LBB0_3
LBB0_8:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
