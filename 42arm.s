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
	mov	w9, #40160                      ; =0x9ce0
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #3296
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
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x20, sp, #8
	add	x0, sp, #8
	mov	w1, #40144                      ; =0x9cd0
	bl	_bzero
	mov	w21, #1                         ; =0x1
	mov	w22, #26215                     ; =0x6667
	movk	w22, #26214, lsl #16
	mov	w23, #10                        ; =0xa
	mov	w24, #10000                     ; =0x2710
	mov	w25, #1                         ; =0x1
Lloh5:
	adrp	x19, l_.str@PAGE
Lloh6:
	add	x19, x19, l_.str@PAGEOFF
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	ldr	w8, [x20, x25, lsl #2]
	cbnz	w8, LBB0_3
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	str	x25, [sp]
	mov	x0, x19
	bl	_printf
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	x8, x25
	mov	x9, x25
LBB0_4:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	smull	x10, w9, w22
	lsr	x11, x10, #63
	asr	x10, x10, #34
	add	w10, w10, w11
	msub	w11, w10, w23, w9
	add	w8, w8, w11
	add	w11, w9, #9
	mov	x9, x10
	cmp	w11, #18
	b.hi	LBB0_4
; %bb.5:                                ;   in Loop: Header=BB0_1 Depth=1
	str	w21, [x20, w8, sxtw #2]
	add	x25, x25, #1
	cmp	x25, x24
	b.ne	LBB0_1
; %bb.6:
	ldur	x8, [x29, #-72]
Lloh7:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh8:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh9:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_8
; %bb.7:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #9, lsl #12             ; =36864
	add	sp, sp, #3296
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_8:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d\n"

.subsections_via_symbols
