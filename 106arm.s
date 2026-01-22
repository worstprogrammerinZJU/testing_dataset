	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #208
	stp	x28, x27, [sp, #112]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #128]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #160]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
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
	add	x20, sp, #20
	str	x20, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #20]
	cbz	w8, LBB0_19
; %bb.1:
	add	x21, sp, #24
	mov	w22, #1                         ; =0x1
Lloh5:
	adrp	x19, l_.str@PAGE
Lloh6:
	add	x19, x19, l_.str@PAGEOFF
	add	x23, sp, #16
	add	x24, sp, #64
Lloh7:
	adrp	x25, l_str@PAGE
Lloh8:
	add	x25, x25, l_str@PAGEOFF
Lloh9:
	adrp	x26, l_str.3@PAGE
Lloh10:
	add	x26, x26, l_str.3@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w8, #0
	csel	x0, x26, x25, eq
	bl	_puts
	str	x20, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #20]
	cbz	w8, LBB0_19
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;       Child Loop BB0_9 Depth 3
                                        ;     Child Loop BB0_18 Depth 2
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.lt	LBB0_15
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	x28, #0                         ; =0x0
	mov	w27, #0                         ; =0x0
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=2
	add	x28, x28, #1
	ldrsw	x8, [sp, #20]
	cmp	x28, x8
	b.ge	LBB0_16
LBB0_7:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_9 Depth 3
	str	w22, [x21, x28, lsl #2]
	str	x23, [sp]
	mov	x0, x19
	bl	_scanf
	cmp	w27, #1
	b.lt	LBB0_12
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	mov	x8, #0                          ; =0x0
	mov	w9, w27
	ldr	w10, [sp, #16]
LBB0_9:                                 ;   Parent Loop BB0_4 Depth=1
                                        ;     Parent Loop BB0_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w11, [x24, x8, lsl #2]
	cmp	w11, w10
	b.eq	LBB0_13
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=3
	add	x8, x8, #1
	cmp	x9, x8
	b.ne	LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_7 Depth=2
	mov	x8, x9
	cmp	w8, w27
	b.ne	LBB0_6
	b	LBB0_14
LBB0_12:                                ;   in Loop: Header=BB0_7 Depth=2
	mov	w8, #0                          ; =0x0
	cmp	w8, w27
	b.ne	LBB0_6
	b	LBB0_14
LBB0_13:                                ;   in Loop: Header=BB0_7 Depth=2
	ldr	w9, [x21, x8, lsl #2]
	add	w9, w9, #1
	str	w9, [x21, x8, lsl #2]
	cmp	w8, w27
	b.ne	LBB0_6
LBB0_14:                                ;   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #16]
	str	w8, [x24, w27, sxtw #2]
	add	w27, w27, #1
	b	LBB0_6
LBB0_15:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w27, #0                         ; =0x0
LBB0_16:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w27, #1
	b.lt	LBB0_2
; %bb.17:                               ;   in Loop: Header=BB0_4 Depth=1
	mov	w8, #0                          ; =0x0
	mov	w9, w27
	add	x10, sp, #24
LBB0_18:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w11, [x10], #4
	and	w11, w11, #0x1
	add	w8, w11, w8
	subs	x9, x9, #1
	b.ne	LBB0_18
	b	LBB0_3
LBB0_19:
	ldur	x8, [x29, #-88]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_21
; %bb.20:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB0_21:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_str:                                  ; @str
	.asciz	"1"

l_str.3:                                ; @str.3
	.asciz	"0"

.subsections_via_symbols
