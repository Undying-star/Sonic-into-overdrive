; ===========================================================================
; ---------------------------------------------------------------------------
; Object 02 - Tails
; ---------------------------------------------------------------------------

TailsPlayer:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Tails_Index(pc,d0.w),d1
		jmp	Tails_Index(pc,d1.w)
; ===========================================================================
Tails_Index:	dc.w Tails_Main-Tails_Index
		dc.w Tails_Control-Tails_Index
		dc.w Tails_Hurt-Tails_Index
		dc.w Tails_Death-Tails_Index
		dc.w Tails_ResetLevel-Tails_Index
; ===========================================================================


Tails_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.b	#$13,obHeight(a0)
		move.b	#9,obWidth(a0)
		move.l	#Map_Tails,obMap(a0)
		move.w	#$79F,obGfx(a0)
		move.b	#2,obPriority(a0)
		move.b	#$18,obActWid(a0)
		move.b	#4,obRender(a0)
		lea     (TailsSpeedBuffers).w,a2
		move.w	#$600,(a2) ; tails's top speed
		move.w	#$C,2(a2) ; tails's acceleration
		move.w	#$80,4(a2) ; tails's deceleration
		jsr	FindFreeObj
		bne.w	failMakingtailsTail
		move.b  #$8E,(a1)
		move.w  a0,$3E(a1)

Tails_Control:	; Routine 2
                cmpa.w	#v_player,a0
          	bne.s	Obj02_Control_Joypad2
           	move.w	(v_jpadhold1).w,(v_jpadhold2).w ; enable joypad control
          	tst.b	($FFFFF7CC).w	; are controls locked?
         	bne.s	Obj02_Control_Part2	; if yes, branch
         	move.w	($FFFFF600).w,($FFFFF66A).w	; copy new held buttons, to enable joypad control
         	move.w	($FFFFF600).w,($FFFFF602).w
          	bra.s	Obj02_Control_Part2

Obj02_Control_Joypad2:
         	tst.b	($FFFFF7CF).w
        	bne.s	@whateverflag
        	move.w	($FFFFF606).w,($FFFFF66A).w
 @whateverflag:
         ;	tst.w	(Two_player_mode).w
         ;  	bne.s	Obj02_Control_Part2
         	bsr.w	TailsCPU_Control
Obj02_Control_Part2:
		move.w	(v_jpadhold1).w,(v_jpadhold2).w ; enable joypad control
		moveq	#0,d0
		move.b	obStatus(a0),d0
		andi.w	#6,d0
		move.w	Tails_Modes(pc,d0.w),d1
		jsr	Tails_Modes(pc,d1.w)

loc_12C7E_2:
		bsr.w	Tails_Display
	;	bsr.w	Tails_Water
	        bsr.w  Tails_RecordPos
		move.b	(v_anglebuffer).w,$36(a0)
		move.b	($FFFFF76A).w,$37(a0)
		tst.b	(f_wtunnelmode).w
		beq.s	loc_12CA6_2
           	tst.b	obAnim(a0)
		bne.s	loc_12CA6_2
		move.b	obNextAni(a0),obAnim(a0)

loc_12CA6_2:
		bsr.w	Tails_Animate
		tst.b	(f_lockmulti).w
		bmi.s	loc_12CB6_2
		jsr	(ReactToItem).l

loc_12CB6_2:
		bsr.w	Sonic_Loops
		bsr.w	Tails_LoadGfx
 failMakingtailsTail:
		rts
; ===========================================================================
Tails_Modes:	dc.w Tails_MdNormal-Tails_Modes
		dc.w Tails_MdJump-Tails_Modes
		dc.w Tails_MdRoll-Tails_Modes
		dc.w Tails_MdJump2-Tails_Modes
; ===========================================================================
; ---------------------------------------------------------------------------
; Modes	for controlling	Tails
; ---------------------------------------------------------------------------

Tails_MdNormal:
		bsr.w	Tails_Jump
		bsr.w	Sonic_SlopeResist
		bsr.w	Tails_Move
		bsr.w	Sonic_Roll
		bsr.w	Sonic_LevelBound
		jsr	(SpeedToPos).l
		bsr.w	Sonic_AnglePos
		bsr.w	Sonic_SlopeRepel
		rts
; ===========================================================================

Tails_MdJump:
		bsr.w	Sonic_JumpHeight
		bsr.w	Tails_JumpDirection
		bsr.w	Sonic_LevelBound
		jsr	(ObjectFall).l
		btst	#6,obStatus(a0)
		beq.s	loc_12E5C_2
		subi.w	#$28,obVelY(a0)

loc_12E5C_2:
		bsr.w	Sonic_JumpAngle
		bsr.w	Sonic_Floor
		rts
; ===========================================================================

Tails_MdRoll:
		bsr.w	Tails_Jump
		bsr.w	Sonic_RollRepel
		bsr.w	TailsRollSpeed
		bsr.w	Sonic_LevelBound
		jsr	(SpeedToPos).l
		bsr.w	Sonic_AnglePos
		bsr.w	Sonic_SlopeRepel
		rts	
; ===========================================================================

Tails_MdJump2:
		bsr.w	Sonic_JumpHeight
		bsr.w	Tails_JumpDirection
		bsr.w	Sonic_LevelBound
		jsr	(ObjectFall).l
		btst	#6,obStatus(a0)
		beq.s	loc_12EA6_2
		subi.w	#$28,obVelY(a0)

loc_12EA6_2:
		bsr.w	Sonic_JumpAngle
		bsr.w	Sonic_Floor
		rts

		;include	"_incObj\Tails Move.asm"
		;include	"_incObj\Tails RollSpeed.asm"
		;include	"_incObj\Tails JumpDirection.asm"
		;include	"_incObj\Tails LevelBound.asm"
		;include	"_incObj\Tails Roll.asm"
		;include	"_incObj\Tails Jump.asm"
		;include	"_incObj\Tails JumpHeight.asm"
		;include	"_incObj\Tails SlopeResist.asm"
		;include	"_incObj\Tails RollRepel.asm"
		;include	"_incObj\Tails SlopeRepel.asm"
		;include	"_incObj\Tails JumpAngle.asm"
		;include	"_incObj\Tails Floor.asm"
		;include	"_incObj\Tails ResetOnFloor.asm"
		include	"_incObj\Tails (part 2).asm"
		;include	"_incObj\Tails Loops.asm"
		include	"_incObj\Tails Animate.asm"
Ani_Tails:
		include	"_anim\Tails.asm"
		;include	"_incObj\Tails LoadGfx.asm"
LoadTailsTailsDynPLC:
	moveq	#0,d0
	move.b	$1A(a0),d0
;	cmp.b	(TailsTails_LastLoadedDPLC).w,d0
;;	beq.s	return_1D1FE
;	move.b	d0,(TailsTails_LastLoadedDPLC).w
	lea	(TailsDynPLC).l,a2
	add.w	d0,d0
	adda.w	(a2,d0.w),a2
	moveq	#0,d5 ; this is the change in the dplc format
	move.b	(a2)+,d5
	subq.w	#1,d5
	bmi.s	TailsLoadGfxReturn
	move.w	#$7AF*$20,d4
	bra.s	TailsLoadGfxreadentry
Tails_LoadGfx:
		moveq	#0,d0
		move.b	$1A(a0),d0	; load frame number
	;	cmp.b	($FFFFF5C0).w,d0
	;	beq.s	TailsLoadGfxReturn
	;	move.b	d0,($FFFFF5C0).w
		lea	(TailsDynPLC).l,a2
		add.w	d0,d0
		adda.w	(a2,d0.w),a2
		moveq	#0,d5
		move.b	(a2)+,d5
		subq.w	#1,d5
		bmi.s	TailsLoadGfxReturn
		move.w	#$79F*$20,d4
		move.l	#Art_Tails,d6

	TailsLoadGfxreadentry:
		moveq	#0,d1
		move.b	(a2)+,d1
		lsl.w	#8,d1
		move.b	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		andi.w	#$F0,d3
		addi.w	#$10,d3
		andi.w	#$FFF,d1
		lsl.l	#5,d1
		add.l	d6,d1
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	(QueueDMATransfer).l
                dbf	d5,TailsLoadGfxreadentry	; repeat for number of entries

 TailsLoadGfxReturn:
		rts

Tails_Jump:
		move.b	(v_jpadpress2).w,d0
		andi.b	#btnABC,d0	; is A, B or C pressed?
		beq.w	.return	; if not, branch
		moveq	#0,d0
		move.b	obAngle(a0),d0
		addi.b	#$80,d0
		bsr.w	sub_14D48
		cmpi.w	#6,d1
		blt.w	.return
		move.w	#$680,d2
		btst	#6,obStatus(a0)
		beq.s	.TailsJumpPixelCalc
		move.w	#$380,d2

 .TailsJumpPixelCalc:
		moveq	#0,d0
		move.b	obAngle(a0),d0
		subi.b	#$40,d0
		jsr	(CalcSine).l
		muls.w	d2,d1
		asr.l	#8,d1
		add.w	d1,obVelX(a0)	; make Sonic jump
		muls.w	d2,d0
		asr.l	#8,d0
		add.w	d0,obVelY(a0)	; make Sonic jump
		bset	#1,obStatus(a0)
		bclr	#5,obStatus(a0)
		addq.l	#4,sp
		move.b	#1,$3C(a0)
		clr.b	$38(a0)
		sfx	sfx_Jump,0,0,0	; play jumping sound
		move.b	#$13,obHeight(a0)
		move.b	#9,obWidth(a0)
		btst	#2,obStatus(a0)
		bne.s	.setstatusnumber4
		move.b	#$E,obHeight(a0)
		move.b	#7,obWidth(a0)
		move.b	#2,obAnim(a0) ; use "jumping" animation
		bset	#2,obStatus(a0)
		addq.w	#5,obY(a0)

 .return:
		rts
; ===========================================================================

 .setstatusnumber4:
		bset	#4,obStatus(a0)
		rts
; End of function Sonic_Jump
TailsCPU_Control: ; a0=Tails
	move.b	(Ctrl_2_Held).w,d0	; did the real player 2 hit something?
	andi.b	#$7F,d0
	beq.s	@notpressed			; if not, branch
	move.w	#600,(Tails_control_counter).w ; give player 2 control for 10 seconds (minimum)
 @notpressed:
	lea	(v_player).w,a1 ; a1=character ; a1=Sonic
	move.w	(Tails_CPU_routine).w,d0
	move.w	TailsCPU_States(pc,d0.w),d0
	jmp	TailsCPU_States(pc,d0.w)
; ===========================================================================
; off_1BAF4:
TailsCPU_States:
	dc.w TailsCPU_Init-TailsCPU_States	; 0
	dc.w TailsCPU_Spawning-TailsCPU_States; 2
	dc.w TailsCPU_Flying-TailsCPU_States	; 4
	dc.w TailsCPU_Normal-TailsCPU_States	; 6
	dc.w TailsCPU_Panic-TailsCPU_States	; 8

; ===========================================================================
; initial AI State
; ---------------------------------------------------------------------------
; loc_1BAFE:
TailsCPU_Init:
	move.w	#6,(Tails_CPU_routine).w	; => TailsCPU_Normal
	move.b	#0,obj_control(a0)
	move.b	#0,anim(a0)
	move.w	#0,x_vel(a0)
	move.w	#0,y_vel(a0)
	move.w	#0,inertia(a0)
	move.b	#0,status(a0)
	move.w	#0,(Tails_respawn_counter).w
	rts

; ===========================================================================
; AI State where Tails is waiting to respawn
; ---------------------------------------------------------------------------
; loc_1BB30:
TailsCPU_Spawning:
	move.b	(Ctrl_2_Held_Logical).w,d0
	andi.b	#$F0,d0
	bne.s	TailsCPU_Respawn
	move.w	(Timer_frames).w,d0
	andi.w	#$3F,d0
	bne.s	return_1BB88
	tst.b	(f_lockmulti).w
	bne.s	return_1BB88
	move.b	status(a1),d0
	andi.b	#$D2,d0
	bne.s	return_1BB88
; loc_1BB54:
TailsCPU_Respawn:
	move.w	#4,(Tails_CPU_routine).w	; => TailsCPU_Flying
	move.w	x_pos(a1),d0
	move.w	d0,x_pos(a0)
	move.w	d0,(Tails_CPU_target_x).w
	move.w	y_pos(a1),d0
	move.w	d0,(Tails_CPU_target_y).w
	subi.w	#$C0,d0
	move.w	d0,y_pos(a0)
	ori.w	#$8000,art_tile(a0)
	move.b	#0,spindash_flag(a0)
	move.w	#0,spindash_counter(a0)

return_1BB88:
	rts

; ===========================================================================
; AI State where Tails pretends to be a helicopter
; ---------------------------------------------------------------------------
; loc_1BB8A:
TailsCPU_Flying:
	tst.b	render_flags(a0)
	bmi.s	TailsCPU_FlyingOnscreen
	addq.w	#1,(Tails_respawn_counter).w
	cmpi.w	#$12C,(Tails_respawn_counter).w
	bcs.s	TailsCPU_Flying_Part2
	move.w	#0,(Tails_respawn_counter).w
	move.w	#2,(Tails_CPU_routine).w	; => TailsCPU_Spawning
	move.b	#$81,obj_control(a0)
	move.b	#2,status(a0)
	move.w	#0,x_pos(a0)
	move.w	#0,y_pos(a0)
	move.b	#$20,anim(a0)
	rts
; ---------------------------------------------------------------------------
; loc_1BBC8:
TailsCPU_FlyingOnscreen:
	move.w	#0,(Tails_respawn_counter).w
; loc_1BBCE:
TailsCPU_Flying_Part2:
	lea	(Sonic_Pos_Record_Buf).w,a2
	move.w	#$10,d2
	lsl.b	#2,d2
	addq.b	#4,d2
	move.w	(Sonic_Pos_Record_Index).w,d3
	sub.b	d2,d3
	move.w	(a2,d3.w),(Tails_CPU_target_x).w
	move.w	2(a2,d3.w),(Tails_CPU_target_y).w
	tst.b	(Water_flag).w
	beq.s	@waterflagisntset
	move.w	(Water_Level_1).w,d0
	subi.w	#$10,d0
	cmp.w	(Tails_CPU_target_y).w,d0
	bge.s	@waterflagisntset
	move.w	d0,(Tails_CPU_target_y).w
 @waterflagisntset:
	move.w	x_pos(a0),d0
	sub.w	(Tails_CPU_target_x).w,d0
	beq.s	loc_1BC54
	move.w	d0,d2
	bpl.s	@positivevalue
	neg.w	d2
 @positivevalue:
	lsr.w	#4,d2
	cmpi.w	#$C,d2
	bcs.s	@notless
	moveq	#$C,d2
 @notless:
	move.b	x_vel(a1),d1
	bpl.s	@speedisntleftdirection
	neg.b	d1
 @speedisntleftdirection:
	add.b	d1,d2
	addq.w	#1,d2
	tst.w	d0
	bmi.s	@loc_1BC40
	bset	#0,status(a0)
	cmp.w	d0,d2
	bcs.s	@d0isntbiggerthand2
	move.w	d0,d2
	moveq	#0,d0
 @d0isntbiggerthand2:
	neg.w	d2
	bra.s	loc_1BC50
; ---------------------------------------------------------------------------

 @loc_1BC40:
	bclr	#0,status(a0)
	neg.w	d0
	cmp.w	d0,d2
	bcs.s	loc_1BC50
	move.b	d0,d2
	moveq	#0,d0

loc_1BC50:
	add.w	d2,x_pos(a0)

loc_1BC54:
	moveq	#1,d2
	move.w	y_pos(a0),d1
	sub.w	(Tails_CPU_target_y).w,d1
	beq.s	loc_1BC68
	bmi.s	loc_1BC64
	neg.w	d2

loc_1BC64:
	add.w	d2,y_pos(a0)

loc_1BC68:
	lea	(Sonic_Stat_Record_Buf).w,a2
	move.b	2(a2,d3.w),d2
	andi.b	#$D2,d2
	bne.s	return_1BCDE
	or.w	d0,d1
	bne.s	return_1BCDE
	move.w	#6,(Tails_CPU_routine).w	; => TailsCPU_Normal
	move.b	#0,obj_control(a0)
	move.b	#0,anim(a0)
	move.w	#0,x_vel(a0)
	move.w	#0,y_vel(a0)
	move.w	#0,inertia(a0)
	move.b	#2,status(a0)
	move.w	#0,move_lock(a0)
	andi.w	#$7FFF,art_tile(a0)
	tst.b	art_tile(a1)
	bpl.s	@priortiycheck
	ori.w	#$8000,art_tile(a0)
 @priortiycheck:
	;move.b	layer(a1),layer(a0)
	;move.b	layer_plus(a1),layer_plus(a0)
	cmpi.b	#9,anim(a1)
	beq.s	return_1BCDE
	move.b	spindash_flag(a0),d0
	beq.s	return_1BCDE
	move.b	d0,spindash_flag(a1)
	bsr.w	loc_212C4

return_1BCDE:
	rts

; ===========================================================================
; AI State where Tails follows the player normally
; ---------------------------------------------------------------------------
; loc_1BCE0:
TailsCPU_Normal:
	cmpi.b	#6,(v_player+routine).w	; is Sonic dead?
	bcs.s	TailsCPU_Normal_SonicOK		; if not, branch
	; Sonic's dead; fly down to his corpse
	move.w	#4,(Tails_CPU_routine).w	; => TailsCPU_Flying
	move.b	#0,spindash_flag(a0)
	move.w	#0,spindash_counter(a0)
	move.b	#$81,obj_control(a0)
	move.b	#2,status(a0)
	move.b	#$20,anim(a0)
	rts
; ---------------------------------------------------------------------------
; loc_1BD0E:
TailsCPU_Normal_SonicOK:
	bsr.w	TailsCPU_CheckDespawn
	tst.w	(Tails_control_counter).w	; if CPU has control
	bne.w	TailsCPU_Normal_HumanControl		; (if not, branch)
	tst.b	obj_control(a0)			; and Tails isn't fully object controlled (&$80)
	bmi.w	TailsCPU_Normal_HumanControl		; (if not, branch)
	tst.w	move_lock(a0)			; and Tails' movement is locked (usually because he just fell down a slope)
	beq.s	@movelockis0					; (if not, branch)
	tst.w	inertia(a0)			; and Tails is stopped, then...
	bne.s	@movelockis0					; (if not, branch)
	move.w	#8,(Tails_CPU_routine).w	; => TailsCPU_Panic
 @movelockis0:
	lea	(Sonic_Pos_Record_Buf).w,a1
	move.w	#$10,d1
	lsl.b	#2,d1
	addq.b	#4,d1
	move.w	(Sonic_Pos_Record_Index).w,d0
	sub.b	d1,d0
	move.w	(a1,d0.w),d2	; d2 = earlier x position of Sonic
	move.w	2(a1,d0.w),d3	; d3 = earlier y position of Sonic
	lea	(Sonic_Stat_Record_Buf).w,a1
	move.w	(a1,d0.w),d1	; d1 = earlier input of Sonic
	move.b	2(a1,d0.w),d4	; d4 = earlier status of Sonic
	move.w	d1,d0
	btst	#5,status(a0)	; is Tails pushing against something?
	beq.s	@branchugh1		; if not, branch
	btst	#5,d4		; was Sonic pushing against something?
	beq.w	TailsCPU_Normal_FilterAction_Part2 ; if not, branch elsewhere

; either Tails isn't pushing, or Tails and Sonic are both pushing
 @branchugh1:	sub.w	x_pos(a0),d2
	beq.s	TailsCPU_Normal_Stand ; branch if Tails is already lined up horizontally with Sonic
	bpl.s	TailsCPU_Normal_FollowRight
	neg.w	d2

; Tails wants to go left because that's where Sonic is
; loc_1BD76: TailsCPU_Normal_FollowLeft:
	cmpi.w	#$10,d2
	bcs.s	@branchagain2
	andi.w	#$F3F3,d1 ; %1111001111110011
	ori.w	#$0404,d1 ; %0000010000000100
 @branchagain2:
	tst.w	inertia(a0)
	beq.s	TailsCPU_Normal_FilterAction
	btst	#0,status(a0)
	beq.s	TailsCPU_Normal_FilterAction
	subq.w	#1,x_pos(a0)
	bra.s	TailsCPU_Normal_FilterAction
; ===========================================================================
; Tails wants to go right because that's where Sonic is
; loc_1BD98:
TailsCPU_Normal_FollowRight:
	cmpi.w	#$10,d2
	bcs.s	@nofolloowright
	andi.w	#$F3F3,d1 ; %1111001111110011
	ori.w	#$0808,d1 ; %0000100000001000
 @nofolloowright:
	tst.w	inertia(a0)
	beq.s	TailsCPU_Normal_FilterAction
	btst	#0,status(a0)
	bne.s	TailsCPU_Normal_FilterAction
	addq.w	#1,x_pos(a0)
	bra.s	TailsCPU_Normal_FilterAction
; ===========================================================================
; Tails is happy where he is
; loc_1BDBA:
TailsCPU_Normal_Stand:
	bclr	#0,status(a0)
	move.b	d4,d0
	andi.b	#1,d0
	beq.s	TailsCPU_Normal_FilterAction
	bset	#0,status(a0)

; Filter the action we chose depending on a few things
; loc_1BDCE:
TailsCPU_Normal_FilterAction:
	tst.b	($FFFFF70F).w
	beq.s	@70F_is0
	ori.w	#$7000,d1
	btst	#1,status(a0)
	bne.s	TailsCPU_Normal_SendAction
	move.b	#0,($FFFFF70F).w
 @70F_is0:
	move.w	(Timer_frames).w,d0
	andi.w	#$FF,d0
	beq.s	timedelaybranch
	cmpi.w	#$40,d2
	bcc.s	TailsCPU_Normal_SendAction
 timedelaybranch:
	sub.w	y_pos(a0),d3
	beq.s	TailsCPU_Normal_SendAction
	bpl.s	TailsCPU_Normal_SendAction
	neg.w	d3
	cmpi.w	#$20,d3
	bcs.s	TailsCPU_Normal_SendAction
; loc_1BE06:
TailsCPU_Normal_FilterAction_Part2:
	move.b	($FFFFFE05).w,d0
	andi.b	#$3F,d0
	bne.s	TailsCPU_Normal_SendAction
	cmpi.b	#8,anim(a0)
	beq.s	TailsCPU_Normal_SendAction
	ori.w	#$7070,d1
	move.b	#1,($FFFFF70F).w

; Send the action we chose by storing it into player 2's input
; loc_1BE22:
TailsCPU_Normal_SendAction:
	move.w	d1,(Ctrl_2_Logical).w
	rts

; ===========================================================================
; Follow orders from controller 2
; and decrease the counter to when the CPU will regain control
; loc_1BE28:
TailsCPU_Normal_HumanControl:
	tst.w	(Tails_control_counter).w
	beq.s	@controlcounterisnt0	; don't decrease if it's already 0
	subq.w	#1,(Tails_control_counter).w
 @controlcounterisnt0:
	rts

; ===========================================================================
; loc_1BE34:
TailsCPU_Despawn:
	move.w	#0,(Tails_control_counter).w
	move.w	#0,(Tails_respawn_counter).w
	move.w	#2,(Tails_CPU_routine).w	; => TailsCPU_Spawning
	move.b	#$81,obj_control(a0)
	move.b	#2,status(a0)
	move.w	#$4000,x_pos(a0)
	move.w	#0,y_pos(a0)
	move.b	#$20,anim(a0)
	rts
; ===========================================================================
; sub_1BE66:
TailsCPU_CheckDespawn:
	tst.b	render_flags(a0)
	bmi.s	TailsCPU_ResetRespawnTimer
	btst	#3,status(a0)
	beq.s	TailsCPU_TickRespawnTimer

	moveq	#0,d0
	move.b	interact(a0),d0
	lsl.w	#6,d0
	addi.l	#v_player,d0
	movea.l	d0,a3	; a3=object
	move.b	(Tails_interact_ID).w,d0
	cmp.b	(a3),d0
	bne.s	BranchTo_TailsCPU_Despawn

; loc_1BE8C:
TailsCPU_TickRespawnTimer:
	addq.w	#1,(Tails_respawn_counter).w
	cmpi.w	#$12C,(Tails_respawn_counter).w
	bcs.s	TailsCPU_UpdateObjInteract

BranchTo_TailsCPU_Despawn
	bra.w	TailsCPU_Despawn
; ===========================================================================
; loc_1BE9C:
TailsCPU_ResetRespawnTimer:
	move.w	#0,(Tails_respawn_counter).w
; loc_1BEA2:
TailsCPU_UpdateObjInteract:
	moveq	#0,d0
	move.b	interact(a0),d0
	lsl.w	#6,d0
	addi.l	#v_player,d0
	movea.l	d0,a3	; a3=object
	move.b	(a3),(Tails_interact_ID).w
	rts

; ===========================================================================
; AI State where Tails stops, drops, and spindashes in Sonic's direction
; ---------------------------------------------------------------------------
; loc_1BEB8:
TailsCPU_Panic:
	bsr.w	TailsCPU_CheckDespawn
	tst.w	(Tails_control_counter).w
	bne.w	return_1BF36
	tst.w	move_lock(a0)
	bne.s	return_1BF36
	tst.b	spindash_flag(a0)
	bne.s	TailsCPU_Panic_ChargingDash

	tst.w	inertia(a0)
	bne.s	return_1BF36
	bclr	#0,status(a0)
	move.w	x_pos(a0),d0
	sub.w	x_pos(a1),d0
	bcs.s	@targettingisntless
	bset	#0,status(a0)
 @targettingisntless:
	move.w	#$0202,(Ctrl_2_Logical).w
	move.b	($FFFFFE05).w,d0
	andi.b	#$7F,d0
	beq.s	TailsCPU_Panic_ReleaseDash

	cmpi.b	#8,anim(a0)
	bne.s	return_1BF36
	move.w	#$7272,(Ctrl_2_Logical).w
	rts
; ---------------------------------------------------------------------------
; loc_1BF0C:
TailsCPU_Panic_ChargingDash:
	move.w	#$0202,(Ctrl_2_Logical).w
	move.b	($FFFFFE05).w,d0
	andi.b	#$7F,d0
	bne.s	TailsCPU_Panic_RevDash

; loc_1BF1C:
TailsCPU_Panic_ReleaseDash:
	move.w	#0,(Ctrl_2_Logical).w
	move.w	#6,(Tails_CPU_routine).w	; => TailsCPU_Normal
	rts
; ---------------------------------------------------------------------------
; loc_1BF2A:
TailsCPU_Panic_RevDash:
	andi.b	#$1F,d0
	bne.s	return_1BF36
	ori.w	#$7070,(Ctrl_2_Logical).w

return_1BF36:
	rts
; End of function TailsCPU_Control
loc_212C4:
	btst	#2,status(a1)
	beq.s	@notcorrect
	rts
; ---------------------------------------------------------------------------
 @notcorrect:	bset	#2,status(a1)
	move.b	#$E,y_radius(a1)
	move.b	#7,x_radius(a1)
	move.b	#2,anim(a1)
	addq.w	#5,y_pos(a1)
	move.w	#$BE,d0
	jsr	(PlaySound).l
	rts
Tails_RecordPos:
	move.w	(Tails_Pos_Record_Index).w,d0
	lea	(Tails_Pos_Record_Buf).w,a1
	lea	(a1,d0.w),a1
	move.w	x_pos(a0),(a1)+
	move.w	y_pos(a0),(a1)+
	addq.b	#4,(Tails_Pos_Record_Index+1).w

	rts
; ===========================================================================
; ----------------------------------------------------------------------------
; Object 05 - Tails' tails
; ----------------------------------------------------------------------------
; Sprite_1D200:
