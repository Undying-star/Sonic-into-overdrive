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
		move.w	#$780,obGfx(a0)
		move.b	#2,obPriority(a0)
		move.b	#$18,obActWid(a0)
		move.b	#4,obRender(a0)

Tails_Control:	; Routine 2
		move.w	(v_jpadhold1).w,(v_jpadhold2).w ; enable joypad control
		moveq	#0,d0
		move.b	obStatus(a0),d0
		andi.w	#6,d0
		move.w	Tails_Modes(pc,d0.w),d1
		jsr	Tails_Modes(pc,d1.w)

loc_12C7E_2:
		bsr.s	Tails_Display
		bsr.w	Tails_Water
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
		bsr.w	Sonic_LoadGfx
		rts	
; ===========================================================================
Tails_Modes:	dc.w Tails_MdNormal-Tails_Modes
		dc.w Tails_MdJump-Tails_Modes
		dc.w Tails_MdRoll-Tails_Modes
		dc.w Tails_MdJump2-Tails_Modes

; ===========================================================================
Tails_Display:
        jsr   Sonic_Display
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Modes	for controlling	Tails
; ---------------------------------------------------------------------------

Tails_MdNormal:
		bsr.w	Sonic_Jump
		bsr.w	Sonic_SlopeResist
		bsr.w	Sonic_Move
		bsr.w	Sonic_Roll
		bsr.w	Sonic_LevelBound
		jsr	(SpeedToPos).l
		bsr.w	Sonic_AnglePos
		bsr.w	Sonic_SlopeRepel
		rts	
; ===========================================================================

Tails_MdJump:
		bsr.w	Sonic_JumpHeight
		bsr.w	Sonic_JumpDirection
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
		bsr.w	Sonic_Jump
		bsr.w	Sonic_RollRepel
		bsr.w	Sonic_RollSpeed
		bsr.w	Sonic_LevelBound
		jsr	(SpeedToPos).l
		bsr.w	Sonic_AnglePos
		bsr.w	Sonic_SlopeRepel
		rts	
; ===========================================================================

Tails_MdJump2:
		bsr.w	Sonic_JumpHeight
		bsr.w	Sonic_JumpDirection
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