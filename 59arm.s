	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #528
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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x8, sp, #32
	add	x9, x8, #44
	str	wzr, [sp, #512]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #448]
	stp	q0, q0, [x8, #416]
	stp	q0, q0, [x8, #384]
	stp	q0, q0, [x8, #352]
	stp	q0, q0, [x8, #320]
	stp	q0, q0, [x8, #288]
	stp	q0, q0, [x8, #256]
	stp	q0, q0, [x8, #224]
	stp	q0, q0, [x8, #192]
	stp	q0, q0, [x8, #160]
	stp	q0, q0, [x8, #128]
	stp	q0, q0, [sp, #128]
	stp	q0, q0, [sp, #96]
	stp	q0, q0, [sp, #64]
	mov	x10, #-484                      ; =0xfffffffffffffe1c
	mov	w11, #1                         ; =0x1
	stp	q0, q0, [sp, #32]
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	str	w11, [x8]
	add	x12, x9, x10
	str	w11, [x12, #440]
	str	w11, [x8, #44]
	str	w11, [x12, #444]
	add	x8, x8, #4
	adds	x10, x10, #44
	b.ne	LBB0_1
; %bb.2:
	mov	w8, #2                          ; =0x2
	mov	w9, #8                          ; =0x8
	mov	w10, #92                        ; =0x5c
	mov	w11, #44                        ; =0x2c
	add	x12, sp, #32
	b	LBB0_4
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	x8, x8, #1
	add	x9, x9, #44
	add	x10, x10, #44
	cmp	x8, #11
	b.eq	LBB0_9
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	madd	x13, x8, x11, x12
	mov	x14, #-9                        ; =0xfffffffffffffff7
	mov	x15, x10
	mov	x16, x9
	b	LBB0_7
LBB0_5:                                 ;   in Loop: Header=BB0_7 Depth=2
	ldr	w17, [x12, x15]
	ldr	w0, [x12, x16]
	add	w17, w0, w17
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=2
	add	x0, x12, x15
	str	w17, [x0, #4]
	sub	x16, x16, #40
	add	x15, x15, #4
	adds	x14, x14, #1
	b.hs	LBB0_3
LBB0_7:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x17, x14, #11
	cmp	x17, x8
	b.ls	LBB0_5
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	ldr	w17, [x13, x8, lsl #2]
	b	LBB0_6
LBB0_9:
	add	x8, sp, #28
	str	x8, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB0_12
; %bb.10:
	mov	w21, #0                         ; =0x0
	add	x22, sp, #20
	add	x23, sp, #24
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
	mov	w24, #44                        ; =0x2c
	add	x25, sp, #32
Lloh7:
	adrp	x20, l_.str.2@PAGE
Lloh8:
	add	x20, x20, l_.str.2@PAGEOFF
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	stp	x23, x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldpsw	x9, x8, [sp, #20]
	smaddl	x8, w8, w24, x25
	ldr	w8, [x8, x9, lsl #2]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	add	w21, w21, #1
	ldr	w8, [sp, #28]
	cmp	w21, w8
	b.lt	LBB0_11
LBB0_12:
	ldur	x8, [x29, #-72]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_14
; %bb.13:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #528
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_14:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d%d"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

.subsections_via_symbols
