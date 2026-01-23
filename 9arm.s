	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x19, sp, #13
	add	x0, sp, #13
	bl	_gets
	mov	x8, #0                          ; =0x0
	sub	x9, x29, #50
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x19, x8]
	sub	w10, w10, #97
	strb	w10, [x9, x8]
	add	x8, x8, #1
	cmp	x8, #26
	b.ne	LBB0_1
; %bb.2:
	add	x19, sp, #13
	add	x0, sp, #13
	bl	_gets
	ldrb	w8, [sp, #13]
	cbz	w8, LBB0_10
; %bb.3:
	add	x19, x19, #1
	sub	x20, x29, #50
	b	LBB0_6
LBB0_4:                                 ;   in Loop: Header=BB0_6 Depth=1
	and	x8, x9, #0xff
	ldrsb	w8, [x20, x8]
	add	w0, w8, #97
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	bl	_putchar
	ldrb	w8, [x19], #1
	cbz	w8, LBB0_10
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	sub	w9, w8, #97
	and	w10, w9, #0xff
	cmp	w10, #25
	b.ls	LBB0_4
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	sub	w9, w8, #65
	and	w10, w9, #0xff
	cmp	w10, #25
	b.hi	LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_6 Depth=1
	and	x8, x9, #0xff
	ldrsb	w8, [x20, x8]
	add	w0, w8, #65
	b	LBB0_5
LBB0_9:                                 ;   in Loop: Header=BB0_6 Depth=1
	sxtb	w0, w8
	b	LBB0_5
LBB0_10:
	mov	w0, #10                         ; =0xa
	bl	_putchar
	ldur	x8, [x29, #-24]
Lloh3:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh4:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh5:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_12
; %bb.11:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB0_12:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh3, Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
