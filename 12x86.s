.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x400921fb54442d18              ; double 3.1415926535897931
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #48
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	sub	x8, x29, #88
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	sub	x8, x29, #72
	stur	x8, [x29, #-40]                 ; 8-byte Folded Spill
	sub	x8, x29, #64
	stur	x8, [x29, #-32]                 ; 8-byte Folded Spill
	mov	x9, sp
	stur	x8, [x29, #-48]
	stur	x9, [x29, #-56]
	stur	x8, [x29, #-64]
	stur	x9, [x29, #-56]
	str	x8, [sp, #64]
	str	x9, [sp, #72]
	str	x8, [sp, #80]
	str	x9, [sp, #88]
	str	x8, [sp, #96]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	adds	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	ldur	x11, [x29, #-48]
	ldur	x8, [x29, #-56]
	ldur	x9, [x29, #-48]
	fmov	d0, d9
	fsub	d1, d0, d1
	ldur	x9, [x29, #-40]                 ; 8-byte Folded Reload
	fsub	d0, d0, d1
	ldur	x10, [x29, #-32]                ; 8-byte Folded Reload
	fneg	d1, d1
	fmul	d1, d1, d0
	fnmul	d0, d0, d1
	fsqrt	d0, d0
	fmov	d1, d0
	fmul	d1, d1, d1
	fmadd	d1, d0, d1, d2
	fmov	d2, d1
	fmov	d1, d0
	fmsub	d1, d1, d2, d3
	fmov	d2, d1
	fmov	d3, d2
	fmov	d4, d1
	fmul	d4, d4, d3
	fnmul	d3, d3, d4
	fmul	d1, d1, d3
	fsqrt	d1, d1
	fmul	d1, d1, d2
	fdiv	d1, d1, d3
	fmul	d0, d0, d1
	adrp	x8, lCPI0_0@PAGE
	ldr	d3, [x8, lCPI0_0@PAGEOFF]
	fmul	d1, d1, d3
	fmul	d2, d2, d3
	fsub	d2, d2, d1
	fmul	d2, d2, d3
	fnmul	d1, d1, d2
	fmul	d0, d0, d1
	fdiv	d0, d0, d2
	fmul	d1, d0, d3
	fmul	d0, d0, d1
	fdiv	d0, d0, d3
	fmul	d1, d0, d3
	fdiv	d0, d0, d1
	fmul	d0, d0, d2
	fdiv	d1, d0, d3
	mov	x8, sp
	str	x11, [x8]
	str	x10, [x8, #8]
	str	x9, [x8, #16]
	str	x11, [x8, #24]
	str	x10, [x8, #32]
	str	x9, [x8, #40]
	str	x10, [x8, #48]
	str	x9, [x8, #56]
	str	x11, [x8, #64]
	str	x10, [x8, #72]
	str	x9, [x8, #80]
	str	x10, [x8, #88]
	str	x9, [x8, #96]
	str	x10, [x8, #104]
	str	x9, [x8, #112]
	str	x10, [x8, #120]
	str	x9, [x8, #128]
	str	x10, [x8, #136]
	str	x9, [x8, #144]
	str	x10, [x8, #152]
	str	x9, [x8, #160]
	str	x10, [x8, #168]
	str	x9, [x8, #176]
	str	x10, [x8, #184]
	str	x9, [x8, #192]
	str	x10, [x8, #200]
	str	x9, [x8, #208]
	str	x10, [x8, #216]
	str	x9, [x8, #224]
	str	x10, [x8, #232]
	str	x9, [x8, #240]
	str	x10, [x8, #248]
	str	x9, [x8, #256]
	str	x10, [x8, #264]
	str	x9, [x8, #272]
	str	x10, [x8, #280]
	str	x9, [x8, #288]
	str	x10, [x8, #304]
	str	x9, [x8, #312]
	str	x10, [x8, #320]
	str	x9, [x8, #328]
	str	x10, [x8, #336]
	str	x9, [x8, #344]
	str	x10, [x8, #352]
	str	x9, [x8, #360]
	str	x10, [x8, #368]
	str	x9, [x8, #384]
	str	x10, [x8, #400]
	str	x9, [x8, #416]
	str	x10, [x8, #424]
	str	x9, [x8, #432]
	str	x10, [x8, #440]
	str	x9, [x8, #448]
	str	x10, [x8, #456]
	str	x9, [x8, #464]
	str	x10, [x8, #472]
	str	x9, [x8, #480]
	str	x10, [x8, #488]
	str	x9, [x8, #496]
	str	x10, [x8, #504]
	str	x9, [x8, #512]
	str	x10, [x8, #520]
	str	x9, [x8, #528]
	str	x10, [x8, #536]
	str	x9, [x8, #544]
	str	x10, [x8, #552]
	str	x9, [x8, #560]
	str	x10, [x8, #568]
	str	x9, [x8, #576]
	str	x10, [x8, #584]
	str	x9, [x8, #592]