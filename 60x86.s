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
	mov	w9, #40096
	adrp	x16, ___chkstk_darwin@GOTPAGE
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #9, lsl #12             ; =36864
	sub	sp, sp, #3200
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	x9, sp
	add	x8, sp, #16
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_13
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [x9]
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	str	w8, [sp, #28]
	ldur	x9, [x29, #-24]
	ldr	w8, [x9]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_13
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
	mov	x9, sp
	add	x8, sp, #20
	str	x8, [x9]
	ldr	x8, [sp, #20]
	subs	x8, x8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_13
	b	LBB0_3
LBB0_3:                                 ; =>This Loop Header: Depth=1
	mov	x9, sp
	add	x8, x9, #3000
	str	x8, [x9]
	mov	x8, #1
	str	x8, [sp, #24]
	mov	w8, #2
	strh	w8, [sp, #28]
	ldrsh	x10, [sp, #20]
	mov	x8, #2
	add	x8, x8, x10
	subs	x8, x8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ; =>This Loop Header: Depth=1
	mov	x9, sp
	add	x8, sp, #20
	str	x8, [x9]
	mov	x8, #1
	str	x8, [sp]
	mov	x8, #1
	str	x8, [sp, #8]
	mov	x8, #2
	str	x8, [sp, #8]
	b	LBB0_5
LBB0_5:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:
	bl	___stack_chk_fail
LBB0_7:
	mov	w0, #0
	mov	sp, x28
	mov	x29, x30
	mov	x30, x29
	mov	x29, x30
	mov	x20, x29
	mov	x19, sp
	add	x19, x19, x20
	add	x19, x19, #16
	str	x19, [x29, #8]
	str	x19, [x29, #16]
	str	x19, [x29, #24]
	str	x19, [x29, #32]
	str	x19, [x29, #40]
	str	x19, [x29, #48]
	str	x19, [x29, #56]
	str	x19, [x29, #64]
	str	x19, [x29, #72]
	str	x19, [x29, #80]
	str	x19, [x29, #88]
	str	x19, [x29, #96]
	str	x19, [x29, #104]
	str	x19, [x29, #112]
	str	x19, [x29, #120]
	str	x19, [x29, #128]
	str	x19, [x29, #136]
	str	x19, [x29, #144]
	str	x19, [x29, #152]
	str	x19, [x29, #160]
	str	x19, [x29, #168]
	str	x19, [x29, #176]
	str	x19, [x29, #184]
	str	x19, [x29, #192]
	str	x19, [x29, #200]
	str	x19, [x29, #208]
	str	x19, [x29, #216]
	str	x19, [x29, #224]
	str	x19, [x29, #232]
	str	x19, [x29, #240]
	str	x19, [x29, #248]
	str	x19, [x29, #256]
	str	x19, [x29, #264]
	str	x19, [x29, #272]
	str	x19, [x29, #280]
	str	x19, [x29, #288]
	str	x19, [x29, #296]
	str	x19, [x29, #304]
	str	x19, [x29, #312]
	str	x19, [x29, #320]
	str	x19, [x29, #328]
	str	x19, [x29, #336]
	str	x19, [x29, #344]
	str	x19, [x29, #352]
	str	x19, [x29, #360]
	str	x19, [x29, #368]
	str	x19, [x29, #376]
	str	x19, [x29, #384]
	str	x19, [x29, #392]
	str	x19, [x29, #396]
	str	x19, [x29, #408]
	str	x19, [x29, #416]
	str	x19, [x29, #424]
	str	x19, [x29, #432]
	str	x19, [x29, #440]
	str	x19, [x29, #448]
	str	x19, [x29, #456]
	str	x19, [x29, #