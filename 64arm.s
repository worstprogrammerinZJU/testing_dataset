	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
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
	add	x8, sp, #28
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB0_6
; %bb.1:
	mov	w21, #1                         ; =0x1
	add	x22, sp, #24
Lloh2:
	adrp	x19, l_.str@PAGE
Lloh3:
	add	x19, x19, l_.str@PAGEOFF
Lloh4:
	adrp	x23, _x@GOTPAGE
Lloh5:
	ldr	x23, [x23, _x@GOTPAGEOFF]
Lloh6:
	adrp	x24, _reverse@GOTPAGE
Lloh7:
	ldr	x24, [x24, _reverse@GOTPAGEOFF]
Lloh8:
	adrp	x20, l_.str.1@PAGE
Lloh9:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	str	wzr, [x24]
	sub	w1, w8, #1
	mov	w0, #0                          ; =0x0
	bl	_mergesort
	ldr	w8, [x24]
	stp	x21, x8, [sp]
	mov	x0, x20
	bl	_printf
	add	w8, w21, #1
	ldr	w9, [sp, #28]
	cmp	w21, w9
	mov	x21, x8
	b.ge	LBB0_6
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	str	x22, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #24]
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x25, #0                         ; =0x0
	mov	x26, x23
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x26, [sp]
	mov	x0, x19
	bl	_scanf
	add	x25, x25, #1
	ldrsw	x8, [sp, #24]
	add	x26, x26, #4
	cmp	x25, x8
	b.lt	LBB0_5
	b	LBB0_2
LBB0_6:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.globl	_mergesort                      ; -- Begin function mergesort
	.p2align	2
_mergesort:                             ; @mergesort
	.cfi_startproc
; %bb.0:
	cmp	w0, w1
	b.ge	LBB1_2
; %bb.1:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	add	w8, w1, w0
	add	w8, w8, w8, lsr #31
	asr	w19, w8, #1
	mov	x20, x0
	mov	x21, x1
	mov	x1, x19
	bl	_mergesort
	add	w0, w19, #1
	mov	x1, x21
	bl	_mergesort
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	_merge
LBB1_2:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_merge                          ; -- Begin function merge
	.p2align	2
_merge:                                 ; @merge
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
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
	mov	x20, x2
	mov	x19, x0
	mov	w21, #0                         ; =0x0
	add	w8, w1, #1
Lloh10:
	adrp	x22, _x@GOTPAGE
Lloh11:
	ldr	x22, [x22, _x@GOTPAGEOFF]
Lloh12:
	adrp	x23, _z@GOTPAGE
Lloh13:
	ldr	x23, [x23, _z@GOTPAGEOFF]
	cmp	w0, w1
	b.gt	LBB2_8
; %bb.1:
	cmp	w1, w20
	b.ge	LBB2_8
; %bb.2:
	mov	x21, #0                         ; =0x0
Lloh14:
	adrp	x10, _reverse@GOTPAGE
Lloh15:
	ldr	x10, [x10, _reverse@GOTPAGEOFF]
	ldr	w11, [x10]
	mov	x24, x8
	mov	x9, x19
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w12, [x22, w9, sxtw #2]
	ldr	w13, [x22, w24, sxtw #2]
	cmp	w12, w13
	b.le	LBB2_5
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=1
	add	w24, w24, #1
	str	w13, [x23, x21, lsl #2]
	sub	w12, w8, w9
	add	w11, w12, w11
	str	w11, [x10]
	b	LBB2_6
LBB2_5:                                 ;   in Loop: Header=BB2_3 Depth=1
	add	w9, w9, #1
	str	w12, [x23, x21, lsl #2]
LBB2_6:                                 ;   in Loop: Header=BB2_3 Depth=1
	add	x21, x21, #1
	cmp	w9, w1
	b.gt	LBB2_9
; %bb.7:                                ;   in Loop: Header=BB2_3 Depth=1
	cmp	w24, w20
	b.le	LBB2_3
	b	LBB2_9
LBB2_8:
	mov	x9, x19
	mov	x24, x8
LBB2_9:
	subs	w25, w1, w9
	b.ge	LBB2_13
; %bb.10:
	subs	w20, w20, w24
	b.ge	LBB2_14
LBB2_11:
	cbz	w21, LBB2_15
LBB2_12:
	add	x0, x22, w19, sxtw #2
                                        ; kill: def $w21 killed $w21 killed $x21 def $x21
	ubfiz	x2, x21, #2, #32
Lloh16:
	adrp	x1, _z@GOTPAGE
Lloh17:
	ldr	x1, [x1, _z@GOTPAGEOFF]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	b	_memcpy
LBB2_13:
	add	x0, x23, w21, uxtw #2
	ubfiz	x8, x25, #2, #32
	add	x1, x22, w9, sxtw #2
	add	x2, x8, #4
	bl	_memcpy
	add	w8, w21, w25
	add	w21, w8, #1
	subs	w20, w20, w24
	b.lt	LBB2_11
LBB2_14:
	add	x0, x23, w21, uxtw #2
	ubfiz	x8, x20, #2, #32
	add	x1, x22, w24, sxtw #2
	add	x2, x8, #4
	bl	_memcpy
	add	w8, w21, w20
	add	w21, w8, #1
	cbnz	w21, LBB2_12
LBB2_15:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

	.comm	_x,4000,2                       ; @x
	.comm	_reverse,4,2                    ; @reverse
l_.str.1:                               ; @.str.1
	.asciz	"Scenario #%d:\n%d\n\n"

	.comm	_z,4000,2                       ; @z
.subsections_via_symbols
