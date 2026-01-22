	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #416
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
	add	x23, sp, #12
	str	x23, [sp]
Lloh3:
	adrp	x0, l_.str@PAGE
Lloh4:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_12
; %bb.1:
	mov	w24, #1                         ; =0x1
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh7:
	adrp	x20, l_.str.2@PAGE
Lloh8:
	add	x20, x20, l_.str.2@PAGEOFF
	mov	w25, #26                        ; =0x1a
	add	x26, sp, #18
Lloh9:
	adrp	x21, l_.str@PAGE
Lloh10:
	add	x21, x21, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	w24, w24, #1
	str	x23, [sp]
	mov	x0, x21
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_12
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.lt	LBB0_6
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x22, #0                         ; =0x0
	add	x27, sp, #18
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x27, [sp]
	mov	x0, x19
	bl	_scanf
	add	x22, x22, #1
	ldrsw	x8, [sp, #12]
	add	x27, x27, #26
	cmp	x22, x8
	b.lt	LBB0_5
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	str	x24, [sp]
	mov	x0, x20
	bl	_printf
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.lt	LBB0_9
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w27, #0                         ; =0x0
	add	x22, sp, #18
LBB0_8:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x22
	bl	_puts
	ldr	w8, [sp, #12]
	add	x22, x22, #52
	add	w27, w27, #2
	cmp	w8, w27
	b.gt	LBB0_8
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	and	w9, w8, #0x1
	cmp	w8, #0
	cneg	w10, w9, lt
	mvn	w9, w10
	add	w9, w8, w9
	cmp	w9, #1
	b.lt	LBB0_2
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	sub	w8, w8, w10
	add	w27, w8, #1
	umaddl	x22, w9, w25, x26
LBB0_11:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x22
	bl	_puts
	sub	w27, w27, #2
	sub	x22, x22, #52
	cmp	w27, #2
	b.gt	LBB0_11
	b	LBB0_2
LBB0_12:
	ldur	x8, [x29, #-88]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_14
; %bb.13:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #416
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_14:
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

l_.str.1:                               ; @.str.1
	.asciz	"%s"

l_.str.2:                               ; @.str.2
	.asciz	"SET %d\n"

.subsections_via_symbols
