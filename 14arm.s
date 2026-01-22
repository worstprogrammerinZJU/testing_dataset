	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_cmp                            ; -- Begin function cmp
	.p2align	2
_cmp:                                   ; @cmp
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0]
	ldr	w9, [x1]
	cmp	w8, w9
	cset	w8, gt
	csinv	w0, w8, wzr, ge
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #192
	stp	x22, x21, [sp, #144]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #160]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
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
	add	x20, sp, #16
	str	x20, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldrb	w8, [sp, #16]
Lloh5:
	adrp	x19, _s@PAGE
Lloh6:
	add	x19, x19, _s@PAGEOFF
	cbz	w8, LBB1_3
; %bb.1:
	add	x9, x20, #1
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	add	x8, x19, w8, sxtb #2
	sub	x8, x8, #260
	ldr	w10, [x8]
	add	w10, w10, #1
	str	w10, [x8]
	ldrb	w8, [x9], #1
	cbnz	w8, LBB1_2
LBB1_3:
	str	x20, [sp]
Lloh7:
	adrp	x0, l_.str@PAGE
Lloh8:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldrb	w8, [sp, #16]
Lloh9:
	adrp	x20, _t@PAGE
Lloh10:
	add	x20, x20, _t@PAGEOFF
	cbz	w8, LBB1_6
; %bb.4:
	add	x9, sp, #16
	add	x9, x9, #1
LBB1_5:                                 ; =>This Inner Loop Header: Depth=1
	add	x8, x20, w8, sxtb #2
	sub	x8, x8, #260
	ldr	w10, [x8]
	add	w10, w10, #1
	str	w10, [x8]
	ldrb	w8, [x9], #1
	cbnz	w8, LBB1_5
LBB1_6:
Lloh11:
	adrp	x21, _cmp@PAGE
Lloh12:
	add	x21, x21, _cmp@PAGEOFF
	mov	x0, x19
	mov	w1, #26                         ; =0x1a
	mov	w2, #4                          ; =0x4
	mov	x3, x21
	bl	_qsort
	mov	x0, x20
	mov	w1, #26                         ; =0x1a
	mov	w2, #4                          ; =0x4
	mov	x3, x21
	bl	_qsort
	mov	x8, #0                          ; =0x0
LBB1_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [x19, x8, lsl #2]
	ldr	w10, [x20, x8, lsl #2]
	cmp	w9, w10
	b.ne	LBB1_9
; %bb.8:                                ;   in Loop: Header=BB1_7 Depth=1
	add	x8, x8, #1
	cmp	x8, #26
	b.ne	LBB1_7
LBB1_9:
Lloh13:
	adrp	x9, l_str@PAGE
Lloh14:
	add	x9, x9, l_str@PAGEOFF
Lloh15:
	adrp	x10, l_str.3@PAGE
Lloh16:
	add	x10, x10, l_str.3@PAGEOFF
	cmp	w8, #26
	csel	x0, x10, x9, eq
	bl	_puts
	ldur	x8, [x29, #-40]
Lloh17:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh18:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh19:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_11
; %bb.10:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #160]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB1_11:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh17, Lloh18, Lloh19
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.cfi_endproc
                                        ; -- End function
	.globl	_s                              ; @s
.zerofill __DATA,__common,_s,104,2
	.globl	_t                              ; @t
.zerofill __DATA,__common,_t,104,2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

l_str:                                  ; @str
	.asciz	"NO"

l_str.3:                                ; @str.3
	.asciz	"YES"

.subsections_via_symbols
