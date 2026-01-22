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
	mov	w20, #2992                      ; =0xbb0
	mov	w21, #26215                     ; =0x6667
	movk	w21, #26214, lsl #16
	mov	w22, #10                        ; =0xa
	mov	w23, #43691                     ; =0xaaab
	movk	w23, #10922, lsl #16
	mov	w24, #12                        ; =0xc
	mov	w25, #10000                     ; =0x2710
Lloh0:
	adrp	x19, l_.str@PAGE
Lloh1:
	add	x19, x19, l_.str@PAGEOFF
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	w20, w20, #1
	cmp	w20, w25
	b.eq	LBB0_11
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
	mov	w8, #0                          ; =0x0
	mov	x9, x20
LBB0_3:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	smull	x10, w9, w21
	lsr	x11, x10, #63
	asr	x10, x10, #34
	add	w10, w10, w11
	msub	w11, w10, w22, w9
	add	w8, w8, w11
	add	w11, w9, #9
	mov	x9, x10
	cmp	w11, #18
	b.hi	LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	w9, #0                          ; =0x0
	mov	x10, x20
LBB0_5:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	smull	x11, w10, w23
	lsr	x12, x11, #63
	asr	x11, x11, #33
	add	w11, w11, w12
	msub	w12, w11, w24, w10
	add	w9, w9, w12
	add	w12, w10, #11
	mov	x10, x11
	cmp	w12, #22
	b.hi	LBB0_5
; %bb.6:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, w9
	b.ne	LBB0_1
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	w9, #0                          ; =0x0
	mov	x10, x20
LBB0_8:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	w11, w10, #15
	cmp	w10, #0
	csel	w12, w11, w10, lt
	asr	w13, w12, #4
	and	w12, w12, #0xfffffff0
	sub	w10, w10, w12
	add	w9, w9, w10
	mov	x10, x13
	cmp	w11, #30
	b.hi	LBB0_8
; %bb.9:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, w9
	b.ne	LBB0_1
; %bb.10:                               ;   in Loop: Header=BB0_2 Depth=1
	str	x20, [sp]
	mov	x0, x19
	bl	_printf
	b	LBB0_1
LBB0_11:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d\n"

.subsections_via_symbols
