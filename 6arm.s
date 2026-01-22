	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_leap                           ; -- Begin function leap
	.p2align	2
_leap:                                  ; @leap
	.cfi_startproc
; %bb.0:
	tst	w0, #0x3
	b.ne	LBB0_3
; %bb.1:
	mov	w8, #34079                      ; =0x851f
	movk	w8, #20971, lsl #16
	smull	x8, w0, w8
	lsr	x9, x8, #63
	asr	x8, x8, #39
	add	w8, w8, w9
	mov	w9, #400                        ; =0x190
	msub	w8, w8, w9, w0
	mov	w9, #23593                      ; =0x5c29
	movk	w9, #49807, lsl #16
	mov	w10, #47184                     ; =0xb850
	movk	w10, #1310, lsl #16
	madd	w9, w0, w9, w10
	ror	w9, w9, #2
	mov	w10, #23592                     ; =0x5c28
	movk	w10, #655, lsl #16
	cmp	w9, w10
	ccmp	w8, #0, #4, ls
	b.ne	LBB0_3
; %bb.2:
	mov	w0, #1                          ; =0x1
	ret
LBB0_3:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #384
	stp	x28, x27, [sp, #288]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #304]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #320]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #336]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #352]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #368]            ; 16-byte Folded Spill
	add	x29, sp, #368
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
	add	x21, sp, #144
Lloh3:
	adrp	x8, l___const.main.Weak@PAGE
Lloh4:
	add	x8, x8, l___const.main.Weak@PAGEOFF
	ldp	q0, q1, [x8, #64]
	stp	q0, q1, [x21, #64]
	ldur	q0, [x8, #89]
	stur	q0, [x21, #89]
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #144]
	ldp	q1, q0, [x8, #32]
	stp	q1, q0, [x21, #32]
Lloh5:
	adrp	x8, l___const.main.dm@PAGE
Lloh6:
	add	x8, x8, l___const.main.dm@PAGEOFF
	ldp	q0, q1, [x8, #32]
	stp	q0, q1, [sp, #80]
	ldp	q0, q1, [x8, #64]
	stp	q0, q1, [sp, #112]
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #48]
	add	x8, sp, #44
	str	x8, [sp]
Lloh7:
	adrp	x0, l_.str@PAGE
Lloh8:
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	ldr	w8, [sp, #44]
	cmn	w8, #1
	b.eq	LBB1_22
; %bb.1:
	mov	w23, #34079                     ; =0x851f
	movk	w23, #20971, lsl #16
	mov	w24, #400                       ; =0x190
	mov	w25, #100                       ; =0x64
	mov	w26, #9363                      ; =0x2493
	movk	w26, #37449, lsl #16
Lloh9:
	adrp	x27, l___const.main.Leap@PAGE
Lloh10:
	add	x27, x27, l___const.main.Leap@PAGEOFF
	add	x28, sp, #48
Lloh11:
	adrp	x19, l_.str.1@PAGE
Lloh12:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh13:
	adrp	x20, l_.str@PAGE
Lloh14:
	add	x20, x20, l_.str@PAGEOFF
Lloh15:
	adrp	x22, l___const.main.Month@PAGE
Lloh16:
	add	x22, x22, l___const.main.Month@PAGEOFF
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	smull	x11, w8, w26
	lsr	x11, x11, #32
	add	w11, w11, w8
	asr	w12, w11, #2
	add	w11, w12, w11, lsr #31
	sub	w11, w11, w11, lsl #3
	add	w8, w8, w11
	mov	w11, w10
	add	x10, x11, w10, uxtw #1
	add	x10, x28, x10
	ldrsw	x11, [sp, #44]
	add	x11, x11, x11, lsl #1
	add	x11, x28, x11
	sub	x12, x21, w8, sxtw
	add	x8, x12, w8, sxtw #4
	stp	x11, x8, [sp, #16]
	stp	x9, x10, [sp]
	mov	x0, x19
	bl	_printf
	add	x8, sp, #44
	str	x8, [sp]
	mov	x0, x20
	bl	_scanf
	ldr	w8, [sp, #44]
	cmn	w8, #1
	b.eq	LBB1_22
LBB1_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
                                        ;     Child Loop BB1_17 Depth 2
                                        ;     Child Loop BB1_20 Depth 2
	mov	w9, #2000                       ; =0x7d0
	mov	w10, #-2000                     ; =0xfffff830
	ldr	w11, [sp, #44]
	b	LBB1_6
LBB1_4:                                 ;   in Loop: Header=BB1_6 Depth=2
	mov	w12, #-365                      ; =0xfffffe93
LBB1_5:                                 ;   in Loop: Header=BB1_6 Depth=2
	add	w11, w12, w11
	str	w11, [sp, #44]
	add	w9, w9, #1
	sub	w10, w10, #1
LBB1_6:                                 ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	umull	x13, w9, w23
	lsr	x12, x13, #39
	madd	w14, w12, w24, w10
	lsr	x13, x13, #37
	madd	w15, w13, w25, w10
	ands	w16, w9, #0x3
	b.ne	LBB1_9
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=2
	cmp	w15, #0
	ccmp	w14, #0, #4, eq
	b.ne	LBB1_9
; %bb.8:                                ;   in Loop: Header=BB1_6 Depth=2
	mov	w17, #366                       ; =0x16e
	cmp	w11, w17
	b.ge	LBB1_10
	b	LBB1_13
LBB1_9:                                 ;   in Loop: Header=BB1_6 Depth=2
	mov	w17, #365                       ; =0x16d
	cmp	w11, w17
	b.lt	LBB1_13
LBB1_10:                                ;   in Loop: Header=BB1_6 Depth=2
	cbnz	w16, LBB1_4
; %bb.11:                               ;   in Loop: Header=BB1_6 Depth=2
	cmp	w15, #0
	ccmp	w14, #0, #4, eq
	b.ne	LBB1_4
; %bb.12:                               ;   in Loop: Header=BB1_6 Depth=2
	mov	w12, #-366                      ; =0xfffffe92
	b	LBB1_5
LBB1_13:                                ;   in Loop: Header=BB1_3 Depth=1
	add	w11, w11, #1
	str	w11, [sp, #44]
	cbnz	w16, LBB1_16
; %bb.14:                               ;   in Loop: Header=BB1_3 Depth=1
	madd	w13, w13, w25, w10
	cbnz	w13, LBB1_19
; %bb.15:                               ;   in Loop: Header=BB1_3 Depth=1
	madd	w10, w12, w24, w10
	cbz	w10, LBB1_19
LBB1_16:                                ;   in Loop: Header=BB1_3 Depth=1
	ldr	w11, [sp, #44]
	mov	w10, #1                         ; =0x1
LBB1_17:                                ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w12, [x22, x10, lsl #2]
	subs	w11, w11, w12
	b.le	LBB1_2
; %bb.18:                               ;   in Loop: Header=BB1_17 Depth=2
	str	w11, [sp, #44]
	add	x10, x10, #1
	cmp	x10, #12
	b.ne	LBB1_17
	b	LBB1_2
LBB1_19:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	w10, #1                         ; =0x1
LBB1_20:                                ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w12, [x27, x10, lsl #2]
	subs	w11, w11, w12
	b.le	LBB1_2
; %bb.21:                               ;   in Loop: Header=BB1_20 Depth=2
	str	w11, [sp, #44]
	add	x10, x10, #1
	cmp	x10, #12
	b.ne	LBB1_20
	b	LBB1_2
LBB1_22:
	ldur	x8, [x29, #-104]
Lloh17:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh18:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh19:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_24
; %bb.23:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #368]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #352]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #336]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #320]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #304]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            ; 16-byte Folded Reload
	add	sp, sp, #384
	ret
LBB1_24:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh17, Lloh18, Lloh19
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.Month
l___const.main.Month:
	.long	0                               ; 0x0
	.long	31                              ; 0x1f
	.long	28                              ; 0x1c
	.long	31                              ; 0x1f
	.long	30                              ; 0x1e
	.long	31                              ; 0x1f
	.long	30                              ; 0x1e
	.long	31                              ; 0x1f
	.long	31                              ; 0x1f
	.long	30                              ; 0x1e
	.long	31                              ; 0x1f
	.long	30                              ; 0x1e

	.p2align	2, 0x0                          ; @__const.main.Leap
l___const.main.Leap:
	.long	0                               ; 0x0
	.long	31                              ; 0x1f
	.long	29                              ; 0x1d
	.long	31                              ; 0x1f
	.long	30                              ; 0x1e
	.long	31                              ; 0x1f
	.long	30                              ; 0x1e
	.long	31                              ; 0x1f
	.long	31                              ; 0x1f
	.long	30                              ; 0x1e
	.long	31                              ; 0x1f
	.long	30                              ; 0x1e

l___const.main.Weak:                    ; @__const.main.Weak
	.asciz	"Saturday\000\000\000\000\000\000"
	.asciz	"Sunday\000\000\000\000\000\000\000\000"
	.asciz	"Monday\000\000\000\000\000\000\000\000"
	.asciz	"Tuesday\000\000\000\000\000\000\000"
	.asciz	"Wednesday\000\000\000\000\000"
	.asciz	"Thursday\000\000\000\000\000\000"
	.asciz	"Friday\000\000\000\000\000\000\000\000"

l___const.main.dm:                      ; @__const.main.dm
	.asciz	"00"
	.asciz	"01"
	.asciz	"02"
	.asciz	"03"
	.asciz	"04"
	.asciz	"05"
	.asciz	"06"
	.asciz	"07"
	.asciz	"08"
	.asciz	"09"
	.asciz	"10"
	.asciz	"11"
	.asciz	"12"
	.asciz	"13"
	.asciz	"14"
	.asciz	"15"
	.asciz	"16"
	.asciz	"17"
	.asciz	"18"
	.asciz	"19"
	.asciz	"20"
	.asciz	"21"
	.asciz	"22"
	.asciz	"23"
	.asciz	"24"
	.asciz	"25"
	.asciz	"26"
	.asciz	"27"
	.asciz	"28"
	.asciz	"29"
	.asciz	"30"
	.asciz	"31"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"%d-%s-%s %s\n"

.subsections_via_symbols
