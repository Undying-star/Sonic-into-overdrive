; ---------------------------------------------------------------------------
; Tails	when he	gets hurt
; ---------------------------------------------------------------------------

Tails_Hurt:	; Routine 4
		jsr	(SpeedToPos).l
		addi.w	#$30,obVelY(a0)
		btst	#6,obStatus(a0)
		beq.s	loc_1380C_2
		subi.w	#$20,obVelY(a0)

loc_1380C_2:
		bsr.w	Tails_HurtStop
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_RecordPosition
		bsr.w	Sonic_Animate
		bsr.w	Sonic_LoadGfx
		jmp	(DisplaySprite).l

; ---------------------------------------------------------------------------
; Subroutine to	stop Tails falling after he's been hurt
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Tails_HurtStop:
		move.w	(v_limitbtm2).w,d0
		addi.w	#$E0,d0
		cmp.w	obY(a0),d0
		;bcs.w	KillTails
		bsr.w	Sonic_Floor
		btst	#1,obStatus(a0)
		bne.s	locret_13860_2
		moveq	#0,d0
		move.w	d0,obVelY(a0)
		move.w	d0,obVelX(a0)
		move.w	d0,obInertia(a0)
		move.b	#id_Walk,obAnim(a0)
		subq.b	#2,obRoutine(a0)
		move.w	#$78,$30(a0)

locret_13860_2:
		rts	
; End of function Tails_HurtStop

; ---------------------------------------------------------------------------
; Tails	when he	dies
; ---------------------------------------------------------------------------

Tails_Death:	; Routine 6
		jsr	(ObjectFall).l
		bsr.w	Sonic_Animate
		bsr.w	Sonic_LoadGfx
		jmp	(DisplaySprite).l
		rts	
; End of function GameOver

; ---------------------------------------------------------------------------
; Tails	when the level is restarted
; ---------------------------------------------------------------------------

Tails_ResetLevel:; Routine 8
		rts	