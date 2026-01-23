	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	mov	w9, #5552                       ; =0x15b0
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #1456
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x20, sp, #1, lsl #12            ; =4096
	add	x20, x20, #1040
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x20, #368]
	stp	q0, q0, [x20, #336]
	stp	q0, q0, [x20, #304]
	stp	q0, q0, [x20, #272]
	stp	q0, q0, [x20, #240]
	stp	q0, q0, [x20, #208]
	stp	q0, q0, [x20, #176]
	stp	q0, q0, [x20, #144]
	stp	q0, q0, [x20, #112]
	stp	q0, q0, [x20, #80]
	stp	q0, q0, [x20, #48]
	stp	q0, q0, [x20, #16]
	str	q0, [x20]
	add	x8, sp, #32
	add	x9, sp, #28
	stp	x9, x8, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #32]
	cmp	w8, #1
	b.lt	LBB0_11
; %bb.1:
	mov	x21, #0                         ; =0x0
	add	x22, sp, #36
	add	x23, x22, #1
	mov	w24, #51                        ; =0x33
Lloh7:
	adrp	x19, l_.str.1@PAGE
Lloh8:
	add	x19, x19, l_.str.1@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x21, x21, #1
	ldrsw	x8, [sp, #32]
	add	x23, x23, #51
	cmp	x21, x8
	b.ge	LBB0_11
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;       Child Loop BB0_9 Depth 3
	madd	x8, x21, x24, x22
	str	x8, [sp]
	mov	x0, x19
	bl	_scanf
	ldr	w8, [sp, #28]
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x12, #0                         ; =0x0
	sub	x9, x8, #1
	mov	x10, x23
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	add	x10, x10, #1
	sub	x9, x9, #1
	mov	x12, x11
	cmp	x11, x8
	b.eq	LBB0_2
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_9 Depth 3
	add	x11, x12, #1
	cmp	x11, x8
	b.hs	LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	madd	x13, x21, x24, x22
	ldrsb	w12, [x13, x12]
	mov	x13, x9
	mov	x14, x10
	b	LBB0_9
LBB0_8:                                 ;   in Loop: Header=BB0_9 Depth=3
	subs	x13, x13, #1
	b.eq	LBB0_5
LBB0_9:                                 ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_6 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrsb	w15, [x14], #1
	cmp	w12, w15
	b.le	LBB0_8
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=3
	ldr	w15, [x20, x21, lsl #2]
	add	w15, w15, #1
	str	w15, [x20, x21, lsl #2]
	b	LBB0_8
LBB0_11:
	ldr	w8, [sp, #32]
	cmp	w8, #1
	b.lt	LBB0_18
; %bb.12:
	mov	w19, #0                         ; =0x0
	add	x20, sp, #1, lsl #12            ; =4096
	add	x20, x20, #1040
	mov	w21, #51                        ; =0x33
	add	x22, sp, #36
	mov	w23, #38528                     ; =0x9680
	movk	w23, #152, lsl #16
	b	LBB0_15
LBB0_13:                                ;   in Loop: Header=BB0_15 Depth=1
	mov	w24, #0                         ; =0x0
LBB0_14:                                ;   in Loop: Header=BB0_15 Depth=1
	smaddl	x0, w24, w21, x22
	bl	_puts
	str	w23, [x20, w24, sxtw #2]
	add	w19, w19, #1
	ldr	w8, [sp, #32]
	cmp	w19, w8
	b.ge	LBB0_18
LBB0_15:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_17 Depth 2
	cmp	w8, #1
	b.lt	LBB0_13
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	mov	x9, #0                          ; =0x0
	mov	w24, #0                         ; =0x0
LBB0_17:                                ;   Parent Loop BB0_15 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w10, [x20, w24, sxtw #2]
	ldr	w11, [x20, x9, lsl #2]
	cmp	w10, w11
	csel	w24, w9, w24, gt
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	LBB0_17
	b	LBB0_14
LBB0_18:
	ldur	x8, [x29, #-72]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_20
; %bb.19:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #1, lsl #12             ; =4096
	add	sp, sp, #1456
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_20:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"%s"

.subsections_via_symbols
