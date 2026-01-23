.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_dfs                            ; -- Begin function dfs
	.p2align	2
_dfs:                                   ; @dfs
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #28]                   ; 4-byte Folded Spill
	adrp	x8, _t@GOTPAGE
	ldr	x8, [x8, _t@GOTPAGEOFF]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	adrp	x8, _m@GOTPAGE
	ldr	x8, [x8, _m@GOTPAGEOFF]
	stur	x8, [x29, #-40]                 ; 8-byte Folded Spill
	mov	x8, #100
	mul	x9, x8, x0
	mov	x8, #1
	add	x8, x8, x9
	mov	x10, #1
	mul	x10, x8, x10
	add	x8, x8, #1
	add	x8, x8, x10
	mov	x9, #1
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #1
	mov	x9, x8
	stur	x9, [x29, #-48]                 ; 8-byte Folded Spill
	mov	x8, #2
	mul	x8, x8, x9
	add	x8, x8, #2
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]                 ; 8-byte Folded Reload
	mov	x9, x0
	mul	x9, x9, x10
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-48]                 ; 8-byte Folded Reload
	add	x9, x9, #1
	ldur	x10, [x29, #-40]                ; 8-byte Folded Reload
	add	x9, x9, #1
	ldur	x10, [x29, #-48]                ; 8-byte Folded Reload
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #64]                   ; 8-byte Folded Spill
	add	x9, x9, #1
	ldur	x10, [x29, #-40]                ; 8-byte Folded Reload
	add	x9, x9, #2
	str	x9, [sp, #72]                   ; 8-byte Folded Spill
	add	x9, x9, #1
	ldur	x10, [x29, #-40]                ; 8-byte Folded Reload
	add	x9, x9, #2
	str	x9, [sp, #80]                   ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #96]                   ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #104]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #112]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #120]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #136]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #144]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #160]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #168]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #176]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #184]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #192]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #208]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #216]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #232]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #240]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #256]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #264]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #280]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #288]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #296]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #304]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #320]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #328]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #336]                  ; 8-byte Folded Spill
	add	x9, x9, #1
	add	x9, x9, #2
	str	x9, [sp, #344