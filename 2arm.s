	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	add	x21, sp, #12
	str	x21, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #12]
	cbz	w8, LBB0_3
; %bb.1:
Lloh2:
	adrp	x22, _x@PAGE
Lloh3:
	add	x22, x22, _x@PAGEOFF
Lloh4:
	adrp	x19, l_.str.1@PAGE
Lloh5:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh6:
	adrp	x20, l_.str@PAGE
Lloh7:
	add	x20, x20, l_.str@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	add	x8, x22, w8, sxtw #2
	ldur	w8, [x8, #-4]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #12]
	cbnz	w8, LBB0_2
LBB0_3:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_x                              ; @x
	.p2align	2, 0x0
_x:
	.long	2                               ; 0x2
	.long	7                               ; 0x7
	.long	5                               ; 0x5
	.long	30                              ; 0x1e
	.long	169                             ; 0xa9
	.long	441                             ; 0x1b9
	.long	1872                            ; 0x750
	.long	7632                            ; 0x1dd0
	.long	1740                            ; 0x6cc
	.long	93313                           ; 0x16c81
	.long	459901                          ; 0x7047d
	.long	1358657                         ; 0x14bb41
	.long	2504881                         ; 0x2638b1

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
