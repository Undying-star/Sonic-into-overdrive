; ---------------------------------------------------------------------------
; Subroutine to	animate	Tails's sprites
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Tails_Animate:
	lea	(TailsAniData).l,a1
; loc_1CDCA:
Tails_Animate_Part2:
	moveq	#0,d0
	move.b	anim(a0),d0
	cmp.b	next_anim(a0),d0	; has animation changed?
	beq.s	TAnim_Do		; if not, branch
	move.b	d0,next_anim(a0)	; set to next animation
	move.b	#0,anim_frame(a0)	; reset animation frame
	move.b	#0,anim_frame_duration(a0)	; reset frame duration
	bclr	#5,status(a0)
; loc_1CDEC:
TAnim_Do:
	add.w	d0,d0
	adda.w	(a1,d0.w),a1	; calculate address of appropriate animation script
	move.b	(a1),d0
	bmi.s	TAnim_WalkRunZoom	; if animation is walk/run/roll/jump, branch
	move.b	status(a0),d1
	andi.b	#1,d1
	andi.b	#$FC,render_flags(a0)
	or.b	d1,render_flags(a0)
	subq.b	#1,anim_frame_duration(a0)	; subtract 1 from frame duration
	bpl.s	TAnim_Delay			; if time remains, branch
	move.b	d0,anim_frame_duration(a0)	; load frame duration
; loc_1CE12:
TAnim_Do2:
	moveq	#0,d1
	move.b	anim_frame(a0),d1	; load current frame number
	move.b	1(a1,d1.w),d0		; read sprite number from script
	cmpi.b	#$F0,d0
	bcc.s	TAnim_End_FF		; if animation is complete, branch
; loc_1CE22:
TAnim_Next:
	move.b	d0,mapping_frame(a0)
	addq.b	#1,anim_frame(a0)
; return_1CE2A:
TAnim_Delay:
	rts
; ===========================================================================
; loc_1CE2C:
TAnim_End_FF:
	addq.b	#1,d0			; is the end flag = $FF ?
	bne.s	TAnim_End_FE		; if not, branch
	move.b	#0,anim_frame(a0)	; restart the animation
	move.b	1(a1),d0        	; read sprite number
	bra.s	TAnim_Next
; ===========================================================================
; loc_1CE3C:
TAnim_End_FE:
	addq.b	#1,d0			; is the end flag = $FE ?
	bne.s	TAnim_End_FD		; if not, branch
	move.b	2(a1,d1.w),d0		; read the next byte in the script
	sub.b	d0,anim_frame(a0)	; jump back d0 bytes in the script
	sub.b	d0,d1
	move.b	1(a1,d1.w),d0		; read sprite number
	bra.s	TAnim_Next
; ===========================================================================
; loc_1CE50:
TAnim_End_FD:
	addq.b	#1,d0			; is the end flag = $FD ?
	bne.s	TAnim_End		; if not, branch
	move.b	2(a1,d1.w),anim(a0)	; read next byte, run that animation
; return_1CE5A:
TAnim_End:
	rts
; ===========================================================================
; loc_1CE5C:
TAnim_WalkRunZoom: ; a0=character
	; note: for some reason SAnim_WalkRun doesn't need to do this here...
	subq.b	#1,anim_frame_duration(a0)	; subtract 1 from Tails' frame duration
	bpl.s	TAnim_Delay			; if time remains, branch

	addq.b	#1,d0		; is the end flag = $FF ?
	bne.w	TAnim_Roll	; if not, branch
	moveq	#0,d0		; is animation walking/running?
	move.b	flip_angle(a0),d0	; if not, branch
	bne.w	loc_1CF08
	moveq	#0,d1
	move.b	angle(a0),d0	; get Tails' angle
	bmi.s	@anglenegative_and0
	beq.s	@anglenegative_and0
	subq.b	#1,d0
 @anglenegative_and0:
	move.b	status(a0),d2
	andi.b	#1,d2		; is Tails mirrored horizontally?
	bne.s	@branchifnon0		; if yes, branch
	not.b	d0		; reverse angle
 @branchifnon0:
	addi.b	#$10,d0		; add $10 to angle
	bpl.s	@cappanglevaluestoevened		; if angle is $0-$7F, branch
	moveq	#3,d1
 @cappanglevaluestoevened:
	andi.b	#$FC,render_flags(a0)
	eor.b	d1,d2
	or.b	d2,render_flags(a0)
	btst	#5,status(a0)
	bne.w	loc_1CFB2
	lsr.b	#4,d0		; divide angle by 16
	andi.b	#6,d0		; make it 0, 2, 4 or 6
	move.w	inertia(a0),d2	; get Tails' "speed" for animation purposes
	bpl.s	@speedispostive
	neg.w	d2
 @speedispostive:
	tst.b	status_secondary(a0)
	bpl.w	@statussecisnopowerups
	add.w	d2,d2
 @statussecisnopowerups:
	move.b	d0,d3
	add.b	d3,d3
	add.b	d3,d3
	lea	(TailsAni_Walk).l,a1

	cmpi.w	#$600,d2		; is Tails going pretty fast?
	bcs.s	TAnim_SpeedSelected	; if not, branch
	lea	(TailsAni_Run).l,a1
	move.b	d0,d1
	lsr.b	#1,d1
	add.b	d1,d0
	add.b	d0,d0
	move.b	d0,d3

	cmpi.w	#$700,d2		; is Tails going really fast?
	bcs.s	TAnim_SpeedSelected	; if not, branch
	lea	(TailsAni_HaulAss).l,a1

; loc_1CEEE:
TAnim_SpeedSelected:
	neg.w	d2
	addi.w	#$800,d2
	bpl.s	@positivecappedspeed
	moveq	#0,d2
 @positivecappedspeed:
	lsr.w	#8,d2
	move.b	d2,anim_frame_duration(a0)
	bsr.w	TAnim_Do2
	add.b	d3,mapping_frame(a0)
	rts
; ===========================================================================

loc_1CF08:
	move.b	flip_angle(a0),d0
	moveq	#0,d1
	move.b	status(a0),d2
	andi.b	#1,d2
	bne.s	loc_1CF36
	andi.b	#$FC,render_flags(a0)
	addi.b	#$B,d0
	divu.w	#$16,d0
	addi.b	#$75,d0
	move.b	d0,mapping_frame(a0)
	move.b	#0,anim_frame_duration(a0)
	rts
; ===========================================================================

loc_1CF36:
	andi.b	#$FC,render_flags(a0)
	tst.b	flip_turned(a0)
	beq.s	loc_1CF4E
	ori.b	#1,render_flags(a0)
	addi.b	#$B,d0
	bra.s	loc_1CF5A
; ===========================================================================

loc_1CF4E:
	ori.b	#3,render_flags(a0)
	neg.b	d0
	addi.b	#-$71,d0

loc_1CF5A:
	divu.w	#$16,d0
	addi.b	#$75,d0
	move.b	d0,mapping_frame(a0)
	move.b	#0,anim_frame_duration(a0)
	rts

; ===========================================================================
; loc_1CF6E:
TAnim_Roll:
	addq.b	#1,d0		; is the end flag = $FE ?
	bne.s	TAnim_Push	; if not, branch
	move.w	inertia(a0),d2
	bpl.s	@positivespeedforrolling
	neg.w	d2
 @positivespeedforrolling:
	lea	(TailsAni_Roll2).l,a1
	cmpi.w	#$600,d2
	bcc.s	@doanimation2forroolll
	lea	(TailsAni_Roll).l,a1
 @doanimation2forroolll:
	neg.w	d2
	addi.w	#$400,d2
	bpl.s	@postiverollingspeed
	moveq	#0,d2
 @postiverollingspeed:
	lsr.w	#8,d2
	move.b	d2,anim_frame_duration(a0)
	move.b	status(a0),d1
	andi.b	#1,d1
	andi.b	#$FC,render_flags(a0)
	or.b	d1,render_flags(a0)
	bra.w	TAnim_Do2
; ===========================================================================

loc_1CFB2:
	move.w	inertia(a0),d2
	bmi.s	@speedisnegativebranch
	neg.w	d2
 @speedisnegativebranch:
	addi.w	#$800,d2
	bpl.s	@withingcappedspeed
	moveq	#0,d2
 @withingcappedspeed:
	lsr.w	#6,d2
	move.b	d2,anim_frame_duration(a0)
	lea	(TailsAni_Push).l,a1
	move.b	status(a0),d1
	andi.b	#1,d1
	andi.b	#$FC,render_flags(a0)
	or.b	d1,render_flags(a0)
	bra.w	TAnim_Do2

; ===========================================================================
; loc_1CFE4:
TAnim_Push:
	move.w	x_vel(a2),d1
	move.w	y_vel(a2),d2
	jsr	(CalcAngle).l
	moveq	#0,d1
	move.b	status(a0),d2
	andi.b	#1,d2
	bne.s	loc_1D002
	not.b	d0
	bra.s	loc_1D006
; ===========================================================================

loc_1D002:
	addi.b	#$80,d0

loc_1D006:
	addi.b	#$10,d0
	bpl.s	@branchtotailsangle
	moveq	#3,d1
 @branchtotailsangle:
	andi.b	#$FC,render_flags(a0)
	eor.b	d1,d2
	or.b	d2,render_flags(a0)
	lsr.b	#3,d0
	andi.b	#$C,d0
	move.b	d0,d3
	lea	(Obj_TailsTailsAni_Directional).l,a1
	move.b	#3,anim_frame_duration(a0)
	bsr.w	TAnim_Do2
	add.b	d3,mapping_frame(a0)
	rts