	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #288
	stp	x24, x23, [sp, #224]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #240]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	mov	w19, #21587                     ; =0x5453
	movk	w19, #21057, lsl #16
	add	x22, sp, #15
	add	x0, sp, #15
	bl	_gets
	ldur	w8, [sp, #15]
	ldurh	w9, [sp, #19]
	cmp	w8, w19
	mov	w20, #84                        ; =0x54
	ccmp	w9, w20, #0, eq
	b.ne	LBB0_8
; %bb.1:
	mov	w21, #20037                     ; =0x4e45
	movk	w21, #68, lsl #16
	add	x22, x22, #1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_putchar
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	add	x0, sp, #15
	bl	_gets
	ldur	w8, [sp, #15]
	cmp	w8, w21
	b.eq	LBB0_7
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldrb	w8, [sp, #15]
	cbz	w8, LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x23, x22
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w9, w8, #70
	and	w9, w9, #0xff
	sxtb	w10, w8
	sub	w11, w8, #65
	and	w11, w11, #0xff
	add	w12, w10, #21
	cmp	w11, #5
	csel	w10, w12, w10, lo
	sub	w8, w8, #5
	and	w8, w8, #0xff
	cmp	w9, #20
	csel	w0, w10, w8, hi
	bl	_putchar
	ldrb	w8, [x23], #1
	cbnz	w8, LBB0_6
	b	LBB0_2
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x0, sp, #15
	bl	_gets
	ldur	w8, [sp, #15]
	ldurh	w9, [sp, #19]
	cmp	w8, w19
	ccmp	w9, w20, #0, eq
	b.eq	LBB0_3
LBB0_8:
	ldur	x8, [x29, #-56]
Lloh3:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh4:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh5:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_10
; %bb.9:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #256]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #240]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
LBB0_10:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh3, Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"START"

l_.str.1:                               ; @.str.1
	.asciz	"END"

.subsections_via_symbols
