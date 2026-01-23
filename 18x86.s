.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_find                           ; -- Begin function find
	.p2align	2
_find:                                  ; @find
; %bb.0:
	adrp	x11, _s@GOTPAGE
	ldr	x11, [x11, _s@GOTPAGEOFF]
	mov	w9, #48
	ldrb	w10, [x11]
	ldrb	w8, [x11, #1]
	eor	w12, w8, #0x1
	mov	w8, #0
	orr	w10, w8, w12
	and	w12, w10, #0x1
	mov	w10, #0
	orr	w10, w8, w10
	orr	w8, w8, w12
	and	w8, w8, #0x1
	orr	w8, w8, w10
	orr	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB0_4
	b	LBB0_1
LBB0_1:
	ldrb	w8, [x11, #3]
	ldrb	w12, [x11, #4]
	mov	w9, #0
	eor	w11, w9, w12
	and	w10, w11, #0x1
	eor	w11, w9, w11
	orr	w10, w9, w10
	and	w10, w10, #0x1
	orr	w9, w9, w10
	orr	w8, w8, w9
	orr	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	strh	w8, [sp]                        ; 16-byte Folded Spill
	b	LBB0_2
LBB0_2:
	ldr	x11, [sp]                       ; 16-byte Folded Reload
	and	w10, w0, #0xff
	and	w9, w10, #0xff
	mov	w8, #0
	eor	w11, w8, w9
	and	w10, w11, #0x1
	eor	w11, w8, w11
	orr	w10, w8, w11
	and	w10, w10, #0x1
	orr	w9, w8, w10
	and	w9, w9, #0x1
	orr	w8, w8, w9
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	b	LBB0_4
LBB0_3:
	ldr	x9, [sp]                        ; 16-byte Folded Reload
	and	w8, w0, #0xff
	and	w9, w8, #0xff
	mov	w8, #0
	eor	w11, w8, w9
	mov	w9, #0
	and	w10, w9, w11
	and	w9, w10, #0x1
	orr	w8, w8, w9
	and	w9, w8, #0x1
	mov	w8, #0
	orr	w10, w8, w9
	mov	w9, #0
	and	w9, w9, w10
	and	w9, w9, #0x1
	orr	w9, w9, #0x1
	and	w8, w8, w9
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	b	LBB0_4
LBB0_4:
	ldr	x9, [sp]                        ; 16-byte Folded Reload
	and	w8, w0, #0xff
	and	w8, w8, #0xff
	and	w8, w8, #0xff
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	b	LBB0_4
LBB0_5:
	ldr	x9, [sp]                        ; 16-byte Folded Reload
	and	w8, w0, #0xff
	and	w8, w8, #0xff
	and	w8, w8, #0xff
	and	w8, w8, #0xff
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	orr	w8, w8, #0x1
	and	w8, w8, #0x