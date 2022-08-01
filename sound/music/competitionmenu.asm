; =============================================================================================
; Project Name:		competition
; Created:		20th July 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

competition_Header:
;	Voice Pointer	location
	smpsHeaderVoice	competition_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$03

;	DAC Pointer	location
	smpsHeaderDAC	competition_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	competition_FM1,	smpsPitch00,	$0F
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	competition_FM2,	smpsPitch00,	$0F
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	competition_FM3,	smpsPitch00,	$11
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	competition_FM4,	smpsPitch00,	$11
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	competition_FM5,	smpsPitch00,	$14
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	competition_PSG1,	smpsPitch00,	$06,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	competition_PSG2,	smpsPitch00,	$07,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	competition_PSG3,	smpsPitch00,	$02,	$02

; DAC Data
competition_DAC:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$06,	dSnare,	$06,	dSnare,	$09,	dKick,	$03
	dc.b		dKick,	$06,	dSnare,	$03,	dSnare,	$03,	dSnare,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dKick,	$06,	dKick,	$0C,	dSnare,	$09,	dKick,	$03
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$06,	dKick,	$06
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dKick,	$06,	dKick,	$0C
	dc.b		dSnare,	$09,	dKick,	$03,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dSnare,	$03,	dSnare,	$03,	dKick,	$0C
	dc.b		dSnare,	$09,	dKick,	$03,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dKick,	$06,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dKick,	$06,	dKick,	$0C,	dSnare,	$09,	dKick,	$03
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$06,	dKick,	$06
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dSnare,	$03,	dSnare,	$03
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dSnare,	$03,	dSnare,	$03
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$06,	dSnare,	$06,	dSnare,	$09,	dKick,	$03
	dc.b		dKick,	$06,	dSnare,	$03,	dSnare,	$03,	dSnare,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dKick,	$06,	dKick,	$0C,	dSnare,	$09,	dKick,	$03
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$06,	dKick,	$06
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dKick,	$06,	dKick,	$0C
	dc.b		dSnare,	$09,	dKick,	$03,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dSnare,	$03,	dSnare,	$03,	dKick,	$0C
	dc.b		dSnare,	$09,	dKick,	$03,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dKick,	$06,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dKick,	$06,	dKick,	$0C,	dSnare,	$09,	dKick,	$03
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$06,	dKick,	$06
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dSnare,	$03,	dSnare,	$03
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$09
	dc.b		dKick,	$03,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$09,	dKick,	$03,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dSnare,	$03,	dSnare,	$03
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
	smpsStop

; FM1 Data
competition_FM1:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nE3,	$03,	nRst,	$0F,	nE3,	$03,	nD3,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$0F,	nE3,	$03,	nD3,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$0F,	nE3,	$03,	nD3,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$0F,	nE3,	$03,	nD3,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$0F,	nE3,	$03,	nD3,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$0F,	nE3,	$03,	nD3,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$0F,	nE3,	$03,	nD3,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$0F,	nE3,	$03,	nD3,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nA2,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$1B,	nB2,	$03,	nD3,	$09
	dc.b		nE3,	$03,	nRst,	$03,	nFs3,	$03,	nRst,	$15
	dc.b		nCs3,	$03,	nCs3,	$03,	nE3,	$03,	nFs3,	$03
	dc.b		nRst,	$0C,	nB2,	$03,	nRst,	$1B,	nFs2,	$03
	dc.b		nA2,	$09,	nB2,	$03,	nRst,	$03,	nB2,	$03
	dc.b		nRst,	$12,	nD2,	$03,	nD3,	$03,	nRst,	$03
	dc.b		nCs3,	$03,	nRst,	$03,	nB2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$03,	nE2,	$03,	nRst,	$1B
	dc.b		nB1,	$03,	nD2,	$03,	nB1,	$03,	nE2,	$03
	dc.b		nB1,	$03,	nRst,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nCs2,	$03,	nCs2,	$03,	nE2,	$03,	nFs2,	$0F
	dc.b		nB2,	$03,	nRst,	$1B,	nFs2,	$03,	nA2,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nB2,	$03,	nRst,	$0F
	dc.b		nB2,	$06,	nA2,	$06,	nRst,	$12,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$0F,	nE3,	$03,	nD3,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nA2,	$03,	nRst,	$09,	nE3,	$03
	dc.b		nRst,	$1B,	nB2,	$03,	nD3,	$09,	nE3,	$03
	dc.b		nRst,	$03,	nFs3,	$03,	nRst,	$15,	nCs3,	$03
	dc.b		nCs3,	$03,	nE3,	$03,	nFs3,	$03,	nRst,	$0C
	dc.b		nB2,	$03,	nRst,	$1B,	nFs2,	$03,	nA2,	$09
	dc.b		nB2,	$03,	nRst,	$03,	nB2,	$03,	nRst,	$12
	dc.b		nD2,	$03,	nD3,	$03,	nRst,	$03,	nCs3,	$03
	dc.b		nRst,	$03,	nB2,	$03,	nRst,	$03,	nA2,	$03
	dc.b		nRst,	$03,	nE2,	$03,	nRst,	$1B,	nB1,	$03
	dc.b		nD2,	$03,	nB1,	$03,	nE2,	$03,	nB1,	$03
	dc.b		nRst,	$03,	nFs2,	$03,	nRst,	$15,	nCs2,	$03
	dc.b		nCs2,	$03,	nE2,	$03,	nFs2,	$0F,	nB2,	$03
	dc.b		nRst,	$1B,	nFs2,	$03,	nA2,	$09,	nB2,	$03
	dc.b		nRst,	$03,	nB2,	$03,	nRst,	$0F,	nB2,	$06
	dc.b		nA2,	$06,	nRst,	$12,	nE3,	$03,	nRst,	$0F
	dc.b		nE3,	$03,	nD3,	$09,	nB2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$09,	nE3,	$03,	nRst,	$0F
	dc.b		nE3,	$03,	nD3,	$09,	nB2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$09,	nE3,	$03,	nRst,	$0F
	dc.b		nE3,	$03,	nD3,	$09,	nB2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$09,	nE3,	$03,	nRst,	$0F
	dc.b		nE3,	$03,	nD3,	$09,	nB2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$09,	nE3,	$03,	nRst,	$0F
	dc.b		nE3,	$03,	nD3,	$09,	nB2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$09,	nE3,	$03,	nRst,	$0F
	dc.b		nE3,	$03,	nD3,	$09,	nB2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$09,	nE3,	$03,	nRst,	$0F
	dc.b		nE3,	$03,	nD3,	$09,	nB2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$09,	nE3,	$03,	nRst,	$0F
	dc.b		nE3,	$03,	nD3,	$09,	nB2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$09
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$00
	smpsStop

; FM2 Data
competition_FM2:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$30,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE4,	$07,	nE4,	$05,	nRst,	$54
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		$03,	nC3,	$2D,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE4,	$07,	nE4,	$05,	nRst,	$54
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Alter�Pitch	value
	smpsAlterPitch	$F4
	dc.b		nB0,	$30,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$24,	nE5,	$07
	dc.b		nE5,	$05,	nRst,	$24
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nB0,	$30,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$24,	nE5,	$07
	dc.b		nE5,	$05,	nRst,	$24
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nC4,	$30,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$54
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		$03,	nC4,	$2D,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$54
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nC4,	$30,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$54
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		$03,	nC4,	$2D,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$54
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nB0,	$30,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$24,	nE5,	$07
	dc.b		nE5,	$05,	nRst,	$24
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nB0,	$30,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$24,	nE5,	$07
	dc.b		nE5,	$05,	nRst,	$24
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nC4,	$30,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$54
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		$03,	nC4,	$2D,	nRst,	$30
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE5,	$07,	nE5,	$05,	nRst,	$54
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	smpsStop

; FM3 Data
competition_FM3:
;	Panning	�	direction	amsfms
	smpsPan		panLeft,	$00
;	Alter�Notes	value
	smpsAlterNote	$01
	dc.b		smpsModOff,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOff,	nRst,	$12,	nA3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG5,	$03,	nG5,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA5,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nA3,	$5A
;	Set�FM�Voice	#
	smpsFMvoice	$02
;	Set�Modulation	wait	speed	change	step
	smpsModSet	$00,	$01,	$02,	$04
	dc.b		nE5,	$09,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$0F,	nA3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG5,	$03,	nG5,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA5,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nA3,	$60
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nG3,	$30,	nA3,	$12,	nE3,	$1E,	nA3,	$30
	dc.b		nA3,	$30,	nG3,	$30,	nA3,	$12,	nE3,	$1E
	dc.b		nA3,	$30,	nA3,	$24,	nCs4,	$0C
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$12,	nA3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG5,	$03,	nG5,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA5,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nA3,	$5A
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOn,	nE5,	$09,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$0F,	nA3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG5,	$03,	nG5,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA5,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nA3,	$60,	nRst,	$12,	nA3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG5,	$03,	nG5,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA5,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nA3,	$5A
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOn,	nE5,	$09,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$0F,	nA3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG5,	$03,	nG5,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA5,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nA3,	$60
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nG3,	$30,	nA3,	$12,	nE3,	$1E,	nA3,	$30
	dc.b		nA3,	$30,	nG3,	$30,	nA3,	$12,	nE3,	$1E
	dc.b		nA3,	$30,	nA3,	$24,	nCs4,	$0C
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$12,	nA3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG5,	$03,	nG5,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA5,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nA3,	$5A
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOn,	nE5,	$09,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$0F,	nA3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG5,	$03,	nG5,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA5,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nA3,	$60
;	Alter�Notes	value
	smpsAlterNote	$00
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOff,	smpsModOff,	smpsModOff
	smpsStop

; FM4 Data
competition_FM4:
;	Panning	�	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		smpsModOff,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOff,	nRst,	$12,	nB3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG4,	$03,	nG4,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA4,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$5A
;	Set�FM�Voice	#
	smpsFMvoice	$02
;	Set�Modulation	wait	speed	change	step
	smpsModSet	$00,	$01,	$02,	$04
	dc.b		nG5,	$09,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$0F,	nB3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG4,	$03,	nG4,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA4,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$60
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$30,	nE4,	$30,	nD4,	$30,	nD4,	$30
	dc.b		nB3,	$30,	nE4,	$30,	nCs4,	$30,	nD4,	$24
	dc.b		nE4,	$0C
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$12,	nB3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG4,	$03,	nG4,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA4,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$5A
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOn,	nG5,	$09,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$0F,	nB3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG4,	$03,	nG4,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA4,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$60,	nRst,	$12,	nB3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG4,	$03,	nG4,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA4,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$5A
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOn,	nG5,	$09,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$0F,	nB3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG4,	$03,	nG4,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA4,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$60
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$30,	nE4,	$30,	nD4,	$30,	nD4,	$30
	dc.b		nB3,	$30,	nE4,	$30,	nCs4,	$30,	nD4,	$24
	dc.b		nE4,	$0C
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$12,	nB3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG4,	$03,	nG4,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA4,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$5A
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOn,	nG5,	$09,	smpsModOff
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$0F,	nB3,	$3C
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nG4,	$03,	nG4,	$03
;	Alter�Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$03,	nRst,	$03
;	Alter�Volume	value
	smpsAlterVol	$F0
	dc.b		nA4,	$03,	nRst,	$03
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nB3,	$60
;	Panning	�	direction	amsfms
	smpsPan		panRight,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOff,	smpsModOff,	smpsModOff
	smpsStop

; FM5 Data
competition_FM5:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$12,	nD4,	$4E,	nE4,	$60,	nRst,	$12
	dc.b		nD4,	$4E,	nE4,	$60
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nD4,	$1E,	nG4,	$09,	nA4,	$09,	nA4,	$30
	dc.b		nA4,	$30,	nA4,	$30,	nD4,	$1E,	nG4,	$09
	dc.b		nA4,	$09,	nA4,	$30,	nE4,	$30,	nA4,	$24
	dc.b		nCs5,	$0C
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$12,	nD4,	$4E,	nE4,	$60,	nRst,	$12
	dc.b		nD4,	$4E,	nE4,	$60,	nRst,	$12,	nD4,	$4E
	dc.b		nE4,	$60,	nRst,	$12,	nD4,	$4E,	nE4,	$60
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nD4,	$1E,	nG4,	$09,	nA4,	$09,	nA4,	$30
	dc.b		nA4,	$30,	nA4,	$30,	nD4,	$1E,	nG4,	$09
	dc.b		nA4,	$09,	nA4,	$30,	nE4,	$30,	nA4,	$24
	dc.b		nCs5,	$0C
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$12,	nD4,	$4E,	nE4,	$60,	nRst,	$12
	dc.b		nD4,	$4E,	nE4,	$60
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$02
	smpsStop

; PSG1 Data
competition_PSG1:
	dc.b		nRst,	$01,	$0C,	nD2,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nG1,	$06,	nB1,	$03,	nRst,	$03,	nD2
	dc.b		$06,	nB1,	$03,	nRst,	$0F,	nD2,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F,	nE2
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nE2,	$06,	nB1,	$03,	nRst
	dc.b		$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1
	dc.b		$03,	nRst,	$0F,	nD2,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nG1,	$06,	nB1,	$03,	nRst,	$03,	nD2
	dc.b		$06,	nB1,	$03,	nRst,	$0F,	nD2,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F,	nE2
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nE2,	$06,	nB1,	$03,	nRst
	dc.b		$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1
	dc.b		$03,	nRst,	$7F,	$20,	nD2,	$0C,	nE2,	$01
	dc.b		nFs2,	$0B,	nD2,	$0C,	nG1,	$01,	nA1,	$17
	dc.b		nRst,	$24,	nA1,	$09,	nG1,	$03,	nFs1,	$0C
	dc.b		nA1,	$0C,	nE1,	$12,	nRst,	$5A,	nD2,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F
	dc.b		nD2,	$06,	nB1,	$03,	nRst,	$03,	nG1,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nD2,	$06,	nB1,	$03
	dc.b		nRst,	$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nG1,	$06,	nB1,	$03,	nRst,	$03,	nE2,	$06
	dc.b		nB1,	$03,	nRst,	$0F,	nE2,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nE2,	$06,	nB1,	$03,	nRst,	$0F,	nD2,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F
	dc.b		nD2,	$06,	nB1,	$03,	nRst,	$03,	nG1,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nD2,	$06,	nB1,	$03
	dc.b		nRst,	$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nG1,	$06,	nB1,	$03,	nRst,	$03,	nE2,	$06
	dc.b		nB1,	$03,	nRst,	$3F,	nD2,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nD2,	$06,	nB1,	$03,	nRst,	$0F,	nD2,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F
	dc.b		nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1,	$03
	dc.b		nRst,	$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nG1,	$06,	nB1,	$03,	nRst,	$03,	nE2,	$06
	dc.b		nB1,	$03,	nRst,	$0F,	nD2,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nD2,	$06,	nB1,	$03,	nRst,	$0F,	nD2,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F
	dc.b		nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1,	$03
	dc.b		nRst,	$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nG1,	$06,	nB1,	$03,	nRst,	$03,	nE2,	$06
	dc.b		nB1,	$03,	nRst,	$7F,	$20,	nD2,	$0C,	nE2
	dc.b		$01,	nFs2,	$0B,	nD2,	$0C,	nG1,	$01,	nA1
	dc.b		$17,	nRst,	$24,	nA1,	$09,	nG1,	$03,	nFs1
	dc.b		$0C,	nA1,	$0C,	nE1,	$12,	nRst,	$5A,	nD2
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst
	dc.b		$0F,	nD2,	$06,	nB1,	$03,	nRst,	$03,	nG1
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nD2,	$06,	nB1
	dc.b		$03,	nRst,	$0F,	nE2,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nG1,	$06,	nB1,	$03,	nRst,	$03,	nE2
	dc.b		$06,	nB1,	$03,	nRst,	$0F,	nE2,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nE2,	$06,	nB1,	$03,	nRst,	$0F,	nD2
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst
	dc.b		$0F,	nD2,	$06,	nB1,	$03,	nRst,	$03,	nG1
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nD2,	$06,	nB1
	dc.b		$03,	nRst,	$0F,	nE2,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nG1,	$06,	nB1,	$03,	nRst,	$03,	nE2
	dc.b		$06,	nB1,	$03,	nRst,	$32
;	Set�PSG�Voice	#
	smpsPSGvoice	$00
	smpsStop

; PSG2 Data
competition_PSG2:
	dc.b		nRst,	$0C,	nD2,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nG1,	$06,	nB1,	$03,	nRst,	$03,	nD2,	$06
	dc.b		nB1,	$03,	nRst,	$0F,	nD2,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nD2,	$06,	nB1,	$03,	nRst,	$0F,	nE2,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nE2,	$06,	nB1,	$03,	nRst,	$0F
	dc.b		nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1,	$03
	dc.b		nRst,	$0F,	nD2,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nG1,	$06,	nB1,	$03,	nRst,	$03,	nD2,	$06
	dc.b		nB1,	$03,	nRst,	$0F,	nD2,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nD2,	$06,	nB1,	$03,	nRst,	$0F,	nE2,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nE2,	$06,	nB1,	$03,	nRst,	$0F
	dc.b		nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1,	$03
	dc.b		nRst,	$7F,	$20,	nD2,	$0C,	nE2,	$02,	nFs2
	dc.b		$0A,	nD2,	$0C,	nG1,	$02,	nA1,	$16,	nRst
	dc.b		$24,	nA1,	$09,	nG1,	$03,	nFs1,	$0C,	nA1
	dc.b		$0C,	nE1,	$12,	nRst,	$5A,	nD2,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F,	nD2
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst
	dc.b		$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1
	dc.b		$03,	nRst,	$0F,	nE2,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nG1,	$06,	nB1,	$03,	nRst,	$03,	nE2
	dc.b		$06,	nB1,	$03,	nRst,	$0F,	nD2,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F,	nD2
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst
	dc.b		$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1
	dc.b		$03,	nRst,	$3F,	nD2,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nG1,	$06,	nB1,	$03,	nRst,	$03,	nD2
	dc.b		$06,	nB1,	$03,	nRst,	$0F,	nD2,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F,	nE2
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nE2,	$06,	nB1,	$03,	nRst
	dc.b		$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1
	dc.b		$03,	nRst,	$0F,	nD2,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nG1,	$06,	nB1,	$03,	nRst,	$03,	nD2
	dc.b		$06,	nB1,	$03,	nRst,	$0F,	nD2,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst
	dc.b		$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F,	nE2
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1
	dc.b		$03,	nRst,	$03,	nE2,	$06,	nB1,	$03,	nRst
	dc.b		$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03,	nG1
	dc.b		$06,	nB1,	$03,	nRst,	$03,	nE2,	$06,	nB1
	dc.b		$03,	nRst,	$7F,	$20,	nD2,	$0C,	nE2,	$02
	dc.b		nFs2,	$0A,	nD2,	$0C,	nG1,	$02,	nA1,	$16
	dc.b		nRst,	$24,	nA1,	$09,	nG1,	$03,	nFs1,	$0C
	dc.b		nA1,	$0C,	nE1,	$12,	nRst,	$5A,	nD2,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F
	dc.b		nD2,	$06,	nB1,	$03,	nRst,	$03,	nG1,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nD2,	$06,	nB1,	$03
	dc.b		nRst,	$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nG1,	$06,	nB1,	$03,	nRst,	$03,	nE2,	$06
	dc.b		nB1,	$03,	nRst,	$0F,	nE2,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nG1,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nE2,	$06,	nB1,	$03,	nRst,	$0F,	nD2,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nG1,	$06,	nB1,	$03
	dc.b		nRst,	$03,	nD2,	$06,	nB1,	$03,	nRst,	$0F
	dc.b		nD2,	$06,	nB1,	$03,	nRst,	$03,	nG1,	$06
	dc.b		nB1,	$03,	nRst,	$03,	nD2,	$06,	nB1,	$03
	dc.b		nRst,	$0F,	nE2,	$06,	nB1,	$03,	nRst,	$03
	dc.b		nG1,	$06,	nB1,	$03,	nRst,	$03,	nE2,	$06
	dc.b		nB1,	$03,	nRst,	$33
;	Set�PSG�Voice	#
	smpsPSGvoice	$00
	smpsStop

; PSG3 Data
competition_PSG3:
;	Set�PSG�WvForm	#
	smpsPSGform	$E7
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$03,	nA5,	$03
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$06,	nA5,	$06
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nA5,	$06
	smpsStop

competition_Voices:
;	Voice 00
;	$3A,$71,$0C,$33,$01,$1C,$16,$1D,$1F,$04,$06,$04,$08,$00,$01,$03,$00,$16,$17,$16,$A6,$25,$2F,$25,$00
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$03,	$00,	$07
	smpsVcCoarseFreq	$01,	$03,	$0C,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1D,	$16,	$1C
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$08,	$04,	$06,	$04
	smpsVcDecayRate2	$00,	$03,	$01,	$00
	smpsVcDecayLevel	$0A,	$01,	$01,	$01
	smpsVcReleaseRate	$06,	$06,	$07,	$06
	smpsVcTotalLevel	$00,	$25,	$2F,	$25

;	Voice 01
;	$3B,$3A,$31,$71,$74,$DF,$1F,$1F,$DF,$00,$0A,$0A,$05,$00,$05,$05,$03,$0F,$5F,$1F,$5F,$32,$1E,$0F,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$07,	$07,	$03,	$03
	smpsVcCoarseFreq	$04,	$01,	$01,	$0A
	smpsVcRateScale		$03,	$00,	$00,	$03
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$05,	$0A,	$0A,	$00
	smpsVcDecayRate2	$03,	$05,	$05,	$00
	smpsVcDecayLevel	$05,	$01,	$05,	$00
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$0F,	$1E,	$32

;	Voice 02
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
	even
