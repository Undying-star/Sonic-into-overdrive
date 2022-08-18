; =============================================================================================
; Project Name:		idk
; Created:		16th August 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

idk_Header:
;	Voice Pointer	location
	smpsHeaderVoice	idk_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$00

;	DAC Pointer	location
	smpsHeaderDAC	idk_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	idk_FM1,	smpsPitch00,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	idk_FM2,	smpsPitch00,	$00
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	idk_FM3,	smpsPitch00,	$00
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	idk_FM4,	smpsPitch00,	$00
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	idk_FM5,	smpsPitch00,	$00
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	idk_PSG1,	smpsPitch00,	$00,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	idk_PSG2,	smpsPitch00,	$00,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	idk_PSG3,	smpsPitch00,	$00,	$00
	dc.b		$00,	$00,	$00,	$00
	smpsStop

; FM1 Data
idk_FM1:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$08
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nA2,	$06,	nRst,	nA2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nG3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG3,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nAb3,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nAb3,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nAb3,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nA3,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$04
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nA2,	$0C,	nC3,	$06,	nRst,	nC3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	$05
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD3,	$0C,	nC2,	$06,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$12,	nC2,	$03,	nRst
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$06,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$12,	nC2,	$03,	nRst
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$06,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$12,	nC2,	$03,	nRst
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$06,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$12,	nC2,	$03,	nRst
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$06,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$12,	nC2,	$03,	nRst
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$06,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$12,	nC2,	$03,	nRst
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$06,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$12,	nC2,	$03,	nRst
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$06,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$12,	nC2,	$03,	nRst
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nRst,	nC3,	nRst
idk_Jump01:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	$06,	nRst,	nF2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	$0C,	nF2,	$06,	nRst,	nF2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	nF2,	nRst,	nE2,	nRst,	nE2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nE2,	$0C,	nE2,	$06,	nRst,	nE2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nE2,	nF2,	$06,	nRst,	nF2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	$0C,	nF2,	$06,	nRst,	nF2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	nF2,	nRst,	nE2,	nRst,	nE2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nE2,	$0C,	nE2,	$06,	nRst,	nE2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nE2,	nF2,	$06,	nRst,	nF2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	$0C,	nF2,	$06,	nRst,	nF2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	nF2,	nRst,	nE2,	nRst,	nE2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nE2,	$0C,	nE2,	$06,	nRst,	nE2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nE2,	nD2,	$06,	nRst,	nD2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nD4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nD2,	$06,	nRst,	nD2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nD4,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	nD2,	nRst,	nC2,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$0C,	nC2,	$06,	nRst,	nC2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nE2,	$06
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	nRst,	nF2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	$0C,	nF2,	$06,	nRst,	nF2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	nF2,	nRst,	nE2,	nRst,	nE2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nE2,	$0C,	nE2,	$06,	nRst,	nE2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nE2,	nF2,	$06,	nRst,	nF2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	$0C,	nF2,	$06,	nRst,	nF2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	nF2,	nRst,	nE2,	nRst,	nE2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nE2,	$0C,	nE2,	$06,	nRst,	nE2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nE2,	nF2,	$06,	nRst,	nF2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	$0C,	nF2,	$06,	nRst,	nF2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2,	nF2,	nRst,	nE2,	nRst,	nE2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nE2,	$0C,	nE2,	$06,	nRst,	nE2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nE2,	nD2,	$06,	nRst,	nD2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nD4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nD2,	$06,	nRst,	nD2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nD4,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	nD2,	nRst,	nC2,	nRst,	nC2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC2,	$0C,	nC2,	$06,	nRst,	nC2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD2,	$0C,	nE2,	$06
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nBb2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nBb3,	nBb4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nA2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nA3,	nA4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nG2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nG3,	nG4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF2
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF3,	nF4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nE3
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD3
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nD4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nA2,	$18
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nA4,	$0C
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nB2,	$18
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nA4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB4,	$07
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC3,	$18
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC5,	$0C
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD3
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nC4,	nD4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nE3,	$06
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nE4,	nE5,	$0C
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nA3
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nA4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nB4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nCs5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$02
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nAb3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nAb4,	nAb5
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nG3,	$18
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nG4,	$0C
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF3,	$18
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nF5,	$0C
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nEb3,	$18
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nD5,	$06,	nEb5
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nD3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nEb5
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nC3
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nG4
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nG2,	$18
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
	dc.b		nG3,	$0C,	nE4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$11
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nG3,	$0C,	nG2,	nG3,	nG2,	nG3,	nE2,	nE3
	dc.b		nF2,	nF3,	nG2,	nG3
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$FD
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	idk_Jump01

; FM2 Data
idk_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$60
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$12
	dc.b		nE5,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nE5,	$02,	nC5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nC5,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nE5,	$02,	nC5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nC5,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE5,	smpsNoAttack,	nE5,	$02,	nC5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nC5,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nE5,	$02,	nC5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nC5,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nE5,	$02,	nC5,	smpsNoAttack,	nC5,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nE5,	$02,	nC5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nC5,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nE5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nE5,	$02,	nC5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nC5,	$04,	nE5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nE5,	$02,	nC5
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nC5,	$04
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nRst,	$7F,	$7F,	$0A
idk_Jump02:
	dc.b		nRst,	$30
;	Set FM Voice	#
	smpsFMvoice	$06
;	Alter Volume	value
	smpsAlterVol	$85
	dc.b		nA4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC5,	$06,	nA4,	$18,	nC5,	$0C,	nB4,	$18
	dc.b		nC5,	$0C,	nB4,	$18,	nG4,	$0D,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	nRst,	$24
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$0C,	nD5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nEb5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nE5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nD5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD5,	$14,	nC5,	$0C,	nB4,	$18,	nC5,	$0C
	dc.b		nB4,	$18,	nG4,	$0D,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$06,	nRst,	$2A,	nA4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC5,	$06,	nA4,	$18,	nC5,	$0C,	nB4,	$18
	dc.b		nC5,	$0C,	nB4,	$18,	nG4,	$0D,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	nRst,	$24
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$06,	nRst,	nA4,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF4,	$0E,	nA4,	$0C,	nG4,	$18,	nA4,	$0C
	dc.b		nG4,	$18,	nC4,	$0C,	smpsNoAttack,	nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E5
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC4,	$06,	nRst,	$2A,	nA4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC5,	$06,	nA4,	$18,	nC5,	$0C,	nB4,	$18
	dc.b		nC5,	$0C,	nB4,	$18,	nG4,	$0D,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	nRst,	$24
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$0C,	nD5,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nEb5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nE5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nD5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD5,	$14,	nC5,	$0C,	nB4,	$18,	nC5,	$0C
	dc.b		nB4,	$18,	nG4,	$0D,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$06,	nRst,	$2A,	nA4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC5,	$06,	nA4,	$18,	nC5,	$0C,	nB4,	$18
	dc.b		nC5,	$0C,	nB4,	$18,	nG4,	$0D,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nG4,	$01,	nRst,	$24
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$06,	nRst,	nA4,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF4,	$0E,	nA4,	$0C,	nG4,	$18,	nA4,	$0C
	dc.b		nG4,	$18,	nC4,	$0C,	smpsNoAttack,	nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$19
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	$0C,	nD4,	$19
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nD4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nCs4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nD4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nCs4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nCs4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nD4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	$03
;	Alter Volume	value
	smpsAlterVol	$E0
	dc.b		nC4,	$0D,	smpsNoAttack,	nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	$09,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	$14
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nE4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nE4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nF4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nE4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nE4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	$03
;	Alter Volume	value
	smpsAlterVol	$E0
	dc.b		nC4,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$23
	dc.b		nB3,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nB3,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1D
	dc.b		nBb3,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nBb3,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nA3,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$07,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nBb3,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nB3,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nB3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	$05,	nEb4,	$19
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	$02
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nEb4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nEb4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nD4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nEb4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb4,	$03
;	Alter Volume	value
	smpsAlterVol	$E0
	dc.b		nC4,	$0D,	smpsNoAttack,	nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb4,	$08,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	$11
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nD4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nCs4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nD4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nCs4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nD4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nCs4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack,	nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nCs4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	$01
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nCs4,	$01
;	Set FM Voice	#
	smpsFMvoice	$07
;	Alter Volume	value
	smpsAlterVol	$EB
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	$18,	nE4,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF4,	$0A,	nE4,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$05,	nE4,	$0C,	nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nCs4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC4,	$04
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$7F
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$00
;	Jump To	 	location
	smpsJump	idk_Jump02

; FM3 Data
idk_FM3:
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$1A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA4,	$18,	nB4,	nC5,	nD5,	nB4,	nRst,	$0C
	dc.b		nA4,	$18,	nRst,	$0C,	nB4,	$18,	nRst,	$0C
	dc.b		nA4,	$18,	nRst,	$0C,	nB4,	$12,	nRst,	$06
	dc.b		nA4,	$12,	nRst,	$06,	nC5,	$18,	nRst,	$0C
	dc.b		nB4,	$18,	nRst,	$0C,	nA4,	$6C,	nRst,	$0C
	dc.b		nA4,	$18,	nRst,	$0C,	nB4,	$18,	nRst,	$0C
	dc.b		nC5,	$18,	nA4,	nRst,	$0C,	nB4,	$18,	nRst
	dc.b		$0C,	nC5,	$12,	nRst,	$06,	nC5,	$18,	nRst
	dc.b		$0C,	nB4,	$7F,	smpsNoAttack,	$11,	nRst,	$0C
idk_Jump03:
;	Set FM Voice	#
	smpsFMvoice	$04
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nD6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD6,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nD6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD6,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nD6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD6,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nB5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nA5,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD6,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nD6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD6,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nD6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD6,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nE6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nD6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD6,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC6,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5,	$18
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nB5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB5
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nA5,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD6
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$FE
	dc.b		nF4,	$18,	nRst,	$0C,	nF4,	$18,	nRst,	$0C
	dc.b		nF4,	$18,	nRst,	$0C,	nF4,	$18,	nRst,	$0C
	dc.b		nF4,	nRst,	nF4,	nRst,	nE4,	$18,	nRst,	$0C
	dc.b		nE4,	$18,	nRst,	$0C,	nE4,	$18,	nRst,	$0C
	dc.b		nE4,	$18,	nRst,	$0C,	nE4,	nRst,	nE4,	nRst
	dc.b		nEb4,	$18,	nRst,	$0C,	nEb4,	$18,	nRst,	$0C
	dc.b		nEb4,	$18,	nRst,	$0C,	nEb4,	$18,	nRst,	$0C
	dc.b		nEb4,	nRst,	nEb4,	nRst,	nA4,	$18,	nRst,	$0C
	dc.b		nA4,	$18,	nRst,	$0C,	nA4,	$18,	nRst,	$0C
	dc.b		nA4,	$18,	nRst,	$0C,	nA4,	nB4,	nC5,	nD5
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
;	Jump To	 	location
	smpsJump	idk_Jump03

; FM4 Data
idk_FM4:
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$1A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nF4,	$18,	nG4,	nA4,	nB4
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nG4,	nRst,	$0C,	nF4,	$18,	nRst,	$0C,	nG4
	dc.b		$18,	nRst,	$0C,	nF4,	$18,	nRst,	$0C,	nG4
	dc.b		$12,	nRst,	$06,	nF4,	$12,	nRst,	$06,	nA4
	dc.b		$18,	nRst,	$0C,	nG4,	$18,	nRst,	$0C,	nF4
	dc.b		$6C,	nRst,	$0C,	nF4,	$18,	nRst,	$0C,	nG4
	dc.b		$18,	nRst,	$0C,	nA4,	$18,	nF4,	nRst,	$0C
	dc.b		nG4,	$18,	nRst,	$0C,	nA4,	$12,	nRst,	$06
	dc.b		nA4,	$18,	nRst,	$0C,	nG4,	$7F,	smpsNoAttack,	$11
	dc.b		nRst,	$0C
idk_Jump04:
;	Set FM Voice	#
	smpsFMvoice	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE6,	$18,	nC6
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nF5,	nC6,	$04,	smpsNoAttack,	nD6,	$14
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nB5,	$18
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nD6,	nE6,	nC6
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nF5,	nC6,	$04,	smpsNoAttack,	nD6,	$14
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nB5,	$18
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nD6,	nE6,	nC6
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nF5,	nC6,	$04,	smpsNoAttack,	nD6,	$14
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nB5,	$18
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nD6,	nC6
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nF5,	nC6,	nRst
;	Set FM Voice	#
	smpsFMvoice	$04
;	Alter Volume	value
	smpsAlterVol	$F5
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG5
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA5,	nB5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nC6,	$78,	nD6,	$18
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nB5
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nC6,	$78
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nB5,	$18
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG5
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nB5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nC6,	$78,	nD6,	$18
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nB5
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG5
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nC6,	$54,	nE6,	$0C,	nRst,	nC6,	nRst
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA5,	$18
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG5,	$06,	nRst
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA5,	nRst
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nC6,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$0B
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nD4,	$18,	nRst,	$0C,	nD4,	$18,	nRst,	$0C
	dc.b		nD4,	$18,	nRst,	$0C,	nD4,	$18,	nRst,	$0C
	dc.b		nD4,	nRst,	nD4,	nRst,	nC4,	$18,	nRst,	$0C
	dc.b		nC4,	$18,	nRst,	$0C,	nC4,	$18,	nRst,	$0C
	dc.b		nC4,	$18,	nRst,	$0C,	nC4,	nRst,	nC4,	nRst
	dc.b		nC4,	$18,	nRst,	$0C,	nC4,	$18,	nRst,	$0C
	dc.b		nC4,	$18,	nRst,	$0C,	nC4,	$18,	nRst,	$0C
	dc.b		nC4,	nRst,	nC4,	nRst,	nF4,	$18,	nRst,	$0C
	dc.b		nF4,	$18,	nRst,	$0C,	nF4,	$18,	nRst,	$0C
	dc.b		nF4,	$18,	nRst,	$0C,	nF4
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG4
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nA4,	nB4
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
;	Alter Notes	value
	smpsAlterNote	$00
;	Jump To	 	location
	smpsJump	idk_Jump04

; FM5 Data
idk_FM5:
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$12
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nA4,	$06,	nF4,	nA4,	nF4,	nB4,	nG4,	nB4
	dc.b		nG4,	nC5,	nA4,	nC5,	nA4,	nD5,	nB4,	nD5
	dc.b		nB4
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$08
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE4,	$18,	nRst,	$0C,	nD4,	$18,	nRst,	$0C
	dc.b		nE4,	$18,	nRst,	$0C,	nD4,	$18,	nRst,	$0C
	dc.b		nE4,	$12,	nRst,	$06,	nD4,	$12,	nRst,	$06
	dc.b		nF4,	$18,	nRst,	$0C,	nE4,	$18,	nRst,	$0C
	dc.b		nD4,	$6C,	nRst,	$0C,	nD4,	$18,	nRst,	$0C
	dc.b		nE4,	$18,	nRst,	$0C,	nF4,	$18,	nD4,	nRst
	dc.b		$0C,	nE4,	$18,	nRst,	$0C,	nF4,	$12,	nRst
	dc.b		$06,	nF4,	$18,	nRst,	$0C,	nE4,	$7F,	smpsNoAttack
	dc.b		$11,	nRst,	$0C
idk_Jump05:
;	Set FM Voice	#
	smpsFMvoice	$05
	dc.b		nE6,	$18,	nC6,	nA5,	nF5,	nC6,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nCs6,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD6,	$13,	nB5,	$18,	nG5,	nD6,	nE6,	nC6
	dc.b		nA5,	nF5,	nC6,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nCs6,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD6,	$13,	nB5,	$18,	nG5,	nD6,	nE6,	nC6
	dc.b		nA5,	nF5,	nC6,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nCs6,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD6,	$13,	nB5,	$18,	nG5,	nD6,	nC6,	nA5
	dc.b		nF5,	nC6
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nB5,	$60,	nE6,	$18,	nC6,	nA5,	nF5,	nC6
	dc.b		$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nCs6,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD6,	$13,	nB5,	$18,	nG5,	nD6,	nE6,	nC6
	dc.b		nA5,	nF5,	nC6,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nCs6,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD6,	$13,	nB5,	$18,	nG5,	nD6,	nE6,	nC6
	dc.b		nA5,	nF5,	nC6,	$04,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nCs6,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD6,	$13,	nB5,	$18,	nG5,	nD6,	nC6,	nA5
	dc.b		nF5,	nC6,	nB5,	$60
;	Set FM Voice	#
	smpsFMvoice	$04
;	Alter Volume	value
	smpsAlterVol	$F5
	dc.b		nBb5,	$0C,	nF5,	nD6,	nF5,	nBb5,	nF5,	nD6
	dc.b		nF5,	nBb5,	nF5,	nD6,	nF5,	nBb5,	nF5,	nD6
	dc.b		nF5,	nA5,	nE5,	nC6,	nE5,	nA5,	nE5,	nC6
	dc.b		nE5,	nA5,	nE5,	nC6,	nE5,	nA5,	nE5,	nC6
	dc.b		nE5,	nAb5,	nEb5,	nC6,	nEb5,	nAb5,	nEb5,	nC6
	dc.b		nEb5,	nAb5,	nEb5,	nC6,	nEb5,	nAb5,	nEb5,	nC6
	dc.b		nEb5,	nC6,	nA5,	nE6,	nA5,	nC6,	nA5,	nE6
	dc.b		nA5,	nC6,	nA5,	nE6,	nA5,	nC6,	nA5,	nE6
	dc.b		nA5
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$0B
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
;	Jump To	 	location
	smpsJump	idk_Jump05

; PSG1 Data
idk_PSG1:
	dc.b		nRst,	$60,	nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nF2,	$01,	nF1,	nF2,	nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nF2,	$01,	nF1,	nF2,	nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$05
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nF2,	$01,	nF1,	nF2,	nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$05
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nF2,	$01,	nF1,	nF2,	nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$5F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nF2,	$01,	nF1,	nF2,	nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$05
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nF2,	$01,	nF1,	nF2,	nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$05
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$7F,	$04
idk_Jump06:
	dc.b		nRst,	$18
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$01,	nD2,	nD3,	nD2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$01,	nD2,	nD3,	nD2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$01,	nD2,	nD3,	nD2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$01,	nD2,	nD3,	nD2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$01,	nD2,	nD3,	nD2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$01,	nD2,	nD3,	nD2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$05,	nRst,	$18
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb3,	$01,	nBb2,	nBb3,	nBb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nBb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nBb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF3,	$01,	nF2,	nF3,	nF2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD4,	$01,	nD3,	nD4,	nD3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD3,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF3,	$01,	nF2,	nF3,	nF2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nBb3,	$01,	nBb2,	nBb3,	nBb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nBb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nBb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF3,	$01,	nF2,	nF3,	nF2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD4,	$01,	nD3,	nD4,	nD3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD3,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF3,	$01,	nF2,	nF3,	nF2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nBb3,	$01,	nBb2,	nBb3,	nBb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nBb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nBb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF3,	$01,	nF2,	nF3,	nF2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD4,	$01,	nD3,	nD4,	nD3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD3,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF3,	$01,	nF2,	nF3,	nF2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nBb3,	$01,	nBb2,	nBb3,	nBb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nBb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nBb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF3,	$01,	nF2,	nF3,	nF2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nD4,	$01,	nD3,	nD4,	nD3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD3,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nF3,	$01,	nF2,	nF3,	nF2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb3,	$01,	nAb2,	nAb3,	nAb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nAb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nAb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nEb3,	$01,	nEb2,	nEb3,	nEb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nEb3,	$01,	nEb2,	nEb3,	nEb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb3,	$01,	nAb2,	nAb3,	nAb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nAb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nAb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nEb3,	$01,	nEb2,	nEb3,	nEb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nEb3,	$01,	nEb2,	nEb3,	nEb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb3,	$01,	nAb2,	nAb3,	nAb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nAb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nAb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nEb3,	$01,	nEb2,	nEb3,	nEb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nEb3,	$01,	nEb2,	nEb3,	nEb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nAb3,	$01,	nAb2,	nAb3,	nAb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nAb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nAb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nEb3,	$01,	nEb2,	nEb3,	nEb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nEb3,	$01,	nEb2,	nEb3,	nEb2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nEb2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05
;	Jump To	 	location
	smpsJump	idk_Jump06

; PSG2 Data
idk_PSG2:
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nF2,	$01,	nF1,	nF2,	nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nF2,	$01,	nF1,	nF2,	nF1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nF1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nD3,	$01,	nD2,	nD3,	nD2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$01,	nD2,	nD3,	nD2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nD2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$06
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$06
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$06
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$05
;	Set Volume	value
	smpsSetVol	$FC
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$05
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$06
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$5F
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$06
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$06
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$0B
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05
;	Set Volume	value
	smpsSetVol	$FC
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$06
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$0B
;	Set Volume	value
	smpsSetVol	$FB
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$06
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$7F,	$04
idk_Jump07:
	dc.b		nRst,	$18
;	Set Volume	value
	smpsSetVol	$FB
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG3,	$01,	nG2,	nG3,	nG2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG3,	$01,	nG2,	nG3,	nG2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG3,	$01,	nG2,	nG3,	nG2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG3,	$01,	nG2,	nG3,	nG2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG3,	$01,	nG2,	nG3,	nG2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nC2,	nC3,	nC2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC2,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nB2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG3,	$01,	nG2,	nG3,	nG2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG2,	$02
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$05
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA3,	$01,	nA2,	nA3,	nA2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA2,	$05,	nRst,	$18
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nA1,	nA2,	nA1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nA1,	$05,	nRst,	$30
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$02,	nRst,	$1E
;	Set Volume	value
	smpsSetVol	$FF
	dc.b		nG2,	$01,	nG1,	nG2,	nG1
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$03
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nG1,	$05,	nRst,	$18,	nBb3,	$01,	nBb2,	nBb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nBb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nBb2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nBb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nBb2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nBb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2,	nF3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nF2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	nD3,	nD4
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nD3,	$04
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF3,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2,	nF3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nF2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb3,	nBb2,	nBb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nBb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nBb2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nBb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nBb2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nBb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2,	nF3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nF2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	nD3,	nD4
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nD3,	$04
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF3,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2,	nF3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nF2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb3,	nBb2,	nBb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nBb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nBb2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nBb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nBb2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nBb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2,	nF3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nF2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	nD3,	nD4
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nD3,	$04
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF3,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2,	nF3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nF2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb3,	nBb2,	nBb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nBb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nBb2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nBb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nBb2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nBb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2,	nF3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nF2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	nD3,	nD4
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD3
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nD3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nD3,	$04
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF3,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2,	nF3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nF2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nF2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	nE2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE3,	nE2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE2,	$02
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	nE2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE3,	nE2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE2,	$02
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	nE2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE3,	nE2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE2,	$02
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	nE2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE3,	nE2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE2,	$02
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	nE2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE3,	nE2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE2,	$02
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	nE2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE3,	nE2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE2,	$02
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	nE2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE3,	nE2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE2,	$02
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	nE2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE3,	nE2
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE2,	$02
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb3,	nAb2,	nAb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nAb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nAb2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nAb2,	$03
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nAb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2,	nEb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2,	nEb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb3,	nAb2,	nAb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nAb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nAb2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nAb2,	$03
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nAb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2,	nEb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2,	nEb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb3,	nAb2,	nAb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nAb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nAb2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nAb2,	$03
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nAb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2,	nEb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2,	nEb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb3,	nAb2,	nAb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nAb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nAb2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nAb2,	$03
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nAb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2,	nEb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2,	nEb3
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb2,	$02
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nEb2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	nE3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE3,	$04
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$01,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	nE3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE3,	$04
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$01,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	nE3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE3,	$04
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$01,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC4,	nC3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nB2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nE4,	nE3
;	Set Volume	value
	smpsSetVol	$01
	dc.b		nE3
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE3,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE3,	$04
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA3,	$01,	nA2,	nA3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nA2,	$02
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nA2,	$01
;	Jump To	 	location
	smpsJump	idk_Jump07

; PSG3 Data
idk_PSG3:
	dc.b		nRst,	$60
;	Set PSG WvForm	#
	smpsPSGform	$E7
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
idk_Jump08:
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F8
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FF
;	Jump To	 	location
	smpsJump	idk_Jump08

; DAC Data
idk_DAC:
	dc.b		dKick,	$0C,	dSnare,	dTimpani,	dSnare,	$06,	dKick,	$03
	dc.b		dKick,	dSnare,	$0C,	dSnare,	$06,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	$0C,	dKick,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani
	dc.b		$06,	dTimpani,	dSnare,	$0C,	dTimpani,	dKick,	dTimpani,	dSnare
	dc.b		dTimpani,	dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani
	dc.b		dKick,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani
	dc.b		dSnare,	$0C,	dTimpani,	dKick,	dTimpani,	dSnare,	dTimpani,	dKick
	dc.b		dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani,	$06,	dSnare
	dc.b		dKick,	$0C,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06
	dc.b		dTimpani,	dSnare,	$0C,	dTimpani,	dKick,	dTimpani,	dSnare,	dTimpani
	dc.b		dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani,	dKick
	dc.b		dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani,	dSnare
	dc.b		$0C,	dTimpani,	dKick,	dSnare,	dSnare,	dSnare,	$06,	dKick
	dc.b		$03,	dKick,	dSnare,	$06,	dTimpani,	dTimpani,	dTimpani,	dSnare
	dc.b		dTimpani,	dSnare,	dSnare
idk_Jump09:
	dc.b		dKick,	$0C,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06
	dc.b		dTimpani,	dSnare,	$0C,	dTimpani,	dKick,	dTimpani,	dSnare,	dTimpani
	dc.b		dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani,	dKick
	dc.b		dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani,	dSnare
	dc.b		$0C,	dTimpani,	dKick,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani
	dc.b		$06,	dTimpani,	dSnare,	$0C,	dTimpani,	$06,	dSnare,	dKick
	dc.b		$0C,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani
	dc.b		dSnare,	$0C,	dTimpani,	dKick,	dTimpani,	dSnare,	dTimpani,	dKick
	dc.b		dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani,	dKick,	dTimpani
	dc.b		dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C
	dc.b		dTimpani,	dKick,	dSnare,	dSnare,	dSnare,	$06,	dKick,	$03
	dc.b		dKick,	dSnare,	$06,	dTimpani,	dTimpani,	dTimpani,	dSnare,	dTimpani
	dc.b		dSnare,	dSnare,	dKick,	$0C,	dTimpani,	dSnare,	dTimpani,	dKick
	dc.b		dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani,	dKick,	dTimpani
	dc.b		dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C
	dc.b		dTimpani,	dKick,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06
	dc.b		dTimpani,	dSnare,	$0C,	dTimpani,	dKick,	dTimpani,	dSnare,	dTimpani
	dc.b		dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani,	$06
	dc.b		dSnare,	dKick,	$0C,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani
	dc.b		$06,	dTimpani,	dSnare,	$0C,	dTimpani,	dKick,	dTimpani,	dSnare
	dc.b		dTimpani,	dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani
	dc.b		dKick,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani
	dc.b		dSnare,	$0C,	dTimpani,	dKick,	dSnare,	dSnare,	dSnare,	$06
	dc.b		dKick,	$03,	dKick,	dSnare,	$06,	dTimpani,	dTimpani,	dTimpani
	dc.b		dSnare,	dTimpani,	dSnare,	dSnare,	dKick,	$0C,	dTimpani,	dSnare
	dc.b		dTimpani,	dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani
	dc.b		dKick,	dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani
	dc.b		dSnare,	$0C,	dTimpani,	dKick,	dTimpani,	dSnare,	dTimpani,	dKick
	dc.b		dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani,	dKick,	dTimpani
	dc.b		dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C
	dc.b		dTimpani,	$06,	dSnare,	dKick,	$0C,	dTimpani,	dSnare,	dTimpani
	dc.b		dKick,	dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dTimpani,	dKick
	dc.b		dTimpani,	dSnare,	dTimpani,	dKick,	dTimpani,	$06,	dTimpani,	dSnare
	dc.b		$0C,	dTimpani,	dSnare,	dSnare,	dTimpani,	$06,	dTimpani,	dSnare
	dc.b		$0C,	dSnare,	dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dSnare
	dc.b		dTimpani,	$06,	dTimpani,	dSnare,	$0C,	dKick,	$03,	dKick
	dc.b		dKick,	dKick,	dSnare,	$0C,	dTimpani,	$06,	dSnare,	$0C
	dc.b		dSnare,	$06,	dSnare,	dSnare,	dSnare,	dTimpani
;	Jump To	 	location
	smpsJump	idk_Jump09

idk_Voices:
;	Voice 00
;	$28,$31,$70,$00,$71,$1F,$1F,$1D,$1F,$13,$13,$06,$05,$03,$03,$02,$05,$4F,$4F,$2F,$3F,$0E,$14,$1E,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$05
;				op1	op2	op3	op4
	smpsVcDetune		$07,	$00,	$07,	$03
	smpsVcCoarseFreq	$01,	$00,	$00,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1D,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$05,	$06,	$13,	$13
	smpsVcDecayRate2	$05,	$02,	$03,	$03
	smpsVcDecayLevel	$03,	$02,	$04,	$04
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$1E,	$14,	$0E

;	Voice 01
;	$3D,$01,$02,$02,$02,$10,$50,$50,$50,$07,$08,$08,$08,$01,$00,$00,$00,$20,$17,$17,$17,$1C,$00,$00,$00
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
	smpsVcTotalLevel	$00,	$00,	$00,	$1C

;	Voice 02
;	$3E,$08,$71,$3A,$04,$59,$D9,$5F,$9C,$0F,$04,$0F,$0A,$02,$02,$05,$05,$AF,$AF,$66,$66,$2B,$00,$24,$08
;				#
	smpsVcAlgorithm		$06
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$03,	$07,	$00
	smpsVcCoarseFreq	$04,	$0A,	$01,	$08
	smpsVcRateScale		$02,	$01,	$03,	$01
	smpsVcAttackRate	$1C,	$1F,	$19,	$19
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$0F,	$04,	$0F
	smpsVcDecayRate2	$05,	$05,	$02,	$02
	smpsVcDecayLevel	$06,	$06,	$0A,	$0A
	smpsVcReleaseRate	$06,	$06,	$0F,	$0F
	smpsVcTotalLevel	$08,	$24,	$00,	$2B

;	Voice 03
;	$3A,$30,$36,$00,$31,$1F,$95,$1F,$1F,$0E,$0F,$05,$0C,$07,$06,$06,$07,$2F,$4F,$1F,$5F,$21,$12,$28,$00
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$00,	$03,	$03
	smpsVcCoarseFreq	$01,	$00,	$06,	$00
	smpsVcRateScale		$00,	$00,	$02,	$00
	smpsVcAttackRate	$1F,	$1F,	$15,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0C,	$05,	$0F,	$0E
	smpsVcDecayRate2	$07,	$06,	$06,	$07
	smpsVcDecayLevel	$05,	$01,	$04,	$02
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$28,	$12,	$21

;	Voice 04
;	$35,$02,$02,$13,$00,$1F,$1D,$18,$19,$00,$09,$06,$0D,$00,$00,$02,$03,$00,$06,$15,$16,$1E,$00,$01,$00
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$06
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$01,	$00,	$00
	smpsVcCoarseFreq	$00,	$03,	$02,	$02
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$19,	$18,	$1D,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0D,	$06,	$09,	$00
	smpsVcDecayRate2	$03,	$02,	$00,	$00
	smpsVcDecayLevel	$01,	$01,	$00,	$00
	smpsVcReleaseRate	$06,	$05,	$06,	$00
	smpsVcTotalLevel	$00,	$01,	$00,	$1E

;	Voice 05
;	$3D,$71,$70,$71,$72,$12,$1F,$1F,$14,$07,$02,$02,$0A,$05,$05,$05,$05,$2F,$2F,$2F,$AF,$1C,$00,$07,$01
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$07,	$07,	$07,	$07
	smpsVcCoarseFreq	$02,	$01,	$00,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$14,	$1F,	$1F,	$12
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$02,	$02,	$07
	smpsVcDecayRate2	$05,	$05,	$05,	$05
	smpsVcDecayLevel	$0A,	$02,	$02,	$02
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$01,	$07,	$00,	$1C

;	Voice 06
;	$3A,$71,$77,$01,$31,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00,$02,$16,$FF,$16,$06,$18,$28,$27,$00
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$00,	$07,	$07
	smpsVcCoarseFreq	$01,	$01,	$07,	$01
	smpsVcRateScale		$01,	$02,	$02,	$02
	smpsVcAttackRate	$13,	$0D,	$0E,	$0E
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$03,	$0E,	$0E,	$0E
	smpsVcDecayRate2	$02,	$00,	$00,	$00
	smpsVcDecayLevel	$00,	$01,	$0F,	$01
	smpsVcReleaseRate	$06,	$06,	$0F,	$06
	smpsVcTotalLevel	$00,	$27,	$28,	$18

;	Voice 07
;	$04,$0F,$71,$71,$71,$1F,$1F,$5F,$5F,$0E,$0A,$09,$0A,$0F,$0B,$0A,$0A,$2F,$1F,$4F,$1F,$2C,$0B,$12,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$07,	$07,	$07,	$00
	smpsVcCoarseFreq	$01,	$01,	$01,	$0F
	smpsVcRateScale		$01,	$01,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$09,	$0A,	$0E
	smpsVcDecayRate2	$0A,	$0A,	$0B,	$0F
	smpsVcDecayLevel	$01,	$04,	$01,	$02
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$12,	$0B,	$2C
	even
