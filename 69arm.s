	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #352
	stp	x28, x27, [sp, #256]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #272]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #288]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #304]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #320]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #336]            ; 16-byte Folded Spill
	add	x29, sp, #336
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
	stur	x8, [x29, #-104]
Lloh3:
	adrp	x8, l___const.main.a@PAGE
Lloh4:
	add	x8, x8, l___const.main.a@PAGEOFF
	add	x9, sp, #48
	ldp	q0, q1, [x8, #128]
	ldp	q3, q2, [x8, #96]
	stp	q2, q0, [x9, #112]
	ldr	q0, [x8, #160]
	stp	q1, q0, [x9, #144]
	ldp	q0, q1, [x8, #64]
	stp	q0, q1, [sp, #112]
	str	q3, [sp, #144]
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #48]
	ldp	q1, q0, [x8, #32]
	stp	q1, q0, [sp, #80]
	str	wzr, [x9, #176]
	add	x8, sp, #44
	str	x8, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #44]
	str	x8, [sp]
Lloh7:
	adrp	x0, l_.str.1@PAGE
Lloh8:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #44]
	cmp	w8, #1
	b.lt	LBB0_6
; %bb.1:
	mov	w23, #0                         ; =0x0
	mov	w22, #20                        ; =0x14
	mov	w24, #57471                     ; =0xe07f
	movk	w24, #32263, lsl #16
	mov	w25, #-260                      ; =0xfffffefc
	mov	w26, #26215                     ; =0x6667
	movk	w26, #26214, lsl #16
	mov	w19, #60495                     ; =0xec4f
	movk	w19, #20164, lsl #16
	mov	w28, #13                        ; =0xd
Lloh9:
	adrp	x20, l_.str.3@PAGE
Lloh10:
	add	x20, x20, l_.str.3@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #36]
	mul	w9, w27, w22
	mov	w10, #365                       ; =0x16d
	madd	w8, w8, w10, w9
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	smull	x9, w8, w24
	lsr	x10, x9, #63
	asr	x9, x9, #39
	add	w9, w9, w10
	madd	w8, w9, w25, w8
	smull	x10, w8, w26
	lsr	x11, x10, #63
	asr	x10, x10, #35
	add	w10, w10, w11
	msub	w10, w10, w22, w8
	smull	x11, w8, w19
	lsr	x12, x11, #63
	asr	x11, x11, #34
	add	w11, w11, w12
	msub	w8, w11, w28, w8
	add	w8, w8, #1
	stp	w9, w8, [sp, #36]
	sxtw	x11, w10
	add	x10, x11, w10, sxtw #3
	add	x11, sp, #48
	add	x10, x11, x10
	stp	x10, x9, [sp, #8]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	add	w23, w23, #1
	ldr	w8, [sp, #44]
	cmp	w23, w8
	b.ge	LBB0_6
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	add	x8, sp, #36
	str	x8, [sp, #16]
	add	x8, sp, #29
	str	x8, [sp, #8]
	add	x8, sp, #40
	str	x8, [sp]
Lloh11:
	adrp	x0, l_.str.2@PAGE
Lloh12:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_scanf
	mov	x27, #0                         ; =0x0
Lloh13:
	adrp	x21, l___const.main.m@PAGE
Lloh14:
	add	x21, x21, l___const.main.m@PAGEOFF
LBB0_4:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x1, sp, #29
	mov	x0, x21
	bl	_strcmp
	cbz	w0, LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=2
	add	x27, x27, #1
	add	x21, x21, #7
	cmp	x27, #19
	b.ne	LBB0_4
	b	LBB0_2
LBB0_6:
	ldur	x8, [x29, #-104]
Lloh15:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh16:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh17:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_8
; %bb.7:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #336]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #320]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #304]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #288]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #272]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #256]            ; 16-byte Folded Reload
	add	sp, sp, #352
	ret
LBB0_8:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh15, Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
l___const.main.m:                       ; @__const.main.m
	.asciz	"pop\000\000\000"
	.asciz	"no\000\000\000\000"
	.asciz	"zip\000\000\000"
	.asciz	"zotz\000\000"
	.asciz	"tzec\000\000"
	.asciz	"xul\000\000\000"
	.asciz	"yoxkin"
	.asciz	"mol\000\000\000"
	.asciz	"chen\000\000"
	.asciz	"yax\000\000\000"
	.asciz	"zac\000\000\000"
	.asciz	"ceh\000\000\000"
	.asciz	"mac\000\000\000"
	.asciz	"kankin"
	.asciz	"muan\000\000"
	.asciz	"pax\000\000\000"
	.asciz	"koyab\000"
	.asciz	"cumhu\000"
	.asciz	"uayet\000"

l___const.main.a:                       ; @__const.main.a
	.asciz	"imix\000\000\000\000"
	.asciz	"ik\000\000\000\000\000\000"
	.asciz	"akbal\000\000\000"
	.asciz	"kan\000\000\000\000\000"
	.asciz	"chicchan"
	.asciz	"cimi\000\000\000\000"
	.asciz	"manik\000\000\000"
	.asciz	"lamat\000\000\000"
	.asciz	"muluk\000\000\000"
	.asciz	"ok\000\000\000\000\000\000"
	.asciz	"chuen\000\000\000"
	.asciz	"eb\000\000\000\000\000\000"
	.asciz	"ben\000\000\000\000\000"
	.asciz	"ix\000\000\000\000\000\000"
	.asciz	"mem\000\000\000\000\000"
	.asciz	"cib\000\000\000\000\000"
	.asciz	"caban\000\000\000"
	.asciz	"eznab\000\000\000"
	.asciz	"canac\000\000\000"
	.asciz	"ahau\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d\n"

l_.str.2:                               ; @.str.2
	.asciz	"%d. %s %d"

l_.str.3:                               ; @.str.3
	.asciz	"%d %s %d\n"

.subsections_via_symbols
