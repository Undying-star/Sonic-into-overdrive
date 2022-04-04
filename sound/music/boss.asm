; =============================================================================================
; Project Name:		Boss
; Created:		4th April 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Boss_Header:
;	Voice Pointer	location
	smpsHeaderVoice	Boss_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$0F

;	DAC Pointer	location
	smpsHeaderDAC	Boss_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	Boss_FM1,	smpsPitch00,	$0E
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	Boss_FM2,	smpsPitch00,	$13
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	Boss_FM3,	smpsPitch00,	$0F
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	Boss_FM4,	smpsPitch00,	$0E
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	Boss_FM5,	smpsPitch00,	$0E
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Boss_PSG1,	smpsPitch00,	$04,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Boss_PSG2,	smpsPitch00,	$04,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Boss_PSG3,	smpsPitch00,	$04,	$00

; DAC Data
Boss_DAC:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		dKick,	$09,	dKick,	$09,	dSnare,	$0C,	dTimpani,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dKick,	$09,	dKick,	$09
	dc.b		dTimpani,	$06,	dSnare,	$06,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$09,	dKick,	$06
	dc.b		dKick,	$03,	dSnare,	$0C,	dTimpani,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dKick,	$09,	dKick,	$09,	dTimpani,	$06
	dc.b		dSnare,	$06,	dKick,	$06,	dKick,	$06,	dTimpani,	$03
	dc.b		dSnare,	$51,	dTimpani,	$06,	dKick,	$06,	dSnare,	$03
	dc.b		dSnare,	$03,	dKick,	$09,	dKick,	$03,	dSnare,	$06
	dc.b		dTimpani,	$06,	dKick,	$09,	dKick,	$03,	dSnare,	$09
	dc.b		dSnare,	$09,	dKick,	$09,	dKick,	$06,	dTimpani,	$09
	dc.b		dSnare,	$06,	dKick,	$06,	dSnare,	$06,	dKick,	$09
	dc.b		dKick,	$03,	dSnare,	$06,	dTimpani,	$06,	dKick,	$09
	dc.b		dKick,	$03,	dSnare,	$09,	dSnare,	$09,	dKick,	$09
	dc.b		dKick,	$06,	dTimpani,	$09,	dSnare,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dKick,	$09,	dKick,	$03,	dSnare,	$06
	dc.b		dTimpani,	$06,	dKick,	$06,	dKick,	$03,	dKick,	$03
	dc.b		dSnare,	$06,	dTimpani,	$03,	dSnare,	$09,	dKick,	$09
	dc.b		dKick,	$06,	dTimpani,	$09,	dSnare,	$06,	dKick,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$09,	dKick,	$03
	dc.b		dSnare,	$06,	dTimpani,	$06,	dKick,	$06,	dKick,	$03
	dc.b		dKick,	$03,	dSnare,	$06,	dTimpani,	$03,	dSnare,	$09
	dc.b		dKick,	$09,	dKick,	$06,	dTimpani,	$09,	dSnare,	$06
	dc.b		dKick,	$06,	dSnare,	$03,	dSnare,	$51,	dKick,	$06
	dc.b		dTimpani,	$06,	dSnare,	$03,	dSnare,	$03,	dKick,	$0C
	dc.b		dSnare,	$0C,	dKick,	$06,	dTimpani,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dTimpani,	$06,	dKick,	$0C,	dSnare,	$0C
	dc.b		dKick,	$06,	dTimpani,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$0C,	dKick,	$06,	dTimpani,	$06,	dSnare,	$06
	dc.b		dSnare,	$06,	dKick,	$09,	dKick,	$03,	dSnare,	$06
	dc.b		dTimpani,	$06,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dSnare,	$06,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$06,	dTimpani,	$06
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dTimpani,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$0C,	dKick,	$06
	dc.b		dTimpani,	$06,	dSnare,	$06,	dSnare,	$03,	dSnare,	$03
	dc.b		dKick,	$06,	dTimpani,	$06,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$06,	dKick,	$0C,	dTimpani,	$0C
	dc.b		dSnare,	$06,	dKick,	$06,	dKick,	$06,	dTimpani,	$06
	dc.b		dSnare,	$03,	dSnare,	$7F,	nRst,	$7F,	nRst,	$13
	dc.b		dTimpani,	$06,	dKick,	$06,	dSnare,	$03,	dSnare,	$03
	dc.b		dKick,	$09,	dKick,	$09,	dSnare,	$0C,	dTimpani,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dKick,	$09,	dKick,	$09
	dc.b		dTimpani,	$06,	dSnare,	$06,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$09,	dKick,	$06
	dc.b		dKick,	$03,	dSnare,	$0C,	dTimpani,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dKick,	$09,	dKick,	$09,	dTimpani,	$06
	dc.b		dSnare,	$06,	dKick,	$06,	dKick,	$06,	dTimpani,	$03
	dc.b		dSnare,	$51,	dTimpani,	$06,	dKick,	$06,	dSnare,	$03
	dc.b		dSnare,	$03,	dKick,	$09,	dKick,	$03,	dSnare,	$06
	dc.b		dTimpani,	$06,	dKick,	$09,	dKick,	$03,	dSnare,	$09
	dc.b		dSnare,	$09,	dKick,	$09,	dKick,	$06,	dTimpani,	$09
	dc.b		dSnare,	$06,	dKick,	$06,	dSnare,	$06,	dKick,	$09
	dc.b		dKick,	$03,	dSnare,	$06,	dTimpani,	$06,	dKick,	$09
	dc.b		dKick,	$03,	dSnare,	$09,	dSnare,	$09,	dKick,	$09
	dc.b		dKick,	$06,	dTimpani,	$09,	dSnare,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dKick,	$09,	dKick,	$03,	dSnare,	$06
	dc.b		dTimpani,	$06,	dKick,	$06,	dKick,	$03,	dKick,	$03
	dc.b		dSnare,	$06,	dTimpani,	$03,	dSnare,	$09,	dKick,	$09
	dc.b		dKick,	$06,	dTimpani,	$09,	dSnare,	$06,	dKick,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$09,	dKick,	$03
	dc.b		dSnare,	$06,	dTimpani,	$06,	dKick,	$06,	dKick,	$03
	dc.b		dKick,	$03,	dSnare,	$06,	dTimpani,	$03,	dSnare,	$09
	dc.b		dKick,	$09,	dKick,	$06,	dTimpani,	$09,	dSnare,	$06
	dc.b		dKick,	$06,	dSnare,	$03,	dSnare,	$51,	dKick,	$06
	dc.b		dTimpani,	$06,	dSnare,	$03,	dSnare,	$03,	dKick,	$0C
	dc.b		dSnare,	$0C,	dKick,	$06,	dTimpani,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dTimpani,	$06,	dKick,	$0C,	dSnare,	$0C
	dc.b		dKick,	$06,	dTimpani,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$0C,	dKick,	$06,	dTimpani,	$06,	dSnare,	$06
	dc.b		dSnare,	$06,	dKick,	$09,	dKick,	$03,	dSnare,	$06
	dc.b		dTimpani,	$06,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dSnare,	$06,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$06,	dTimpani,	$06
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dTimpani,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$0C,	dKick,	$06
	dc.b		dTimpani,	$06,	dSnare,	$06,	dSnare,	$03,	dSnare,	$03
	dc.b		dKick,	$06,	dTimpani,	$06,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$06,	dKick,	$0C,	dTimpani,	$0C
	dc.b		dSnare,	$06,	dKick,	$06,	dKick,	$06,	dTimpani,	$06
	dc.b		dSnare,	$03,	dSnare,	$7F,	nRst,	$7F,	nRst,	$13
	dc.b		dTimpani,	$06,	dKick,	$06,	dSnare,	$03,	dSnare,	$03
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	smpsStop

; FM1 Data
Boss_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nD3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nD3,	$06
	dc.b		nC3,	$06,	nC3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nC3,	$06,	nC3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$06,	nBb2,	$06,	nBb2,	$06,	nBb2,	$06
	dc.b		nBb2,	$06,	nBb2,	$06,	nBb2,	$06,	nBb2,	$06
	dc.b		nA2,	$06,	nA2,	$06,	nA2,	$06,	nA2,	$06
	dc.b		nA2,	$06,	nA2,	$06,	nA2,	$06,	nA2,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nD3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nD3,	$06
	dc.b		nC3,	$06,	nC3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nC3,	$06,	nC3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$06,	nBb2,	$06,	nBb2,	$06,	nBb2,	$06
	dc.b		nBb2,	$06,	nBb2,	$06,	nBb2,	$06,	nBb2,	$06
	dc.b		nA2,	$06,	nA2,	$06,	nA2,	$06,	nA2,	$06
	dc.b		nA2,	$06,	nA2,	$06,	nA2,	$06,	nA2,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nCs3,	$06
	dc.b		nCs3,	$06,	nCs3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nC3,	$06,	nB2,	$06,	nB2,	$06,	nB2,	$06
	dc.b		nA2,	$06,	nF3,	$06,	nE3,	$06,	nD3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nD3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nD3,	$06
	dc.b		nC3,	$06,	nC3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nC3,	$06,	nC3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$06,	nBb2,	$06,	nBb2,	$06,	nBb2,	$06
	dc.b		nBb2,	$06,	nBb2,	$06,	nBb2,	$06,	nBb2,	$06
	dc.b		nA2,	$06,	nA2,	$06,	nA2,	$06,	nA2,	$06
	dc.b		nA2,	$06,	nA2,	$06,	nA2,	$06,	nA2,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nD3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nD3,	$06
	dc.b		nC3,	$06,	nC3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nC3,	$06,	nC3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$06,	nBb2,	$06,	nBb2,	$06,	nBb2,	$06
	dc.b		nBb2,	$06,	nBb2,	$06,	nBb2,	$06,	nBb2,	$06
	dc.b		nA2,	$06,	nA2,	$06,	nA2,	$06,	nA2,	$06
	dc.b		nA2,	$06,	nA2,	$06,	nA2,	$06,	nA2,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nCs3,	$06
	dc.b		nCs3,	$06,	nCs3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nC3,	$06,	nB2,	$06,	nB2,	$06,	nB2,	$06
	dc.b		nA2,	$06,	nF3,	$06,	nE3,	$06,	nD3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
	smpsStop

; FM2 Data
Boss_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nRst,	$03,	nF4,	$03,	nRst,	$06,	nF4,	$06
	dc.b		nD4,	$06,	nF4,	$03,	nD4,	$03,	nC4,	$03
	dc.b		nD4,	$06,	nA3,	$09,	nRst,	$03,	nF4,	$03
	dc.b		nRst,	$06,	nF4,	$06,	nD4,	$06,	nF4,	$03
	dc.b		nD4,	$03,	nC4,	$03,	nD4,	$06,	nA4,	$09
	dc.b		nRst,	$03,	nBb4,	$03,	nRst,	$06,	nBb4,	$06
	dc.b		nG4,	$06,	nBb4,	$03,	nG4,	$03,	nF4,	$03
	dc.b		nG4,	$06,	nD4,	$09,	nRst,	$03,	nBb4,	$03
	dc.b		nRst,	$06,	nBb4,	$06,	nG4,	$06,	nBb4,	$03
	dc.b		nG4,	$03,	nF4,	$03,	nG4,	$06,	nD5,	$09
	dc.b		nA5,	$03,	nA5,	$03,	nRst,	$03,	nA5,	$03
	dc.b		nRst,	$24,	nA5,	$03,	nA5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$27,	nF4,	$03,	nRst,	$06
	dc.b		nF4,	$06,	nD4,	$06,	nF4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nA3,	$09,	nRst,	$03
	dc.b		nF4,	$03,	nRst,	$06,	nF4,	$06,	nD4,	$06
	dc.b		nF4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nA4,	$09,	nRst,	$03,	nF4,	$03,	nRst,	$06
	dc.b		nF4,	$06,	nD4,	$06,	nF4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nA3,	$09,	nRst,	$03
	dc.b		nF4,	$03,	nRst,	$06,	nF4,	$06,	nD4,	$06
	dc.b		nF4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nA4,	$09,	nRst,	$03,	nBb4,	$03,	nRst,	$06
	dc.b		nBb4,	$06,	nG4,	$06,	nBb4,	$03,	nG4,	$03
	dc.b		nF4,	$03,	nG4,	$06,	nD4,	$09,	nRst,	$03
	dc.b		nBb4,	$03,	nRst,	$06,	nBb4,	$06,	nG4,	$06
	dc.b		nBb4,	$03,	nG4,	$03,	nF4,	$03,	nG4,	$06
	dc.b		nD5,	$09,	nRst,	$03,	nBb4,	$03,	nRst,	$06
	dc.b		nBb4,	$06,	nG4,	$06,	nBb4,	$03,	nG4,	$03
	dc.b		nF4,	$03,	nG4,	$06,	nD4,	$09,	nRst,	$03
	dc.b		nBb4,	$03,	nRst,	$06,	nBb4,	$06,	nG4,	$06
	dc.b		nBb4,	$03,	nG4,	$03,	nF4,	$03,	nG4,	$06
	dc.b		nD5,	$09,	nA5,	$03,	nA5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$24,	nA5,	$03,	nA5,	$03
	dc.b		nRst,	$03,	nA5,	$03,	nRst,	$24,	nD5,	$1E
	dc.b		nD5,	$06,	nE5,	$06,	nF5,	$06,	nG5,	$1E
	dc.b		nG5,	$06,	nF5,	$06,	nE5,	$06,	nD5,	$1E
	dc.b		nD5,	$06,	nE5,	$06,	nF5,	$06,	nE5,	$1E
	dc.b		nG5,	$06,	nF5,	$06,	nE5,	$06,	nD5,	$1E
	dc.b		nD5,	$06,	nE5,	$06,	nF5,	$06,	nG5,	$1E
	dc.b		nG5,	$06,	nA5,	$06,	nBb5,	$06,	nD6,	$1E
	dc.b		nD6,	$06,	nE6,	$06,	nD6,	$06,	nCs6,	$1E
	dc.b		nCs6,	$06,	nBb5,	$06,	nA5,	$06,	nD5,	$12
	dc.b		nCs5,	$12,	nC5,	$12,	nB4,	$12,	nA4,	$06
	dc.b		nF4,	$06,	nE4,	$06,	nD4,	$06,	nRst,	$03
	dc.b		nF4,	$03,	nRst,	$06,	nF4,	$06,	nD4,	$06
	dc.b		nF4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nA3,	$09,	nRst,	$03,	nF4,	$03,	nRst,	$06
	dc.b		nF4,	$06,	nD4,	$06,	nF4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nA4,	$09,	nRst,	$03
	dc.b		nBb4,	$03,	nRst,	$06,	nBb4,	$06,	nG4,	$06
	dc.b		nBb4,	$03,	nG4,	$03,	nF4,	$03,	nG4,	$06
	dc.b		nD4,	$09,	nRst,	$03,	nBb4,	$03,	nRst,	$06
	dc.b		nBb4,	$06,	nG4,	$06,	nBb4,	$03,	nG4,	$03
	dc.b		nF4,	$03,	nG4,	$06,	nD5,	$09,	nA5,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nA5,	$03,	nRst,	$24
	dc.b		nA5,	$03,	nA5,	$03,	nRst,	$03,	nA5,	$03
	dc.b		nRst,	$27,	nF4,	$03,	nRst,	$06,	nF4,	$06
	dc.b		nD4,	$06,	nF4,	$03,	nD4,	$03,	nC4,	$03
	dc.b		nD4,	$06,	nA3,	$09,	nRst,	$03,	nF4,	$03
	dc.b		nRst,	$06,	nF4,	$06,	nD4,	$06,	nF4,	$03
	dc.b		nD4,	$03,	nC4,	$03,	nD4,	$06,	nA4,	$09
	dc.b		nRst,	$03,	nBb4,	$03,	nRst,	$06,	nBb4,	$06
	dc.b		nG4,	$06,	nBb4,	$03,	nG4,	$03,	nF4,	$03
	dc.b		nG4,	$06,	nD4,	$09,	nRst,	$03,	nBb4,	$03
	dc.b		nRst,	$06,	nBb4,	$06,	nG4,	$06,	nBb4,	$03
	dc.b		nG4,	$03,	nF4,	$03,	nG4,	$06,	nD5,	$09
	dc.b		nA5,	$03,	nA5,	$03,	nRst,	$03,	nA5,	$03
	dc.b		nRst,	$24,	nA5,	$03,	nA5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$27,	nF4,	$03,	nRst,	$06
	dc.b		nF4,	$06,	nD4,	$06,	nF4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nA3,	$09,	nRst,	$03
	dc.b		nF4,	$03,	nRst,	$06,	nF4,	$06,	nD4,	$06
	dc.b		nF4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nA4,	$09,	nRst,	$03,	nF4,	$03,	nRst,	$06
	dc.b		nF4,	$06,	nD4,	$06,	nF4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nA3,	$09,	nRst,	$03
	dc.b		nF4,	$03,	nRst,	$06,	nF4,	$06,	nD4,	$06
	dc.b		nF4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nA4,	$09,	nRst,	$03,	nBb4,	$03,	nRst,	$06
	dc.b		nBb4,	$06,	nG4,	$06,	nBb4,	$03,	nG4,	$03
	dc.b		nF4,	$03,	nG4,	$06,	nD4,	$09,	nRst,	$03
	dc.b		nBb4,	$03,	nRst,	$06,	nBb4,	$06,	nG4,	$06
	dc.b		nBb4,	$03,	nG4,	$03,	nF4,	$03,	nG4,	$06
	dc.b		nD5,	$09,	nRst,	$03,	nBb4,	$03,	nRst,	$06
	dc.b		nBb4,	$06,	nG4,	$06,	nBb4,	$03,	nG4,	$03
	dc.b		nF4,	$03,	nG4,	$06,	nD4,	$09,	nRst,	$03
	dc.b		nBb4,	$03,	nRst,	$06,	nBb4,	$06,	nG4,	$06
	dc.b		nBb4,	$03,	nG4,	$03,	nF4,	$03,	nG4,	$06
	dc.b		nD5,	$09,	nA5,	$03,	nA5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$24,	nA5,	$03,	nA5,	$03
	dc.b		nRst,	$03,	nA5,	$03,	nRst,	$24,	nD5,	$1E
	dc.b		nD5,	$06,	nE5,	$06,	nF5,	$06,	nG5,	$1E
	dc.b		nG5,	$06,	nF5,	$06,	nE5,	$06,	nD5,	$1E
	dc.b		nD5,	$06,	nE5,	$06,	nF5,	$06,	nE5,	$1E
	dc.b		nG5,	$06,	nF5,	$06,	nE5,	$06,	nD5,	$1E
	dc.b		nD5,	$06,	nE5,	$06,	nF5,	$06,	nG5,	$1E
	dc.b		nG5,	$06,	nA5,	$06,	nBb5,	$06,	nD6,	$1E
	dc.b		nD6,	$06,	nE6,	$06,	nD6,	$06,	nCs6,	$1E
	dc.b		nCs6,	$06,	nBb5,	$06,	nA5,	$06,	nD5,	$12
	dc.b		nCs5,	$12,	nC5,	$12,	nB4,	$12,	nA4,	$06
	dc.b		nF4,	$06,	nE4,	$06,	nD4,	$06,	nRst,	$03
	dc.b		nF4,	$03,	nRst,	$06,	nF4,	$06,	nD4,	$06
	dc.b		nF4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nA3,	$09,	nRst,	$03,	nF4,	$03,	nRst,	$06
	dc.b		nF4,	$06,	nD4,	$06,	nF4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nA4,	$09,	nRst,	$03
	dc.b		nBb4,	$03,	nRst,	$06,	nBb4,	$06,	nG4,	$06
	dc.b		nBb4,	$03,	nG4,	$03,	nF4,	$03,	nG4,	$06
	dc.b		nD4,	$09,	nRst,	$03,	nBb4,	$03,	nRst,	$06
	dc.b		nBb4,	$06,	nG4,	$06,	nBb4,	$03,	nG4,	$03
	dc.b		nF4,	$03,	nG4,	$06,	nD5,	$09,	nA5,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nA5,	$03,	nRst,	$24
	dc.b		nA5,	$03,	nA5,	$03,	nRst,	$03,	nA5,	$03
	dc.b		nRst,	$24
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	smpsStop

; FM3 Data
Boss_FM3:
;	Set FM Voice	#
	smpsFMvoice	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nRst,	$03,	nD4,	$03,	nRst,	$06,	nD4,	$06
	dc.b		nA3,	$06,	nD4,	$03,	nA3,	$03,	nG3,	$03
	dc.b		nA3,	$06,	nD3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nRst,	$03,	nD4,	$03,	nRst,	$06,	nD4,	$06
	dc.b		nA3,	$06,	nD4,	$03,	nA3,	$03,	nG3,	$03
	dc.b		nA3,	$06,	nD4,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nRst,	$03,	nG4,	$03,	nRst,	$06,	nG4,	$06
	dc.b		nD4,	$06,	nG4,	$03,	nD4,	$03,	nC4,	$03
	dc.b		nD4,	$06,	nG3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nRst,	$03,	nG4,	$03,	nRst,	$06,	nG4,	$06
	dc.b		nD4,	$06,	nG4,	$03,	nD4,	$03,	nC4,	$03
	dc.b		nD4,	$06,	nG4,	$09,	nA4,	$03,	nA4,	$03
	dc.b		nRst,	$03,	nA4,	$03,	nRst,	$24,	nA4,	$03
	dc.b		nA4,	$03,	nRst,	$03,	nA4,	$03,	nRst,	$27
	dc.b		nD4,	$03,	nRst,	$06,	nD4,	$06,	nA3,	$06
	dc.b		nD4,	$03,	nA3,	$03,	nG3,	$03,	nA3,	$06
	dc.b		nD3,	$09,	nRst,	$03,	nD4,	$03,	nRst,	$06
	dc.b		nD4,	$06,	nA3,	$06,	nD4,	$03,	nA3,	$03
	dc.b		nG3,	$03,	nA3,	$06,	nD4,	$09,	nRst,	$03
	dc.b		nD4,	$03,	nRst,	$06,	nD4,	$06,	nA3,	$06
	dc.b		nD4,	$03,	nA3,	$03,	nG3,	$03,	nA3,	$06
	dc.b		nD3,	$09,	nRst,	$03,	nD4,	$03,	nRst,	$06
	dc.b		nD4,	$06,	nA3,	$06,	nD4,	$03,	nA3,	$03
	dc.b		nG3,	$03,	nA3,	$06,	nD4,	$09,	nRst,	$03
	dc.b		nG4,	$03,	nRst,	$06,	nG4,	$06,	nD4,	$06
	dc.b		nG4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nG3,	$09,	nRst,	$03,	nG4,	$03,	nRst,	$06
	dc.b		nG4,	$06,	nD4,	$06,	nG4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nG4,	$09,	nRst,	$03
	dc.b		nG4,	$03,	nRst,	$06,	nG4,	$06,	nD4,	$06
	dc.b		nG4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nG3,	$09,	nRst,	$03,	nG4,	$03,	nRst,	$06
	dc.b		nG4,	$06,	nD4,	$06,	nG4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nG4,	$09,	nA4,	$03
	dc.b		nA4,	$03,	nRst,	$03,	nA4,	$03,	nRst,	$24
	dc.b		nA4,	$03,	nA4,	$03,	nRst,	$03,	nA4,	$03
	dc.b		nRst,	$24,	nA4,	$1E,	nA4,	$06,	nB4,	$06
	dc.b		nC5,	$06,	nD5,	$1E,	nD5,	$06,	nC5,	$06
	dc.b		nB4,	$06,	nA4,	$1E,	nA4,	$06,	nB4,	$06
	dc.b		nC5,	$06,	nB4,	$1E,	nD5,	$06,	nC5,	$06
	dc.b		nB4,	$06,	nA4,	$1E,	nA4,	$06,	nB4,	$06
	dc.b		nC5,	$06,	nD5,	$1E,	nD5,	$06,	nE5,	$06
	dc.b		nF5,	$06,	nA5,	$1E,	nA5,	$06,	nB5,	$06
	dc.b		nA5,	$06,	nAb5,	$1E,	nAb5,	$06,	nF5,	$06
	dc.b		nE5,	$06,	nG4,	$12,	nFs4,	$12,	nF4,	$12
	dc.b		nE4,	$12,	nD4,	$06,	nBb3,	$06,	nA3,	$06
	dc.b		nG3,	$06,	nRst,	$03,	nD4,	$03,	nRst,	$06
	dc.b		nD4,	$06,	nA3,	$06,	nD4,	$03,	nA3,	$03
	dc.b		nG3,	$03,	nA3,	$06,	nD3,	$09,	nRst,	$03
	dc.b		nD4,	$03,	nRst,	$06,	nD4,	$06,	nA3,	$06
	dc.b		nD4,	$03,	nA3,	$03,	nG3,	$03,	nA3,	$06
	dc.b		nD4,	$09,	nRst,	$03,	nG4,	$03,	nRst,	$06
	dc.b		nG4,	$06,	nD4,	$06,	nG4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nG3,	$09,	nRst,	$03
	dc.b		nG4,	$03,	nRst,	$06,	nG4,	$06,	nD4,	$06
	dc.b		nG4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nG4,	$09,	nA4,	$03,	nA4,	$03,	nRst,	$03
	dc.b		nA4,	$03,	nRst,	$24,	nA4,	$03,	nA4,	$03
	dc.b		nRst,	$03,	nA4,	$03,	nRst,	$24
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		$03,	nD4,	$03,	nRst,	$06,	nD4,	$06,	nA3
	dc.b		$06,	nD4,	$03,	nA3,	$03,	nG3,	$03,	nA3
	dc.b		$06,	nD3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nRst,	$03,	nD4,	$03,	nRst,	$06,	nD4,	$06
	dc.b		nA3,	$06,	nD4,	$03,	nA3,	$03,	nG3,	$03
	dc.b		nA3,	$06,	nD4,	$09
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nRst,	$03,	nG4,	$03,	nRst,	$06,	nG4,	$06
	dc.b		nD4,	$06,	nG4,	$03,	nD4,	$03,	nC4,	$03
	dc.b		nD4,	$06,	nG3,	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nRst,	$03,	nG4,	$03,	nRst,	$06,	nG4,	$06
	dc.b		nD4,	$06,	nG4,	$03,	nD4,	$03,	nC4,	$03
	dc.b		nD4,	$06,	nG4,	$09,	nA4,	$03,	nA4,	$03
	dc.b		nRst,	$03,	nA4,	$03,	nRst,	$24,	nA4,	$03
	dc.b		nA4,	$03,	nRst,	$03,	nA4,	$03,	nRst,	$27
	dc.b		nD4,	$03,	nRst,	$06,	nD4,	$06,	nA3,	$06
	dc.b		nD4,	$03,	nA3,	$03,	nG3,	$03,	nA3,	$06
	dc.b		nD3,	$09,	nRst,	$03,	nD4,	$03,	nRst,	$06
	dc.b		nD4,	$06,	nA3,	$06,	nD4,	$03,	nA3,	$03
	dc.b		nG3,	$03,	nA3,	$06,	nD4,	$09,	nRst,	$03
	dc.b		nD4,	$03,	nRst,	$06,	nD4,	$06,	nA3,	$06
	dc.b		nD4,	$03,	nA3,	$03,	nG3,	$03,	nA3,	$06
	dc.b		nD3,	$09,	nRst,	$03,	nD4,	$03,	nRst,	$06
	dc.b		nD4,	$06,	nA3,	$06,	nD4,	$03,	nA3,	$03
	dc.b		nG3,	$03,	nA3,	$06,	nD4,	$09,	nRst,	$03
	dc.b		nG4,	$03,	nRst,	$06,	nG4,	$06,	nD4,	$06
	dc.b		nG4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nG3,	$09,	nRst,	$03,	nG4,	$03,	nRst,	$06
	dc.b		nG4,	$06,	nD4,	$06,	nG4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nG4,	$09,	nRst,	$03
	dc.b		nG4,	$03,	nRst,	$06,	nG4,	$06,	nD4,	$06
	dc.b		nG4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nG3,	$09,	nRst,	$03,	nG4,	$03,	nRst,	$06
	dc.b		nG4,	$06,	nD4,	$06,	nG4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nG4,	$09,	nA4,	$03
	dc.b		nA4,	$03,	nRst,	$03,	nA4,	$03,	nRst,	$24
	dc.b		nA4,	$03,	nA4,	$03,	nRst,	$03,	nA4,	$03
	dc.b		nRst,	$24,	nA4,	$1E,	nA4,	$06,	nB4,	$06
	dc.b		nC5,	$06,	nD5,	$1E,	nD5,	$06,	nC5,	$06
	dc.b		nB4,	$06,	nA4,	$1E,	nA4,	$06,	nB4,	$06
	dc.b		nC5,	$06,	nB4,	$1E,	nD5,	$06,	nC5,	$06
	dc.b		nB4,	$06,	nA4,	$1E,	nA4,	$06,	nB4,	$06
	dc.b		nC5,	$06,	nD5,	$1E,	nD5,	$06,	nE5,	$06
	dc.b		nF5,	$06,	nA5,	$1E,	nA5,	$06,	nB5,	$06
	dc.b		nA5,	$06,	nAb5,	$1E,	nAb5,	$06,	nF5,	$06
	dc.b		nE5,	$06,	nG4,	$12,	nFs4,	$12,	nF4,	$12
	dc.b		nE4,	$12,	nD4,	$06,	nBb3,	$06,	nA3,	$06
	dc.b		nG3,	$06,	nRst,	$03,	nD4,	$03,	nRst,	$06
	dc.b		nD4,	$06,	nA3,	$06,	nD4,	$03,	nA3,	$03
	dc.b		nG3,	$03,	nA3,	$06,	nD3,	$09,	nRst,	$03
	dc.b		nD4,	$03,	nRst,	$06,	nD4,	$06,	nA3,	$06
	dc.b		nD4,	$03,	nA3,	$03,	nG3,	$03,	nA3,	$06
	dc.b		nD4,	$09,	nRst,	$03,	nG4,	$03,	nRst,	$06
	dc.b		nG4,	$06,	nD4,	$06,	nG4,	$03,	nD4,	$03
	dc.b		nC4,	$03,	nD4,	$06,	nG3,	$09,	nRst,	$03
	dc.b		nG4,	$03,	nRst,	$06,	nG4,	$06,	nD4,	$06
	dc.b		nG4,	$03,	nD4,	$03,	nC4,	$03,	nD4,	$06
	dc.b		nG4,	$09,	nA4,	$03,	nA4,	$03,	nRst,	$03
	dc.b		nA4,	$03,	nRst,	$24,	nA4,	$03,	nA4,	$03
	dc.b		nRst,	$03,	nA4,	$03,	nRst,	$24
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
;	Set FM Voice	#
	smpsFMvoice	$02
	smpsStop

; FM4 Data
Boss_FM4:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$0C,	nD3,	$0C,	nD3,	$0C,	nD3,	$0C
	dc.b		nC3,	$0C,	nC3,	$0C,	nC3,	$0C,	nC3,	$0C
	dc.b		nBb2,	$0C,	nBb2,	$0C,	nBb2,	$0C,	nBb2,	$0C
	dc.b		nA2,	$0C,	nA2,	$0C,	nA2,	$0C,	nA2,	$0C
	dc.b		nD3,	$0C,	nD3,	$0C,	nD3,	$0C,	nD3,	$0C
	dc.b		nC3,	$0C,	nC3,	$0C,	nC3,	$0C,	nC3,	$0C
	dc.b		nBb2,	$0C,	nBb2,	$0C,	nBb2,	$0C,	nBb2,	$0C
	dc.b		nA2,	$0C,	nA2,	$0C,	nA2,	$0C,	nA2,	$0C
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nCs3,	$06
	dc.b		nCs3,	$06,	nCs3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nC3,	$06,	nB2,	$06,	nB2,	$06,	nB2,	$06
	dc.b		nA2,	$06,	nF3,	$06,	nE3,	$06,	nD3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
	dc.b		nD3,	$0C,	nD3,	$0C,	nD3,	$0C,	nD3,	$0C
	dc.b		nC3,	$0C,	nC3,	$0C,	nC3,	$0C,	nC3,	$0C
	dc.b		nBb2,	$0C,	nBb2,	$0C,	nBb2,	$0C,	nBb2,	$0C
	dc.b		nA2,	$0C,	nA2,	$0C,	nA2,	$0C,	nA2,	$0C
	dc.b		nD3,	$0C,	nD3,	$0C,	nD3,	$0C,	nD3,	$0C
	dc.b		nC3,	$0C,	nC3,	$0C,	nC3,	$0C,	nC3,	$0C
	dc.b		nBb2,	$0C,	nBb2,	$0C,	nBb2,	$0C,	nBb2,	$0C
	dc.b		nA2,	$0C,	nA2,	$0C,	nA2,	$0C,	nA2,	$0C
	dc.b		nD3,	$06,	nD3,	$06,	nD3,	$06,	nCs3,	$06
	dc.b		nCs3,	$06,	nCs3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nC3,	$06,	nB2,	$06,	nB2,	$06,	nB2,	$06
	dc.b		nA2,	$06,	nF3,	$06,	nE3,	$06,	nD3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nD3,	$06,	nD3,	$06,	nC3,	$06,	nB2,	$06
	dc.b		nBb2,	$06,	nB2,	$06,	nC3,	$06,	nCs3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nG3,	$06,	nG3,	$06,	nFs3,	$06,	nF3,	$06
	dc.b		nE3,	$06,	nF3,	$06,	nFs3,	$06,	nG3,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nA3,	$03,	nBb2,	$03,	nB2,	$03,	nB3,	$03
	dc.b		nC3,	$03,	nC4,	$03,	nCs3,	$03,	nCs4,	$03
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$03
	smpsStop

; FM5 Data
Boss_FM5:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$04
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nC5,	$03,	nRst,	$06,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$06,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$06
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$06,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$06,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$06,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$06,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nC4,	$03,	nRst,	$06,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$06
	dc.b		nC4,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$06,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$06,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nC4,	$03,	nRst,	$06,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$06
	dc.b		nC4,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$06,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$06,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$06,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$09
	dc.b		nC5,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$09,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$09
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$06,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$09,	nC5,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$09,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$09,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$06
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$09,	nC5,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$09
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$09,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$06,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$09,	nC5,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$09,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$09,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$09,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$09,	nC5,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$06,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$06
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$06,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$06,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$06,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$06,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$06,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$06
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$06,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$06,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$06,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$06,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nC4,	$03,	nRst,	$06,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$06
	dc.b		nC4,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$06,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$06,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nC4,	$03,	nRst,	$06,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$06
	dc.b		nC4,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$03,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$06,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nRst,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nRst,	$03
	dc.b		nC4,	$03,	nRst,	$06,	nC4,	$03,	nC4,	$03
	dc.b		nRst,	$03,	nC4,	$03,	nC4,	$03,	nC4,	$03
	dc.b		nC4,	$03,	nRst,	$06,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$09
	dc.b		nC5,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$09,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$09
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$06,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$09,	nC5,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$09,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$09,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$06
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$09,	nC5,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$09
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$09,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$06,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$09,	nC5,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$09,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$09,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$09,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$09,	nC5,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$06,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$06
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$06,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nC5,	$03,	nRst,	$06,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$06,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nRst,	$03,	nC5,	$03,	nRst,	$03
	dc.b		nC5,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nRst,	$03,	nC5,	$03
	dc.b		nRst,	$03,	nC5,	$03,	nC5,	$03,	nC5,	$03
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$04
	smpsStop

; PSG1 Data
Boss_PSG1:
	dc.b		nRst,	$03,	nF2,	$03,	nRst,	$06,	nF2,	$06
	dc.b		nD2,	$06,	nF2,	$03,	nD2,	$03,	nC2,	$03
	dc.b		nD2,	$06,	nA1,	$09,	nRst,	$03,	nF2,	$03
	dc.b		nRst,	$06,	nF2,	$06,	nD2,	$06,	nF2,	$03
	dc.b		nD2,	$03,	nC2,	$03,	nD2,	$06,	nA2,	$09
	dc.b		nRst,	$03,	nBb1,	$03,	nRst,	$06,	nBb1,	$06
	dc.b		nG1,	$06,	nBb1,	$03,	nG1,	$03,	nF1,	$03
	dc.b		nG1,	$06,	nD1,	$09,	nRst,	$03,	nBb1,	$03
	dc.b		nRst,	$06,	nBb1,	$06,	nG1,	$06,	nBb1,	$03
	dc.b		nG1,	$03,	nF1,	$03,	nG1,	$06,	nD2,	$09
	dc.b		nA2,	$03,	nA2,	$03,	nRst,	$03,	nA2,	$03
	dc.b		nRst,	$24,	nA2,	$03,	nA2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$0C,	nA1,	$03,	nBb0,	$03
	dc.b		nB0,	$03,	nB1,	$03,	nC1,	$03,	nC2,	$03
	dc.b		nCs1,	$03,	nCs2,	$03,	nRst,	$03,	nF2,	$03
	dc.b		nRst,	$06,	nF2,	$06,	nD2,	$06,	nF2,	$03
	dc.b		nD2,	$03,	nC2,	$03,	nD2,	$06,	nA1,	$09
	dc.b		nRst,	$03,	nF2,	$03,	nRst,	$06,	nF2,	$06
	dc.b		nD2,	$06,	nF2,	$03,	nD2,	$03,	nC2,	$03
	dc.b		nD2,	$06,	nA2,	$09,	nRst,	$03,	nF2,	$03
	dc.b		nRst,	$06,	nF2,	$06,	nD2,	$06,	nF2,	$03
	dc.b		nD2,	$03,	nC2,	$03,	nD2,	$06,	nA1,	$09
	dc.b		nRst,	$03,	nF2,	$03,	nRst,	$06,	nF2,	$06
	dc.b		nD2,	$06,	nF2,	$03,	nD2,	$03,	nC2,	$03
	dc.b		nD2,	$06,	nA2,	$09,	nRst,	$03,	nBb1,	$03
	dc.b		nRst,	$06,	nBb1,	$06,	nG1,	$06,	nBb1,	$03
	dc.b		nG1,	$03,	nF1,	$03,	nG1,	$06,	nD1,	$09
	dc.b		nRst,	$03,	nBb1,	$03,	nRst,	$06,	nBb1,	$06
	dc.b		nG1,	$06,	nBb1,	$03,	nG1,	$03,	nF1,	$03
	dc.b		nG1,	$06,	nD2,	$09,	nRst,	$03,	nBb1,	$03
	dc.b		nRst,	$06,	nBb1,	$06,	nG1,	$06,	nBb1,	$03
	dc.b		nG1,	$03,	nF1,	$03,	nG1,	$06,	nD1,	$09
	dc.b		nRst,	$03,	nBb1,	$03,	nRst,	$06,	nBb1,	$06
	dc.b		nG1,	$06,	nBb1,	$03,	nG1,	$03,	nF1,	$03
	dc.b		nG1,	$06,	nD2,	$09,	nA2,	$03,	nA2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$24,	nA2,	$03
	dc.b		nA2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$0C
	dc.b		nA1,	$03,	nBb0,	$03,	nB0,	$03,	nB1,	$03
	dc.b		nC1,	$03,	nC2,	$03,	nCs1,	$03,	nCs2,	$03
	dc.b		nD1,	$01,	nA1,	$01,	nD2,	$01,	nF1,	$01
	dc.b		nD2,	$01,	nD1,	$01,	nA1,	$01,	nD2,	$01
	dc.b		nF1,	$01,	nD2,	$01,	nD1,	$01,	nA1,	$01
	dc.b		nD2,	$01,	nF1,	$01,	nD2,	$01,	nD1,	$01
	dc.b		nA1,	$01,	nD2,	$01,	nF1,	$01,	nD2,	$01
	dc.b		nD1,	$01,	nA1,	$01,	nD2,	$01,	nF1,	$01
	dc.b		nD2,	$01,	nD1,	$01,	nA1,	$01,	nD2,	$01
	dc.b		nF1,	$01,	nD2,	$01,	nD1,	$01,	nA1,	$01
	dc.b		nD2,	$01,	nF1,	$01,	nD2,	$01,	nD1,	$01
	dc.b		nA1,	$01,	nD2,	$01,	nF1,	$01,	nD2,	$01
	dc.b		nD1,	$01,	nA1,	$01,	nD2,	$01,	nF1,	$01
	dc.b		nD2,	$01,	nD1,	$01,	nA1,	$01,	nD2,	$01
	dc.b		nC1,	$01,	nG1,	$01,	nC2,	$01,	nE1,	$01
	dc.b		nC2,	$01,	nC1,	$01,	nG1,	$01,	nC2,	$01
	dc.b		nE1,	$01,	nC2,	$01,	nC1,	$01,	nG1,	$01
	dc.b		nC2,	$01,	nE1,	$01,	nC2,	$01,	nC1,	$01
	dc.b		nG1,	$01,	nC2,	$01,	nE1,	$01,	nC2,	$01
	dc.b		nC1,	$01,	nG1,	$01,	nC2,	$01,	nE1,	$01
	dc.b		nC2,	$01,	nC1,	$01,	nG1,	$01,	nC2,	$01
	dc.b		nE1,	$01,	nC2,	$01,	nC1,	$01,	nG1,	$01
	dc.b		nC2,	$01,	nE1,	$01,	nC2,	$01,	nC1,	$01
	dc.b		nG1,	$01,	nC2,	$01,	nE1,	$01,	nC2,	$01
	dc.b		nC1,	$01,	nG1,	$01,	nC2,	$01,	nE1,	$01
	dc.b		nC2,	$01,	nC1,	$01,	nG1,	$01,	nC2,	$01
	dc.b		nBb0,	$01,	nF1,	$01,	nBb1,	$01,	nD1,	$01
	dc.b		nBb1,	$01,	nBb0,	$01,	nF1,	$01,	nBb1,	$01
	dc.b		nD1,	$01,	nBb1,	$01,	nBb0,	$01,	nF1,	$01
	dc.b		nBb1,	$01,	nD1,	$01,	nBb1,	$01,	nBb0,	$01
	dc.b		nF1,	$01,	nBb1,	$01,	nD1,	$01,	nBb1,	$01
	dc.b		nBb0,	$01,	nF1,	$01,	nBb1,	$01,	nD1,	$01
	dc.b		nBb1,	$01,	nBb0,	$01,	nF1,	$01,	nBb1,	$01
	dc.b		nD1,	$01,	nBb1,	$01,	nBb0,	$01,	nF1,	$01
	dc.b		nBb1,	$01,	nD1,	$01,	nBb1,	$01,	nBb0,	$01
	dc.b		nF1,	$01,	nBb1,	$01,	nD1,	$01,	nBb1,	$01
	dc.b		nBb0,	$01,	nF1,	$01,	nBb1,	$01,	nD1,	$01
	dc.b		nBb1,	$01,	nBb0,	$01,	nF1,	$01,	nBb1,	$01
	dc.b		nA0,	$01,	nE1,	$01,	nA1,	$01,	nCs1,	$01
	dc.b		nA1,	$01,	nA0,	$01,	nE1,	$01,	nA1,	$01
	dc.b		nCs1,	$01,	nA1,	$01,	nA0,	$01,	nE1,	$01
	dc.b		nA1,	$01,	nCs1,	$01,	nA1,	$01,	nA0,	$01
	dc.b		nE1,	$01,	nA1,	$01,	nCs1,	$01,	nA1,	$01
	dc.b		nA0,	$01,	nE1,	$01,	nA1,	$01,	nCs1,	$01
	dc.b		nA1,	$01,	nA0,	$01,	nE1,	$01,	nA1,	$01
	dc.b		nCs1,	$01,	nA1,	$01,	nA0,	$01,	nE1,	$01
	dc.b		nA1,	$01,	nCs1,	$01,	nA1,	$01,	nA0,	$01
	dc.b		nE1,	$01,	nA1,	$01,	nCs1,	$01,	nA1,	$01
	dc.b		nA0,	$01,	nE1,	$01,	nA1,	$01,	nCs1,	$01
	dc.b		nA1,	$01,	nA0,	$01,	nE1,	$01,	nA1,	$01
	dc.b		nA1,	$30,	nG1,	$30,	nF1,	$30,	nE1,	$30
	dc.b		nRst,	$7F,	$7F,	$22,	nA2,	$03,	nA2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$24,	nA2,	$03
	dc.b		nA2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$0C
	dc.b		nA1,	$03,	nBb0,	$03,	nB0,	$03,	nB1,	$03
	dc.b		nC1,	$03,	nC2,	$03,	nCs1,	$03,	nCs2,	$03
	dc.b		nRst,	$03,	nF2,	$03,	nRst,	$06,	nF2,	$06
	dc.b		nD2,	$06,	nF2,	$03,	nD2,	$03,	nC2,	$03
	dc.b		nD2,	$06,	nA1,	$09,	nRst,	$03,	nF2,	$03
	dc.b		nRst,	$06,	nF2,	$06,	nD2,	$06,	nF2,	$03
	dc.b		nD2,	$03,	nC2,	$03,	nD2,	$06,	nA2,	$09
	dc.b		nRst,	$03,	nBb1,	$03,	nRst,	$06,	nBb1,	$06
	dc.b		nG1,	$06,	nBb1,	$03,	nG1,	$03,	nF1,	$03
	dc.b		nG1,	$06,	nD1,	$09,	nRst,	$03,	nBb1,	$03
	dc.b		nRst,	$06,	nBb1,	$06,	nG1,	$06,	nBb1,	$03
	dc.b		nG1,	$03,	nF1,	$03,	nG1,	$06,	nD2,	$09
	dc.b		nA2,	$03,	nA2,	$03,	nRst,	$03,	nA2,	$03
	dc.b		nRst,	$24,	nA2,	$03,	nA2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$0C,	nA1,	$03,	nBb0,	$03
	dc.b		nB0,	$03,	nB1,	$03,	nC1,	$03,	nC2,	$03
	dc.b		nCs1,	$03,	nCs2,	$03,	nRst,	$03,	nF2,	$03
	dc.b		nRst,	$06,	nF2,	$06,	nD2,	$06,	nF2,	$03
	dc.b		nD2,	$03,	nC2,	$03,	nD2,	$06,	nA1,	$09
	dc.b		nRst,	$03,	nF2,	$03,	nRst,	$06,	nF2,	$06
	dc.b		nD2,	$06,	nF2,	$03,	nD2,	$03,	nC2,	$03
	dc.b		nD2,	$06,	nA2,	$09,	nRst,	$03,	nF2,	$03
	dc.b		nRst,	$06,	nF2,	$06,	nD2,	$06,	nF2,	$03
	dc.b		nD2,	$03,	nC2,	$03,	nD2,	$06,	nA1,	$09
	dc.b		nRst,	$03,	nF2,	$03,	nRst,	$06,	nF2,	$06
	dc.b		nD2,	$06,	nF2,	$03,	nD2,	$03,	nC2,	$03
	dc.b		nD2,	$06,	nA2,	$09,	nRst,	$03,	nBb1,	$03
	dc.b		nRst,	$06,	nBb1,	$06,	nG1,	$06,	nBb1,	$03
	dc.b		nG1,	$03,	nF1,	$03,	nG1,	$06,	nD1,	$09
	dc.b		nRst,	$03,	nBb1,	$03,	nRst,	$06,	nBb1,	$06
	dc.b		nG1,	$06,	nBb1,	$03,	nG1,	$03,	nF1,	$03
	dc.b		nG1,	$06,	nD2,	$09,	nRst,	$03,	nBb1,	$03
	dc.b		nRst,	$06,	nBb1,	$06,	nG1,	$06,	nBb1,	$03
	dc.b		nG1,	$03,	nF1,	$03,	nG1,	$06,	nD1,	$09
	dc.b		nRst,	$03,	nBb1,	$03,	nRst,	$06,	nBb1,	$06
	dc.b		nG1,	$06,	nBb1,	$03,	nG1,	$03,	nF1,	$03
	dc.b		nG1,	$06,	nD2,	$09,	nA2,	$03,	nA2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$24,	nA2,	$03
	dc.b		nA2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$0C
	dc.b		nA1,	$03,	nBb0,	$03,	nB0,	$03,	nB1,	$03
	dc.b		nC1,	$03,	nC2,	$03,	nCs1,	$03,	nCs2,	$03
	dc.b		nD1,	$01,	nA1,	$01,	nD2,	$01,	nF1,	$01
	dc.b		nD2,	$01,	nD1,	$01,	nA1,	$01,	nD2,	$01
	dc.b		nF1,	$01,	nD2,	$01,	nD1,	$01,	nA1,	$01
	dc.b		nD2,	$01,	nF1,	$01,	nD2,	$01,	nD1,	$01
	dc.b		nA1,	$01,	nD2,	$01,	nF1,	$01,	nD2,	$01
	dc.b		nD1,	$01,	nA1,	$01,	nD2,	$01,	nF1,	$01
	dc.b		nD2,	$01,	nD1,	$01,	nA1,	$01,	nD2,	$01
	dc.b		nF1,	$01,	nD2,	$01,	nD1,	$01,	nA1,	$01
	dc.b		nD2,	$01,	nF1,	$01,	nD2,	$01,	nD1,	$01
	dc.b		nA1,	$01,	nD2,	$01,	nF1,	$01,	nD2,	$01
	dc.b		nD1,	$01,	nA1,	$01,	nD2,	$01,	nF1,	$01
	dc.b		nD2,	$01,	nD1,	$01,	nA1,	$01,	nD2,	$01
	dc.b		nC1,	$01,	nG1,	$01,	nC2,	$01,	nE1,	$01
	dc.b		nC2,	$01,	nC1,	$01,	nG1,	$01,	nC2,	$01
	dc.b		nE1,	$01,	nC2,	$01,	nC1,	$01,	nG1,	$01
	dc.b		nC2,	$01,	nE1,	$01,	nC2,	$01,	nC1,	$01
	dc.b		nG1,	$01,	nC2,	$01,	nE1,	$01,	nC2,	$01
	dc.b		nC1,	$01,	nG1,	$01,	nC2,	$01,	nE1,	$01
	dc.b		nC2,	$01,	nC1,	$01,	nG1,	$01,	nC2,	$01
	dc.b		nE1,	$01,	nC2,	$01,	nC1,	$01,	nG1,	$01
	dc.b		nC2,	$01,	nE1,	$01,	nC2,	$01,	nC1,	$01
	dc.b		nG1,	$01,	nC2,	$01,	nE1,	$01,	nC2,	$01
	dc.b		nC1,	$01,	nG1,	$01,	nC2,	$01,	nE1,	$01
	dc.b		nC2,	$01,	nC1,	$01,	nG1,	$01,	nC2,	$01
	dc.b		nBb0,	$01,	nF1,	$01,	nBb1,	$01,	nD1,	$01
	dc.b		nBb1,	$01,	nBb0,	$01,	nF1,	$01,	nBb1,	$01
	dc.b		nD1,	$01,	nBb1,	$01,	nBb0,	$01,	nF1,	$01
	dc.b		nBb1,	$01,	nD1,	$01,	nBb1,	$01,	nBb0,	$01
	dc.b		nF1,	$01,	nBb1,	$01,	nD1,	$01,	nBb1,	$01
	dc.b		nBb0,	$01,	nF1,	$01,	nBb1,	$01,	nD1,	$01
	dc.b		nBb1,	$01,	nBb0,	$01,	nF1,	$01,	nBb1,	$01
	dc.b		nD1,	$01,	nBb1,	$01,	nBb0,	$01,	nF1,	$01
	dc.b		nBb1,	$01,	nD1,	$01,	nBb1,	$01,	nBb0,	$01
	dc.b		nF1,	$01,	nBb1,	$01,	nD1,	$01,	nBb1,	$01
	dc.b		nBb0,	$01,	nF1,	$01,	nBb1,	$01,	nD1,	$01
	dc.b		nBb1,	$01,	nBb0,	$01,	nF1,	$01,	nBb1,	$01
	dc.b		nA0,	$01,	nE1,	$01,	nA1,	$01,	nCs1,	$01
	dc.b		nA1,	$01,	nA0,	$01,	nE1,	$01,	nA1,	$01
	dc.b		nCs1,	$01,	nA1,	$01,	nA0,	$01,	nE1,	$01
	dc.b		nA1,	$01,	nCs1,	$01,	nA1,	$01,	nA0,	$01
	dc.b		nE1,	$01,	nA1,	$01,	nCs1,	$01,	nA1,	$01
	dc.b		nA0,	$01,	nE1,	$01,	nA1,	$01,	nCs1,	$01
	dc.b		nA1,	$01,	nA0,	$01,	nE1,	$01,	nA1,	$01
	dc.b		nCs1,	$01,	nA1,	$01,	nA0,	$01,	nE1,	$01
	dc.b		nA1,	$01,	nCs1,	$01,	nA1,	$01,	nA0,	$01
	dc.b		nE1,	$01,	nA1,	$01,	nCs1,	$01,	nA1,	$01
	dc.b		nA0,	$01,	nE1,	$01,	nA1,	$01,	nCs1,	$01
	dc.b		nA1,	$01,	nA0,	$01,	nE1,	$01,	nA1,	$01
	dc.b		nA1,	$30,	nG1,	$30,	nF1,	$30,	nE1,	$30
	dc.b		nRst,	$7F,	$7F,	$22,	nA2,	$03,	nA2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$24,	nA2,	$03
	dc.b		nA2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$0C
	dc.b		nA1,	$03,	nBb0,	$03,	nB0,	$03,	nB1,	$03
	dc.b		nC1,	$03,	nC2,	$03,	nCs1,	$03,	nCs2,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$00
	smpsStop

; PSG2 Data
Boss_PSG2:
	dc.b		nRst,	$03,	nD2,	$03,	nRst,	$06,	nD2,	$06
	dc.b		nA1,	$06,	nD2,	$03,	nA1,	$03,	nG1,	$03
	dc.b		nA1,	$06,	nD1,	$09,	nRst,	$03,	nD2,	$03
	dc.b		nRst,	$06,	nD2,	$06,	nA1,	$06,	nD2,	$03
	dc.b		nA1,	$03,	nG1,	$03,	nA1,	$06,	nD2,	$09
	dc.b		nRst,	$03,	nG2,	$03,	nRst,	$06,	nG2,	$06
	dc.b		nD2,	$06,	nG2,	$03,	nD2,	$03,	nC2,	$03
	dc.b		nD2,	$06,	nG1,	$09,	nRst,	$03,	nG2,	$03
	dc.b		nRst,	$06,	nG2,	$06,	nD2,	$06,	nG2,	$03
	dc.b		nD2,	$03,	nC2,	$03,	nD2,	$06,	nG2,	$09
	dc.b		nA1,	$03,	nA1,	$03,	nRst,	$03,	nA1,	$03
	dc.b		nRst,	$24,	nA1,	$03,	nA1,	$03,	nRst,	$03
	dc.b		nA1,	$03,	nRst,	$0C,	nA0,	$03,	nC0,	$03
	dc.b		nC0,	$03,	nB0,	$03,	nC0,	$03,	nC1,	$03
	dc.b		nCs0,	$03,	nCs1,	$03,	nA2,	$24,	nF2,	$06
	dc.b		nG2,	$03,	nF2,	$03,	nRst,	$03,	nD2,	$03
	dc.b		nRst,	$09,	nD2,	$03,	nF2,	$03,	nG2,	$03
	dc.b		nAb2,	$03,	nA2,	$03,	nAb2,	$03,	nG2,	$03
	dc.b		nF2,	$06,	nG2,	$06,	nA2,	$24,	nF2,	$06
	dc.b		nG2,	$03,	nF2,	$03,	nRst,	$03,	nD2,	$03
	dc.b		nRst,	$09,	nD2,	$03,	nF2,	$03,	nG2,	$03
	dc.b		nAb2,	$03,	nA2,	$03,	nAb2,	$03,	nG2,	$03
	dc.b		nF2,	$06,	nG2,	$06,	nD3,	$24,	nBb2,	$06
	dc.b		nC3,	$03,	nBb2,	$03,	nRst,	$03,	nG2,	$03
	dc.b		nRst,	$09,	nG2,	$03,	nBb2,	$03,	nC3,	$03
	dc.b		nCs3,	$03,	nD3,	$03,	nCs3,	$03,	nC3,	$03
	dc.b		nBb2,	$06,	nC3,	$06,	nD3,	$24,	nBb2,	$06
	dc.b		nC3,	$03,	nBb2,	$03,	nRst,	$03,	nG2,	$03
	dc.b		nRst,	$09,	nG2,	$03,	nBb2,	$03,	nC3,	$03
	dc.b		nCs3,	$03,	nD3,	$03,	nCs3,	$03,	nC3,	$03
	dc.b		nBb2,	$06,	nC3,	$06,	nD2,	$18,	nCs2,	$18
	dc.b		nE2,	$18,	nA2,	$18,	nD0,	$01,	nA0,	$01
	dc.b		nD1,	$01,	nF0,	$01,	nD1,	$01,	nD0,	$01
	dc.b		nA0,	$01,	nD1,	$01,	nF0,	$01,	nD1,	$01
	dc.b		nD0,	$01,	nA0,	$01,	nD1,	$01,	nF0,	$01
	dc.b		nD1,	$01,	nD0,	$01,	nA0,	$01,	nD1,	$01
	dc.b		nF0,	$01,	nD1,	$01,	nD0,	$01,	nA0,	$01
	dc.b		nD1,	$01,	nF0,	$01,	nD1,	$01,	nD0,	$01
	dc.b		nA0,	$01,	nD1,	$01,	nF0,	$01,	nD1,	$01
	dc.b		nD0,	$01,	nA0,	$01,	nD1,	$01,	nF0,	$01
	dc.b		nD1,	$01,	nD0,	$01,	nA0,	$01,	nD1,	$01
	dc.b		nF0,	$01,	nD1,	$01,	nD0,	$01,	nA0,	$01
	dc.b		nD1,	$01,	nF0,	$01,	nD1,	$01,	nD0,	$01
	dc.b		nA0,	$01,	nD1,	$01,	nC0,	$01,	nG0,	$01
	dc.b		nC1,	$01,	nE0,	$01,	nC1,	$01,	nC0,	$01
	dc.b		nG0,	$01,	nC1,	$01,	nE0,	$01,	nC1,	$01
	dc.b		nC0,	$01,	nG0,	$01,	nC1,	$01,	nE0,	$01
	dc.b		nC1,	$01,	nC0,	$01,	nG0,	$01,	nC1,	$01
	dc.b		nE0,	$01,	nC1,	$01,	nC0,	$01,	nG0,	$01
	dc.b		nC1,	$01,	nE0,	$01,	nC1,	$01,	nC0,	$01
	dc.b		nG0,	$01,	nC1,	$01,	nE0,	$01,	nC1,	$01
	dc.b		nC0,	$01,	nG0,	$01,	nC1,	$01,	nE0,	$01
	dc.b		nC1,	$01,	nC0,	$01,	nG0,	$01,	nC1,	$01
	dc.b		nE0,	$01,	nC1,	$01,	nC0,	$01,	nG0,	$01
	dc.b		nC1,	$01,	nE0,	$01,	nC1,	$01,	nC0,	$01
	dc.b		nG0,	$01,	nC1,	$01,	nC0,	$01,	nF0,	$01
	dc.b		nBb0,	$01,	nD0,	$01,	nBb0,	$01,	nC0,	$01
	dc.b		nF0,	$01,	nBb0,	$01,	nD0,	$01,	nBb0,	$01
	dc.b		nC0,	$01,	nF0,	$01,	nBb0,	$01,	nD0,	$01
	dc.b		nBb0,	$01,	nC0,	$01,	nF0,	$01,	nBb0,	$01
	dc.b		nD0,	$01,	nBb0,	$01,	nC0,	$01,	nF0,	$01
	dc.b		nBb0,	$01,	nD0,	$01,	nBb0,	$01,	nC0,	$01
	dc.b		nF0,	$01,	nBb0,	$01,	nD0,	$01,	nBb0,	$01
	dc.b		nC0,	$01,	nF0,	$01,	nBb0,	$01,	nD0,	$01
	dc.b		nBb0,	$01,	nC0,	$01,	nF0,	$01,	nBb0,	$01
	dc.b		nD0,	$01,	nBb0,	$01,	nC0,	$01,	nF0,	$01
	dc.b		nBb0,	$01,	nD0,	$01,	nBb0,	$01,	nC0,	$01
	dc.b		nF0,	$01,	nBb0,	$01,	nC0,	$01,	nE0,	$01
	dc.b		nA0,	$01,	nCs0,	$01,	nA0,	$01,	nC0,	$01
	dc.b		nE0,	$01,	nA0,	$01,	nCs0,	$01,	nA0,	$01
	dc.b		nC0,	$01,	nE0,	$01,	nA0,	$01,	nCs0,	$01
	dc.b		nA0,	$01,	nC0,	$01,	nE0,	$01,	nA0,	$01
	dc.b		nCs0,	$01,	nA0,	$01,	nC0,	$01,	nE0,	$01
	dc.b		nA0,	$01,	nCs0,	$01,	nA0,	$01,	nC0,	$01
	dc.b		nE0,	$01,	nA0,	$01,	nCs0,	$01,	nA0,	$01
	dc.b		nC0,	$01,	nE0,	$01,	nA0,	$01,	nCs0,	$01
	dc.b		nA0,	$01,	nC0,	$01,	nE0,	$01,	nA0,	$01
	dc.b		nCs0,	$01,	nA0,	$01,	nC0,	$01,	nE0,	$01
	dc.b		nA0,	$01,	nCs0,	$01,	nA0,	$01,	nC0,	$01
	dc.b		nE0,	$01,	nA0,	$01,	nF1,	$30,	nE1,	$30
	dc.b		nD1,	$30,	nCs1,	$30,	nRst,	$7F,	$7F,	$22
	dc.b		nA1,	$03,	nA1,	$03,	nRst,	$03,	nA1,	$03
	dc.b		nRst,	$24,	nA1,	$03,	nA1,	$03,	nRst,	$03
	dc.b		nA1,	$03,	nRst,	$0C,	nA0,	$03,	nC0,	$03
	dc.b		nC0,	$03,	nB0,	$03,	nC0,	$03,	nC1,	$03
	dc.b		nCs0,	$03,	nCs1,	$03,	nRst,	$03,	nD2,	$03
	dc.b		nRst,	$06,	nD2,	$06,	nA1,	$06,	nD2,	$03
	dc.b		nA1,	$03,	nG1,	$03,	nA1,	$06,	nD1,	$09
	dc.b		nRst,	$03,	nD2,	$03,	nRst,	$06,	nD2,	$06
	dc.b		nA1,	$06,	nD2,	$03,	nA1,	$03,	nG1,	$03
	dc.b		nA1,	$06,	nD2,	$09,	nRst,	$03,	nG2,	$03
	dc.b		nRst,	$06,	nG2,	$06,	nD2,	$06,	nG2,	$03
	dc.b		nD2,	$03,	nC2,	$03,	nD2,	$06,	nG1,	$09
	dc.b		nRst,	$03,	nG2,	$03,	nRst,	$06,	nG2,	$06
	dc.b		nD2,	$06,	nG2,	$03,	nD2,	$03,	nC2,	$03
	dc.b		nD2,	$06,	nG2,	$09,	nA1,	$03,	nA1,	$03
	dc.b		nRst,	$03,	nA1,	$03,	nRst,	$24,	nA1,	$03
	dc.b		nA1,	$03,	nRst,	$03,	nA1,	$03,	nRst,	$0C
	dc.b		nA0,	$03,	nC0,	$03,	nC0,	$03,	nB0,	$03
	dc.b		nC0,	$03,	nC1,	$03,	nCs0,	$03,	nCs1,	$03
	dc.b		nA2,	$24,	nF2,	$06,	nG2,	$03,	nF2,	$03
	dc.b		nRst,	$03,	nD2,	$03,	nRst,	$09,	nD2,	$03
	dc.b		nF2,	$03,	nG2,	$03,	nAb2,	$03,	nA2,	$03
	dc.b		nAb2,	$03,	nG2,	$03,	nF2,	$06,	nG2,	$06
	dc.b		nA2,	$24,	nF2,	$06,	nG2,	$03,	nF2,	$03
	dc.b		nRst,	$03,	nD2,	$03,	nRst,	$09,	nD2,	$03
	dc.b		nF2,	$03,	nG2,	$03,	nAb2,	$03,	nA2,	$03
	dc.b		nAb2,	$03,	nG2,	$03,	nF2,	$06,	nG2,	$06
	dc.b		nD3,	$24,	nBb2,	$06,	nC3,	$03,	nBb2,	$03
	dc.b		nRst,	$03,	nG2,	$03,	nRst,	$09,	nG2,	$03
	dc.b		nBb2,	$03,	nC3,	$03,	nCs3,	$03,	nD3,	$03
	dc.b		nCs3,	$03,	nC3,	$03,	nBb2,	$06,	nC3,	$06
	dc.b		nD3,	$24,	nBb2,	$06,	nC3,	$03,	nBb2,	$03
	dc.b		nRst,	$03,	nG2,	$03,	nRst,	$09,	nG2,	$03
	dc.b		nBb2,	$03,	nC3,	$03,	nCs3,	$03,	nD3,	$03
	dc.b		nCs3,	$03,	nC3,	$03,	nBb2,	$06,	nC3,	$06
	dc.b		nD2,	$18,	nCs2,	$18,	nE2,	$18,	nA2,	$18
	dc.b		nD0,	$01,	nA0,	$01,	nD1,	$01,	nF0,	$01
	dc.b		nD1,	$01,	nD0,	$01,	nA0,	$01,	nD1,	$01
	dc.b		nF0,	$01,	nD1,	$01,	nD0,	$01,	nA0,	$01
	dc.b		nD1,	$01,	nF0,	$01,	nD1,	$01,	nD0,	$01
	dc.b		nA0,	$01,	nD1,	$01,	nF0,	$01,	nD1,	$01
	dc.b		nD0,	$01,	nA0,	$01,	nD1,	$01,	nF0,	$01
	dc.b		nD1,	$01,	nD0,	$01,	nA0,	$01,	nD1,	$01
	dc.b		nF0,	$01,	nD1,	$01,	nD0,	$01,	nA0,	$01
	dc.b		nD1,	$01,	nF0,	$01,	nD1,	$01,	nD0,	$01
	dc.b		nA0,	$01,	nD1,	$01,	nF0,	$01,	nD1,	$01
	dc.b		nD0,	$01,	nA0,	$01,	nD1,	$01,	nF0,	$01
	dc.b		nD1,	$01,	nD0,	$01,	nA0,	$01,	nD1,	$01
	dc.b		nC0,	$01,	nG0,	$01,	nC1,	$01,	nE0,	$01
	dc.b		nC1,	$01,	nC0,	$01,	nG0,	$01,	nC1,	$01
	dc.b		nE0,	$01,	nC1,	$01,	nC0,	$01,	nG0,	$01
	dc.b		nC1,	$01,	nE0,	$01,	nC1,	$01,	nC0,	$01
	dc.b		nG0,	$01,	nC1,	$01,	nE0,	$01,	nC1,	$01
	dc.b		nC0,	$01,	nG0,	$01,	nC1,	$01,	nE0,	$01
	dc.b		nC1,	$01,	nC0,	$01,	nG0,	$01,	nC1,	$01
	dc.b		nE0,	$01,	nC1,	$01,	nC0,	$01,	nG0,	$01
	dc.b		nC1,	$01,	nE0,	$01,	nC1,	$01,	nC0,	$01
	dc.b		nG0,	$01,	nC1,	$01,	nE0,	$01,	nC1,	$01
	dc.b		nC0,	$01,	nG0,	$01,	nC1,	$01,	nE0,	$01
	dc.b		nC1,	$01,	nC0,	$01,	nG0,	$01,	nC1,	$01
	dc.b		nC0,	$01,	nF0,	$01,	nBb0,	$01,	nD0,	$01
	dc.b		nBb0,	$01,	nC0,	$01,	nF0,	$01,	nBb0,	$01
	dc.b		nD0,	$01,	nBb0,	$01,	nC0,	$01,	nF0,	$01
	dc.b		nBb0,	$01,	nD0,	$01,	nBb0,	$01,	nC0,	$01
	dc.b		nF0,	$01,	nBb0,	$01,	nD0,	$01,	nBb0,	$01
	dc.b		nC0,	$01,	nF0,	$01,	nBb0,	$01,	nD0,	$01
	dc.b		nBb0,	$01,	nC0,	$01,	nF0,	$01,	nBb0,	$01
	dc.b		nD0,	$01,	nBb0,	$01,	nC0,	$01,	nF0,	$01
	dc.b		nBb0,	$01,	nD0,	$01,	nBb0,	$01,	nC0,	$01
	dc.b		nF0,	$01,	nBb0,	$01,	nD0,	$01,	nBb0,	$01
	dc.b		nC0,	$01,	nF0,	$01,	nBb0,	$01,	nD0,	$01
	dc.b		nBb0,	$01,	nC0,	$01,	nF0,	$01,	nBb0,	$01
	dc.b		nC0,	$01,	nE0,	$01,	nA0,	$01,	nCs0,	$01
	dc.b		nA0,	$01,	nC0,	$01,	nE0,	$01,	nA0,	$01
	dc.b		nCs0,	$01,	nA0,	$01,	nC0,	$01,	nE0,	$01
	dc.b		nA0,	$01,	nCs0,	$01,	nA0,	$01,	nC0,	$01
	dc.b		nE0,	$01,	nA0,	$01,	nCs0,	$01,	nA0,	$01
	dc.b		nC0,	$01,	nE0,	$01,	nA0,	$01,	nCs0,	$01
	dc.b		nA0,	$01,	nC0,	$01,	nE0,	$01,	nA0,	$01
	dc.b		nCs0,	$01,	nA0,	$01,	nC0,	$01,	nE0,	$01
	dc.b		nA0,	$01,	nCs0,	$01,	nA0,	$01,	nC0,	$01
	dc.b		nE0,	$01,	nA0,	$01,	nCs0,	$01,	nA0,	$01
	dc.b		nC0,	$01,	nE0,	$01,	nA0,	$01,	nCs0,	$01
	dc.b		nA0,	$01,	nC0,	$01,	nE0,	$01,	nA0,	$01
	dc.b		nF1,	$30,	nE1,	$30,	nD1,	$30,	nCs1,	$30
	dc.b		nRst,	$7F,	$7F,	$22,	nA1,	$03,	nA1,	$03
	dc.b		nRst,	$03,	nA1,	$03,	nRst,	$24,	nA1,	$03
	dc.b		nA1,	$03,	nRst,	$03,	nA1,	$03,	nRst,	$0C
	dc.b		nA0,	$03,	nC0,	$03,	nC0,	$03,	nB0,	$03
	dc.b		nC0,	$03,	nC1,	$03,	nCs0,	$03,	nCs1,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$00
	smpsStop

; PSG3 Data
Boss_PSG3:
	dc.b		nRst,	$7F,	$7F,	$22,	nE2,	$24,	nC2,	$06
	dc.b		nD2,	$03,	nC2,	$03,	nRst,	$03,	nA1,	$03
	dc.b		nRst,	$09,	nA1,	$03,	nC2,	$03,	nD2,	$03
	dc.b		nEb2,	$03,	nE2,	$03,	nEb2,	$03,	nD2,	$03
	dc.b		nC2,	$06,	nD2,	$06,	nE2,	$24,	nC2,	$06
	dc.b		nD2,	$03,	nC2,	$03,	nRst,	$03,	nA1,	$03
	dc.b		nRst,	$09,	nA1,	$03,	nC2,	$03,	nD2,	$03
	dc.b		nEb2,	$03,	nE2,	$03,	nEb2,	$03,	nD2,	$03
	dc.b		nC2,	$06,	nD2,	$06,	nA2,	$24,	nF2,	$06
	dc.b		nG2,	$03,	nF2,	$03,	nRst,	$03,	nD2,	$03
	dc.b		nRst,	$09,	nD2,	$03,	nF2,	$03,	nG2,	$03
	dc.b		nAb2,	$03,	nA2,	$03,	nAb2,	$03,	nG2,	$03
	dc.b		nF2,	$06,	nG2,	$06,	nA2,	$24,	nF2,	$06
	dc.b		nG2,	$03,	nF2,	$03,	nRst,	$03,	nD2,	$03
	dc.b		nRst,	$09,	nD2,	$03,	nF2,	$03,	nG2,	$03
	dc.b		nAb2,	$03,	nA2,	$03,	nAb2,	$03,	nG2,	$03
	dc.b		nF2,	$06,	nG2,	$06,	nA1,	$18,	nA1,	$18
	dc.b		nA1,	$18,	nE2,	$18,	nRst,	$7F,	$41,	nD1
	dc.b		$30,	nC1,	$30,	nBb0,	$30,	nA0,	$30,	nRst
	dc.b		$70,	$70,	$70,	$70,	$70,	$70,	nE2,	$24
	dc.b		nC2,	$06,	nD2,	$03,	nC2,	$03,	nRst,	$03
	dc.b		nA1,	$03,	nRst,	$09,	nA1,	$03,	nC2,	$03
	dc.b		nD2,	$03,	nEb2,	$03,	nE2,	$03,	nEb2,	$03
	dc.b		nD2,	$03,	nC2,	$06,	nD2,	$06,	nE2,	$24
	dc.b		nC2,	$06,	nD2,	$03,	nC2,	$03,	nRst,	$03
	dc.b		nA1,	$03,	nRst,	$09,	nA1,	$03,	nC2,	$03
	dc.b		nD2,	$03,	nEb2,	$03,	nE2,	$03,	nEb2,	$03
	dc.b		nD2,	$03,	nC2,	$06,	nD2,	$06,	nA2,	$24
	dc.b		nF2,	$06,	nG2,	$03,	nF2,	$03,	nRst,	$03
	dc.b		nD2,	$03,	nRst,	$09,	nD2,	$03,	nF2,	$03
	dc.b		nG2,	$03,	nAb2,	$03,	nA2,	$03,	nAb2,	$03
	dc.b		nG2,	$03,	nF2,	$06,	nG2,	$06,	nA2,	$24
	dc.b		nF2,	$06,	nG2,	$03,	nF2,	$03,	nRst,	$03
	dc.b		nD2,	$03,	nRst,	$09,	nD2,	$03,	nF2,	$03
	dc.b		nG2,	$03,	nAb2,	$03,	nA2,	$03,	nAb2,	$03
	dc.b		nG2,	$03,	nF2,	$06,	nG2,	$06,	nA1,	$18
	dc.b		nA1,	$18,	nA1,	$18,	nE2,	$18,	nRst,	$7F
	dc.b		$41,	nD1,	$30,	nC1,	$30,	nBb0,	$30,	nA0
	dc.b		$30,	nRst,	$7F,	$7F,	$7F,	$03
;	Set PSG Voice	#
	smpsPSGvoice	$00
	smpsStop

Boss_Voices:
;	Voice 00
;	$3C,$01,$00,$00,$00,$1F,$1F,$15,$1F,$11,$0D,$12,$05,$07,$04,$09,$02,$55,$3A,$25,$1A,$1A,$00,$07,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$15,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$05,	$12,	$0D,	$11
	smpsVcDecayRate2	$02,	$09,	$04,	$07
	smpsVcDecayLevel	$01,	$02,	$03,	$05
	smpsVcReleaseRate	$0A,	$05,	$0A,	$05
	smpsVcTotalLevel	$00,	$07,	$00,	$1A

;	Voice 01
;	$05,$36,$32,$7C,$72,$1F,$5F,$1F,$1F,$07,$0B,$0A,$0B,$00,$07,$07,$07,$55,$45,$55,$45,$23,$05,$23,$03
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$07,	$07,	$03,	$03
	smpsVcCoarseFreq	$02,	$0C,	$02,	$06
	smpsVcRateScale		$00,	$00,	$01,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0B,	$0A,	$0B,	$07
	smpsVcDecayRate2	$07,	$07,	$07,	$00
	smpsVcDecayLevel	$04,	$05,	$04,	$05
	smpsVcReleaseRate	$05,	$05,	$05,	$05
	smpsVcTotalLevel	$03,	$23,	$05,	$23

;	Voice 02
;	$04,$36,$32,$7C,$72,$1F,$5F,$1F,$1F,$07,$0B,$0A,$0B,$00,$07,$07,$07,$59,$4E,$55,$45,$23,$05,$23,$05
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$07,	$07,	$03,	$03
	smpsVcCoarseFreq	$02,	$0C,	$02,	$06
	smpsVcRateScale		$00,	$00,	$01,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0B,	$0A,	$0B,	$07
	smpsVcDecayRate2	$07,	$07,	$07,	$00
	smpsVcDecayLevel	$04,	$05,	$04,	$05
	smpsVcReleaseRate	$05,	$05,	$0E,	$09
	smpsVcTotalLevel	$05,	$23,	$05,	$23

;	Voice 03
;	$01,$70,$32,$32,$71,$5F,$5F,$1F,$5F,$14,$0B,$0D,$00,$09,$03,$03,$03,$20,$11,$22,$06,$08,$17,$1E,$00
;				#
	smpsVcAlgorithm		$01
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$07,	$03,	$03,	$07
	smpsVcCoarseFreq	$01,	$02,	$02,	$00
	smpsVcRateScale		$01,	$00,	$01,	$01
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$0D,	$0B,	$14
	smpsVcDecayRate2	$03,	$03,	$03,	$09
	smpsVcDecayLevel	$00,	$02,	$01,	$02
	smpsVcReleaseRate	$06,	$02,	$01,	$00
	smpsVcTotalLevel	$00,	$1E,	$17,	$08

;	Voice 04
;	$38,$62,$62,$0E,$0D,$1F,$1F,$1F,$1F,$00,$11,$00,$11,$00,$12,$1F,$12,$3F,$2F,$2F,$4F,$00,$10,$00,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$06,	$06
	smpsVcCoarseFreq	$0D,	$0E,	$02,	$02
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$11,	$00,	$11,	$00
	smpsVcDecayRate2	$12,	$1F,	$12,	$00
	smpsVcDecayLevel	$04,	$02,	$02,	$03
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$00,	$10,	$00
	even
