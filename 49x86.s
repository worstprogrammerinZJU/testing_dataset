	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	sp, sp, #384
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #68
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_33
	b	LBB0_1
LBB0_1:
	mov	x8, #-4294967296
	mov	x9, #4294967296
	str	x9, [sp, #32]                   ; 8-byte Folded Spill
	and	x9, x8, x9
	mov	x8, #4294967296
	ands	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w0, #10
	bl	_putchar
	add	w8, w0, #1
	ldr	w9, [sp, #68]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_33
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_7 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
                                        ;     Child Loop BB0_14 Depth 2
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_17 Depth 2
                                        ;     Child Loop BB0_22 Depth 2
                                        ;       Child Loop BB0_24 Depth 3
                                        ;     Child Loop BB0_27 Depth 2
                                        ;     Child Loop BB0_29 Depth 2
                                        ;     Child Loop BB0_32 Depth 2
	str	w0, [sp, #28]                   ; 4-byte Folded Spill
	mov	x9, sp
	sub	x8, x29, #176
	str	x8, [x9]
	add	x8, sp, #118
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldr	x11, [sp, #32]                  ; 8-byte Folded Reload
	add	x0, sp, #136
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	w8, #0
	mov	x9, x8
	str	x9, [sp, #56]                   ; 8-byte Folded Spill
	mov	x10, #128
	and	x9, x10, #0x1
	mul	x10, x10, x11
	and	x9, x9, #0x1
	ands	x9, x9, #0x1
	csinc	x8, x8, x10, ne
	mov	x9, #0
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	str	x9, [x10, #16]
	str	x9, [x10, #24]
	str	x9, [x10, #32]
	str	x9, [x10, #40]
	str	x9, [x10, #48]
	str	x9, [x10, #56]
	str	x9, [x10, #64]
	str	x9, [x10, #72]
	str	x9, [x10, #80]
	str	x9, [x10, #88]
	str	x10, [x10, #96]
	str	x10, [x10, #104]
	str	x10, [x10, #112]
	str	x10, [x10, #120]
	str	x11, [x10, #128]
	str	x9, [x10, #136]
	str	x9, [x10, #144]
	str	x9, [x10, #152]
	str	x9, [x10, #160]
	mov	x9, #2
	str	x9, [sp, #72]                   ; 8-byte Folded Spill
	and	x10, x11, #0xff
	mul	x9, x9, x10
	and	x9, x9, #0xff
	str	x9, [x10, #176]
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x11, [sp, #48]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #56]                  ; 8-byte Folded Reload
	str	x11, [x10, #184]
	str	x9, [x10, #192]
	str	x8, [x10, #200]
	mov	w8, #48
	strb	w8, [sp, #226]
	b	LBB0_4
LBB0_4:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	add	x11, x10, #1
	add	x12, x10, #1
	str	x12, [sp, #16]                  ; 8-byte Folded Spill
	add	x10, x11, #1
	add	x11, x11, #1
	str	x11, [sp, #8]                   ; 8-byte Folded Spill
	add	x11, x10, #1
	add	x11, x11, #1
	str	x11, [sp, #24]                  ; 8-byte Folded Spill
	add	x11, x11, #1
	str	x11, [sp, #4]                   ; 8-byte Folded Spill
	add	x11, x10, #1
	add	x11, x11, #1
	str	x11, [sp, #32]                  ; 8-byte Folded Spill
	add	x11, x11, #1
	str	x11, [sp, #64]                  ; 8-byte Folded Spill
	add	x11, x10, #1
	add	x11, x11, #1
	str	x11, [sp, #136]                 ; 8-byte Folded Spill
	add	x11, x10, #1
	str	x11, [sp, #144]                 ; 8-byte Folded Spill
	add	x11, x10, #1
	str	x11, [sp, #152]                 ; 8-byte Folded Spill
	add	x11, x10, #1
	str	x11, [sp, #16