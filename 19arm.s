	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x28, x27, [sp, #80]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
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
	add	x21, sp, #56
	add	x22, sp, #60
	add	x23, sp, #64
	add	x24, sp, #68
	add	x25, sp, #72
Lloh0:
	adrp	x19, l_.str@PAGE
Lloh1:
	add	x19, x19, l_.str@PAGEOFF
	add	x26, sp, #76
	mov	w27, #-11                       ; =0xfffffff5
	mov	w28, #36409                     ; =0x8e39
	movk	w28, #14563, lsl #16
Lloh2:
	adrp	x20, l_.str.1@PAGE
Lloh3:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	stp	x22, x21, [sp, #32]
	stp	x24, x23, [sp, #16]
	stp	x26, x25, [sp]
	mov	x0, x19
	bl	_scanf
	ldp	w13, w10, [sp, #72]
	ldp	w8, w9, [sp, #64]
	ldp	w12, w11, [sp, #56]
	cbnz	w10, LBB0_8
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	cbnz	w13, LBB0_8
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	cbnz	w9, LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	cbnz	w8, LBB0_8
; %bb.6:                                ;   in Loop: Header=BB0_2 Depth=1
	cbnz	w11, LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
	cbz	w12, LBB0_21
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	madd	w10, w11, w27, w10
	add	w14, w8, w8, lsl #2
	sub	w13, w13, w14
	stp	w13, w10, [sp, #72]
	add	w14, w9, #3
	cmp	w9, #0
	csel	w14, w14, w9, lt
	add	w8, w8, w14, asr #2
	add	w11, w11, w12
	add	w8, w8, w11
	and	w11, w14, #0xfffffffc
	subs	w9, w9, w11
	str	w9, [sp, #68]
	b.eq	LBB0_16
; %bb.9:                                ;   in Loop: Header=BB0_2 Depth=1
	add	w8, w8, #1
	cmp	w9, #1
	b.eq	LBB0_14
; %bb.10:                               ;   in Loop: Header=BB0_2 Depth=1
	cmp	w9, #2
	b.eq	LBB0_13
; %bb.11:                               ;   in Loop: Header=BB0_2 Depth=1
	cmp	w9, #3
	b.ne	LBB0_16
; %bb.12:                               ;   in Loop: Header=BB0_2 Depth=1
	sub	w9, w13, #1
	str	w9, [sp, #72]
	sub	w9, w10, #5
	b	LBB0_15
LBB0_13:                                ;   in Loop: Header=BB0_2 Depth=1
	sub	w9, w13, #3
	str	w9, [sp, #72]
	sub	w9, w10, #6
	b	LBB0_15
LBB0_14:                                ;   in Loop: Header=BB0_2 Depth=1
	sub	w9, w13, #5
	str	w9, [sp, #72]
	sub	w9, w10, #7
LBB0_15:                                ;   in Loop: Header=BB0_2 Depth=1
	str	w9, [sp, #76]
LBB0_16:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w9, [sp, #72]
	cmp	w9, #1
	b.lt	LBB0_19
; %bb.17:                               ;   in Loop: Header=BB0_2 Depth=1
	umull	x10, w9, w28
	lsr	x10, x10, #33
	add	w8, w10, w8
	add	w10, w10, w10, lsl #3
	subs	w9, w9, w10
	str	w9, [sp, #72]
	b.eq	LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_2 Depth=1
	add	w8, w8, #1
	sub	w9, w9, #9
	str	w9, [sp, #72]
LBB0_19:                                ;   in Loop: Header=BB0_2 Depth=1
	ldp	w9, w10, [sp, #72]
	add	w9, w10, w9, lsl #2
	str	w9, [sp, #76]
	cmp	w9, #1
	b.lt	LBB0_1
; %bb.20:                               ;   in Loop: Header=BB0_2 Depth=1
	umull	x10, w9, w28
	lsr	x10, x10, #35
	add	w8, w10, w8
	mov	w11, #36                        ; =0x24
	msub	w9, w10, w11, w9
	str	w9, [sp, #76]
	cmp	w9, #0
	cinc	w8, w8, ne
	b	LBB0_1
LBB0_21:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d%d%d%d%d%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
