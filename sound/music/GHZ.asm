; =============================================================================================
; Project Name:		GHZ3
; Created:		5th August 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

GHZ3_Header:
;	Voice Pointer	location
	smpsHeaderVoice	GHZ3_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$0F

;	DAC Pointer	location
	smpsHeaderDAC	GHZ3_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	GHZ3_FM1,	smpsPitch00,	$08
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	GHZ3_FM2,	smpsPitch00,	$07
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	GHZ3_FM3,	smpsPitch00,	$08
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	GHZ3_FM4,	smpsPitch00,	$09
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	GHZ3_FM5,	smpsPitch00,	$09
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	GHZ3_PSG1,	smpsPitch00,	$09,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	GHZ3_PSG2,	smpsPitch00,	$09,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	GHZ3_PSG3,	smpsPitch00,	$00,	$02

; DAC Data
GHZ3_DAC:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		dKick,	$12,	$30,	$1E,	$06,	dHiTimpani,	$0C,	dMidTimpani
	dc.b		$06,	dHiTimpani,	$0C,	dMidTimpani,	dHiTimpani,	dKick,	dHiTimpani,	$06
	dc.b		$06,	dSnare,	$0C
GHZ3_Loop01:
	dc.b		dKick,	$18,	dSnare
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$0F,	GHZ3_Loop01
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	$06,	$06
GHZ3_Loop02:
	dc.b		dKick,	$18,	dSnare
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$07,	GHZ3_Loop02
	dc.b		dKick,	$0C,	dSnare,	$18,	$0C
GHZ3_Loop03:
	dc.b		dKick,	$18,	dSnare
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$07,	GHZ3_Loop03
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	$06,	$06
GHZ3_Jump01:
	dc.b		dKick,	$18,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		$0C,	dSnare,	dSnare,	$18,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	$0C,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		$18,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	$0C
	dc.b		dSnare,	dSnare,	$18,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	$0C,	dSnare,	dKick,	dSnare,	$06,	$06
GHZ3_Loop04:
	dc.b		dKick,	$18,	dSnare
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$0E,	GHZ3_Loop04
	dc.b		dHiTimpani,	$06,	$0C,	$06,	dSnare,	$0C,	$0C,	dHiTimpani
	dc.b		dMidTimpani,	dSnare,	$06,	$06,	$06,	$06
GHZ3_Loop05:
	dc.b		dKick,	$18,	dSnare
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$0F,	GHZ3_Loop05
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	$06,	$06
GHZ3_Loop06:
	dc.b		dKick,	$18,	dSnare
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$07,	GHZ3_Loop06
	dc.b		dKick,	$0C,	dSnare,	$18,	$0C
GHZ3_Loop07:
	dc.b		dKick,	$18,	dSnare
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$07,	GHZ3_Loop07
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	$06,	$06
;	Jump�To	�	location
	smpsJump	GHZ3_Jump01

; FM1 Data
GHZ3_FM1:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nBb2,	$12,	nC3,	$3C,	nG3,	$06,	nE3,	nC3
	dc.b		nA2,	$0C,	nA3,	$06,	$06,	nA2,	$0C,	nA3
	dc.b		$06,	$06,	nBb2,	$0C,	nBb3,	$06,	$06,	nBb2
	dc.b		$0C,	nBb3,	$06,	$06
GHZ3_Loop08:
	dc.b		nC3,	$0C,	nC4,	$06,	nRst,	nC4,	$0C,	nG3
	dc.b		nD4,	$12,	nC4,	$0C,	nG3,	$06,	nA3,	nC4
	dc.b		nD3,	$0C,	nD4,	$06,	nRst,	nD4,	$0C,	nA3
	dc.b		nE4,	$12,	nD4,	$0C,	nA3,	$06,	nB3,	nD4
	dc.b		nBb2,	$0C,	nBb3,	$06,	nRst,	nBb3,	$0C,	nF3
	dc.b		nC4,	$12,	nBb3,	$0C,	nF3,	$06,	nG3,	nBb3
	dc.b		nA2,	$0C,	nA3,	$06,	nA2,	nB2,	$0C,	nB3
	dc.b		$06,	nB2,	nC3,	$0C,	nC4,	$06,	nC3,	nA2
	dc.b		$0C,	nA3,	$06,	nA2
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop08
GHZ3_Loop09:
	dc.b		nF3,	$0C,	nF4,	nC3,	nC4,	nF3,	nF4,	nC3
	dc.b		nC4,	nE3,	nE4,	nB2,	nB3,	nE3,	nE4,	nB2
	dc.b		nB3
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$03,	GHZ3_Loop09
	dc.b		nD3,	nD4,	nA2,	nA3,	nD3,	nD4,	nA2,	nA3
	dc.b		nC3,	nC4,	nG2,	nG3,	nC4,	nF2,	nG2,	nA2
GHZ3_Loop0A:
	dc.b		nBb2,	nBb3,	nF2,	nF3
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop0A
GHZ3_Loop0B:
	dc.b		nA2,	nA3,	nE2,	nE3
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop0B
GHZ3_Loop0C:
	dc.b		nAb2,	nAb3,	nEb2,	nEb3
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop0C
	dc.b		nG2,	nG3,	nD2,	nD3,	nG2,	nG3,	nD2,	nD3
	dc.b		nG3,	$06,	$0C,	$06,	nA3,	$0C,	nB3,	nD4
	dc.b		nC4,	nA3,	$06,	nG3,	nD3,	$0C,	nC3
GHZ3_Loop0D:
	dc.b		nC4,	$06,	nRst,	nC4,	$0C,	nG3,	nD4,	$12
	dc.b		nC4,	$0C,	nG3,	$06,	nA3,	nC4,	nD3,	$0C
	dc.b		nD4,	$06,	nRst,	nD4,	$0C,	nA3,	nE4,	$12
	dc.b		nD4,	$0C,	nA3,	$06,	nB3,	nD4,	nBb2,	$0C
	dc.b		nBb3,	$06,	nRst,	nBb3,	$0C,	nF3,	nC4,	$12
	dc.b		nBb3,	$0C,	nF3,	$06,	nG3,	nBb3,	nA2,	$0C
	dc.b		nA3,	$06,	nA2,	nB2,	$0C,	nB3,	$06,	nB2
	dc.b		nC3,	$0C,	nC4,	$06,	nC3,	nA2,	$0C,	nA3
	dc.b		$06,	nA2,	nC3,	$0C
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$03,	GHZ3_Loop0D
	dc.b		nC4,	$06,	nRst,	nC4,	$0C,	nG3,	nD4,	$12
	dc.b		nC4,	$0C,	nG3,	$06,	nA3,	nC4,	nD3,	$0C
	dc.b		nD4,	$06,	nRst,	nD4,	$0C,	nA3,	nE4,	$12
	dc.b		nD4,	$0C,	nA3,	$06,	nB3,	nD4,	nBb2,	$0C
	dc.b		nBb3,	$06,	nRst,	nBb3,	$0C,	nF3,	nC4,	$12
	dc.b		nBb3,	$0C,	nF3,	$06,	nG3,	nBb3,	nA2,	$0C
	dc.b		nA3,	$06,	nA2,	nB2,	$0C,	nB3,	$06,	nB2
	dc.b		nC3,	$0C,	nC4,	$06,	nC3,	nA2,	$0C,	nA3
	dc.b		$06,	nA2
;	Jump�To	�	location
	smpsJump	GHZ3_Loop09

; FM2 Data
GHZ3_FM2:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		smpsModOff,	smpsModOff,	smpsModOff,	smpsModOff,	smpsModOff,	nD5,	$0C,	nRst
	dc.b		$06,	nE5,	$4D,	nRst,	$01,	nC5,	$30,	nD5
	dc.b		nRst,	$0C,	nG5,	$06,	nRst,	nA5,	$07,	nRst
	dc.b		$05,	nG5,	$06,	nRst,	nC6,	nRst,	nC6,	$07
	dc.b		nRst,	$05,	nD6,	$06,	nE6,	nRst,	$18,	nD6
	dc.b		nA5,	$06,	nRst,	nC6,	nC6,	nRst,	nD6,	$0C
	dc.b		nRst,	$30,	nBb5,	$06,	nC6,	nBb5,	nD6,	nRst
	dc.b		nC6,	nRst,	nBb5,	nC6,	nRst,	nA5,	$4D,	nRst
	dc.b		$25,	nG5,	$06,	nRst,	nA5,	$07,	nRst,	$05
	dc.b		nG5,	$06,	nRst,	nC6,	nRst,	nC6,	$07,	nRst
	dc.b		$05,	nD6,	$06,	nE6,	nRst,	$18,	nD6,	nA5
	dc.b		$06,	nRst,	nC6,	nC6,	nRst,	nD6,	$0C,	nRst
	dc.b		$30,	nBb5,	$06,	nC6,	nBb5,	nD6,	nRst,	nC6
	dc.b		nRst,	nBb5,	nC6,	nRst,	nA5,	$4D,	nRst,	$19
;	Set�FM�Voice	#
	smpsFMvoice	$03
;	Set�Modulation	wait	speed	change	step
	smpsModSet	$00,	$01,	$04,	$04
	dc.b		$0C,	nG4,	$06,	nRst,	nG4,	$0C,	nA4,	$06
	dc.b		nRst,	nC5,	$05,	nRst,	$07,	nC5,	$0C,	nD5
	dc.b		nC5,	nE5,	nD5,	$18,	nA4,	$3B,	nRst,	$0D
	dc.b		nBb4,	$06,	nRst,	nBb4,	$0C,	nC5,	nD5,	nC5
	dc.b		nBb4,	$06,	nC5,	$12,	nA4,	$60,	nRst,	$0C
	dc.b		nG4,	$18,	nA4,	$06,	nRst,	nC5,	$05,	nRst
	dc.b		$07,	nC5,	$0C,	nD5,	nC5,	nE5,	nD5,	$18
	dc.b		nA4,	$3B,	nRst,	$0D,	nBb4,	$06,	nRst,	nBb4
	dc.b		$0C,	nC5,	nD5,	nC5,	nBb4,	$06,	nC5,	$12
	dc.b		nA4,	$60
GHZ3_Jump02:
	dc.b		nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$04
	dc.b		nC5,	$0C,	nA4,	$18,	nC5,	$0C,	nB4,	$18
	dc.b		nC5,	$0C,	nB4,	$12,	nRst,	$06,	nG4,	$3C
	dc.b		nRst,	$0C,	nA4,	nE5,	nD5,	$18,	nC5,	$0C
	dc.b		nB4,	$18,	nC5,	$0C,	nB4,	$12,	nRst,	$06
	dc.b		nG4,	$3C,	nRst,	$18,	nC5,	$0C,	nA4,	$18
	dc.b		nC5,	$0C,	nB4,	$18,	nC5,	$0C,	nB4,	$12
	dc.b		nRst,	$06,	nG4,	$3C,	nRst,	$0C,	nA4,	nA4
	dc.b		nF4,	$18,	nA4,	$0C,	nG4,	$18,	nA4,	$0C
	dc.b		nG4,	$12,	nRst,	$06,	nC4,	$24,	nBb4,	nA4
	dc.b		nG4,	nF4,	nE4,	$0C,	nC4,	nD4,	nE4,	nA3
	dc.b		$24,	nB3,	nC4,	nD4,	nE4,	$0C,	nC4,	nA4
	dc.b		nE4,	nAb4,	$24,	nG4,	nF4,	nEb4,	nD4,	$0C
	dc.b		nC4,	nEb4,	nD4,	$30,	nG4,	$24,	nB4,	nG4
	dc.b		$0C,	nB4,	nD4,	nD5,	nG4,	nB4,	nD4
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		smpsModOff,	nRst,	nG5,	$06,	nRst,	nA5,	$07,	nRst
	dc.b		$05,	nG5,	$06,	nRst,	nC6,	nRst,	nC6,	$07
	dc.b		nRst,	$05,	nD6,	$06,	nE6,	nRst,	$18,	nD6
	dc.b		nA5,	$06,	nRst,	nC6,	nC6,	nRst,	nD6,	$0C
	dc.b		nRst,	$30,	nBb5,	$06,	nC6,	nBb5,	nD6,	nRst
	dc.b		nC6,	nRst,	nBb5,	nC6,	nRst,	nA5,	$4D,	nRst
	dc.b		$25,	nG5,	$06,	nRst,	nA5,	$07,	nRst,	$05
	dc.b		nG5,	$06,	nRst,	nC6,	nRst,	nC6,	$07,	nRst
	dc.b		$05,	nD6,	$06,	nE6,	nRst,	$18,	nD6,	nA5
	dc.b		$06,	nRst,	nC6,	nC6,	nRst,	nD6,	$0C,	nRst
	dc.b		$30,	nBb5,	$06,	nC6,	nBb5,	nD6,	nRst,	nC6
	dc.b		nRst,	nBb5,	nC6,	nRst,	nA5,	$4D,	nRst,	$19
;	Set�FM�Voice	#
	smpsFMvoice	$03
;	Set�Modulation	wait	speed	change	step
	smpsModSet	$00,	$01,	$04,	$04
	dc.b		$0C,	nG4,	$06,	nRst,	nG4,	$0C,	nA4,	$06
	dc.b		nRst,	nC5,	$05,	nRst,	$07,	nC5,	$0C,	nD5
	dc.b		nC5,	nE5,	nD5,	$18,	nA4,	$3B,	nRst,	$0D
	dc.b		nBb4,	$06,	nRst,	nBb4,	$0C,	nC5,	nD5,	nC5
	dc.b		nBb4,	$06,	nC5,	$12,	nA4,	$60,	nRst,	$0C
	dc.b		nG4,	$18,	nA4,	$06,	nRst,	nC5,	$05,	nRst
	dc.b		$07,	nC5,	$0C,	nD5,	nC5,	nE5,	nD5,	$18
	dc.b		nA4,	$3B,	nRst,	$0D,	nBb4,	$06,	nRst,	nBb4
	dc.b		$0C,	nC5,	nD5,	nC5,	nBb4,	$06,	nC5,	$12
	dc.b		nA4,	$60
;	Jump�To	�	location
	smpsJump	GHZ3_Jump02

; FM3 Data
GHZ3_FM3:
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nF5,	$0C,	nRst,	$06,	nG5,	$4D,	nRst,	$01
	dc.b		nE5,	$30,	nF5
;	Panning	�	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nRst,	$0C
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nG4,	$06,	nRst,	nA4,	$07,	nRst,	$05,	nG4
	dc.b		$06,	nRst,	nC5,	nRst,	nC5,	$07,	nRst,	$05
	dc.b		nD5,	$06,	nE5,	nRst,	$18,	nD5,	nA4,	$06
	dc.b		nRst,	nC5,	nC5,	nRst,	nD5,	$0C,	nRst,	$30
	dc.b		nBb4,	$06,	nC5,	nBb4,	nD5,	nRst,	nC5,	nRst
	dc.b		nBb4,	nC5,	nRst,	nA4,	$4D,	nRst,	$25,	nG4
	dc.b		$06,	nRst,	nA4,	$07,	nRst,	$05,	nG4,	$06
	dc.b		nRst,	nC5,	nRst,	nC5,	$07,	nRst,	$05,	nD5
	dc.b		$06,	nE5,	nRst,	$18,	nD5,	nA4,	$06,	nRst
	dc.b		nC5,	nC5,	nRst,	nD5,	$0C,	nRst,	$30,	nBb4
	dc.b		$06,	nC5,	nBb4,	nD5,	nRst,	nC5,	nRst,	nBb4
	dc.b		nC5,	nRst,	nA4,	$4D,	nRst,	$19
;	Set�FM�Voice	#
	smpsFMvoice	$03
	dc.b		$18
;	Alter�Volume	value
	smpsAlterVol	$0F
	dc.b		nG4,	$06,	nRst,	nG4,	$0C,	nA4,	$06,	nRst
	dc.b		nC5,	$05,	nRst,	$07,	nC5,	$0C,	nD5,	nC5
	dc.b		nE5,	nD5,	$18,	nA4,	$3B,	nRst,	$0D,	nBb4
	dc.b		$06,	nRst,	nBb4,	$0C,	nC5,	nD5,	nC5,	nBb4
	dc.b		$06,	nC5,	$12,	nA4,	$1E,	nRst,	$06
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Alter�Volume	value
	smpsAlterVol	$F1
	dc.b		nA4,	$05,	nRst,	$01,	nE5,	$04,	nRst,	$08
	dc.b		nE5,	$04,	nRst,	$02,	nD5,	$0C,	nC5
;	Set�FM�Voice	#
	smpsFMvoice	$03
	dc.b		nRst,	$18
;	Alter�Volume	value
	smpsAlterVol	$0F
	dc.b		nG4,	nA4,	$06,	nRst,	nC5,	$05,	nRst,	$07
	dc.b		nC5,	$0C,	nD5,	nC5,	nE5,	nD5,	$18,	nA4
	dc.b		$3B,	nRst,	$0D,	nBb4,	$06,	nRst,	nBb4,	$0C
	dc.b		nC5,	nD5,	nC5,	nBb4,	$06,	nC5,	$12
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Alter�Volume	value
	smpsAlterVol	$F1
	dc.b		nA4,	$0C,	nC5,	$06,	nRst,	nA4,	nRst,	nD5
	dc.b		$12,	nC5,	$06,	nRst,	$18
GHZ3_Jump03:
	dc.b		nRst,	$42
;	Set�FM�Voice	#
	smpsFMvoice	$04
;	Alter�Volume	value
	smpsAlterVol	$0C
	dc.b		nC5,	$0C,	nA4,	$18,	nC5,	$0C,	nB4,	$18
	dc.b		nC5,	$0C,	nB4,	$12,	nRst,	$06,	nG4,	$3C
	dc.b		nRst,	$0C,	nA4,	nE5,	nD5,	$18,	nC5,	$0C
	dc.b		nB4,	$18,	nC5,	$0C,	nB4,	$12,	nRst,	$06
	dc.b		nG4,	$3C,	nRst,	$18,	nC5,	$0C,	nA4,	$18
	dc.b		nC5,	$0C,	nB4,	$18,	nC5,	$0C,	nB4,	$12
	dc.b		nRst,	$06,	nG4,	$3C,	nRst,	$0C,	nA4,	nA4
	dc.b		nF4,	$18,	nA4,	$0C,	nG4,	$18,	nA4,	$0C
	dc.b		nG4,	$12,	nRst,	$06,	nC4,	$24,	nBb4,	nA4
	dc.b		nG4,	nF4,	nE4,	$0C,	nC4,	nD4,	nE4,	nA3
	dc.b		$24,	nB3,	nC4,	nD4,	nE4,	$0C,	nC4,	nA4
	dc.b		nE4,	nAb4,	$24,	nG4,	nF4,	nEb4,	nD4,	$0C
	dc.b		nC4,	nEb4,	nD4,	$30,	nG4,	$24,	nB4,	nG4
	dc.b		$0C,	nB4,	nD4,	nD5,	nG4,	nB4,	$06
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nRst,	$0C
;	Alter�Volume	value
	smpsAlterVol	$F4
	dc.b		nG4,	$06,	nRst,	nA4,	$07,	nRst,	$05,	nG4
	dc.b		$06,	nRst,	nC5,	nRst,	nC5,	$07,	nRst,	$05
	dc.b		nD5,	$06,	nE5,	nRst,	$18,	nD5,	nA4,	$06
	dc.b		nRst,	nC5,	nC5,	nRst,	nD5,	$0C,	nRst,	$30
	dc.b		nBb4,	$06,	nC5,	nBb4,	nD5,	nRst,	nC5,	nRst
	dc.b		nBb4,	nC5,	nRst,	nA4,	$4D,	nRst,	$25,	nG4
	dc.b		$06,	nRst,	nA4,	$07,	nRst,	$05,	nG4,	$06
	dc.b		nRst,	nC5,	nRst,	nC5,	$07,	nRst,	$05,	nD5
	dc.b		$06,	nE5,	nRst,	$18,	nD5,	nA4,	$06,	nRst
	dc.b		nC5,	nC5,	nRst,	nD5,	$0C,	nRst,	$30,	nBb4
	dc.b		$06,	nC5,	nBb4,	nD5,	nRst,	nC5,	nRst,	nBb4
	dc.b		nC5,	nRst,	nA4,	$4D,	nRst,	$19
;	Set�FM�Voice	#
	smpsFMvoice	$03
	dc.b		$18
;	Alter�Volume	value
	smpsAlterVol	$0F
	dc.b		nG4,	$06,	nRst,	nG4,	$0C,	nA4,	$06,	nRst
	dc.b		nC5,	$05,	nRst,	$07,	nC5,	$0C,	nD5,	nC5
	dc.b		nE5,	nD5,	$18,	nA4,	$3B,	nRst,	$0D,	nBb4
	dc.b		$06,	nRst,	nBb4,	$0C,	nC5,	nD5,	nC5,	nBb4
	dc.b		$06,	nC5,	$12,	nA4,	$1E,	nRst,	$06
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Alter�Volume	value
	smpsAlterVol	$F1
	dc.b		nA4,	$05,	nRst,	$01,	nE5,	$04,	nRst,	$08
	dc.b		nE5,	$04,	nRst,	$02,	nD5,	$0C,	nC5
;	Set�FM�Voice	#
	smpsFMvoice	$03
	dc.b		nRst,	$18
;	Alter�Volume	value
	smpsAlterVol	$0F
	dc.b		nG4,	nA4,	$06,	nRst,	nC5,	$05,	nRst,	$07
	dc.b		nC5,	$0C,	nD5,	nC5,	nE5,	nD5,	$18,	nA4
	dc.b		$3B,	nRst,	$0D,	nBb4,	$06,	nRst,	nBb4,	$0C
	dc.b		nC5,	nD5,	nC5,	nBb4,	$06,	nC5,	$12
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Alter�Volume	value
	smpsAlterVol	$F1
	dc.b		nA4,	$0C,	nC5,	$06,	nRst,	nA4,	nRst,	nD5
	dc.b		$12,	nC5,	$06,	nRst,	$18
;	Jump�To	�	location
	smpsJump	GHZ3_Jump03

; FM4 Data
GHZ3_FM4:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nF4,	$0B,	nRst,	$07,	nG4,	$4D,	nRst,	$01
	dc.b		nE4,	$30,	nF4
;	Set�FM�Voice	#
	smpsFMvoice	$02
GHZ3_Loop0E:
	dc.b		nE4,	$60,	nFs4,	nD4,	nC4
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop0E
GHZ3_Jump04:
;	Panning	�	direction	amsfms
	smpsPan		panRight,	$00
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nA1,	$60,	nB1,	nA1,	nB1,	$18,	nD2,	nB1
	dc.b		nG1,	nA1,	$60,	nB1,	nA1,	nG1,	$18,	nA1
	dc.b		nB1,	nC2,	nBb1,	$7F,	smpsNoAttack,	$41,	nA1,	$7F
	dc.b		smpsNoAttack,	$41,	nAb1,	$7F,	smpsNoAttack,	$41,	nG1,	$7F
	dc.b		smpsNoAttack,	$41
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter�Volume	value
	smpsAlterVol	$04
GHZ3_Loop0F:
	dc.b		nE4,	$60,	nFs4,	nD4,	nC4
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop0F
;	Jump�To	�	location
	smpsJump	GHZ3_Jump04

; FM5 Data
GHZ3_FM5:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$03
	dc.b		nRst,	$30,	nB5,	$06,	nG5,	nE5,	nC5
GHZ3_Loop10:
	dc.b		nG5,	nE5,	nC5,	nA4
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$03,	GHZ3_Loop10
	dc.b		nA5,	nF5,	nD5,	nBb4,	nA5,	nF5,	nD5,	nBb4
;	Set�FM�Voice	#
	smpsFMvoice	$01
GHZ3_Loop11:
	dc.b		nG4,	$60,	nA4,	nF4,	nE4
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop11
GHZ3_Jump05:
;	Set�FM�Voice	#
	smpsFMvoice	$02
;	Panning	�	direction	amsfms
	smpsPan		panLeft,	$00
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nE2,	$60,	nD2,	$3C,	nG3,	$06,	nA3,	nC4
	dc.b		$0C,	nA3,	nE2,	$60,	nFs2,	$18,	nA2,	nFs2
	dc.b		$0C,	nG3,	$06,	nA3,	nC4,	$0C,	nA3,	nE2
	dc.b		$60,	nD2,	$3C,	nG3,	$06,	nA3,	nC4,	$0C
	dc.b		nA3,	nE2,	$60,	nD2,	$18,	nE2,	nFs2,	nG2
	dc.b		nD2,	$7F,	smpsNoAttack,	$41,	nC2,	$7F,	smpsNoAttack,	$41
	dc.b		$7F,	smpsNoAttack,	$41,	nB1,	$7F,	smpsNoAttack,	$41
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Alter�Volume	value
	smpsAlterVol	$04
GHZ3_Loop12:
	dc.b		nG4,	$60,	nA4,	nF4,	nE4
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop12
;	Jump�To	�	location
	smpsJump	GHZ3_Jump05

; PSG1 Data
GHZ3_PSG1:
	dc.b		nRst,	$30,	nB3,	$06,	nG3,	nE3,	nC3
GHZ3_Loop13:
	dc.b		nG3,	nE3,	nC3,	nA2
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$03,	GHZ3_Loop13
	dc.b		nA3,	nF3,	nD3,	nBb2,	nA3,	nF3,	nD3,	nBb2
GHZ3_Loop14:
	dc.b		nG3,	$60,	nA3,	nF3,	nE3
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop14
GHZ3_Jump06:
	dc.b		nRst,	$30,	nC3,	$0C,	nA2,	$18,	nC3,	$0C
	dc.b		nB2,	$18,	nC3,	$0C,	nB2,	$12,	nRst,	$06
	dc.b		nG2,	$3C,	nRst,	$0C,	nA2,	nE3,	nD3,	$18
	dc.b		nC3,	$0C,	nB2,	$18,	nC3,	$0C,	nB2,	$12
	dc.b		nRst,	$06,	nG2,	$3C,	nRst,	$18,	nC3,	$0C
	dc.b		nA2,	$18,	nC3,	$0C,	nB2,	$18,	nC3,	$0C
	dc.b		nB2,	$12,	nRst,	$06,	nG2,	$3C,	nRst,	$0C
	dc.b		nA2,	nA2,	nF2,	$18,	nA2,	$0C,	nG2,	$18
	dc.b		nA2,	$0C,	nG2,	$12,	nRst,	$06,	nC2,	$24
GHZ3_Loop15:
	dc.b		nA1,	$04,	nRst,	$02,	nA1,	$04,	nRst,	$02
	dc.b		nF1,	$04,	nRst,	$02,	nF1,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nF1,	$04,	nRst,	$02,	nF1,	$04,	nRst,	$02
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop15
GHZ3_Loop16:
	dc.b		nG1,	$04,	nRst,	$02,	nG1,	$04,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	$04,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nE1,	$04,	nRst,	$02
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop16
GHZ3_Loop17:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop17
	dc.b		nG1,	$04,	nRst,	$02,	nG1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nG1,	$04,	nRst,	$02,	nG1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$0E
	dc.b		nE2,	$0C,	nF2,	nE2,	nG2,	nB1,	nD2,	nB1
GHZ3_Loop18:
	dc.b		nG3,	$60,	nA3,	nF3,	nE3
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop18
;	Jump�To	�	location
	smpsJump	GHZ3_Jump06

; PSG2 Data
GHZ3_PSG2:
	dc.b		nRst,	$7F,	$41
GHZ3_Loop19:
	dc.b		nE2,	$60,	nFs2,	nD2,	nC2
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop19
GHZ3_Jump07:
	dc.b		nRst,	$30,	nE2,	$0C,	nC2,	$18,	nE2,	$0C
	dc.b		nD2,	$18,	nE2,	$0C,	nD2,	$12,	nRst,	$06
	dc.b		nB1,	$3C,	nRst,	$0C,	nC2,	nG2,	nF2,	$18
	dc.b		nE2,	$0C,	nD2,	$18,	nE2,	$0C,	nD2,	$12
	dc.b		nRst,	$06,	nB1,	$3C,	nRst,	$18,	nE2,	$0C
	dc.b		nC2,	$18,	nE2,	$0C,	nD2,	$18,	nE2,	$0C
	dc.b		nD2,	$12,	nRst,	$06,	nB1,	$3C,	nRst,	$0C
	dc.b		nC2,	nC2,	nA1,	$18,	nC2,	$0C,	nB1,	$18
	dc.b		nC2,	$0C,	nB1,	$12,	nRst,	$06,	nG1,	$24
	dc.b		nRst,	$12
;	Set�Volume	value
	smpsSetVol	$03
GHZ3_Loop1A:
	dc.b		nA1,	$04,	nRst,	$02,	nA1,	$04,	nRst,	$02
	dc.b		nF1,	$04,	nRst,	$02,	nF1,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nF1,	$04,	nRst,	$02,	nF1,	$04,	nRst,	$02
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop1A
GHZ3_Loop1B:
	dc.b		nG1,	$04,	nRst,	$02,	nG1,	$04,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	$04,	nRst,	$02
	dc.b		nE1,	$04,	nRst,	$02,	nE1,	$04,	nRst,	$02
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop1B
GHZ3_Loop1C:
	dc.b		nAb1,	$04,	nRst,	$02,	nAb1,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
	dc.b		nC2,	$04,	nRst,	$02,	nC2,	$04,	nRst,	$02
	dc.b		nEb1,	$04,	nRst,	$02,	nEb1,	$04,	nRst,	$02
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop1C
	dc.b		nG1,	$04,	nRst,	$02,	nG1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nG1,	$04,	nRst,	$02,	nG1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$02
	dc.b		nB1,	$04,	nRst,	$02,	nB1,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02
;	Set�Volume	value
	smpsSetVol	$06
	dc.b		nE3,	$0C,	nF3,	nE3,	nG3,	nB2,	nD3,	nB2
GHZ3_Loop1D:
	dc.b		nE2,	$60,	nFs2,	nD2,	nC2
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$04,	GHZ3_Loop1D
;	Jump�To	�	location
	smpsJump	GHZ3_Jump07

; PSG3 Data
GHZ3_PSG3:
;	Set�PSG�WvForm	#
	smpsPSGform	$E7
	dc.b		nRst,	$0C,	nA5,	$18,	$18,	$18,	$6C
GHZ3_Loop1E:
	dc.b		$0C,	$06,	$06
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$1F,	GHZ3_Loop1E
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$01
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
GHZ3_Loop1F:
	dc.b		$0C,	$06,	$06
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$1F,	GHZ3_Loop1F
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$01
	dc.b		$0C
GHZ3_Jump08:
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
	dc.b		nA5
GHZ3_Loop20:
	dc.b		$0C,	$06,	$06
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$0F,	GHZ3_Loop20
;	Set�PSG�Voice	#
	smpsPSGvoice	$01
	dc.b		$18
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
GHZ3_Loop21:
	dc.b		$0C,	$06,	$06
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$0F,	GHZ3_Loop21
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$01
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
GHZ3_Loop22:
	dc.b		$0C,	$06,	$06
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$1E,	GHZ3_Loop22
GHZ3_Loop23:
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$01
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$02,	GHZ3_Loop23
GHZ3_Loop24:
	dc.b		$0C,	$06,	$06
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$1F,	GHZ3_Loop24
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$01
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
GHZ3_Loop25:
	dc.b		$0C,	$06,	$06
;	Loop�To	�	index	loops	location
	smpsLoop	$00,	$1F,	GHZ3_Loop25
	dc.b		$0C
;	Set�PSG�Voice	#
	smpsPSGvoice	$01
	dc.b		$0C
;	Jump�To	�	location
	smpsJump	GHZ3_Jump08

GHZ3_Voices:
;	Voice 00
;	$08,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04,$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$05
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$01
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$03,	$07,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$0A
	smpsVcRateScale		$01,	$01,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$0A,	$0E,	$12
	smpsVcDecayRate2	$03,	$04,	$04,	$00
	smpsVcDecayLevel	$02,	$02,	$02,	$02
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$05,	$13,	$2D,	$24

;	Voice 01
;	$3D,$01,$02,$02,$02,$10,$50,$50,$50,$07,$08,$08,$08,$01,$00,$00,$00,$20,$17,$17,$17,$1C,$10,$1A,$10
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$02,	$02,	$02,	$01
	smpsVcRateScale		$01,	$01,	$01,	$00
	smpsVcAttackRate	$10,	$10,	$10,	$10
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$08,	$08,	$08,	$07
	smpsVcDecayRate2	$00,	$00,	$00,	$01
	smpsVcDecayLevel	$01,	$01,	$01,	$02
	smpsVcReleaseRate	$07,	$07,	$07,	$00
	smpsVcTotalLevel	$10,	$1A,	$10,	$1C

;	Voice 02
;	$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$00,$00,$00,$00,$01,$00,$01,$0F,$3F,$0F,$3F,$16,$0F,$17,$0F
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$05
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$07,	$07
	smpsVcCoarseFreq	$04,	$04,	$04,	$04
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$12,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$01,	$00,	$01,	$00
	smpsVcDecayLevel	$03,	$00,	$03,	$00
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$0F,	$17,	$0F,	$16

;	Voice 03
;	$36,$0F,$01,$01,$01,$1F,$1F,$1F,$1F,$12,$11,$0E,$00,$00,$0A,$07,$09,$FF,$0F,$1F,$0F,$18,$0A,$12,$0A
;				#
	smpsVcAlgorithm		$06
	smpsVcFeedback		$06
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$01,	$01,	$01,	$0F
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$0E,	$11,	$12
	smpsVcDecayRate2	$09,	$07,	$0A,	$00
	smpsVcDecayLevel	$00,	$01,	$00,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$0A,	$12,	$0A,	$18

;	Voice 04
;	$04,$72,$42,$32,$32,$12,$12,$12,$12,$00,$08,$00,$08,$00,$08,$00,$08,$0F,$1F,$0F,$1F,$23,$0A,$23,$0A
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$04,	$07
	smpsVcCoarseFreq	$02,	$02,	$02,	$02
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$12,	$12,	$12,	$12
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$08,	$00,	$08,	$00
	smpsVcDecayRate2	$08,	$00,	$08,	$00
	smpsVcDecayLevel	$01,	$00,	$01,	$00
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$0A,	$23,	$0A,	$23
	even
