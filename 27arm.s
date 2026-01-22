	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #224
	stp	x28, x27, [sp, #128]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #144]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
	mov	w21, #21841                     ; =0x5551
	movk	w21, #21577, lsl #16
	add	x22, sp, #20
	str	x22, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #20]
	eor	w8, w8, w21
	ldrb	w9, [sp, #24]
	orr	w8, w8, w9
	cbz	w8, LBB0_14
; %bb.1:
	mov	w23, #18774                     ; =0x4956
	movk	w23, #18771, lsl #16
	mov	w24, #84                        ; =0x54
	adrp	x25, _top@PAGE
Lloh5:
	adrp	x26, _stack@PAGE
Lloh6:
	add	x26, x26, _stack@PAGEOFF
Lloh7:
	adrp	x19, l_.str@PAGE
Lloh8:
	add	x19, x19, l_.str@PAGEOFF
	mov	w27, #100                       ; =0x64
	adrp	x28, _up@PAGE
	mov	w20, #16706                     ; =0x4142
	movk	w20, #19267, lsl #16
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldrsw	x8, [x25, _top@PAGEOFF]
	add	x8, x8, #1
	str	w8, [x25, _top@PAGEOFF]
	madd	x8, x8, x27, x26
	str	x8, [sp]
	mov	x0, x19
	bl	_scanf
	ldrsw	x8, [x25, _top@PAGEOFF]
	smaddl	x0, w8, w27, x26
	bl	_puts
	ldr	w8, [x25, _top@PAGEOFF]
	str	w8, [x28, _up@PAGEOFF]
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #20]
	eor	w8, w8, w21
	ldrb	w9, [sp, #24]
	orr	w8, w8, w9
	cbz	w8, LBB0_14
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldrh	w9, [sp, #24]
	cmp	w8, w23
	ccmp	w9, w24, #0, eq
	b.eq	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #20]
	eor	w8, w8, w20
	ldrb	w9, [sp, #24]
	orr	w8, w8, w9
	cbz	w8, LBB0_9
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	ldur	x8, [sp, #20]
	mov	x9, #20294                      ; =0x4f46
	movk	x9, #22354, lsl #16
	movk	x9, #21057, lsl #32
	movk	x9, #68, lsl #48
	cmp	x8, x9
	b.ne	LBB0_3
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [x25, _top@PAGEOFF]
	ldr	w9, [x28, _up@PAGEOFF]
	cmp	w8, w9
	b.eq	LBB0_12
; %bb.8:                                ;   in Loop: Header=BB0_4 Depth=1
	add	w8, w8, #1
	b	LBB0_11
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [x25, _top@PAGEOFF]
	cbz	w8, LBB0_12
; %bb.10:                               ;   in Loop: Header=BB0_4 Depth=1
	sub	w8, w8, #1
LBB0_11:                                ;   in Loop: Header=BB0_4 Depth=1
	str	w8, [x25, _top@PAGEOFF]
	smaddl	x0, w8, w27, x26
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_4 Depth=1
Lloh9:
	adrp	x0, l_str.7@PAGE
Lloh10:
	add	x0, x0, l_str.7@PAGEOFF
LBB0_13:                                ;   in Loop: Header=BB0_4 Depth=1
	bl	_puts
	b	LBB0_3
LBB0_14:
	ldur	x8, [x29, #-88]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_16
; %bb.15:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
LBB0_16:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.globl	_top                            ; @top
.zerofill __DATA,__common,_top,4,2
	.globl	_up                             ; @up
.zerofill __DATA,__common,_up,4,2
	.section	__DATA,__data
	.globl	_stack                          ; @stack
_stack:
	.asciz	"http://www.acm.org/\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.space	10900

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

l_.str.1:                               ; @.str.1
	.asciz	"QUIT"

l_.str.2:                               ; @.str.2
	.asciz	"VISIT"

l_.str.4:                               ; @.str.4
	.asciz	"BACK"

l_.str.6:                               ; @.str.6
	.asciz	"FORWARD"

l_str.7:                                ; @str.7
	.asciz	"Ignored"

.subsections_via_symbols
