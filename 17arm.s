	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-112]!            ; 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	sub	sp, sp, #1040
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
	.cfi_offset b8, -104
	.cfi_offset b9, -112
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-104]
	add	x8, sp, #28
	str	x8, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB0_11
; %bb.1:
	mov	w21, #0                         ; =0x0
Lloh5:
	adrp	x19, l_.str@PAGE
Lloh6:
	add	x19, x19, l_.str@PAGEOFF
	add	x22, sp, #24
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d8, x8
	mov	w23, #37                        ; =0x25
Lloh7:
	adrp	x20, l_.str.1@PAGE
Lloh8:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w9, #0                          ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	scvtf	d0, w9
	fmul	d0, d0, d8
	scvtf	d1, w8
	fdiv	d0, d0, d1
	str	x23, [sp, #8]
	str	d0, [sp]
	mov	x0, x20
	bl	_printf
	add	w21, w21, #1
	ldr	w8, [sp, #28]
	cmp	w21, w8
	b.ge	LBB0_11
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x25, #0                         ; =0x0
	mov	w24, #0                         ; =0x0
	add	x26, sp, #32
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x26, [sp]
	mov	x0, x19
	bl	_scanf
	ldrsb	w8, [x26], #1
	add	w24, w24, w8
	add	x25, x25, #1
	ldrsw	x8, [sp, #24]
	cmp	x25, x8
	b.lt	LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w8, #1
	b.ge	LBB0_9
	b	LBB0_2
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w24, #0                         ; =0x0
	cmp	w8, #1
	b.lt	LBB0_2
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w9, #0                          ; =0x0
	mov	w10, w8
	add	x11, sp, #32
	sdiv	w12, w24, w8
LBB0_10:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w13, [x11], #1
	cmp	w12, w13
	cinc	w9, w9, lt
	subs	x10, x10, #1
	b.ne	LBB0_10
	b	LBB0_3
LBB0_11:
	ldur	x8, [x29, #-104]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_13
; %bb.12:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #1040
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #112              ; 16-byte Folded Reload
	ret
LBB0_13:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%.3lf%c\n"

.subsections_via_symbols
