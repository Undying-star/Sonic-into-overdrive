; =============================================================================================
; Project Name:		LevSelMenu
; Created:		4th April 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

LevSelMenu_Header:
;	Voice Pointer	location
	smpsHeaderVoice	LevSelMenu_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$00

;	DAC Pointer	location
	smpsHeaderDAC	LevSelMenu_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	LevSelMenu_FM1,	smpsPitch00,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	LevSelMenu_FM2,	smpsPitch00,	$00
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	LevSelMenu_FM3,	smpsPitch00,	$00
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	LevSelMenu_FM4,	smpsPitch00,	$00
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	LevSelMenu_FM5,	smpsPitch00,	$00
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	LevSelMenu_PSG1,	smpsPitch00,	$00,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	LevSelMenu_PSG2,	smpsPitch00,	$00,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	LevSelMenu_PSG3,	smpsPitch00,	$00,	$00
	dc.b		$00,	$00,	$00,	$00
	smpsStop

; FM1 Data
LevSelMenu_FM1:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$0A
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC3,	$2B,	nC3,	nC3,	nC3,	$16,	nG2,	$15
	dc.b		nAb2,	$2C,	nAb2,	$15,	nF2,	$16,	nBb2,	$2B
	dc.b		nBb2,	$16,	nG2,	$15,	nC3,	$2B,	nC3,	$2C
	dc.b		nC3,	$2B,	nC3,	$15,	nG2,	$16,	nAb2,	$2B
	dc.b		nAb2,	$16,	nF2,	$15,	nBb2,	$2C,	nBb2,	$15
	dc.b		nG2,	$16,	nA2,	$2B,	nA2,	nA2,	nA2,	$16
	dc.b		nF2,	nG2,	$2B,	nG2,	nG2,	nG2,	$16,	nD2
	dc.b		$15,	nG2,	$2C,	nG2,	$2B,	nC3,	nD3,	$16
	dc.b		nF2,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nFs2,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nFs2,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nG2,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$02,	smpsNoAttack,	nG2,	$2B,	nG3,	$16,	nG2
	dc.b		nC3,	$15,	nD3,	$16,	nG2,	$15,	nAb2,	$16
	dc.b		nA2,	nA3,	$15,	nA2,	$16,	nA3,	$15,	nA2
	dc.b		$16,	nA3,	nA2,	$15,	nC3,	$16,	nBb2,	$15
	dc.b		nBb3,	$16,	nBb2,	nBb3,	$15,	nBb2,	$16,	nBb3
	dc.b		$15,	nBb2,	$16,	nC3,	nA2,	$15,	nA3,	$16
	dc.b		nA2,	$15,	nA3,	$16,	nA2,	nA3,	$15,	nA2
	dc.b		$16,	nC3,	$15,	nBb2,	$16,	nBb3,	nBb2,	$15
	dc.b		nBb3,	$16,	nBb2,	$15,	nBb3,	$16,	nBb2,	nC3
	dc.b		$15,	nF2,	$16,	nF3,	$15,	nF2,	$16,	nF3
	dc.b		nF2,	$15,	nF3,	$16,	nF2,	$15,	nFs2,	$16
	dc.b		nG2,	nG3,	$15,	nG2,	$16,	nG3,	$15,	nG2
	dc.b		$16,	nG3,	nG2,	$15,	nAb2,	$16,	nA2,	$15
	dc.b		nA3,	$16,	nA2,	nA3,	$15,	nA2,	$16,	nA3
	dc.b		$15,	nA3,	$16,	nC4,	nG2,	$40,	nG2,	$16
	dc.b		nF3,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nFs3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nFs3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nG3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG3,	$0A,	nG2,	$0C,	nG2,	$09,	nA2,	$16
	dc.b		nB2,	$15
;	Alter Volume	value
	smpsAlterVol	$F6
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	LevSelMenu_FM1

; FM2 Data
LevSelMenu_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$15
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0D
	dc.b		nC3,	$0C,	nC3,	$0A,	nC3,	$15,	nD3,	$0C
	dc.b		nF3,	$20,	nE3,	$15,	nD3,	$16,	nC3,	$15
	dc.b		nD3,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3,	$0E,	nF3,	$0C,	nC3,	$2B,	smpsNoAttack,	nC3
	dc.b		$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$15,	nRst,	$16,	nC3,	$0C,	nC3,	$09
	dc.b		nC3,	$16,	nD3,	$0C,	nF3,	$1F,	nE3,	$16
	dc.b		nD3,	$15,	nC3,	$16,	nD3,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3,	$0F,	nF3,	$0C,	nC3,	$2B,	smpsNoAttack,	nC3
	dc.b		$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$16,	nRst,	$56,	nD3,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$0C,	nC3,	nRst,	$09,	nE3,	$0C,	nC3
	dc.b		$16,	nD3,	$60,	nD3,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$0C,	nC3,	nRst,	$09,	nE3,	$0C,	nC3
	dc.b		$16,	nD3,	$60,	nRst,	$7F,	$02
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nB2,	$2C,	nG2,	$15,	nD2,	$16,	nG2,	$15
	dc.b		nAb2,	$16,	nA2,	$41,	nRst,	$15
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		nE3,	$41,	nC3,	$16,	nF3,	$41,	nC3,	$6C
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nA2,	$40,	nRst,	$16
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		nE3,	$41,	nC3,	$15,	nF3,	$41,	nC3,	$6C
	dc.b		nRst,	$16,	nF3,	$0C,	nG3,	$09,	nA3,	$0C
	dc.b		nRst,	$0A,	nF3,	$0C,	nG3,	$0A,	nA3,	$15
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1D
	dc.b		nAb3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nA3,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E3
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1D
	dc.b		nAb3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nA3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E3
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1D
	dc.b		nAb3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nA3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA3,	$02,	nRst,	$16
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG3,	$0C,	nA3,	$09,	nB3,	$0C,	nRst,	$0A
	dc.b		nG3,	$0C,	nA3,	$09,	nB3,	$16,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E3
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E3
	dc.b		nB3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB3,	$03,	nRst,	$15
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$0C,	nB3,	$0A,	nC4,	$0C,	nRst,	$0A
	dc.b		nA3,	$0C,	nB3,	$09,	nC4,	$13,	smpsNoAttack,	nC4
	dc.b		$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E3
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E3
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nC4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nC4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC4,	$03
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$21,	nF2,	$1F,	nG2,	$2C,	nA2,	$15
	dc.b		nB2,	$16,	nD3,	$15
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$F3
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	LevSelMenu_FM2

; FM3 Data
LevSelMenu_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nRst,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nRst,	$07
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$15
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	smpsNoAttack,	nC3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	smpsNoAttack,	nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$08,	nD3,	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$08,	nF3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nF3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nF3,	$07,	nE3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE3,	$07,	nD3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD3,	$07,	nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$08,	nD3,	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nEb3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nEb3,	$07
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nEb3,	$07,	nF3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$07,	nC3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nC3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nC3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E3
	dc.b		nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E5
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E2
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E5
	dc.b		nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nC3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nRst,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	smpsNoAttack,	nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$08,	smpsNoAttack,	nC3,	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nD3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$07,	nF3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nF3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nF3,	$07,	nE3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE3,	$07,	nD3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD3,	$08,	nC3,	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nD3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nEb3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nEb3,	$08
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nEb3,	$07,	nF3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$07,	nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E3
	dc.b		nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nC3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E5
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E2
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E5
	dc.b		nC3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nRst,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nRst,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nRst,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nRst,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nD3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nEb3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE3,	$07,	nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nRst,	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nRst,	$08,	nE3,	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$08,	nC3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nD3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD3,	$07,	smpsNoAttack,	nD3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nEb3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE3,	$07,	nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nRst,	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nRst,	$07,	nE3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$07,	nC3,	$03
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nD3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nD3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD3,	$07,	nRst,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nRst,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nRst,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nRst,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nRst,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nRst,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nRst,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nB2,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nB2,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nB2,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nB2,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG2,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nG2,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nD2,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD2,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG2,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nG2,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nAb2,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nAb2,	$07
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA2,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nA2,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nA2,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nA2,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nA2,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nA2,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nA2,	$07,	nRst,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nRst,	$08
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE3,	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE3,	$07,	nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nF3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nF3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nF3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nF3,	$07,	nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$07
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$02
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA2,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nA2,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nA2,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nA2,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nA2,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nA2,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nA2,	$08,	nRst,	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nRst,	$07
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE3,	$07,	nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$08,	nF3,	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nF3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nF3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nF3,	$07,	nC3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nC3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$07,	nRst,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nRst,	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nRst,	$07,	nF3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$07
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG3,	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nG3,	$08
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA3,	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nA3,	$08,	nRst,	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nF3,	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$0A
;	Alter Volume	value
	smpsAlterVol	$F8
	dc.b		nF3,	$40,	nE3,	$16,	nF3,	nE3,	$2B,	nD3
	dc.b		nE3,	$16,	nF3,	$2B,	nE3,	$7F,	smpsNoAttack,	$2E
	dc.b		nC3,	$40,	nD3,	$41
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nB2,	$2B
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$F3
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$00
;	Jump To	 	location
	smpsJump	LevSelMenu_FM3

; FM4 Data
LevSelMenu_FM4:
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nRst,	$15
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$0A
	dc.b		nC5,	$0C,	nE5,	$0A,	nF5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nFs5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nFs5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG5,	$09,	nC5,	$0C,	nE5,	$0A,	nF5,	$05
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nFs5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nFs5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG5,	$0A,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG5,	$09,	nRst,	$16,	nAb4,	$0C,	nC5,	$0A
	dc.b		nD5,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb5,	$24,	nRst,	$15,	nBb4,	$0C,	nD5,	$0A
	dc.b		nE5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nF5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF5,	$24,	nRst,	$16,	nC5,	$0C,	nE5,	$09
	dc.b		nF5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nFs5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nFs5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nG5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG5,	$0A,	nC5,	$0C,	nE5,	$0A,	nF5,	$04
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nFs5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nFs5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG5,	$09,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nG5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG5,	$0A,	nRst,	$16,	nAb4,	$0C,	nC5,	$09
	dc.b		nD5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb5,	$24,	nRst,	$16,	nBb4,	$0C,	nD5,	$0A
	dc.b		nE5,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nF5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF5,	$24,	nRst,	$15,	nA4,	$0C,	nC5,	$0A
	dc.b		nD5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$0C,	nA4,	nC5,	$09,	nD5,	$05,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nE5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nE5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nEb5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nE5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nE5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nE5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nE5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nE5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nEb5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nE5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$0A,	nRst,	$15,	nA4,	$0C,	nC5,	$0A
	dc.b		nD5,	$41,	nC5,	$0C,	nD5,	$09,	nE5,	$05
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nF5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF5,	$0F,	nC5,	$15
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nC3,	$41,	nA2,	$16,	nF3,	$2B,	nD3,	nG2
	dc.b		$57,	nC3,	$56,	nE3
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3,	$57
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nF3,	$56
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$57
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nE3,	$56
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nE3
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nF3,	$57
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsNoAttack,	nF3,	$56
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nF3,	$7F,	smpsNoAttack,	$2E,	nD3,	$7F,	smpsNoAttack,	$2E
	dc.b		nA2,	$7F,	smpsNoAttack,	$2E,	nG2,	$40,	nD3,	$41
	dc.b		nF3,	$2B
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$F1
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	LevSelMenu_FM4

; FM5 Data
LevSelMenu_FM5:
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$13
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC3,	$04,	nRst,	$08,	nB2,	$02,	nRst,	$07
	dc.b		nA2,	$05,	nRst,	$07,	nG2,	$03,	nRst,	$07
	dc.b		nC3,	$05,	nRst,	$07,	nB2,	$02,	nRst,	$07
	dc.b		nA2,	$05,	nRst,	$07,	nG2,	$03,	nRst,	$07
	dc.b		nC3,	$05,	nRst,	$07,	nB2,	$02,	nRst,	$08
	dc.b		nA2,	$04,	nRst,	$08,	nG2,	$02,	nRst,	$07
	dc.b		nC3,	$05,	nRst,	$07,	nB2,	$03,	nRst,	$07
	dc.b		nA2,	$05,	nRst,	$07,	nG2,	$02,	nRst,	$07
	dc.b		nC3,	$05,	nRst,	$07,	nBb2,	$03,	nRst,	$07
	dc.b		nAb2,	$05,	nRst,	$07,	nG2,	$02,	nRst,	$08
	dc.b		nC3,	$04,	nRst,	$08,	nBb2,	$02,	nRst,	$07
	dc.b		nAb2,	$05,	nRst,	$07,	nG2,	$03,	nRst,	$07
	dc.b		nD3,	$05,	nRst,	$07,	nC3,	$02,	nRst,	$07
	dc.b		nBb2,	$05,	nRst,	$07,	nAb2,	$03,	nRst,	$07
	dc.b		nD3,	$05,	nRst,	$07,	nC3,	$02,	nRst,	$08
	dc.b		nBb2,	$04,	nRst,	$08,	nAb2,	$02,	nRst,	$07
	dc.b		nC3,	$05,	nRst,	$07,	nB2,	$03,	nRst,	$07
	dc.b		nA2,	$05,	nRst,	$07,	nG2,	$02,	nRst,	$07
	dc.b		nC3,	$05,	nRst,	$07,	nB2,	$03,	nRst,	$07
	dc.b		nA2,	$05,	nRst,	$07,	nG2,	$02,	nRst,	$08
	dc.b		nC3,	$04,	nRst,	$08,	nB2,	$02,	nRst,	$07
	dc.b		nA2,	$05,	nRst,	$07,	nG2,	$03,	nRst,	$07
	dc.b		nC3,	$05,	nRst,	$07,	nB2,	$02,	nRst,	$07
	dc.b		nA2,	$05,	nRst,	$07,	nG2,	$03,	nRst,	$07
	dc.b		nC3,	$05,	nRst,	$07,	nBb2,	$02,	nRst,	$08
	dc.b		nAb2,	$04,	nRst,	$08,	nG2,	$02,	nRst,	$07
	dc.b		nC3,	$05,	nRst,	$07,	nBb2,	$03,	nRst,	$07
	dc.b		nAb2,	$05,	nRst,	$07,	nG2,	$02,	nRst,	$07
	dc.b		nD3,	$05,	nRst,	$07,	nC3,	$03,	nRst,	$07
	dc.b		nBb2,	$05,	nRst,	$07,	nAb2,	$02,	nRst,	$08
	dc.b		nD3,	$04,	nRst,	$08,	nC3,	$02,	nRst,	$07
	dc.b		nBb2,	$05,	nRst,	$07,	nAb2,	$03,	nRst,	$07
	dc.b		nE3,	nRst,	$05,	nC3,	$02,	nRst,	$07,	nB2
	dc.b		$05,	nRst,	$07,	nA2,	$03,	nRst,	$07,	nE3
	dc.b		nRst,	$05,	nC3,	$02,	nRst,	$08,	nB2,	$04
	dc.b		nRst,	$08,	nA2,	$02,	nRst,	$07,	nE3,	nRst
	dc.b		$05,	nC3,	$03,	nRst,	$07,	nB2,	$05,	nRst
	dc.b		$07,	nA2,	$02,	nRst,	$07,	nE3,	$08,	nRst
	dc.b		$04,	nC3,	$03,	nRst,	$07,	nB2,	$05,	nRst
	dc.b		$07,	nA2,	$02,	nRst,	$08,	nF3,	$04,	nRst
	dc.b		$08,	nE3,	$02,	nRst,	$07,	nD3,	$05,	nRst
	dc.b		$07,	nC3,	$03,	nRst,	$07,	nF3,	$05,	nRst
	dc.b		$07,	nE3,	$02,	nRst,	$07,	nD3,	$05,	nRst
	dc.b		$07,	nC3,	$03,	nRst,	$07,	nF3,	$05,	nRst
	dc.b		$07,	nE3,	$02,	nRst,	$08,	nD3,	$04,	nRst
	dc.b		$08,	nC3,	$02,	nRst,	$07,	nF3,	$05,	nRst
	dc.b		$07,	nE3,	$03,	nRst,	$07,	nD3,	$05,	nRst
	dc.b		$07,	nC3,	$02,	nRst,	$07,	nF2,	$57,	nA2
	dc.b		$2B,	nF2,	$41,	nD2,	$6C,	nB2,	$2B,	nA2
	dc.b		$56
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FB
	dc.b		nG4,	$08,	nRst,	$04,	nC4,	$08,	nRst,	$02
	dc.b		nE4,	$07,	nRst,	$05,	nC4,	$07,	nRst,	$03
	dc.b		nG4,	$07,	nRst,	$05,	nC4,	$07,	nRst,	$02
	dc.b		nE4,	$07,	nRst,	$05,	nC4,	$07,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nBb2,	$56
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FB
	dc.b		nA4,	$07,	nRst,	$05,	nD4,	$07,	nRst,	$03
	dc.b		nF4,	$07,	nRst,	$05,	nD4,	$07,	nRst,	$02
	dc.b		nA4,	$08,	nRst,	$04,	nD4,	$08,	nRst,	$02
	dc.b		nF4,	$07,	nRst,	$05,	nD4,	$07,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nA2,	$56
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FB
	dc.b		nG4,	$07,	nRst,	$05,	nC4,	$07,	nRst,	$03
	dc.b		nE4,	$07,	nRst,	$05,	nC4,	$07,	nRst,	$02
	dc.b		nG4,	$07,	nRst,	$05,	nC4,	$07,	nRst,	$03
	dc.b		nE4,	$07,	nRst,	$05,	nC4,	$07,	nRst,	$02
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nBb2,	$57
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FB
	dc.b		nA4,	$07,	nRst,	$05,	nD4,	$07,	nRst,	$02
	dc.b		nF4,	$08,	nRst,	$04,	nD4,	$08,	nRst,	$02
	dc.b		nA4,	$07,	nRst,	$05,	nD4,	$07,	nRst,	$03
	dc.b		nF4,	$07,	nRst,	$05,	nD4,	$07,	nRst,	$02
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nA2,	$7F,	smpsNoAttack,	$2E,	nB2,	$7F,	smpsNoAttack,	$2E
	dc.b		nRst,	$41,	nE3,	$6C,	nD2,	$40,	nG2,	$41
	dc.b		nD3,	$2B
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$ED
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	LevSelMenu_FM5

; PSG1 Data
LevSelMenu_PSG1:
	dc.b		nRst,	$04
;	Set Volume	value
	smpsSetVol	$0E
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nAb1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nAb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb1
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nAb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nAb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb1,	$41,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$41,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nAb1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nAb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nAb1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nAb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb1,	$40,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$41,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE2,	$7F,	$19,	nRst,	$04
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$3E,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF2,	$11,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$1D,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nB1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB1,	$41,	nRst,	$04
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$24,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$07,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$7F,	$19,	nRst,	$04
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$63,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2,	$20,	nRst,	$04
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$41,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$40
;	Set Volume	value
	smpsSetVol	$FD
;	Jump To	 	location
	smpsJump	LevSelMenu_PSG1

; PSG2 Data
LevSelMenu_PSG2:
	dc.b		nRst,	$04
;	Set Volume	value
	smpsSetVol	$0E
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$41,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$41,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$40,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$41,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$7F,	$19,	nRst,	$04
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$3E,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$11,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$1D,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG1,	$41,	nRst,	$04
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$24,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$07,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$7F,	$19,	nRst,	$04
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC2,	$7F,	$18,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$7F,	$18,	nRst,	$3C
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$60,	nRst,	$04
;	Set Volume	value
	smpsSetVol	$0B
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1,	$41,	nRst,	$05
;	Set Volume	value
	smpsSetVol	$0B
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA1,	$40
;	Set Volume	value
	smpsSetVol	$FD
;	Jump To	 	location
	smpsJump	LevSelMenu_PSG2

; PSG3 Data
LevSelMenu_PSG3:
;	Set Volume	value
	smpsSetVol	$01
;	Set PSG WvForm	#
	smpsPSGform	$E7
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$09
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Jump To	 	location
	smpsJump	LevSelMenu_PSG3

; DAC Data
LevSelMenu_DAC:
	dc.b		dKick,	$15,	dSnare,	$07,	dSnare,	$08,	dSnare,	$07
	dc.b		dKick,	$15,	dSnare,	$08,	dSnare,	$07,	dSnare,	dKick
	dc.b		$16,	dSnare,	$07,	dSnare,	dSnare,	dTimpani,	$0C,	dTimpani
	dc.b		$0A,	dTimpani,	$0C,	dTimpani,	$09,	dKick,	$16,	dSnare
	dc.b		$07,	dSnare,	dSnare,	$08,	dKick,	$15,	dSnare,	$07
	dc.b		dSnare,	$08,	dSnare,	$07,	dKick,	$15,	dSnare,	$08
	dc.b		dSnare,	$07,	dSnare,	dTimpani,	$0C,	dTimpani,	$0A,	dTimpani
	dc.b		$0C,	dTimpani,	$09,	dKick,	$16,	dSnare,	$07,	dSnare
	dc.b		dSnare,	dKick,	$16,	dSnare,	$07,	dSnare,	dSnare,	$08
	dc.b		dKick,	$15,	dSnare,	$07,	dSnare,	$08,	dSnare,	$07
	dc.b		dTimpani,	$0C,	dTimpani,	$09,	dTimpani,	$0C,	dTimpani,	$0A
	dc.b		dKick,	$16,	dSnare,	$07,	dSnare,	dSnare,	dKick,	$16
	dc.b		dSnare,	$07,	dSnare,	dSnare,	dKick,	$16,	dSnare,	$07
	dc.b		dSnare,	dSnare,	$08,	dTimpani,	$0C,	dTimpani,	$09,	dTimpani
	dc.b		$0C,	dTimpani,	$0A,	dKick,	$15,	dSnare,	$08,	dSnare
	dc.b		$07,	dSnare,	dKick,	$16,	dSnare,	$07,	dSnare,	dSnare
	dc.b		dKick,	$16,	dSnare,	$07,	dSnare,	dSnare,	dTimpani,	$0C
	dc.b		dTimpani,	$0A,	dTimpani,	$0C,	dTimpani,	$0A,	dKick,	$15
	dc.b		dSnare,	$07,	dSnare,	$08,	dSnare,	$07,	dKick,	$15
	dc.b		dSnare,	$08,	dSnare,	$07,	dSnare,	dKick,	$16,	dSnare
	dc.b		$07,	dSnare,	dSnare,	dTimpani,	$0C,	dTimpani,	$0A,	dTimpani
	dc.b		$0C,	dTimpani,	$09,	dKick,	$16,	dSnare,	$07,	dSnare
	dc.b		dSnare,	$08,	dKick,	$15,	dSnare,	$07,	dSnare,	$08
	dc.b		dSnare,	$07,	dKick,	$15,	dSnare,	$08,	dSnare,	$07
	dc.b		dSnare,	dTimpani,	$0C,	dTimpani,	$0A,	dTimpani,	$0C,	dTimpani
	dc.b		$09,	dKick,	$16,	dSnare,	$07,	dSnare,	dSnare,	dKick
	dc.b		$16,	dSnare,	$07,	dSnare,	dSnare,	$08,	dKick,	$15
	dc.b		dSnare,	$07,	dSnare,	$08,	dSnare,	$07,	dTimpani,	$0C
	dc.b		dTimpani,	$09,	dTimpani,	$0C,	dTimpani,	$0A,	dKick,	$16
	dc.b		dSnare,	$07,	dSnare,	dSnare,	dHiTimpani,	$16,	dSnare,	$07
	dc.b		dSnare,	dSnare,	dHiTimpani,	$16,	dSnare,	$07,	dSnare,	dSnare
	dc.b		$08,	dTimpani,	$0C,	dTimpani,	$09,	dTimpani,	$0C,	dTimpani
	dc.b		$0A,	dKick,	$15,	dSnare,	$08,	dSnare,	$07,	dSnare
	dc.b		dHiTimpani,	$16,	dSnare,	$07,	dSnare,	dSnare,	dHiTimpani,	$16
	dc.b		dSnare,	$07,	dSnare,	dSnare,	dTimpani,	$0C,	dTimpani,	$0A
	dc.b		dTimpani,	$0C,	dTimpani,	$0A,	dKick,	$15,	dSnare,	$07
	dc.b		dSnare,	$08,	dSnare,	$07,	dHiTimpani,	$15,	dSnare,	$08
	dc.b		dSnare,	$07,	dSnare,	dHiTimpani,	$16,	dSnare,	$07,	dSnare
	dc.b		dSnare,	dTimpani,	$0C,	dTimpani,	$0A,	dTimpani,	$0C,	dTimpani
	dc.b		$09,	dKick,	$16,	dSnare,	$07,	dSnare,	dSnare,	$08
	dc.b		dHiTimpani,	$15,	dSnare,	$07,	dSnare,	$08,	dSnare,	$07
	dc.b		dHiTimpani,	$15,	dSnare,	$08,	dSnare,	$07,	dSnare,	dTimpani
	dc.b		$0C,	dTimpani,	$0A,	dTimpani,	$0C,	dTimpani,	$09,	dKick
	dc.b		$16,	dSnare,	$07,	dSnare,	dSnare,	dHiTimpani,	$16,	dSnare
	dc.b		$07,	dSnare,	dSnare,	$08,	dHiTimpani,	$15,	dSnare,	$07
	dc.b		dSnare,	$08,	dSnare,	$07,	dTimpani,	$0C,	dTimpani,	$09
	dc.b		dTimpani,	$0C,	dTimpani,	$0A,	dKick,	$16,	dSnare,	$07
	dc.b		dSnare,	dSnare,	dHiTimpani,	$16,	dSnare,	$07,	dSnare,	dSnare
	dc.b		dHiTimpani,	$16,	dSnare,	$07,	dSnare,	dSnare,	$08,	dTimpani
	dc.b		$0C,	dTimpani,	$09,	dTimpani,	$0C,	dTimpani,	$0A,	dKick
	dc.b		$15,	dSnare,	$08,	dSnare,	$07,	dSnare,	dHiTimpani,	$16
	dc.b		dSnare,	$07,	dSnare,	dSnare,	dHiTimpani,	$16,	dSnare,	$07
	dc.b		dSnare,	dSnare,	dTimpani,	$0C,	dTimpani,	$0A,	dTimpani,	$0C
	dc.b		dTimpani,	$0A,	dKick,	$15,	dSnare,	$07,	dSnare,	$08
	dc.b		dSnare,	$07,	dHiTimpani,	$15,	dSnare,	$08,	dSnare,	$07
	dc.b		dSnare,	dHiTimpani,	$16,	dSnare,	$07,	dSnare,	dSnare,	dTimpani
	dc.b		$0C,	dTimpani,	$0A,	dTimpani,	$0C,	dTimpani,	$09
;	Jump To	 	location
	smpsJump	LevSelMenu_DAC

LevSelMenu_Voices:
;	Voice 00
;	$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C,$0D,$02,$00,$09,$08,$0A,$16,$06,$2F,$5F,$3F,$2F,$2C,$22,$1A,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$03
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$03,	$03
	smpsVcCoarseFreq	$01,	$00,	$00,	$07
	smpsVcRateScale		$02,	$00,	$03,	$02
	smpsVcAttackRate	$1C,	$1C,	$1C,	$1E
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$09,	$00,	$02,	$0D
	smpsVcDecayRate2	$06,	$16,	$0A,	$08
	smpsVcDecayLevel	$02,	$03,	$05,	$02
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$1A,	$22,	$2C

;	Voice 01
;	$24,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$0A,$00,$0A,$00,$00,$00,$00,$00,$17,$00,$17,$19,$00,$1A,$01
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$04
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$07,	$07
	smpsVcCoarseFreq	$04,	$04,	$04,	$04
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$12,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$00,	$0A,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$01,	$00,	$01,	$00
	smpsVcReleaseRate	$07,	$00,	$07,	$00
	smpsVcTotalLevel	$01,	$1A,	$00,	$19

;	Voice 02
;	$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$0A,$00,$0A,$00,$01,$00,$01,$00,$36,$00,$36,$11,$02,$17,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$05
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$07,	$07
	smpsVcCoarseFreq	$04,	$04,	$04,	$04
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$12,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$00,	$0A,	$00
	smpsVcDecayRate2	$01,	$00,	$01,	$00
	smpsVcDecayLevel	$03,	$00,	$03,	$00
	smpsVcReleaseRate	$06,	$00,	$06,	$00
	smpsVcTotalLevel	$00,	$17,	$02,	$11

;	Voice 03
;	$28,$38,$33,$33,$31,$DF,$DF,$DF,$9F,$03,$02,$01,$08,$02,$03,$02,$03,$25,$1F,$1F,$4F,$22,$24,$2C,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$05
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$03,	$03
	smpsVcCoarseFreq	$01,	$03,	$03,	$08
	smpsVcRateScale		$02,	$03,	$03,	$03
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$08,	$01,	$02,	$03
	smpsVcDecayRate2	$03,	$02,	$03,	$02
	smpsVcDecayLevel	$04,	$01,	$01,	$02
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$05
	smpsVcTotalLevel	$00,	$2C,	$24,	$22
	even
