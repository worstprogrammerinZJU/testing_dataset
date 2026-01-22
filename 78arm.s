	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #560
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w27, -56
	.cfi_offset w28, -64
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	add	x20, sp, #128
	str	wzr, [x20, #416]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x20, #384]
	stp	q0, q0, [x20, #352]
	stp	q0, q0, [x20, #320]
	stp	q0, q0, [x20, #288]
	stp	q0, q0, [x20, #256]
	stp	q0, q0, [x20, #224]
	stp	q0, q0, [x20, #192]
	stp	q0, q0, [x20, #160]
	stp	q0, q0, [x20, #128]
	stp	q0, q0, [x20, #96]
	stp	q0, q0, [x20, #64]
	stp	q0, q0, [x20, #32]
	stp	q0, q0, [sp, #128]
	add	x21, sp, #23
	str	x21, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldrb	w8, [sp, #23]
	cmp	w8, #48
	b.ne	LBB0_11
; %bb.1:
	ldrb	w8, [sp, #24]
	cbnz	w8, LBB0_11
LBB0_2:
	mov	w8, #105                        ; =0x69
	add	x9, sp, #128
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	sub	w8, w8, #1
	ldr	w10, [x9, w8, uxtw #2]
	cbnz	w10, LBB0_6
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w8, #1
	b.hi	LBB0_3
; %bb.5:
	mov	w8, #0                          ; =0x0
LBB0_6:
	tbnz	w8, #31, LBB0_9
; %bb.7:
	mov	w9, w8
	add	x20, x9, #1
	add	x9, sp, #128
	add	x21, x9, w8, uxtw #2
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x21], #-4
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	subs	x20, x20, #1
	b.gt	LBB0_8
LBB0_9:
	mov	w0, #10                         ; =0xa
	bl	_putchar
	ldur	x8, [x29, #-56]
Lloh7:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh8:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh9:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_19
; %bb.10:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #560
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
LBB0_11:
	orr	x22, x20, #0x4
Lloh10:
	adrp	x19, l_.str@PAGE
Lloh11:
	add	x19, x19, l_.str@PAGEOFF
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=1
	str	x21, [sp]
	mov	x0, x19
	bl	_scanf
	ldrb	w8, [sp, #23]
	ldrb	w9, [sp, #24]
	cmp	w8, #48
	ccmp	w9, #0, #0, eq
	b.eq	LBB0_2
LBB0_13:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_16 Depth 2
                                        ;       Child Loop BB0_18 Depth 3
	add	x0, sp, #23
	bl	_strlen
	cmp	w0, #1
	b.lt	LBB0_12
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=1
	mov	x8, #0                          ; =0x0
	and	x9, x0, #0x7fffffff
	mov	x10, x22
	mov	x11, x9
	b	LBB0_16
LBB0_15:                                ;   in Loop: Header=BB0_16 Depth=2
	add	x8, x8, #1
	add	x10, x10, #4
	cmp	x8, x9
	b.eq	LBB0_12
LBB0_16:                                ;   Parent Loop BB0_13 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_18 Depth 3
	sub	x11, x11, #1
	ldrsb	w12, [x21, x11]
	ldr	w13, [x20, x8, lsl #2]
	add	w12, w12, w13
	sub	w12, w12, #48
	str	w12, [x20, x8, lsl #2]
	cmp	w12, #10
	b.lt	LBB0_15
; %bb.17:                               ;   in Loop: Header=BB0_16 Depth=2
	mov	x13, x10
LBB0_18:                                ;   Parent Loop BB0_13 Depth=1
                                        ;     Parent Loop BB0_16 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	sub	w14, w12, #10
	ldr	w15, [x13]
	add	w12, w15, #1
	stp	w14, w12, [x13, #-4]
	add	x13, x13, #4
	cmp	w15, #8
	b.gt	LBB0_18
	b	LBB0_15
LBB0_19:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

l_.str.1:                               ; @.str.1
	.asciz	"%d"

.subsections_via_symbols
