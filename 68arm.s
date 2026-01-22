	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
	.cfi_startproc
; %bb.0:
	ldr	d0, [x0]
	ldr	d1, [x1]
	fcmp	d0, d1
	csetm	w8, gt
	csinc	w0, w8, wzr, pl
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	sub	sp, sp, #832
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-40]
	add	x8, sp, #20
	str	x8, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.lt	LBB1_4
; %bb.1:
	mov	x20, #0                         ; =0x0
	add	x21, sp, #24
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	str	x21, [sp]
	mov	x0, x19
	bl	_scanf
	add	x20, x20, #1
	ldrsw	x8, [sp, #20]
	add	x21, x21, #8
	cmp	x20, x8
	b.lt	LBB1_2
; %bb.3:
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
LBB1_4:
	sxtw	x1, w8
Lloh7:
	adrp	x3, _cmp@PAGE
Lloh8:
	add	x3, x3, _cmp@PAGEOFF
	add	x19, sp, #24
	add	x0, sp, #24
	mov	w2, #8                          ; =0x8
	bl	_qsort
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.le	LBB1_8
; %bb.5:
	ldr	d0, [sp, #24]
	lsl	x8, x8, #3
	mov	w9, #8                          ; =0x8
LBB1_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x19, x9]
	fmul	d0, d0, d1
	fsqrt	d0, d0
	fadd	d0, d0, d0
	add	x9, x9, #8
	cmp	x8, x9
	b.ne	LBB1_6
; %bb.7:
	str	d0, [sp, #24]
LBB1_8:
	ldr	d0, [sp, #24]
	str	d0, [sp]
Lloh9:
	adrp	x0, l_.str.2@PAGE
Lloh10:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	x8, [x29, #-40]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_10
; %bb.9:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #832
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB1_10:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.loh AdrpAdd	Lloh9, Lloh10
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%lf"

l_.str.2:                               ; @.str.2
	.asciz	"%.3lf\n"

.subsections_via_symbols
