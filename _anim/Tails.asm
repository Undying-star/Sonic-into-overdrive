; ---------------------------------------------------------------------------
; Animation script - Tails
; ---------------------------------------------------------------------------
; off_1D038:
TailsAniData:
TailsAni_Walk_ptr:	dc.w  TailsAni_Walk-TailsAniData	;  0 ;   0
TailsAni_Run_ptr:	dc.w  TailsAni_Run-TailsAniData		;  1 ;   1
TailsAni_Roll_ptr:	dc.w  TailsAni_Roll-TailsAniData	;  2 ;   2
TailsAni_Roll2_ptr:	dc.w  TailsAni_Roll2-TailsAniData	;  3 ;   3
TailsAni_Push_ptr:	dc.w  TailsAni_Push-TailsAniData	;  4 ;   4
TailsAni_Wait_ptr:	dc.w  TailsAni_Wait-TailsAniData	;  5 ;   5
TailsAni_Balance_ptr:	dc.w  TailsAni_Balance-TailsAniData	;  6 ;   6
TailsAni_Death_ptr:	dc.w  TailsAni_Death-TailsAniData	; 24 ; $18
TailsAni_Duck_ptr:	dc.w  TailsAni_Duck-TailsAniData	;  8 ;   8
TailsAni_Spindash_ptr:	dc.w  TailsAni_Spindash-TailsAniData	;  9 ;   9
TailsAni_Dummy1_ptr:	dc.w  TailsAni_Dummy1-TailsAniData	; 10 ;  $A
TailsAni_Dummy2_ptr:	dc.w  TailsAni_Dummy2-TailsAniData	; 11 ;  $B
TailsAni_Dummy3_ptr:	dc.w  TailsAni_Dummy3-TailsAniData	; 12 ;  $C
TailsAni_Stop_ptr:	dc.w  TailsAni_Stop-TailsAniData	; 13 ;  $D
TailsAni_Float_ptr:	dc.w  TailsAni_Float-TailsAniData	; 14 ;  $E
TailsAni_Float2_ptr:	dc.w  TailsAni_Float2-TailsAniData	; 15 ;  $F
TailsAni_Spring_ptr:	dc.w  TailsAni_Spring-TailsAniData	; 16 ; $10
TailsAni_Hang_ptr:	dc.w  TailsAni_Hang-TailsAniData	; 17 ; $11
TailsAni_Blink_ptr:	dc.w  TailsAni_Blink-TailsAniData	; 18 ; $12
TailsAni_Blink2_ptr:	dc.w  TailsAni_Blink2-TailsAniData	; 19 ; $13
TailsAni_Hang2_ptr:	dc.w  TailsAni_Hang2-TailsAniData	; 20 ; $14
TailsAni_Bubble_ptr:	dc.w  TailsAni_Bubble-TailsAniData	; 21 ; $15
TailsAni_DeathBW_ptr:	dc.w  TailsAni_DeathBW-TailsAniData	; 22 ; $16
TailsAni_Drown_ptr:	dc.w  TailsAni_Drown-TailsAniData	; 23 ; $17
TailsAni_LookUp_ptr:	dc.w  TailsAni_LookUp-TailsAniData	;  7 ;   7
TailsAni_Hurt_ptr:	dc.w  TailsAni_Hurt-TailsAniData	; 25 ; $19
TailsAni_Hurt2_ptr:	dc.w  TailsAni_Hurt2-TailsAniData	; 26 ; $1A
TailsAni_Slide_ptr:	dc.w  TailsAni_Slide-TailsAniData	; 27 ; $1B
TailsAni_Blank_ptr:	dc.w  TailsAni_Blank-TailsAniData	; 28 ; $1C
TailsAni_Dummy4_ptr:	dc.w  TailsAni_Dummy4-TailsAniData	; 29 ; $1D
TailsAni_Dummy5_ptr:	dc.w  TailsAni_Dummy5-TailsAniData	; 30 ; $1E
TailsAni_HaulAss_ptr:	dc.w  TailsAni_HaulAss-TailsAniData	; 31 ; $1F
TailsAni_Fly_ptr:	dc.w  TailsAni_Fly-TailsAniData		; 32 ; $20

TailsAni_Walk:	dc.b $FF,$10,$11,$12,$13,$14,$15, $E, $F,$FF
	even
TailsAni_Run:	dc.b $FF,$2E,$2F,$30,$31,$FF,$FF,$FF,$FF,$FF
	even
TailsAni_Roll:	dc.b   1,$48,$47,$46,$FF
	even
TailsAni_Roll2:	dc.b   1,$48,$47,$46,$FF
	even
TailsAni_Push:	dc.b $FD,$63,$64,$65,$66,$FF,$FF,$FF,$FF,$FF
	even
TailsAni_Wait:	dc.b   7,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  3,  2,  1,  1,  1
		dc.b   1,  1,  1,  1,  1,  3,  2,  1,  1,  1,  1,  1,  1,  1,  1,  1
		dc.b   5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5
		dc.b   6,  7,  8,  7,  8,  7,  8,  7,  8,  7,  8,  6,$FE,$1C
	even
TailsAni_Balance:	dc.b   9,$69,$69,$6A,$6A,$69,$69,$6A,$6A,$69,$69,$6A,$6A,$69,$69,$6A
			dc.b $6A,$69,$69,$6A,$6A,$69,$6A,$FF
	even
TailsAni_Death:		dc.b   3,$5D,$FF
	even
TailsAni_Duck:		dc.b $3F,$5B,$FF
	even
TailsAni_Spindash:	dc.b   0,$60,$61,$62,$FF
	even
TailsAni_Dummy1:	dc.b $3F,$82,$FF
	even
TailsAni_Dummy2:	dc.b   7,  8,  8,  9,$FD,  5
	even
TailsAni_Dummy3:	dc.b   7,  9,$FD,  5
	even
TailsAni_Stop:		dc.b   7,$67,$68,$67,$68,$FD,  0
	even
TailsAni_Float:		dc.b   9,$6E,$73,$FF
	even
TailsAni_Float2:	dc.b   9,$6E,$6F,$70,$71,$72,$FF
	even
TailsAni_Spring:	dc.b   3,$59,$5A,$59,$5A,$59,$5A,$59,$5A,$59,$5A,$59,$5A,$FD,  0
	even
TailsAni_Hang:		dc.b   5,$6C,$6D,$FF
	even
TailsAni_Blink:		dc.b  $F,  1,  2,  3,$FE,  1
	even
TailsAni_Blink2:	dc.b  $F,  1,  2,$FE,  1
	even
TailsAni_Hang2:		dc.b $13,$85,$86,$FF
	even
TailsAni_Bubble:	dc.b  $B,$74,$74,$12,$13,$FD,  0
	even
TailsAni_DeathBW:	dc.b $20,$5D,$FF
	even
TailsAni_Drown:		dc.b $2F,$5D,$FF
	even
TailsAni_LookUp:	dc.b $3F,  4,$FF
	even
TailsAni_Hurt:		dc.b   3,$5D,$FF
	even
TailsAni_Hurt2:		dc.b   3,$5C,$FF
	even
TailsAni_Slide:		dc.b   9,$6B,$5C,$FF
	even
TailsAni_Blank:		dc.b $77,  0,$FD,  0
	even
TailsAni_Dummy4:	dc.b   3,  1,  2,  3,  4,  5,  6,  7,  8,$FF
	even
TailsAni_Dummy5:	dc.b   3,  1,  2,  3,  4,  5,  6,  7,  8,$FF
	even
TailsAni_HaulAss:	dc.b $FF,$32,$33,$FF
			dc.b $FF,$FF,$FF,$FF,$FF,$FF
	even
TailsAni_Fly:		dc.b   1,$5E,$5F,$FF
	even
