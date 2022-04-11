; =============================================================================================
; Project Name:		nah
; Created:		11st April 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

nah_Header:
;	Voice Pointer	location
	smpsHeaderVoice	nah_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$00

;	DAC Pointer	location
	smpsHeaderDAC	nah_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	nah_FM1,	smpsPitch00,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	nah_FM2,	smpsPitch00,	$00
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	nah_FM3,	smpsPitch00,	$00
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	nah_FM4,	smpsPitch00,	$00
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	nah_FM5,	smpsPitch00,	$00
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	nah_PSG1,	smpsPitch00,	$00,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	nah_PSG2,	smpsPitch00,	$00,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	nah_PSG3,	smpsPitch00,	$00,	$00
	dc.b		$00,	$00,	$00,	$00
	smpsStop

; FM1 Data
nah_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$0B
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nA2,	nA3,	nA2,	nBb2,	nBb3,	nB2,	nB3
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$07
	dc.b		nE6,	$06
;	Alter Volume	value
	smpsAlterVol	$01
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Alter Volume	value
	smpsAlterVol	$01
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Alter Volume	value
	smpsAlterVol	$01
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE6
;	Alter Volume	value
	smpsAlterVol	$01
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Alter Volume	value
	smpsAlterVol	$02
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE6
;	Alter Volume	value
	smpsAlterVol	$01
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$E4
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC3,	$0C,	nC3,	nRst,	nC3,	nRst,	$06,	nC3
	dc.b		nC3,	$0C,	nRst,	nC3,	nC3,	$12,	nRst,	nC3
	dc.b		nRst,	$06,	nC3,	$12,	nRst,	$06,	nC3,	$0C
	dc.b		nC3,	nC3,	nA2,	nA2,	nBb2,	nBb2,	nB2,	nB2
	dc.b		nC3,	$12,	nRst,	nC3,	nRst,	$06,	nC3,	$12
	dc.b		nRst,	$06,	nC3,	$0C,	nC3,	nC3,	nRst,	nC3
	dc.b		nRst,	$06,	nC3,	nC3,	$0C,	nRst,	nC3,	nC3
	dc.b		$12,	nRst,	nC3,	nRst,	$06,	nC3,	$12,	nRst
	dc.b		$06,	nC3,	$0C,	nC3,	nC3,	$12,	nRst,	$0C
	dc.b		nC3,	nRst,	$06,	nC3,	$0C,	nD3,	nE3
nah_Jump01:
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		nF3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst,	nF3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C,	nE3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06,	nRst,	nE3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	nRst,	nD3,	nRst,	nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst,	nF3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C,	nE3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06,	nRst,	nE3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	nRst,	nD3,	nRst,	nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst,	nF3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C,	nE3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06,	nRst,	nE3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	nRst,	nD3,	nRst,	nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nD3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nD3,	$06,	nRst,	nD3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nD3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nD3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nA2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nD3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nD3,	$0C,	nC3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	$06,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C,	nD3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst,	nF3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C,	nE3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06,	nRst,	nE3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	nRst,	nD3,	nRst,	nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst,	nF3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C,	nE3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06,	nRst,	nE3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	nRst,	nD3,	nRst,	nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst,	nF3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	$0C,	nE3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06,	nRst,	nE3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3,	$06
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	nRst,	nD3,	nRst,	nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nD3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nD3,	$06,	nRst,	nD3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nD3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nD3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nA2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nD3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nD3,	$0C,	nC3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	$06,	nRst,	nC3,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$0C,	nD3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nBb3,	$12
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nBb2,	$06,	nBb2,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nBb2,	$06,	nBb2
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nBb3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nG2
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nBb3,	$18
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nF3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nF3,	nF2
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE2
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nD3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nD2,	nA3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nA2,	$18
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nB2
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nA3,	nA3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nC3,	$18,	nD3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nA3,	nE3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nA3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nA3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nA3,	nAb3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nAb2,	$18
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nEb3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nBb2
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nAb3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nAb3,	nB3,	$18,	nCs3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nAb3,	nEb3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nEb3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nAb3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nAb3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nAb3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nG2,	$18
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nG3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nD3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nD3,	nG3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nG2,	$18
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nG3,	$0C,	nD3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nE2,	nE3
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nG3,	nD3
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nFs2,	nFs3
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	nah_Jump01

; FM2 Data
nah_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$0C
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$0B
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA2,	nA3,	nA2,	nBb2,	nBb3,	nB2,	nB3
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC3,	$06,	nRst,	nC3,	nRst,	nC3,	nRst,	nC3
	dc.b		nRst,	nC3,	nRst,	nC3,	nRst,	nC3,	nRst,	nC3
	dc.b		nRst,	nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	nRst,	nC3,	nRst,	nC3,	nRst,	nC3,	nRst
	dc.b		nC3,	nRst,	nC3,	nRst,	nC3,	nRst,	nC3,	nRst
	dc.b		nC3,	nRst,	nC3,	$0C,	nA2,	$06,	nRst,	nA2
	dc.b		$0C,	nBb2,	$06,	nRst,	nBb2,	$0C,	nB2,	$06
	dc.b		nRst,	nB2,	$0C,	nC3,	$06,	nRst,	nC3,	nRst
	dc.b		nC3,	nRst,	nC3,	nRst,	nC3,	nRst,	nC3,	nRst
	dc.b		nC3,	nRst,	nC3,	nRst,	nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC3,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nC3,	$01,	nRst,	$06
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	nRst,	nC3,	nRst,	nC3,	nRst,	nC3,	nRst
	dc.b		nC3,	nRst,	nC3,	nRst,	nC3,	nRst,	nC3,	nRst
	dc.b		nC3,	nRst,	nC3,	nRst,	nC3,	nRst,	nC3,	nRst
	dc.b		nC3,	nRst,	nC3,	$0C,	nD3,	nE3,	$06,	nRst
	dc.b		$06
nah_Jump02:
	dc.b		nRst,	$30
;	Set FM Voice	#
	smpsFMvoice	$06
;	Alter Volume	value
	smpsAlterVol	$01
	dc.b		nC5,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nC5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$12,	nC5,	$0C,	nB4,	$18,	nC5,	$0C
	dc.b		nB4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$06,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nAb4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E7
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nG4,	nRst,	$0C
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E2
	dc.b		nC5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nCs5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nEb5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$06,	nD5,	$18,	nC5,	$0C,	nB4,	$18
	dc.b		nC5,	$0C,	nB4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$06,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nG4,	nRst,	$30
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC5,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nC5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$12,	nC5,	$0C,	nB4,	$18,	nC5,	$0C
	dc.b		nB4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$06,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nAb4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E7
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nG4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$06,	nRst,	nA4,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1D
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF4,	$12,	nA4,	$0C,	nG4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E7
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$09,	nG4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC4,	$0B,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$24
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$23
	dc.b		nB3,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nC4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1C
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$24
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E1
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$24
	dc.b		nB3,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nC4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1F
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$23
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$DF
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$DD
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nC4,	$01,	nRst,	$30
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC5,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nC5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$12,	nC5,	$0C,	nB4,	$18,	nC5,	$0C
	dc.b		nB4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$06,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nAb4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E7
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nG4,	nRst,	$0C
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E2
	dc.b		nC5,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nCs5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nEb5,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE5,	$06,	nD5,	$18,	nC5,	$0C,	nB4,	$18
	dc.b		nC5,	$0C,	nB4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$06,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nG4,	nRst,	$30
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC5,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nC5,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nB4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$12,	nC5,	$0C,	nB4,	$18,	nC5,	$0C
	dc.b		nB4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E0
	dc.b		nB4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nBb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nBb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nA4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$06,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nAb4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E9
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E7
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E6
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nG4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$06,	nRst,	nA4,	$0C,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1D
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nG4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF4,	$12,	nA4,	$0C,	nG4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E7
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nAb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$09,	nG4,	$18,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC4,	$0B,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1A
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$24
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E4
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$23
	dc.b		nB3,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$E8
	dc.b		nC4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1C
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$24
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nC4,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	$0C,	nD4,	$31,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nEb4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nEb4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$12
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nCs4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC4,	$0D,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nC4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD4,	$04,	nE4,	$19,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nF4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nF4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$18
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$17
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$16
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nF4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nF4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nF4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC4,	$0C,	nC4,	$0D,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE4,	$08,	nEb4,	$31,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0F
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nE4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F3
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0B
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EA
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EE
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nE4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EB
	dc.b		nE4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nE4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC4,	$0D,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb4,	$09,	nD4,	$31,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EF
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FD
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$15
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F9
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0A
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$11
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F0
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F6
	dc.b		nEb4,	$02,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0D
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F4
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$10
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F7
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$ED
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$14
	dc.b		nD4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F8
	dc.b		nEb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F2
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nD4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$13
	dc.b		nCs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0C
	dc.b		nCs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nD4
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$06
	dc.b		nE3,	$0C,	nRst,	nE3,	nF3,	nE3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nG3
;	Alter Notes	value
	smpsAlterNote	$FC
	dc.b		nE3,	nE3
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3
;	Set FM Voice	#
	smpsFMvoice	$02
;	Alter Volume	value
	smpsAlterVol	$F9
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$00
;	Jump To	 	location
	smpsJump	nah_Jump02

; FM3 Data
nah_FM3:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$12
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$06,	nF5,	nA5,	nF5,	nB5,	nG5,	nB5
	dc.b		nG5,	nC6,	nA5,	nC6,	nA5,	nD6,	nB5,	nD6
	dc.b		nB5
;	Set FM Voice	#
	smpsFMvoice	$03
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nB2,	$1E,	nRst,	$06,	nA2,	$1E,	nRst,	$06
	dc.b		nB2,	$1E,	nRst,	$06,	nA2,	$1E,	nRst,	$06
	dc.b		nB2,	$12,	nRst,	$06,	nA2,	$12,	nRst,	$06
	dc.b		nC3,	$1E,	nRst,	$06,	nB2,	$1E,	nRst,	$06
	dc.b		nA2,	$60,	nRst,	$18,	nA2,	$1E,	nRst,	$06
	dc.b		nB2,	$1E,	nRst,	$06,	nC3,	$12,	nRst,	$06
	dc.b		nA2,	$1E,	nRst,	$06,	nB2,	$1E,	nRst,	$06
	dc.b		nC3,	$0C,	nRst,	nC3,	$1E,	nRst,	$06,	nB2
	dc.b		$7F,	smpsNoAttack,	$05,	nRst,	$18
nah_Jump03:
;	Set FM Voice	#
	smpsFMvoice	$04
;	Alter Volume	value
	smpsAlterVol	$FA
	dc.b		nE4,	nC4,	nA3,	nF3,	nD4,	nB3,	nG3,	nD4
	dc.b		nE4,	nC4,	nA3,	nF3,	nD4,	nB3,	nG3,	nD4
	dc.b		nE4,	nC4,	nA3,	nF3,	nD4,	nB3,	nG3,	nE3
	dc.b		nC4,	nA3,	nF3,	nD3,	nB3,	nG3,	nE3,	nC3
	dc.b		nE4,	nC4,	nA3,	nF3,	nD4,	nB3,	nG3,	nD4
	dc.b		nE4,	nC4,	nA3,	nF3,	nD4,	nB3,	nG3,	nD4
	dc.b		nE4,	nC4,	nA3,	nF3,	nD4,	nB3,	nG3,	nE3
	dc.b		nC4,	nA3,	nF3,	nD3,	nB3,	nG3,	nE3,	nC3
	dc.b		nBb4,	$24,	nA4,	nG4,	nF4,	nE4,	$0C,	nRst
	dc.b		nD4,	nRst,	nA3,	$24,	nB3,	nC4,	nD4,	nE4
	dc.b		$0C,	nRst,	nE4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FA
	dc.b		nF4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F1
	dc.b		nFs4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$1B
	dc.b		nFs4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$0E
	dc.b		nG4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nAb4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$EC
	dc.b		nA4,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA4,	$03,	nRst,	$0C,	nAb4,	$24,	nG4,	nF4
	dc.b		nEb4,	nD4,	$0C,	nRst,	nD4,	$03,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$F5
	dc.b		nEb4,	$01,	smpsNoAttack
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb4,	$08,	nRst,	$0C,	nD4,	$54
;	Set FM Voice	#
	smpsFMvoice	$07
	dc.b		nE5,	$0C
;	Set FM Voice	#
	smpsFMvoice	$04
	dc.b		nE5
;	Set FM Voice	#
	smpsFMvoice	$07
	dc.b		nE5,	nF5,	nE5,	nG5,	nE5,	nE5,	nC5
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$06
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	nah_Jump03

; FM4 Data
nah_FM4:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$12
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nA5,	$06,	nF5,	nA5,	nF5,	nB5,	nG5,	nB5
	dc.b		nG5,	nC6,	nA5,	nC6,	nA5,	nD6,	nB5,	nD6
	dc.b		nB5
;	Set FM Voice	#
	smpsFMvoice	$03
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nG2,	$1E,	nRst,	$06,	nF2,	$1E,	nRst,	$06
	dc.b		nG2,	$1E,	nRst,	$06,	nF2,	$1E,	nRst,	$06
	dc.b		nG2,	$12,	nRst,	$06,	nF2,	$12,	nRst,	$06
	dc.b		nA2,	$1E,	nRst,	$06,	nG2,	$1E,	nRst,	$06
	dc.b		nF2,	$60,	nRst,	$18,	nF2,	$1E,	nRst,	$06
	dc.b		nG2,	$1E,	nRst,	$06,	nA2,	$12,	nRst,	$06
	dc.b		nF2,	$1E,	nRst,	$06,	nG2,	$1E,	nRst,	$06
	dc.b		nA2,	$0C,	nRst,	nA2,	$1E,	nRst,	$06,	nG2
	dc.b		$7F,	smpsNoAttack,	$05,	nRst,	$18
nah_Jump04:
;	Set FM Voice	#
	smpsFMvoice	$05
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nE4,	$09,	nRst,	$57,	nD4,	$09,	nRst,	$33
;	Set FM Voice	#
	smpsFMvoice	$04
;	Alter Volume	value
	smpsAlterVol	$F6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nG5,	$06,	nA5
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC6,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$06,	nRst
;	Set FM Voice	#
	smpsFMvoice	$05
;	Alter Volume	value
	smpsAlterVol	$0A
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nE4,	$09,	nRst,	$57,	nD4,	$09,	nRst,	$33
;	Set FM Voice	#
	smpsFMvoice	$04
;	Alter Volume	value
	smpsAlterVol	$F6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nG5,	$06,	nA5
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC6,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE6
;	Set FM Voice	#
	smpsFMvoice	$05
;	Alter Volume	value
	smpsAlterVol	$0A
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nE4,	$09,	nRst,	$33
;	Set FM Voice	#
	smpsFMvoice	$07
;	Alter Volume	value
	smpsAlterVol	$F6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC4,	$0C,	nRst,	$18
;	Set FM Voice	#
	smpsFMvoice	$05
;	Alter Volume	value
	smpsAlterVol	$0A
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nD4,	$09,	nRst,	$1B
;	Set FM Voice	#
	smpsFMvoice	$07
;	Alter Volume	value
	smpsAlterVol	$F6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nG3,	$0C,	nRst
;	Set FM Voice	#
	smpsFMvoice	$04
	dc.b		nG5,	$06,	nA5
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC6,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5
;	Set FM Voice	#
	smpsFMvoice	$05
;	Alter Volume	value
	smpsAlterVol	$0A
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC4,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$07
;	Alter Volume	value
	smpsAlterVol	$F6
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nF3,	$06,	nRst,	$12,	nA3,	$06,	nRst,	$12
	dc.b		nF3,	$06,	nRst,	$12,	nB3,	$0C
;	Set FM Voice	#
	smpsFMvoice	$05
;	Alter Volume	value
	smpsAlterVol	$0A
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nB3,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$04
;	Alter Volume	value
	smpsAlterVol	$F6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC6,	$06,	nRst,	nA5,	nRst
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nG5,	$18
;	Alter Volume	value
	smpsAlterVol	$FC
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC5,	$06,	nRst,	nA5,	nRst,	nB5,	nRst
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC6,	$78,	nD6,	$18,	nB5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nG5,	$06,	nA5
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nG5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$06,	nRst
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC6,	$78,	nD6,	$18,	nG5,	nB5,	nC6,	$78
	dc.b		nD6,	$18,	nB5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nG5,	$06,	nA5
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nG5,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA5,	$06,	nRst
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC6,	$60
;	Set FM Voice	#
	smpsFMvoice	$05
;	Alter Volume	value
	smpsAlterVol	$0A
	dc.b		nB3,	$09,	nRst,	$03
;	Set FM Voice	#
	smpsFMvoice	$04
;	Alter Volume	value
	smpsAlterVol	$F6
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nE6,	$0C,	nA5,	$06,	nRst
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC6,	$18
;	Alter Volume	value
	smpsAlterVol	$FC
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC5,	$0C,	nG5,	$06,	nRst,	nC6,	nRst
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$0A
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nBb2,	$0C,	nF2,	nD3,	nF2
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nBb2,	nF2,	nD3,	nF2
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nBb2,	nF2,	nD3,	nF2
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nBb2,	nF2,	nD3,	nF2,	nA2,	nE2,	nC3,	nE2
	dc.b		nA2,	nE2,	nC3,	nE2,	nA2,	nE2,	nC3,	nE2
	dc.b		nA2,	nE2,	nC3,	nE2,	nAb2,	nEb2,	nC3,	nEb2
	dc.b		nAb2,	nEb2,	nC3,	nEb2,	nAb2,	nEb2,	nC3,	nEb2
	dc.b		nAb2,	nEb2,	nC3,	nEb2,	nC3,	nG2,	nE3,	nG2
	dc.b		nC3,	nG2,	nE3,	nG2,	nC3,	nG2,	nE3,	nG2
	dc.b		nC3,	nG2,	nE3,	nG2
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
;	Jump To	 	location
	smpsJump	nah_Jump04

; FM5 Data
nah_FM5:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$60
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$12
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nE2,	$1E,	nRst,	$06,	nD2,	$1E,	nRst,	$06
	dc.b		nE2,	$1E,	nRst,	$06,	nD2,	$1E,	nRst,	$06
	dc.b		nE2,	$18,	nD2,	$12,	nRst,	$06,	nF2,	$1E
	dc.b		nRst,	$06,	nE2,	$1E,	nRst,	$06,	nD2,	$60
	dc.b		nRst,	$18,	nD2,	$1E,	nRst,	$06,	nE2,	$1E
	dc.b		nRst,	$06,	nF2,	$12,	nRst,	$06,	nD2,	$1E
	dc.b		nRst,	$06,	nE2,	$1E,	nRst,	$06,	nF2,	$0C
	dc.b		nRst,	nF2,	$1E,	nRst,	$06,	nE2,	$7F,	smpsNoAttack
	dc.b		$05,	nRst,	$18
nah_Jump05:
	dc.b		nRst,	$3C
;	Set FM Voice	#
	smpsFMvoice	$07
;	Alter Volume	value
	smpsAlterVol	$F6
	dc.b		nA4,	$0C,	nRst
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nA4
;	Alter Volume	value
	smpsAlterVol	$FC
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nG4,	nE4,	$06,	nRst,	nD4,	$0C,	nE4,	nRst
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nA4,	$18,	nE4,	$0C
;	Alter Volume	value
	smpsAlterVol	$FC
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA4,	nG4,	nE4,	$06,	nRst,	nC4,	$0C,	nA4
	dc.b		nRst,	$18
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC4,	$0C,	nRst
;	Alter Volume	value
	smpsAlterVol	$FC
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB4,	nG4,	$09,	nRst,	$03,	nE4,	$0C,	nB3
	dc.b		$09,	nRst,	$03,	nD4,	$18,	nB3,	$0C,	nRst
	dc.b		nA4,	nE4,	nC4,	$06,	nRst
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA4,	$0C,	nE4,	nRst,	nC4,	nRst
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB4,	nG4,	nE4,	nRst
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD4,	$18,	nB3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC4,	nF4,	nD4,	$06,	nRst,	nF4,	$0C,	nC4
	dc.b		$03,	nRst,	$09,	nD4,	$0C,	nF4,	nA4
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nG4,	nE4,	nC3,	$06,	nRst,	nC4,	$0C,	nB3
	dc.b		nC3,	nE4,	nG4,	nRst,	$3C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nA4,	$0C,	nRst
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nA4
;	Alter Volume	value
	smpsAlterVol	$FC
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nG4,	nE4,	$06,	nRst,	nD4,	$0C,	nE4,	nRst
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nA4,	$18,	nE4,	$0C
;	Alter Volume	value
	smpsAlterVol	$FC
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA4,	nG4,	nE4,	$06,	nRst,	nC4,	$0C,	nA4
	dc.b		nRst,	$18
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nC4,	$0C,	nRst
;	Alter Volume	value
	smpsAlterVol	$FC
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB4,	nG4,	$09,	nRst,	$03,	nE4,	$0C,	nB3
	dc.b		$09,	nRst,	$03,	nD4,	$18,	nB3,	$0C,	nRst
	dc.b		nA4,	nE4,	nC4,	$06,	nRst
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA4,	$0C,	nE4,	nRst,	nC4,	nRst
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nB4,	nG4,	nE4,	nRst
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nD4,	$18,	nB3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC4,	nF4,	nD4,	$06,	nRst,	nF4,	$0C,	nC4
	dc.b		$03,	nRst,	$09,	nD4,	$0C,	nF4,	nA4
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nG4,	nE4,	nC3,	$06,	nRst,	nC4,	$0C,	nB3
	dc.b		nC3,	nE4,	nG4,	nBb3,	$12
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nBb3
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA3
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nA3
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nG3
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nG3
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nF3
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nF3
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nE3
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE3,	$06,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD3,	nA2,	$06
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nA2,	$12
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nA2,	$0C,	nB2,	$06
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nB2,	$12
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nB2,	$0C,	nC3,	$06
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nC3,	$12
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nC3,	$0C,	nD3,	$06
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nD3,	$12
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD3,	$0C,	nE3,	$06
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nE3,	$12
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nA3
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nA3,	$06,	nAb3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nAb3,	$12
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nAb3,	$06,	nG3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nG3,	$12
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nG3,	$06,	nF3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nF3,	$12
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nF3,	$06,	nEb3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nEb3,	$12
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nEb3,	$06,	nD3,	$0C
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	nD3,	nEb3,	$06
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	nEb3,	$1E,	nG4,	$0C,	nA4,	nG4,	$24
	dc.b		nA4,	$0C,	nE4
;	Set FM Voice	#
	smpsFMvoice	$04
	dc.b		nE4
;	Set FM Voice	#
	smpsFMvoice	$07
	dc.b		nE4,	nF4,	nE4,	nG4,	nE4,	nE4,	nC4
;	Set FM Voice	#
	smpsFMvoice	$03
;	Alter Volume	value
	smpsAlterVol	$0A
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
;	Jump To	 	location
	smpsJump	nah_Jump05

; PSG1 Data
nah_PSG1:
	dc.b		nRst,	$60,	nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC3,	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC3,	$01,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
	dc.b		nB2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nB2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$02
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$01
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nA2,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FE
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$FE
	dc.b		nG2
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nG2,	$02,	nRst,	$1F
nah_Jump06:
	dc.b		nRst,	$19
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$23,	nRst,	$19,	nC2,	$0B,	nRst,	$19
	dc.b		nC2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$23,	nRst,	$19,	nE2,	$0B,	nRst,	$19
	dc.b		nE2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$23,	nRst,	$19,	nC2,	$0B,	nRst,	$19
	dc.b		nC2,	$23,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$0B,	nRst,	$19
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nB1,	$23,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nBb2,	$05,	nRst,	$01,	nF2,	$05,	nRst,	$01
	dc.b		nD2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$05,	nRst,	$01,	nF2,	$05,	nRst,	$01
	dc.b		nBb2,	$05,	nRst,	$01,	nF2,	$05,	nRst,	$01
	dc.b		nD2,	$05,	nRst,	$01,	nBb2,	$05,	nRst,	$01
	dc.b		nF2,	$05,	nRst,	$01,	nD2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01,	nBb2,	$05,	nRst,	$01
	dc.b		nF2,	$05,	nRst,	$01,	nD2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD2,	$05,	nRst,	$01,	nF2,	$05,	nRst,	$01
	dc.b		nBb2,	$05,	nRst,	$01,	nF2,	$05,	nRst,	$01
	dc.b		nD2,	$05,	nRst,	$01,	nBb2,	$05,	nRst,	$01
	dc.b		nF2,	$05,	nRst,	$01,	nD2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01,	nA2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nA1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA1,	$05,	nRst,	$01,	nC2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nA2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nA1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01,	nA2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nA1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA1,	$05,	nRst,	$01,	nC2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nA2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nA1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01,	nAb2,	$05,	nRst,	$01
	dc.b		nEb2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01,	nEb2,	$05,	nRst,	$01
	dc.b		nAb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2,	$05,	nRst,	$01,	nAb2,	$05,	nRst,	$01
	dc.b		nEb2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01,	nEb2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01,	nEb2,	$05,	nRst,	$01
	dc.b		nAb2,	$05,	nRst,	$01,	nEb2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01,	nEb2,	$05,	nRst,	$01
	dc.b		nAb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nEb2,	$05,	nRst,	$01,	nAb2,	$05,	nRst,	$01
	dc.b		nEb2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01,	nEb2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01,	nEb2,	$05,	nRst,	$01
	dc.b		nG2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE1,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nC2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE1,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nC2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nE2,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nC2,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05
;	Set Volume	value
	smpsSetVol	$FF
;	Jump To	 	location
	smpsJump	nah_Jump06

; PSG2 Data
nah_PSG2:
	dc.b		nRst,	$61
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nE1,	$17,	nRst,	$0D,	nD1,	$17,	nRst,	$0D
	dc.b		nE1,	$17,	nRst,	$0D,	nD1,	$17,	nRst,	$0D
	dc.b		nE1,	$0B,	nRst,	$0D,	nD1,	$0B,	nRst,	$0D
	dc.b		nF1,	$17,	nRst,	$01,	nE1,	$0B,	nRst,	$01
	dc.b		nD1,	$0B,	nRst,	$0D,	nD1,	$0B,	nRst,	$0D
	dc.b		nD1,	$59,	nRst,	$13,	nD1,	$17,	nRst,	$0D
	dc.b		nE1,	$17,	nRst,	$0D,	nF1,	$11,	nRst,	$07
	dc.b		nF1,	$0B,	nRst,	$01,	nD1,	$0B,	nRst,	$0D
	dc.b		nD1,	$0B,	nRst,	$01,	nE1,	$0B,	nRst,	$0D
	dc.b		nF1,	$0B,	nRst,	$0D,	nF1,	$0B,	nRst,	$01
	dc.b		nF1,	$0B,	nRst,	$01,	nE1,	$0B,	nRst,	$01
	dc.b		nE1,	$7F,	$1C
nah_Jump07:
	dc.b		nRst,	$19,	nA1,	$0B,	nRst,	$19,	nA1,	$23
	dc.b		nRst,	$19,	nG1,	$0B,	nRst,	$19,	nG1,	$23
	dc.b		nRst,	$19,	nA1,	$0B,	nRst,	$19,	nA1,	$23
	dc.b		nRst,	$19,	nG1,	$0B,	nRst,	$19,	nG1,	$23
	dc.b		nRst,	$19,	nA1,	$0B,	nRst,	$19,	nA1,	$23
	dc.b		nRst,	$19,	nG1,	$0B,	nRst,	$19,	nG1,	$23
	dc.b		nRst,	$19,	nF1,	$0B,	nRst,	$19,	nF1,	$23
	dc.b		nRst,	$19,	nE1,	$0B,	nRst,	$19,	nE1,	$23
	dc.b		nRst,	$19,	nA1,	$0B,	nRst,	$19,	nA1,	$23
	dc.b		nRst,	$19,	nG1,	$0B,	nRst,	$19,	nG1,	$23
	dc.b		nRst,	$19,	nA1,	$0B,	nRst,	$19,	nA1,	$23
	dc.b		nRst,	$19,	nG1,	$0B,	nRst,	$19,	nG1,	$23
	dc.b		nRst,	$19,	nA1,	$0B,	nRst,	$19,	nA1,	$23
	dc.b		nRst,	$19,	nG1,	$0B,	nRst,	$19,	nG1,	$23
	dc.b		nRst,	$19,	nF1,	$0B,	nRst,	$19,	nF1,	$23
	dc.b		nRst,	$19,	nE1,	$0B,	nRst,	$19,	nE1,	$23
	dc.b		nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01,	nD1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb0,	$05,	nRst,	$01,	nF0,	$05,	nRst,	$01
	dc.b		nBb0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD1,	$05,	nRst,	$01,	nF1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01,	nD1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01,	nD1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb0,	$05,	nRst,	$01,	nF0,	$05,	nRst,	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01,	nD1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb0,	$05,	nRst,	$01,	nF0,	$05,	nRst,	$01
	dc.b		nBb0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nD1,	$05,	nRst,	$01,	nF1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01,	nD1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nF1,	$05,	nRst,	$01,	nD1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nBb0,	$05,	nRst,	$01,	nF0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA1,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01,	nA0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA0,	$05,	nRst,	$01,	nC1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE1,	$05,	nRst,	$01,	nA1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA1,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01,	nA0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA1,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01,	nA0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA0,	$05,	nRst,	$01,	nC1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE1,	$05,	nRst,	$01,	nA1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nA1,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01,	nA0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$05,	nRst,	$01,	nBb0,	$05,	nRst,	$01
	dc.b		nAb0,	$05,	nRst,	$01,	nEb1,	$05,	nRst,	$01
	dc.b		nAb0,	$05,	nRst,	$01,	nBb0,	$05,	nRst,	$01
	dc.b		nEb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$05,	nRst,	$01,	nBb0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$05,	nRst,	$01,	nBb0,	$05,	nRst,	$01
	dc.b		nAb0,	$05,	nRst,	$01,	nEb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$05,	nRst,	$01,	nBb0,	$05,	nRst,	$01
	dc.b		nAb0,	$05,	nRst,	$01,	nEb1,	$05,	nRst,	$01
	dc.b		nAb0,	$05,	nRst,	$01,	nBb0,	$05,	nRst,	$01
	dc.b		nEb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$05,	nRst,	$01,	nBb0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nAb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nEb1,	$05,	nRst,	$01,	nBb0,	$05,	nRst,	$01
	dc.b		nAb0,	$05,	nRst,	$01,	nEb1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01,	nG0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nG0,	$05,	nRst,	$01,	nC1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE1,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01,	nG0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nG1,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01,	nG0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nG0,	$05,	nRst,	$01,	nC1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nE1,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nE1,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC1,	$05,	nRst,	$01,	nG0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nE0,	$05,	nRst,	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nC0,	$05
;	Jump To	 	location
	smpsJump	nah_Jump07

; PSG3 Data
nah_PSG3:
	dc.b		nRst,	$60
;	Set PSG WvForm	#
	smpsPSGform	$E7
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
nah_Jump08:
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$FB
	dc.b		nAb5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$08
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$08
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$08
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F5
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$02
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$F3
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$01
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Set Volume	value
	smpsSetVol	$F4
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$FA
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
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
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$F9
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$03
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5
;	Set Volume	value
	smpsSetVol	$02
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	nRst
;	Jump To	 	location
	smpsJump	nah_Jump08

; DAC Data
nah_DAC:
	dc.b		dKick,	$06,	dKick,	dSnare,	$0C,	dTimpani,	dSnare,	dTimpani
	dc.b		$06,	dSnare,	dSnare,	dSnare,	$03,	dSnare,	dSnare,	$06
	dc.b		dSnare,	dSnare,	$0C,	dKick,	$18,	dSnare,	$0C,	dKick
	dc.b		$18,	dKick,	$0C,	dSnare,	dKick,	dKick,	$18,	dSnare
	dc.b		$0C,	dKick,	$18,	dKick,	$0C,	dSnare,	dKick,	dKick
	dc.b		$18,	dSnare,	$0C,	dKick,	$18,	dKick,	$0C,	dSnare
	dc.b		dKick,	dKick,	$06,	dSnare,	dSnare,	$0C,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	dSnare,	$06,	dSnare,	dSnare,	$0C,	dKick
	dc.b		$18,	dSnare,	$0C,	dKick,	$18,	dKick,	$0C,	dSnare
	dc.b		dKick,	dKick,	$18,	dSnare,	$0C,	dKick,	$18,	dKick
	dc.b		$0C,	dSnare,	dKick,	dKick,	$18,	dSnare,	$0C,	dKick
	dc.b		$18,	dKick,	$0C,	dSnare,	dKick,	dKick,	$06,	dSnare
	dc.b		dSnare,	$0C,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	$06
	dc.b		dSnare,	dSnare,	$0C
nah_Jump09:
	dc.b		$84,	$18,	dSnare,	$0C,	dKick,	$18,	dKick,	$0C
	dc.b		dSnare,	dKick,	dKick,	$18,	dSnare,	$0C,	dKick,	$18
	dc.b		dKick,	$0C,	dSnare,	dKick,	dKick,	$18,	dSnare,	$0C
	dc.b		dKick,	$18,	dKick,	$0C,	dSnare,	dKick,	dKick,	$18
	dc.b		dSnare,	$0C,	dKick,	$18,	dKick,	$0C,	dSnare,	dKick
	dc.b		dKick,	$18,	dSnare,	$0C,	dKick,	$18,	dKick,	$0C
	dc.b		dSnare,	dKick,	dKick,	$18,	dSnare,	$0C,	dKick,	$18
	dc.b		dKick,	$0C,	dSnare,	dKick,	dKick,	$18,	dSnare,	$0C
	dc.b		dKick,	$18,	dKick,	$0C,	dSnare,	dKick,	dKick,	$18
	dc.b		dSnare,	$0C,	dKick,	$18,	dKick,	$0C,	dSnare,	dKick
	dc.b		dKick,	$18,	dSnare,	$0C,	dKick,	$18,	dKick,	$0C
	dc.b		dSnare,	dKick,	dKick,	$18,	dSnare,	$0C,	dKick,	$18
	dc.b		dKick,	$0C,	dSnare,	dKick,	dKick,	$18,	dSnare,	$0C
	dc.b		dKick,	$18,	dKick,	$0C,	dSnare,	dKick,	dKick,	$18
	dc.b		dSnare,	$0C,	dKick,	$18,	dKick,	$0C,	dSnare,	dKick
	dc.b		dKick,	$18,	dSnare,	$0C,	dKick,	$18,	dKick,	$0C
	dc.b		dSnare,	dKick,	dKick,	$18,	dSnare,	$0C,	dKick,	$18
	dc.b		dKick,	$0C,	dSnare,	dKick,	dKick,	$18,	dSnare,	$0C
	dc.b		dKick,	$18,	dKick,	$0C,	dSnare,	dKick,	dKick,	$18
	dc.b		dSnare,	$0C,	dKick,	$18,	dKick,	$0C,	dSnare,	dKick
	dc.b		dKick,	$12,	dKick,	$06,	dTimpani,	$0C,	$84,	$18
	dc.b		dKick,	$0C,	dTimpani,	dKick,	dKick,	$12,	dKick,	$06
	dc.b		dTimpani,	$0C,	dKick,	$18,	dKick,	$0C,	dTimpani,	dKick
	dc.b		dKick,	$12,	dKick,	$06,	dTimpani,	$0C,	$84,	$18
	dc.b		dKick,	$0C,	dTimpani,	dKick,	dKick,	$12,	dKick,	$06
	dc.b		dTimpani,	$0C,	dKick,	$18,	dKick,	$0C,	dTimpani,	dKick
	dc.b		dKick,	$12,	dKick,	$06,	dTimpani,	$0C,	$84,	$18
	dc.b		dKick,	$0C,	dTimpani,	dKick,	dKick,	$12,	dKick,	$06
	dc.b		dTimpani,	$0C,	dKick,	$18,	dKick,	$0C,	dTimpani,	dKick
	dc.b		dKick,	$12,	dKick,	$06,	dTimpani,	$0C,	$84,	$18
	dc.b		dKick,	$0C,	dTimpani,	dKick,	$84,	dKick,	dSnare,	dKick
	dc.b		$06,	dSnare,	$0C,	dSnare,	$06,	dKick,	$0C,	dSnare
	dc.b		dSnare,	$06,	dSnare
;	Jump To	 	location
	smpsJump	nah_Jump09

nah_Voices:
	dc.b		$36,$0F,$01,$01,$01,$1F,$1F,$1F,$1F,$12,$11,$0E,$00,$00,$0A,$07
	dc.b		$09,$FF,$0F,$1F,$0F,$18,$00,$00,$00;			Voice 00
	dc.b		$20,$06,$05,$00,$01,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$00;			Voice 01
	dc.b		$08,$7A,$30,$00,$70,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$24,$2D,$13,$00;			Voice 02
	dc.b		$2C,$34,$34,$04,$04,$1F,$12,$1F,$1F,$00,$07,$00,$07,$00,$07,$00
	dc.b		$07,$00,$38,$00,$38,$10,$00,$17,$00;			Voice 03
	dc.b		$3A,$71,$77,$01,$31,$8E,$8E,$8D,$53,$0E,$0E,$0E,$06,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$2F,$18,$28,$27,$00;			Voice 04
	dc.b		$36,$0F,$01,$01,$01,$1F,$1F,$1F,$1F,$12,$11,$0E,$00,$00,$0A,$07
	dc.b		$09,$FF,$05,$17,$05,$18,$00,$00,$00;			Voice 05
	dc.b		$04,$32,$12,$02,$02,$12,$12,$12,$12,$00,$08,$00,$08,$00,$08,$00
	dc.b		$08,$0A,$18,$08,$19,$23,$00,$23,$03;			Voice 06
	dc.b		$39,$74,$72,$74,$72,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$18,$32,$28,$00;			Voice 07
	even
