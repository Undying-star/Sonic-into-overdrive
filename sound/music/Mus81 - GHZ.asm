; =============================================================================================
; Project Name:		GHZ1
; Created:		30th March 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

GHZ1_Header:
;	Voice Pointer	location
	smpsHeaderVoice	GHZ1_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$05,	$00
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$00

;	DAC Pointer	location
	smpsHeaderDAC	GHZ1_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	GHZ1_FM1,	smpsPitch00,	$0E
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	GHZ1_FM2,	smpsPitch00,	$0E
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	GHZ1_FM3,	smpsPitch00,	$0E
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	GHZ1_FM4,	smpsPitch00,	$0E

; DAC Data
GHZ1_DAC:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$07,	dKick,	$06,	dSnare,	$06,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dSnare,	$06,	dSnare,	$06
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dSnare,	$06,	dSnare,	$06
	dc.b		dSnare,	$06,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dSnare,	$06
	dc.b		dSnare,	$06,	dSnare,	$06,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dSnare,	$06,	dSnare,	$06,	dSnare,	$06,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dSnare,	$06,	dSnare,	$06,	dSnare,	$06
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dSnare,	$06,	dSnare,	$06
	dc.b		dSnare,	$06,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dSnare,	$06
	dc.b		dSnare,	$06,	dSnare,	$06,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$0C,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dSnare,	$06,	dSnare,	$06,	dSnare,	$06
	smpsStop

; FM1 Data
GHZ1_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nA5,	$03,	nF5,	$03,	nA5,	$03,	nF5,	$03
	dc.b		nB5,	$03,	nG5,	$03,	nB5,	$03,	nG5,	$03
	dc.b		nC6,	$03,	nA5,	$03,	nC6,	$03,	nA5,	$03
	dc.b		nD6,	$03,	nB5,	$03,	nD6,	$03,	nB5,	$03
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$03
	dc.b		nC6,	$03,	nRst,	$03,	nB5,	$03,	nRst,	$03
	dc.b		nA5,	$03,	nRst,	$03,	nG5,	$03,	nRst,	$51
	dc.b		nG5,	$03,	nA5,	$03,	nC6,	$06,	nA5,	$06
	dc.b		nRst,	$4E,	nG5,	$03,	nA5,	$03,	nC6,	$06
	dc.b		nE6,	$06,	nRst,	$4E,	nG5,	$03,	nA5,	$03
	dc.b		nC6,	$06,	nA5,	$06,	nRst,	$60,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC5,	$03
	dc.b		nE5,	$03,	nG5,	$03,	nB5,	$03,	nE5,	$03
	dc.b		nG5,	$03,	nB5,	$03,	nD6,	$03,	nB5,	$03
	dc.b		nG5,	$03,	nE5,	$03,	nD5,	$03,	nF5,	$03
	dc.b		nA5,	$03,	nC6,	$03,	nA5,	$03,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC5,	$03
	dc.b		nE5,	$03,	nG5,	$03,	nB5,	$03,	nE5,	$03
	dc.b		nG5,	$03,	nB5,	$03,	nD6,	$03,	nB5,	$03
	dc.b		nG5,	$03,	nE5,	$03,	nD5,	$03,	nF5,	$03
	dc.b		nA5,	$03,	nC6,	$03,	nA5,	$03,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC5,	$03
	dc.b		nE5,	$03,	nG5,	$03,	nB5,	$03,	nE5,	$03
	dc.b		nG5,	$03,	nB5,	$03,	nD6,	$03,	nB5,	$03
	dc.b		nG5,	$03,	nE5,	$03,	nD5,	$03,	nF5,	$03
	dc.b		nA5,	$03,	nC6,	$03,	nA5,	$03,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nE6,	$0C,	nC6,	$0C
	dc.b		nA5,	$0C,	nA5,	$06,	nC6,	$06,	nE6,	$06
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nBb5,	$06,	nF5,	$06,	nD6,	$06,	nF5,	$06
	dc.b		nBb5,	$06,	nF5,	$06,	nD6,	$06,	nF5,	$06
	dc.b		nBb5,	$06,	nF5,	$06,	nD6,	$06,	nF5,	$06
	dc.b		nBb5,	$06,	nF5,	$06,	nD6,	$06,	nF5,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nC6,	$06,	nF5,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nC6,	$06,	nF5,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nC6,	$06,	nF5,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nC6,	$06,	nF5,	$06
	dc.b		nAb5,	$06,	nEb5,	$06,	nC6,	$06,	nEb5,	$06
	dc.b		nAb5,	$06,	nEb5,	$06,	nC6,	$06,	nEb5,	$06
	dc.b		nAb5,	$06,	nEb5,	$06,	nC6,	$06,	nEb5,	$06
	dc.b		nAb5,	$06,	nEb5,	$06,	nC6,	$06,	nEb5,	$06
	dc.b		nC6,	$06,	nA5,	$06,	nE6,	$06,	nA5,	$06
	dc.b		nC6,	$06,	nA5,	$06,	nE6,	$06,	nA5,	$06
	dc.b		nC6,	$06,	nA5,	$06,	nE6,	$06,	nA5,	$06
	dc.b		nC6,	$06,	nA5,	$06,	nE6,	$06,	nA5,	$06
	dc.b		nRst,	$4E
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nG5,	$03,	nA5,	$03,	nC6,	$06,	nA5,	$06
	dc.b		nRst,	$4E,	nG5,	$03,	nA5,	$03,	nC6,	$06
	dc.b		nE6,	$06,	nRst,	$4E,	nG5,	$03,	nA5,	$03
	dc.b		nC6,	$06,	nA5,	$06,	nRst,	$60,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC5,	$03
	dc.b		nE5,	$03,	nG5,	$03,	nB5,	$03,	nE5,	$03
	dc.b		nG5,	$03,	nB5,	$03,	nD6,	$03,	nB5,	$03
	dc.b		nG5,	$03,	nE5,	$03,	nD5,	$03,	nF5,	$03
	dc.b		nA5,	$03,	nC6,	$03,	nA5,	$03,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC5,	$03
	dc.b		nE5,	$03,	nG5,	$03,	nB5,	$03,	nE5,	$03
	dc.b		nG5,	$03,	nB5,	$03,	nD6,	$03,	nB5,	$03
	dc.b		nG5,	$03,	nE5,	$03,	nD5,	$03,	nF5,	$03
	dc.b		nA5,	$03,	nC6,	$03,	nA5,	$03,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC5,	$03
	dc.b		nE5,	$03,	nG5,	$03,	nB5,	$03,	nE5,	$03
	dc.b		nG5,	$03,	nB5,	$03,	nD6,	$03,	nB5,	$03
	dc.b		nG5,	$03,	nE5,	$03,	nD5,	$03,	nF5,	$03
	dc.b		nA5,	$03,	nC6,	$03,	nA5,	$03,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nD5,	$06,	nC6,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nE6,	$0C,	nC6,	$0C
	dc.b		nA5,	$0C,	nA5,	$06,	nC6,	$06,	nE6,	$06
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nBb5,	$06,	nF5,	$06,	nD6,	$06,	nF5,	$06
	dc.b		nBb5,	$06,	nF5,	$06,	nD6,	$06,	nF5,	$06
	dc.b		nBb5,	$06,	nF5,	$06,	nD6,	$06,	nF5,	$06
	dc.b		nBb5,	$06,	nF5,	$06,	nD6,	$06,	nF5,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nC6,	$06,	nF5,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nC6,	$06,	nF5,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nC6,	$06,	nF5,	$06
	dc.b		nA5,	$06,	nF5,	$06,	nC6,	$06,	nF5,	$06
	dc.b		nAb5,	$06,	nEb5,	$06,	nC6,	$06,	nEb5,	$06
	dc.b		nAb5,	$06,	nEb5,	$06,	nC6,	$06,	nEb5,	$06
	dc.b		nAb5,	$06,	nEb5,	$06,	nC6,	$06,	nEb5,	$06
	dc.b		nAb5,	$06,	nEb5,	$06,	nC6,	$06,	nEb5,	$06
	dc.b		nC6,	$06,	nA5,	$06,	nE6,	$06,	nA5,	$06
	dc.b		nC6,	$06,	nA5,	$06,	nE6,	$06,	nA5,	$06
	dc.b		nC6,	$06,	nA5,	$06,	nE6,	$06,	nA5,	$06
	dc.b		nC6,	$06,	nA5,	$06,	nE6,	$06,	nA5,	$06
	smpsStop

; FM2 Data
GHZ1_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nRst,	$06,	nA2,	$06,	nA3,	$06,	nA2,	$06
	dc.b		nBb2,	$06,	nBb3,	$06,	nB2,	$06,	nB3,	$06
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$06,	nA2,	$03
	dc.b		nRst,	$03,	nA2,	$06,	nBb2,	$03,	nRst,	$03
	dc.b		nBb2,	$06,	nB2,	$03,	nRst,	$03,	nB2,	$06
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$06,	nD3,	$06
	dc.b		nE3,	$06,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$06
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nC3,	$06,	nD3,	$06
	dc.b		nE3,	$06,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$06
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nC3,	$06,	nD3,	$06
	dc.b		nE3,	$06,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$06
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$06,	nD3,	$03
	dc.b		nRst,	$03,	nD3,	$03,	nRst,	$03,	nD3,	$03
	dc.b		nRst,	$03,	nD3,	$03,	nRst,	$03,	nD3,	$03
	dc.b		nRst,	$03,	nD3,	$03,	nRst,	$03,	nD3,	$03
	dc.b		nRst,	$03,	nD3,	$06,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$06,	nD3,	$06,	nE3,	$06,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$06,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nC3,	$06,	nD3,	$06,	nE3,	$06,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$06,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nC3,	$06,	nD3,	$06,	nE3,	$06,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$03,	nRst,	$03,	nF3,	$03
	dc.b		nRst,	$03,	nF3,	$06,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$03,	nRst,	$03,	nE3,	$03,	nRst,	$03
	dc.b		nE3,	$06,	nD3,	$03,	nRst,	$03,	nD3,	$03
	dc.b		nRst,	$03,	nD3,	$03,	nRst,	$03,	nD3,	$03
	dc.b		nRst,	$03,	nD3,	$03,	nRst,	$03,	nD3,	$03
	dc.b		nRst,	$03,	nD3,	$03,	nRst,	$03,	nD3,	$06
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nC3,	$03,	nRst,	$03,	nC3,	$03,	nRst,	$03
	dc.b		nBb2,	$12,	nA2,	$12,	nG2,	$12,	nF2,	$12
	dc.b		nE2,	$06,	nRst,	$06,	nD2,	$06,	nRst,	$06
	dc.b		nA2,	$12,	nB2,	$12,	nC3,	$12,	nD3,	$12
	dc.b		nE3,	$06,	nRst,	$06,	nA3,	$06,	nRst,	$06
	dc.b		nAb3,	$12,	nG3,	$12,	nF3,	$12,	nEb3,	$12
	dc.b		nD3,	$06,	nRst,	$06,	nC3,	$06,	nRst,	$06
	dc.b		nG2,	$12,	nD3,	$12,	nG3,	$12,	nG3,	$06
	dc.b		nE2,	$06,	nE3,	$06,	nF2,	$06,	nF3,	$06
	dc.b		nG2,	$06,	nG3,	$06,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$06,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nC3,	$06
	dc.b		nD3,	$06,	nE3,	$06,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$06,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nC3,	$06
	dc.b		nD3,	$06,	nE3,	$06,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$06,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$06
	dc.b		nD3,	$03,	nRst,	$03,	nD3,	$03,	nRst,	$03
	dc.b		nD3,	$03,	nRst,	$03,	nD3,	$03,	nRst,	$03
	dc.b		nD3,	$03,	nRst,	$03,	nD3,	$03,	nRst,	$03
	dc.b		nD3,	$03,	nRst,	$03,	nD3,	$06,	nC3,	$03
	dc.b		nRst,	$03,	nC3,	$03,	nRst,	$03,	nC3,	$03
	dc.b		nRst,	$03,	nC3,	$03,	nRst,	$03,	nC3,	$03
	dc.b		nRst,	$03,	nC3,	$06,	nD3,	$06,	nE3,	$06
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$06,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nC3,	$06,	nD3,	$06,	nE3,	$06
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$06,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nC3,	$06,	nD3,	$06,	nE3,	$06
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$03,	nRst,	$03
	dc.b		nF3,	$03,	nRst,	$03,	nF3,	$06,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$03,	nRst,	$03,	nE3,	$03
	dc.b		nRst,	$03,	nE3,	$06,	nD3,	$03,	nRst,	$03
	dc.b		nD3,	$03,	nRst,	$03,	nD3,	$03,	nRst,	$03
	dc.b		nD3,	$03,	nRst,	$03,	nD3,	$03,	nRst,	$03
	dc.b		nD3,	$03,	nRst,	$03,	nD3,	$03,	nRst,	$03
	dc.b		nD3,	$06,	nC3,	$03,	nRst,	$03,	nC3,	$03
	dc.b		nRst,	$03,	nC3,	$03,	nRst,	$03,	nC3,	$03
	dc.b		nRst,	$03,	nC3,	$03,	nRst,	$03,	nC3,	$03
	dc.b		nRst,	$03,	nC3,	$03,	nRst,	$03,	nC3,	$03
	dc.b		nRst,	$03,	nBb2,	$12,	nA2,	$12,	nG2,	$12
	dc.b		nF2,	$12,	nE2,	$06,	nRst,	$06,	nD2,	$06
	dc.b		nRst,	$06,	nA2,	$12,	nB2,	$12,	nC3,	$12
	dc.b		nD3,	$12,	nE3,	$06,	nRst,	$06,	nA3,	$06
	dc.b		nRst,	$06,	nAb3,	$12,	nG3,	$12,	nF3,	$12
	dc.b		nEb3,	$12,	nD3,	$06,	nRst,	$06,	nC3,	$06
	dc.b		nRst,	$06,	nG2,	$12,	nD3,	$12,	nG3,	$12
	dc.b		nG3,	$06,	nE2,	$06,	nE3,	$06,	nF2,	$06
	dc.b		nF3,	$06,	nG2,	$06,	nG3,	$06
	smpsStop

; FM3 Data
GHZ1_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nRst,	$30,	nB4,	$0C,	nRst,	$06,	nA4,	$0C
	dc.b		nRst,	$06,	nB4,	$0C,	nRst,	$06,	nA4,	$0C
	dc.b		nRst,	$06,	nB4,	$06,	nRst,	$06,	nA4,	$06
	dc.b		nRst,	$06,	nC5,	$0C,	nRst,	$06,	nB4,	$0C
	dc.b		nRst,	$06,	nA4,	$3C,	nA4,	$0C,	nRst,	$06
	dc.b		nB4,	$0C,	nRst,	$06,	nC5,	$06,	nRst,	$06
	dc.b		nA4,	$0C,	nRst,	$06,	nB4,	$0C,	nRst,	$06
	dc.b		nC5,	$06,	nRst,	$06,	nC5,	$0C,	nRst,	$06
	dc.b		nB4,	$4E,	nRst,	$18,	nC5,	$06,	nA4,	$0C
	dc.b		nC5,	$06,	nB4,	$0C,	nC5,	$06,	nB4,	$0C
	dc.b		nG4,	$1E,	nRst,	$06,	nG4,	$06,	nE5,	$06
	dc.b		nD5,	$0C,	nC5,	$06,	nB4,	$0C,	nC5,	$06
	dc.b		nB4,	$0C,	nG4,	$1E,	nRst,	$0C,	nC5,	$06
	dc.b		nA4,	$0C,	nC5,	$06,	nB4,	$0C,	nC5,	$06
	dc.b		nB4,	$0C,	nG4,	$1E,	nRst,	$06,	nA4,	$06
	dc.b		nA4,	$06,	nF4,	$0C,	nA4,	$06,	nG4,	$0C
	dc.b		nA4,	$06,	nG4,	$0C,	nC4,	$12,	nRst,	$18
	dc.b		nC5,	$06,	nA4,	$0C,	nC5,	$06,	nB4,	$0C
	dc.b		nC5,	$06,	nB4,	$0C,	nG4,	$1E,	nRst,	$06
	dc.b		nG4,	$06,	nE5,	$06,	nD5,	$0C,	nC5,	$06
	dc.b		nB4,	$0C,	nC5,	$06,	nB4,	$0C,	nG4,	$1E
	dc.b		nRst,	$0C,	nC5,	$06,	nA4,	$0C,	nC5,	$06
	dc.b		nB4,	$0C,	nC5,	$06,	nB4,	$0C,	nG4,	$1E
	dc.b		nRst,	$06,	nA4,	$06,	nA4,	$06,	nF4,	$0C
	dc.b		nA4,	$06,	nG4,	$0C,	nA4,	$06,	nG4,	$0C
	dc.b		nC4,	$12
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nD5,	$4E,	nC5,	$06,	nD5,	$06,	nE5,	$54
	dc.b		nC5,	$06,	nC5,	$06,	nE5,	$06,	nEb5,	$4E
	dc.b		nC5,	$06,	nEb5,	$06,	nD5,	$60,	nRst,	$1E
;	Alter Volume	value
	smpsAlterVol	$FB
	dc.b		nC5,	$06,	nA4,	$0C,	nC5,	$06,	nB4,	$0C
	dc.b		nC5,	$06,	nB4,	$0C,	nG4,	$1E,	nRst,	$06
	dc.b		nG4,	$06,	nE5,	$06,	nD5,	$0C,	nC5,	$06
	dc.b		nB4,	$0C,	nC5,	$06,	nB4,	$0C,	nG4,	$1E
	dc.b		nRst,	$0C,	nC5,	$06,	nA4,	$0C,	nC5,	$06
	dc.b		nB4,	$0C,	nC5,	$06,	nB4,	$0C,	nG4,	$1E
	dc.b		nRst,	$06,	nA4,	$06,	nA4,	$06,	nF4,	$0C
	dc.b		nA4,	$06,	nG4,	$0C,	nA4,	$06,	nG4,	$0C
	dc.b		nC4,	$12,	nRst,	$18,	nC5,	$06,	nA4,	$0C
	dc.b		nC5,	$06,	nB4,	$0C,	nC5,	$06,	nB4,	$0C
	dc.b		nG4,	$1E,	nRst,	$06,	nG4,	$06,	nE5,	$06
	dc.b		nD5,	$0C,	nC5,	$06,	nB4,	$0C,	nC5,	$06
	dc.b		nB4,	$0C,	nG4,	$1E,	nRst,	$0C,	nC5,	$06
	dc.b		nA4,	$0C,	nC5,	$06,	nB4,	$0C,	nC5,	$06
	dc.b		nB4,	$0C,	nG4,	$1E,	nRst,	$06,	nA4,	$06
	dc.b		nA4,	$06,	nF4,	$0C,	nA4,	$06,	nG4,	$0C
	dc.b		nA4,	$06,	nG4,	$0C,	nC4,	$12
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nD5,	$4E,	nC5,	$06,	nD5,	$06,	nE5,	$54
	dc.b		nC5,	$06,	nC5,	$06,	nE5,	$06,	nEb5,	$4E
	dc.b		nC5,	$06,	nEb5,	$06,	nD5,	$60
	smpsStop

; FM4 Data
GHZ1_FM4:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nRst,	$7F,	$7F,	$7F,	$3F,	nF4,	$03,	nRst
	dc.b		$15,	nF4,	$03,	nRst,	$15,	nE4,	$03,	nRst
	dc.b		$2D,	nF4,	$03,	nRst,	$15,	nF4,	$03,	nRst
	dc.b		$15,	nE4,	$03,	nRst,	$2D,	nF4,	$03,	nRst
	dc.b		$15,	nF4,	$03,	nRst,	$15,	nE4,	$03,	nRst
	dc.b		$15,	nE4,	$03,	nRst,	$15,	nD4,	$03,	nRst
	dc.b		$15,	nD4,	$03,	nRst,	$15,	nC4,	$03,	nRst
	dc.b		$2D,	nF4,	$03,	nRst,	$15,	nF4,	$03,	nRst
	dc.b		$15,	nE4,	$03,	nRst,	$2D,	nF4,	$03,	nRst
	dc.b		$15,	nF4,	$03,	nRst,	$15,	nE4,	$03,	nRst
	dc.b		$2D,	nF4,	$03,	nRst,	$15,	nF4,	$03,	nRst
	dc.b		$15,	nE4,	$03,	nRst,	$15,	nE4,	$03,	nRst
	dc.b		$15,	nD4,	$03,	nRst,	$15,	nD4,	$03,	nRst
	dc.b		$15,	nC4,	$03,	nRst,	$7F,	$7F,	$6D,	nE5
	dc.b		$0C,	nE5,	$06,	nF5,	$06,	nE5,	$06,	nG5
	dc.b		$06,	nE5,	$06,	nE5,	$06,	nC5,	$06,	nRst
	dc.b		$0C,	nF4,	$03,	nRst,	$15,	nF4,	$03,	nRst
	dc.b		$15,	nE4,	$03,	nRst,	$2D,	nF4,	$03,	nRst
	dc.b		$15,	nF4,	$03,	nRst,	$15,	nE4,	$03,	nRst
	dc.b		$2D,	nF4,	$03,	nRst,	$15,	nF4,	$03,	nRst
	dc.b		$15,	nE4,	$03,	nRst,	$15,	nE4,	$03,	nRst
	dc.b		$15,	nD4,	$03,	nRst,	$15,	nD4,	$03,	nRst
	dc.b		$15,	nC4,	$03,	nRst,	$2D,	nF4,	$03,	nRst
	dc.b		$15,	nF4,	$03,	nRst,	$15,	nE4,	$03,	nRst
	dc.b		$2D,	nF4,	$03,	nRst,	$15,	nF4,	$03,	nRst
	dc.b		$15,	nE4,	$03,	nRst,	$2D,	nF4,	$03,	nRst
	dc.b		$15,	nF4,	$03,	nRst,	$15,	nE4,	$03,	nRst
	dc.b		$15,	nE4,	$03,	nRst,	$15,	nD4,	$03,	nRst
	dc.b		$15,	nD4,	$03,	nRst,	$15,	nC4,	$03,	nRst
	dc.b		$7F,	$7F,	$6D,	nE5,	$0C,	nE5,	$06,	nF5
	dc.b		$06,	nE5,	$06,	nG5,	$06,	nE5,	$06,	nE5
	dc.b		$06,	nC5,	$06
	smpsStop

GHZ1_Voices:
;	Voice 00
;	$04,$71,$41,$31,$31,$12,$12,$12,$12,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$0F,$0F,$0F,$23,$00,$23,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$04,	$07
	smpsVcCoarseFreq	$01,	$01,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$12,	$12,	$12,	$12
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$00,	$00,	$00,	$00
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$23,	$00,	$23

;	Voice 01
;	$38,$75,$13,$71,$11,$D1,$52,$14,$14,$0A,$07,$01,$01,$00,$00,$00,$00,$F0,$F0,$F0,$FC,$1E,$1E,$1E,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$01,	$07,	$01,	$07
	smpsVcCoarseFreq	$01,	$01,	$03,	$05
	smpsVcRateScale		$00,	$00,	$01,	$03
	smpsVcAttackRate	$14,	$14,	$12,	$11
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$01,	$01,	$07,	$0A
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$0C,	$00,	$00,	$00
	smpsVcTotalLevel	$00,	$1E,	$1E,	$1E
	even
