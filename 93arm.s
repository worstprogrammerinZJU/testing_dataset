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
	mov	w9, #13600                      ; =0x3520
	movk	w9, #12, lsl #16
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #195, lsl #12           ; =798720
	sub	sp, sp, #1312
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w27, -56
	.cfi_offset w28, -64
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	add	x8, sp, #24
	add	x8, x8, #8
	movi	d0, #0000000000000000
	mov	w9, #2                          ; =0x2
	mov	w10, #34463                     ; =0x869f
	movk	w10, #1, lsl #16
	fmov	d1, #1.00000000
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ucvtf	d2, w9
	fdiv	d2, d1, d2
	fadd	d0, d0, d2
	str	d0, [x8], #8
	add	w9, w9, #2
	subs	x10, x10, #1
	b.ne	LBB0_1
; %bb.2:
	mov	w8, #34464                      ; =0x86a0
	movk	w8, #1, lsl #16
	str	w8, [sp, #20]
Lloh5:
	adrp	x0, l_str@PAGE
Lloh6:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	add	x21, sp, #20
	str	x21, [sp]
Lloh7:
	adrp	x0, l_.str.1@PAGE
Lloh8:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	cmn	w0, #1
	b.eq	LBB0_5
; %bb.3:
	add	x22, sp, #24
Lloh9:
	adrp	x19, l_.str.2@PAGE
Lloh10:
	add	x19, x19, l_.str.2@PAGEOFF
Lloh11:
	adrp	x20, l_.str.1@PAGE
Lloh12:
	add	x20, x20, l_.str.1@PAGEOFF
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	ldr	d0, [x22, x8, lsl #3]
	str	d0, [sp, #8]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	cmn	w0, #1
	b.ne	LBB0_4
LBB0_5:
	ldur	x8, [x29, #-56]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_7
; %bb.6:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #195, lsl #12           ; =798720
	add	sp, sp, #1312
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
LBB0_7:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"%ld"

l_.str.2:                               ; @.str.2
	.asciz	"%5d%10.3f\n"

l_str:                                  ; @str
	.asciz	"Cards  Overhang"

.subsections_via_symbols
