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
	sub	sp, sp, #496
	mov	x19, sp
	mov	x18, #4294967296
	str	x18, [x19]
	str	x17, [x19, #8]
	str	x16, [x19, #16]
	str	x15, [x19, #24]
	str	x14, [x19, #32]
	str	x13, [x19, #40]
	str	x12, [x19, #48]
	str	x11, [x19, #56]
	str	x10, [x19, #64]
	str	x9, [x19, #72]
	str	x8, [x19, #80]
	str	x1, [x19, #88]
	ldr	w8, [x19]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_33
	b	LBB0_1
LBB0_1:
	mov	x9, sp
	str	x19, [x9]
	mov	x8, #-1
	str	x8, [x9, #8]
	mov	x8, #4294967296
	str	x8, [x9, #16]
	mov	x8, #4294967296
	str	x8, [x9, #24]
	mov	x8, #4294967296
	str	x8, [x9, #32]
	mov	x8, #4294967296
	str	x8, [x9, #40]
	mov	x8, #4294967296
	str	x8, [x9, #48]
	mov	x8, #4294967296
	str	x8, [x9, #56]
	mov	x8, #4294967296
	str	x8, [x9, #64]
	mov	x8, #4294967296
	str	x8, [x9, #72]
	mov	x8, #4294967296
	str	x8, [x9, #80]
	mov	x8, #4294967296
	str	x8, [x9, #88]
	mov	x8, #4294967296
	str	x8, [x9, #96]
	mov	x8, #4294967296
	str	x8, [x9, #104]
	mov	x8, #4294967296
	str	x8, [x9, #112]
	mov	x8, #4294967296
	str	x8, [x9, #120]
	mov	x8, #4294967296
	str	x8, [x9, #128]
	mov	x8, #4294967296
	str	x8, [x9, #136]
	mov	x8, #4294967296
	str	x8, [x9, #144]
	mov	x8, #4294967296
	str	x8, [x9, #152]
	mov	x8, #4294967296
	str	x8, [x9, #160]
	mov	x8, #4294967296
	str	x8, [x9, #168]
	mov	x8, #4294967296
	str	x8, [x9, #176]
	mov	x8, #4294967296
	str	x8, [x9, #184]
	mov	x8, #4294967296
	str	x8, [x9, #192]
	mov	x8, #4294967296
	str	x8, [x9, #200]
	mov	x8, #4294967296
	str	x8, [x9, #208]
	mov	x8, #4294967296
	str	x8, [x9, #216]
	mov	x8, #4294967296
	str	x8, [x9, #224]
	mov	x8, #4294967296
	str	x8, [x9, #232]
	mov	x8, #4294967296
	str	x8, [x9, #240]
	mov	x8, #4294967296
	str	x8, [x9, #248]
	mov	x8, #4294967296
	str	x8, [x9, #256]
	mov	x8, #4294967296
	str	x8, [x9, #264]
	mov	x8, #4294967296
	str	x8, [x9, #272]
	mov	x8, #4294967296
	str	x8, [x9, #280]
	mov	x8, #4294967296
	str	x8, [x9, #288]
	mov	x8, #4294967296
	str	x8, [x9, #296]
	mov	x8, #4294967296
	str	x8, [x9, #304]
	mov	x8, #4294967296
	str	x8, [x9, #312]
	mov	x8, #4294967296
	str	x8, [x9, #320]
	mov	x8, #4294967296
	str	x8, [x9, #328]
	mov	x8, #4294967296
	str	x8, [x9, #336]
	mov	x8, #4294967296
	str	x8, [x9, #344]
	mov	x8, #4294967296
	str	x8, [x9, #352]
	mov	x8, #4294967296
	str	x8, [x9, #360]
	mov	x8, #4294967296
	str	x8, [x9, #368]
	mov	x8, #4294967296
	str	x8, [x9, #376]
	mov	x8, #4294967296
	str	x8, [x9, #384]
	mov	x8, #4294967296
	str	x8, [x9, #392]
	mov	x8, #4294967296
	str	x8, [x9, #312]
	mov	x8, #4294967296
	str	x8, [x9, #328]
	mov	x8, #4294967296
	str	x8, [x9, #320]
	mov	x8, #4294967296
	str	x8, [x9, #328]
	mov	x8, #4294967296
	str	x8, [x9, #336]
	mov	x8, #4294967296
	str	x8, [x9, #344]
	mov	x