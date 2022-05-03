; ---------------------------------------------------------------------------
; Subroutine to make Sonic perform a spindash
; ---------------------------------------------------------------------------
 
; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||
 
 
Sonic_PeelOut:
		tst.b	f_peelout(a0)			; already Spin Dashing?
		bne.s	lolloc2_1AC8E		; if set, branch
		cmpi.b	#id_LookUp,obAnim(a0)		; is anim duck
		bne.s	lollocret2_1AC8C		; if not, return
		move.b	(v_jpadpress2).w,d0	; read controller
		andi.b	#$70,d0			; pressing A/B/C ?
		beq.w	lollocret2_1AC8C		; if not, return
		move.b	#id_run,obAnim(a0)		; set Spin Dash anim (9 in s2)
		sfx	sfx_Roll,0,0,0	; play spin sound
		addq.l	#4,sp			; Add 4 bytes to the stack return address to skip Sonic_Jump on next rts to Obj01_MdNormal, preventing conflicts with button presses.
		move.b	#1,f_peelout(a0)		; set Spin Dash flag
		move.w	#0,$3A(a0)		; set charge count to 0
		cmpi.b	#$C,$28(a0)		; ??? oxygen remaining?
		bcs.s	lolloc2_1AC84		; ??? branch if carry
		move.b	#2,($FFFFD11C).w	; ??? $D11C is used for
						; the smoke/dust object
lolloc2_1AC84:
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos

lollocret2_1AC8C:
		rts	
; ---------------------------------------------------------------------------

lolloc2_1AC8E:
		btst	#bitUp,(v_jpadhold2).w ; is up being pressed?
		bne.w	lolloc2_1AD30		; if set, branch
		move.b	#$E,$16(a0)		; $16(a0) is height/2
		move.b	#7,$17(a0)		; $17(a0) is width/2
		move.b	#id_run,obAnim(a0)		; set animation to roll
		addq.w	#8,obY(a0)
		move.b	#0,f_peelout(a0)		; clear Spin Dash flag
		moveq	#0,d0
		move.b	$3A(a0),d0		; copy charge count
		add.w	d0,d0			; double it
		move.w	Dash_Speeds2(pc,d0.w),obInertia(a0) ; get normal speed
		move.w	obInertia(a0),d0		; get inertia
		subi.w	#$800,d0		; subtract $800
		add.w	d0,d0			; double it
		andi.w	#$1F00,d0		; mask it against $1F00
		neg.w	d0			; negate it
		addi.w	#$2000,d0		; add $2000
		move.w	d0,($FFFFEED0).w	; move to $EED0
		btst	#0,$22(a0)		; is sonic facing right?
		beq.s	lolloc2_1ACF4		; if not, branch
		neg.w	obInertia(a0)			; negate inertia

lolloc2_1ACF4:
		bset	#2,$22(a0)		; set unused (in s1) flag
		move.b	#0,($FFFFD11C).w	; clear $D11C (smoke)
		sfx	sfx_Roll,0,0,0	; play spin sound
		bra.s	lolloc2_1AD78
; ===========================================================================
Dash_Speeds2:
		dc.w  $800		; 0
		dc.w  $880		; 1
		dc.w  $900		; 2
		dc.w  $980		; 3
		dc.w  $A00		; 4
		dc.w  $A80		; 5
		dc.w  $B00		; 6
		dc.w  $B80		; 7
		dc.w  $C00		; 8
; ===========================================================================

lolloc2_1AD30:				; If still charging the dash...
		tst.w	$3A(a0)		; check charge count
		beq.s	lolloc2_1AD48	; if zero, branch
		move.w	$3A(a0),d0	; otherwise put it in d0
		lsr.w	#5,d0		; shift right 5 (divide it by 32)
		sub.w	d0,$3A(a0)	; subtract from charge count
		bcc.s	lolloc2_1AD48	; ??? branch if carry clear
		move.w	#0,$3A(a0)	; set charge count to 0

lolloc2_1AD48:
		move.b	(v_jpadpress2).w,d0	; read controller
		andi.b	#$70,d0			; pressing A/B/C?
		beq.w	lolloc2_1AD78		; if not, branch
		;move.w	#$1F00,obAnim(a0)	; reset spdsh animation
		sfx	sfx_Roll,0,0,0	; play spin sound
		addi.w	#$200,$3A(a0)		; increase charge count
		cmpi.w	#$800,$3A(a0)		; check if it's maxed
		bcs.s	lolloc2_1AD78		; if not, then branch
		move.w	#$800,$3A(a0)		; reset it to max

lolloc2_1AD78:
		addq.l	#4,sp			; Add 4 bytes to the stack return address to skip Sonic_Jump on next rts to Obj01_MdNormal, preventing conflicts with button presses.
		cmpi.w	#$60,($FFFFEED8).w	; $EED8 only ever seems
		beq.s	lolloc2_1AD8C		; to be used in Spin Dash
		bcc.s	lolloc2_1AD88
		addq.w	#4,($FFFFEED8).w

lolloc2_1AD88:
		subq.w	#2,($FFFFEED8).w

lolloc2_1AD8C:
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos
		move.w	#$60,(v_lookshift).w	; reset looking up/down
		rts
; End of subroutine Sonic_SpinDash