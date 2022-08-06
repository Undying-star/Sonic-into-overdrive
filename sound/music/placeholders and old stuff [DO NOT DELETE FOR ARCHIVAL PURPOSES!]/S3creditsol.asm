; =============================================================================================
; Project Name:		S3Credits
; Created:		5th August 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

S3Credits_Header:
;	Voice Pointer	location
	smpsHeaderVoice	S3Credits_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$15

;	DAC Pointer	location
	smpsHeaderDAC	S3Credits_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	S3Credits_FM1,	smpsPitch00,	$08
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	S3Credits_FM2,	smpsPitch00,	$10
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	S3Credits_FM3,	smpsPitch00,	$17
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	S3Credits_FM4,	smpsPitch00,	$18
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	S3Credits_FM5,	smpsPitch00,	$1B
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	S3Credits_PSG1,	smpsPitch00,	$07,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	S3Credits_PSG2,	smpsPitch00,	$07,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	S3Credits_PSG3,	smpsPitch00,	$0A,	$00

; DAC Data
S3Credits_DAC:
;	Panning	�	direction	amsfms
	dc.b nRst, $60, $48, dTimpani, $18, dTimpani, $60, $3C
	dc.b $12, dTimpani

Credits_Loop7:
	dc.b dTimpani, $18, dSnare, dKick, dSnare
	smpsLoop		$00, $03, Credits_Loop7
	dc.b dTimpani, $18, dSnare, $24, dTimpani, $12, dTimpani
	smpsLoop		$01, $05, Credits_Loop7

Credits_Loop8:
	dc.b dTimpani, $18, dSnare, dKick, dSnare
	smpsLoop		$00, $04, Credits_Loop8
	dc.b dTimpani, $18, dSnare, $24, dTimpani, $12, dTimpani

Credits_Loop9:
	dc.b dTimpani, $18, dSnare, dKick, dSnare
	smpsLoop		$00, $03, Credits_Loop9
	dc.b dTimpani, $18, dSnare, $24, dTimpani, $12, dTimpani

Credits_Loop10:
	dc.b dTimpani, $18, dSnare, dKick, dSnare
	smpsLoop		$00, $03, Credits_Loop10
	dc.b dTimpani, $18, dSnare, $24, dTimpani, $12, dTimpani
	smpsLoop		$01, $05, Credits_Loop10

Credits_Loop11:
	dc.b dTimpani, $18, dSnare, dKick, dSnare
	smpsLoop		$00, $04, Credits_Loop11
	dc.b dTimpani, $18, dSnare, $24, dTimpani, $12, dTimpani
	smpsJump		Credits_Loop9

	; Unused data
Credits_Loop12:
	dc.b dTimpani, $18, dSnare, dKick, dSnare
	smpsLoop		$00, $03, Credits_Loop12
	dc.b dTimpani, $18, dSnare, $12, nRst, $12, dTimpani, dTimpani
	smpsJump		Credits_Loop12

;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00

; FM1 Data
S3Credits_FM1:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$00
;	Set�Modulation	wait	speed	change	step
	smpsModSet	$00,	$01,	$02,	$04
	dc.b		smpsModOn,	smpsModOn,	smpsModOn,	smpsModOn,	nEb2,	$03,	nRst,	$12
	dc.b		nEb2,	$03,	nEb2,	$03,	nRst,	$15,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0F,	nFs2,	$03,	nRst,	$12,	nFs2,	$03
	dc.b		nFs2,	$03,	nRst,	$15,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0F
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F,	nEb2,	$03,	nRst,	$12
	dc.b		nEb2,	$03,	nEb2,	$03,	nRst,	$15,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0F,	nFs2,	$03,	nRst,	$12,	nFs2,	$03
	dc.b		nFs2,	$03,	nRst,	$15,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0F
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Alter�Volume	value
	smpsAlterVol	$08
	dc.b		nAb2,	$30,	nFs2,	$30,	nF2,	$30,	nFs2,	$30
	dc.b		nAb2,	$2D,	nFs2,	$33,	nF2,	$30,	nE2,	$2D
	dc.b		nA2,	$33,	nD2,	$30,	nG2,	$30,	nRst,	$60
;	Set�FM�Voice	#
	smpsFMvoice	$00
;	Alter�Volume	value
	smpsAlterVol	$F8
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F,	nEb2,	$03,	nRst,	$12
	dc.b		nEb2,	$03,	nEb2,	$03,	nRst,	$15,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0F,	nFs2,	$03,	nRst,	$12,	nFs2,	$03
	dc.b		nFs2,	$03,	nRst,	$15,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0F
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F,	nEb2,	$03,	nRst,	$12
	dc.b		nEb2,	$03,	nEb2,	$03,	nRst,	$15,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0F,	nFs2,	$03,	nRst,	$12,	nFs2,	$03
	dc.b		nFs2,	$03,	nRst,	$15,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0F
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Alter�Volume	value
	smpsAlterVol	$08
	dc.b		nAb2,	$30,	nFs2,	$30,	nF2,	$30,	nFs2,	$30
	dc.b		nAb2,	$2D,	nFs2,	$33,	nF2,	$30,	nE2,	$2D
	dc.b		nA2,	$33,	nD2,	$30,	nG2,	$30,	nRst,	$60
;	Set�FM�Voice	#
	smpsFMvoice	$00
;	Alter�Volume	value
	smpsAlterVol	$F8
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F,	nEb2,	$03,	nRst,	$12
	dc.b		nEb2,	$03,	nEb2,	$03,	nRst,	$15,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0F,	nFs2,	$03,	nRst,	$12,	nFs2,	$03
	dc.b		nFs2,	$03,	nRst,	$15,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0F
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F,	nEb2,	$03,	nRst,	$12
	dc.b		nEb2,	$03,	nEb2,	$03,	nRst,	$15,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0F,	nFs2,	$03,	nRst,	$12,	nFs2,	$03
	dc.b		nFs2,	$03,	nRst,	$15,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0F
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Alter�Volume	value
	smpsAlterVol	$08
	dc.b		nAb2,	$30,	nFs2,	$30,	nF2,	$30,	nFs2,	$30
	dc.b		nAb2,	$2D,	nFs2,	$33,	nF2,	$30,	nE2,	$2D
	dc.b		nA2,	$33,	nD2,	$30,	nG2,	$30,	nRst,	$30
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		smpsModOn,	smpsModOn,	smpsModOn
	smpsStop

; FM2 Data
S3Credits_FM2:
;	Panning	�	direction	amsfms
	smpsPan		panLeft,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nEb2,	$03,	nBb3,	$03,	nG3,	$03,	nEb3,	$03
	dc.b		nEb4,	$03,	nG3,	$03,	nEb3,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nCs2,	$03,	nEb4,	$03,	nCs3,	$03,	nEb4,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nCs4,	$03,	nCs3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nCs3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nFs2,	$03,	nAb3,	$03,	nCs3,	$03,	nAb3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nCs3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nCs4,	$03,	nCs3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nFs3,	$03
	dc.b		nAb2,	$03,	nC4,	$03,	nEb3,	$03,	nC4,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nEb2,	$03,	nBb3,	$03,	nG3,	$03,	nEb3,	$03
	dc.b		nEb4,	$03,	nG3,	$03,	nBb2,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nEb4,	$03,	nBb2,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nCs2,	$03,	nEb4,	$03,	nF3,	$03,	nCs3,	$03
	dc.b		nCs4,	$03,	nF3,	$03,	nAb2,	$03,	nAb3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nCs4,	$03,	nAb2,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nAb1,	$03,	nAb3,	$03,	nFs3,	$03,	nFs2,	$03
	dc.b		nBb3,	$03,	nFs3,	$03,	nBb1,	$03,	nCs4,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nFs3,	$03
	dc.b		nFs3,	$03,	nFs3,	$03,	nAb3,	$03,	nFs3,	$03
	dc.b		nAb1,	$03,	nBb3,	$03,	nAb3,	$03,	nAb2,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nC3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nEb2,	$03,	nBb3,	$03,	nG3,	$03,	nEb3,	$03
	dc.b		nEb4,	$03,	nG3,	$03,	nEb3,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nCs2,	$03,	nEb4,	$03,	nCs3,	$03,	nEb4,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nCs4,	$03,	nCs3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nCs3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nFs2,	$03,	nAb3,	$03,	nCs3,	$03,	nAb3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nCs3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nCs4,	$03,	nCs3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nFs3,	$03
	dc.b		nAb2,	$03,	nC4,	$03,	nEb3,	$03,	nC4,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nEb2,	$03,	nBb3,	$03,	nG3,	$03,	nEb3,	$03
	dc.b		nEb4,	$03,	nG3,	$03,	nBb2,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nEb4,	$03,	nBb2,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nCs2,	$03,	nEb4,	$03,	nF3,	$03,	nCs3,	$03
	dc.b		nCs4,	$03,	nF3,	$03,	nAb2,	$03,	nAb3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nCs4,	$03,	nAb2,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nAb1,	$03,	nAb3,	$03,	nFs3,	$03,	nFs2,	$03
	dc.b		nBb3,	$03,	nFs3,	$03,	nBb1,	$03,	nCs4,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nFs3,	$03
	dc.b		nFs3,	$03,	nFs3,	$03,	nAb3,	$03,	nFs3,	$03
	dc.b		nAb1,	$03,	nBb3,	$03,	nAb3,	$03,	nAb2,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nC3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nAb2,	$03,	nBb3,	$03,	nAb3,	$03,	nAb3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nAb3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nAb3,	$03,	nEb4,	$03,	nAb3,	$03
	dc.b		nAb3,	$03,	nAb2,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nFs2,	$03,	nBb3,	$03,	nAb3,	$03,	nFs3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nFs3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nFs3,	$03,	nEb4,	$03,	nFs3,	$03
	dc.b		nAb3,	$03,	nFs3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nF2,	$03,	nBb3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nF3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nF3,	$03,	nEb4,	$03,	nF3,	$03
	dc.b		nAb3,	$03,	nF3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nAb2,	$03,	nBb3,	$03,	nAb3,	$03,	nAb3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nAb3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nAb3,	$03,	nEb4,	$03,	nAb3,	$03
	dc.b		nAb3,	$03,	nAb2,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nAb2,	$03,	nBb3,	$03,	nAb3,	$03,	nAb3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nAb3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nAb3,	$03,	nEb4,	$03,	nAb3,	$03
	dc.b		nAb3,	$03,	nAb2,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nFs2,	$03,	nBb3,	$03,	nAb3,	$03,	nFs3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nFs3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nFs3,	$03,	nEb4,	$03,	nFs3,	$03
	dc.b		nAb3,	$03,	nFs3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nF2,	$03,	nBb3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nF3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nF3,	$03,	nEb4,	$03,	nF3,	$03
	dc.b		nAb3,	$03,	nF3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nE2,	$03,	nEb4,	$03,	nAb3,	$03,	nE3,	$03
	dc.b		nEb4,	$03,	nAb3,	$03,	nE3,	$03,	nEb4,	$03
	dc.b		nE3,	$03,	nEb4,	$03,	nAb3,	$03,	nE3,	$03
	dc.b		nEb4,	$03,	nE3,	$03,	nAb3,	$03,	nA2,	$03
	dc.b		nCs4,	$03,	nAb3,	$03,	nA2,	$03,	nCs4,	$03
	dc.b		nA2,	$03,	nCs4,	$03,	nAb3,	$03,	nA2,	$03
	dc.b		nCs4,	$03,	nA2,	$03,	nAb3,	$03,	nA2,	$03
	dc.b		nCs4,	$03,	nAb3,	$03,	nA2,	$03,	nCs4,	$03
	dc.b		nD2,	$03,	nCs4,	$03,	nFs3,	$03,	nD2,	$03
	dc.b		nCs4,	$03,	nD2,	$03,	nFs3,	$03,	nD2,	$03
	dc.b		nCs4,	$03,	nFs3,	$03,	nD2,	$03,	nCs4,	$03
	dc.b		nD2,	$03,	nCs4,	$03,	nFs3,	$03,	nG2,	$03
	dc.b		nB3,	$03,	nFs3,	$03,	nG2,	$03,	nB3,	$03
	dc.b		nFs3,	$03,	nG2,	$03,	nB3,	$03,	nFs3,	$03
	dc.b		nG2,	$03,	nB3,	$03,	nFs3,	$03,	nG2,	$03
	dc.b		nB3,	$03,	nG2,	$03,	nFs3,	$03,	nB3,	$03
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter�Volume	value
	smpsAlterVol	$04
	dc.b		nBb2,	$03,	nEb4,	$03,	nAb3,	$03,	nBb2,	$03
	dc.b		nEb4,	$03,	nAb3,	$03,	nBb2,	$03,	nEb4,	$03
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nBb2,	$03,	nEb4,	$03,	nAb3,	$03,	nBb2,	$03
	dc.b		nEb4,	$03,	nBb2,	$03,	nBb3,	$03,	nBb2,	$03
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nEb4,	$03,	nAb3,	$03,	nBb2,	$03,	nEb4,	$03
	dc.b		nBb2,	$03,	nEb4,	$03,	nAb3,	$03,	nBb2,	$03
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nEb4,	$03,	nBb2,	$03,	nAb3,	$03,	nBb2,	$03
	dc.b		nEb4,	$03,	nBb2,	$03,	nAb3,	$03,	nEb4,	$03
;	Panning	�	direction	amsfms
	smpsPan		panLeft,	$00
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nEb2,	$03,	nBb3,	$03,	nG3,	$03,	nEb3,	$03
	dc.b		nEb4,	$03,	nG3,	$03,	nEb3,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nCs2,	$03,	nEb4,	$03,	nCs3,	$03,	nEb4,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nCs4,	$03,	nCs3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nCs3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nFs2,	$03,	nAb3,	$03,	nCs3,	$03,	nAb3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nCs3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nCs4,	$03,	nCs3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nFs3,	$03
	dc.b		nAb2,	$03,	nC4,	$03,	nEb3,	$03,	nC4,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nEb2,	$03,	nBb3,	$03,	nG3,	$03,	nEb3,	$03
	dc.b		nEb4,	$03,	nG3,	$03,	nBb2,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nEb4,	$03,	nBb2,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nCs2,	$03,	nEb4,	$03,	nF3,	$03,	nCs3,	$03
	dc.b		nCs4,	$03,	nF3,	$03,	nAb2,	$03,	nAb3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nCs4,	$03,	nAb2,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nAb1,	$03,	nAb3,	$03,	nFs3,	$03,	nFs2,	$03
	dc.b		nBb3,	$03,	nFs3,	$03,	nBb1,	$03,	nCs4,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nFs3,	$03
	dc.b		nFs3,	$03,	nFs3,	$03,	nAb3,	$03,	nFs3,	$03
	dc.b		nAb1,	$03,	nBb3,	$03,	nAb3,	$03,	nAb2,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nC3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nEb2,	$03,	nBb3,	$03,	nG3,	$03,	nEb3,	$03
	dc.b		nEb4,	$03,	nG3,	$03,	nEb3,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nCs2,	$03,	nEb4,	$03,	nCs3,	$03,	nEb4,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nCs4,	$03,	nCs3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nCs3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nFs2,	$03,	nAb3,	$03,	nCs3,	$03,	nAb3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nCs3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nCs4,	$03,	nCs3,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nFs3,	$03
	dc.b		nAb2,	$03,	nC4,	$03,	nEb3,	$03,	nC4,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nEb2,	$03,	nBb3,	$03,	nG3,	$03,	nEb3,	$03
	dc.b		nEb4,	$03,	nG3,	$03,	nBb2,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nEb4,	$03,	nBb2,	$03
	dc.b		nG3,	$03,	nEb3,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nCs2,	$03,	nEb4,	$03,	nF3,	$03,	nCs3,	$03
	dc.b		nCs4,	$03,	nF3,	$03,	nAb2,	$03,	nAb3,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nCs4,	$03,	nAb2,	$03
	dc.b		nF3,	$03,	nCs3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nAb1,	$03,	nAb3,	$03,	nFs3,	$03,	nFs2,	$03
	dc.b		nBb3,	$03,	nFs3,	$03,	nBb1,	$03,	nCs4,	$03
	dc.b		nFs3,	$03,	nCs3,	$03,	nBb3,	$03,	nFs3,	$03
	dc.b		nFs3,	$03,	nFs3,	$03,	nAb3,	$03,	nFs3,	$03
	dc.b		nAb1,	$03,	nBb3,	$03,	nAb3,	$03,	nAb2,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nC3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nEb4,	$03,	nEb3,	$03
	dc.b		nAb3,	$03,	nEb3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nAb2,	$03,	nBb3,	$03,	nAb3,	$03,	nAb3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nAb3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nAb3,	$03,	nEb4,	$03,	nAb3,	$03
	dc.b		nAb3,	$03,	nAb2,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nFs2,	$03,	nBb3,	$03,	nAb3,	$03,	nFs3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nFs3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nFs3,	$03,	nEb4,	$03,	nFs3,	$03
	dc.b		nAb3,	$03,	nFs3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nF2,	$03,	nBb3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nF3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nF3,	$03,	nEb4,	$03,	nF3,	$03
	dc.b		nAb3,	$03,	nF3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nAb2,	$03,	nBb3,	$03,	nAb3,	$03,	nAb3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nAb3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nAb3,	$03,	nEb4,	$03,	nAb3,	$03
	dc.b		nAb3,	$03,	nAb2,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nAb2,	$03,	nBb3,	$03,	nAb3,	$03,	nAb3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nAb3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nAb3,	$03,	nEb4,	$03,	nAb3,	$03
	dc.b		nAb3,	$03,	nAb2,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nFs2,	$03,	nBb3,	$03,	nAb3,	$03,	nFs3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nFs3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nFs3,	$03,	nEb4,	$03,	nFs3,	$03
	dc.b		nAb3,	$03,	nFs3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nF2,	$03,	nBb3,	$03,	nAb3,	$03,	nF3,	$03
	dc.b		nC4,	$03,	nAb3,	$03,	nF3,	$03,	nCs4,	$03
	dc.b		nAb3,	$03,	nF3,	$03,	nEb4,	$03,	nF3,	$03
	dc.b		nAb3,	$03,	nF3,	$03,	nCs4,	$03,	nAb3,	$03
	dc.b		nE2,	$03,	nEb4,	$03,	nAb3,	$03,	nE3,	$03
	dc.b		nEb4,	$03,	nAb3,	$03,	nE3,	$03,	nEb4,	$03
	dc.b		nE3,	$03,	nEb4,	$03,	nAb3,	$03,	nE3,	$03
	dc.b		nEb4,	$03,	nE3,	$03,	nAb3,	$03,	nA2,	$03
	dc.b		nCs4,	$03,	nAb3,	$03,	nA2,	$03,	nCs4,	$03
	dc.b		nA2,	$03,	nCs4,	$03,	nAb3,	$03,	nA2,	$03
	dc.b		nCs4,	$03,	nA2,	$03,	nAb3,	$03,	nA2,	$03
	dc.b		nCs4,	$03,	nAb3,	$03,	nA2,	$03,	nCs4,	$03
	dc.b		nD2,	$03,	nCs4,	$03,	nFs3,	$03,	nD2,	$03
	dc.b		nCs4,	$03,	nD2,	$03,	nFs3,	$03,	nD2,	$03
	dc.b		nCs4,	$03,	nFs3,	$03,	nD2,	$03,	nCs4,	$03
	dc.b		nD2,	$03,	nCs4,	$03,	nFs3,	$03,	nG2,	$03
	dc.b		nB3,	$03,	nFs3,	$03,	nG2,	$03,	nB3,	$03
	dc.b		nFs3,	$03,	nG2,	$03,	nB3,	$03,	nFs3,	$03
	dc.b		nG2,	$03,	nB3,	$03,	nFs3,	$03,	nG2,	$03
	dc.b		nB3,	$03,	nG2,	$03,	nFs3,	$03,	nB3,	$03
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter�Volume	value
	smpsAlterVol	$04
	dc.b		nBb2,	$03,	nEb4,	$03,	nAb3,	$03,	nBb2,	$03
	dc.b		nEb4,	$03,	nAb3,	$03,	nBb2,	$03,	nEb4,	$03
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nBb2,	$03,	nEb4,	$03,	nAb3,	$03,	nBb2,	$03
	dc.b		nEb4,	$03,	nBb2,	$03,	nBb3,	$03,	nBb2,	$03
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nEb4,	$03,	nAb3,	$03,	nBb2,	$03,	nEb4,	$03
	dc.b		nBb2,	$03,	nEb4,	$03,	nAb3,	$03,	nBb2,	$03
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nEb4,	$03,	nBb2,	$03,	nAb3,	$03,	nBb2,	$03
	dc.b		nEb4,	$03,	nBb2,	$03,	nAb3,	$03,	nEb4,	$03
	dc.b		nRst,	$70,	$70,	$70,	$70,	$70,	$70,	$70
	dc.b		$70,	$70,	$70,	$70,	$70
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$00
	smpsStop

; FM3 Data
S3Credits_FM3:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Set�Modulation	wait	speed	change	step
	smpsModSet	$00,	$01,	$01,	$04
	dc.b		smpsModOn,	smpsModOn,	smpsModOn,	smpsModOn,	nRst,	$18,	nEb4,	$30
	dc.b		nCs4,	$30,	nEb4,	$18,	nC4,	$12,	nCs4,	$12
	dc.b		nEb4,	$0C,	nBb3,	$12,	nEb4,	$12,	nBb4,	$0C
	dc.b		nAb4,	$7F,	smpsNoAttack,	$11,	nRst,	$18,	nEb4,	$30
	dc.b		nCs4,	$30,	nEb4,	$18,	nC4,	$12,	nCs4,	$12
	dc.b		nEb4,	$0C,	nEb4,	$30,	nF4,	$30,	nFs4,	$18
	dc.b		nAb4,	$18,	nAb4,	$30,	nC5,	$12,	nCs5,	$12
	dc.b		nC5,	$1E,	nCs5,	$12,	nC5,	$1E,	nCs5,	$12
	dc.b		nC5,	$1E,	nBb4,	$12,	nAb4,	$0C,	nC5,	$12
	dc.b		nCs5,	$12,	nC5,	$1E,	nCs5,	$12,	nC5,	$0C
	dc.b		nEb5,	$30,	nAb5,	$60,	nFs5,	$60,	nRst,	$60
	dc.b		nEb4,	$12,	nF4,	$12,	nG4,	$0C,	nBb4,	$12
	dc.b		nAb4,	$12,	nF4,	$0C,	nFs4,	$12,	nBb4,	$12
	dc.b		nCs5,	$0C,	nC5,	$12,	nAb4,	$12,	nEb4,	$1E
	dc.b		nG4,	$12,	nBb4,	$0C,	nAb4,	$12,	nF4,	$12
	dc.b		nCs4,	$0C,	nBb4,	$12,	nCs5,	$12,	nFs5,	$0C
	dc.b		nEb5,	$12,	nC5,	$12,	nAb4,	$0C,	nRst,	$18
	dc.b		nEb4,	$30,	nCs4,	$30,	nEb4,	$18,	nC4,	$12
	dc.b		nCs4,	$12,	nEb4,	$0C,	nBb3,	$12,	nEb4,	$12
	dc.b		nBb4,	$0C,	nAb4,	$7F,	smpsNoAttack,	$11,	nC5,	$12
	dc.b		nCs5,	$12,	nC5,	$1E,	nCs5,	$12,	nC5,	$1E
	dc.b		nCs5,	$12,	nC5,	$1E,	nBb4,	$12,	nAb4,	$0C
	dc.b		nC5,	$12,	nCs5,	$12,	nC5,	$1E,	nCs5,	$12
	dc.b		nC5,	$0C,	nEb5,	$30,	nAb5,	$60,	nFs5,	$60
	dc.b		nRst,	$60,	nEb4,	$12,	nF4,	$12,	nG4,	$0C
	dc.b		nBb4,	$12,	nAb4,	$12,	nF4,	$0C,	nFs4,	$12
	dc.b		nBb4,	$12,	nCs5,	$0C,	nC5,	$12,	nAb4,	$12
	dc.b		nEb4,	$1E,	nG4,	$12,	nBb4,	$0C,	nAb4,	$12
	dc.b		nF4,	$12,	nCs4,	$0C,	nBb4,	$12,	nCs5,	$12
	dc.b		nFs5,	$0C,	nEb5,	$12,	nC5,	$12,	nAb4,	$0C
	dc.b		nRst,	$18,	nEb4,	$30,	nCs4,	$30,	nEb4,	$18
	dc.b		nC4,	$12,	nCs4,	$12,	nEb4,	$0C,	nBb3,	$12
	dc.b		nEb4,	$12,	nBb4,	$0C,	nAb4,	$7F,	smpsNoAttack,	$11
	dc.b		nC5,	$12,	nCs5,	$12,	nC5,	$1E,	nCs5,	$12
	dc.b		nC5,	$1E,	nCs5,	$12,	nC5,	$1E,	nBb4,	$12
	dc.b		nAb4,	$0C,	nC5,	$12,	nCs5,	$12,	nC5,	$1E
	dc.b		nCs5,	$12,	nC5,	$0C,	nEb5,	$30,	nAb5,	$60
	dc.b		nFs5,	$60,	nRst,	$30
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		smpsModOn,	smpsModOn,	smpsModOn
	smpsStop

; FM4 Data
S3Credits_FM4:
;	Panning	�	direction	amsfms
	smpsPan		panRight,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nG4,	$30,	nF4,	$30,	nFs4,	$30,	nAb4,	$30
	dc.b		nEb4,	$30,	nCs4,	$30,	nFs4,	$30,	nC4,	$30
	dc.b		nG4,	$30,	nF4,	$30,	nFs4,	$30,	nAb4,	$30
	dc.b		nG4,	$30,	nAb4,	$30,	nBb4,	$30,	nC5,	$30
	dc.b		nEb5,	$12,	nF5,	$12,	nEb5,	$1E,	nF5,	$12
	dc.b		nEb5,	$1E,	nF5,	$12,	nEb5,	$1E,	nCs5,	$1E
	dc.b		nEb5,	$12,	nF5,	$12,	nEb5,	$1E,	nF5,	$12
	dc.b		nEb5,	$0C,	nAb5,	$60,	nCs6,	$60,	nB5,	$30
	dc.b		nRst,	$61,	nEb4,	$12,	nF4,	$12,	nG4,	$0C
	dc.b		nBb4,	$12,	nAb4,	$12,	nF4,	$0C,	nFs4,	$12
	dc.b		nBb4,	$12,	nCs5,	$0C,	nC5,	$12,	nAb4,	$12
	dc.b		nEb4,	$1E,	nG4,	$12,	nBb4,	$0C,	nAb4,	$12
	dc.b		nF4,	$12,	nCs4,	$0C,	nFs4,	$12,	nBb4,	$12
	dc.b		nCs5,	$0C,	nC5,	$12,	nAb4,	$12,	nEb4,	$0C
	dc.b		nG4,	$30,	nF4,	$30,	nFs4,	$30,	nAb4,	$30
	dc.b		nEb4,	$30,	nCs4,	$30,	nFs4,	$30,	nC4,	$30
	dc.b		nEb5,	$12,	nF5,	$12,	nEb5,	$1E,	nF5,	$12
	dc.b		nEb5,	$1E,	nF5,	$12,	nEb5,	$1E,	nCs5,	$1E
	dc.b		nEb5,	$12,	nF5,	$12,	nEb5,	$1E,	nF5,	$12
	dc.b		nEb5,	$0C,	nAb5,	$60,	nCs6,	$60,	nB5,	$30
	dc.b		nRst,	$61,	nEb4,	$12,	nF4,	$12,	nG4,	$0C
	dc.b		nBb4,	$12,	nAb4,	$12,	nF4,	$0C,	nFs4,	$12
	dc.b		nBb4,	$12,	nCs5,	$0C,	nC5,	$12,	nAb4,	$12
	dc.b		nEb4,	$1E,	nG4,	$12,	nBb4,	$0C,	nAb4,	$12
	dc.b		nF4,	$12,	nCs4,	$0C,	nFs4,	$12,	nBb4,	$12
	dc.b		nCs5,	$0C,	nC5,	$12,	nAb4,	$12,	nEb4,	$0C
	dc.b		nG4,	$30,	nF4,	$30,	nFs4,	$30,	nAb4,	$30
	dc.b		nEb4,	$30,	nCs4,	$30,	nFs4,	$30,	nC4,	$30
	dc.b		nEb5,	$12,	nF5,	$12,	nEb5,	$1E,	nF5,	$12
	dc.b		nEb5,	$1E,	nF5,	$12,	nEb5,	$1E,	nCs5,	$1E
	dc.b		nEb5,	$12,	nF5,	$12,	nEb5,	$1E,	nF5,	$12
	dc.b		nEb5,	$0C,	nAb5,	$60,	nCs6,	$60,	nB5,	$30
	dc.b		nRst,	$2E
;	Panning	�	direction	amsfms
	smpsPan		panRight,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	smpsStop

; FM5 Data
S3Credits_FM5:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
;	Set�Modulation	wait	speed	change	step
	smpsModSet	$00,	$01,	$01,	$04
	dc.b		smpsModOn,	smpsModOn,	smpsModOn,	smpsModOn,	nRst,	$1A,	nEb5,	$30
	dc.b		nCs5,	$30,	nEb5,	$18,	nC5,	$12,	nCs5,	$12
	dc.b		nEb5,	$0C,	nBb4,	$12,	nEb5,	$12,	nBb5,	$0C
	dc.b		nAb5,	$7F,	smpsNoAttack,	$11,	nRst,	$18,	nEb5,	$30
	dc.b		nCs5,	$30,	nEb5,	$18,	nC5,	$12,	nCs5,	$12
	dc.b		nEb5,	$0C,	nEb5,	$30,	nF5,	$30,	nFs5,	$18
	dc.b		nAb5,	$18,	nAb5,	$30,	nC6,	$12,	nCs6,	$12
	dc.b		nC6,	$1E,	nCs6,	$12,	nC6,	$1E,	nCs6,	$12
	dc.b		nC6,	$1E,	nBb5,	$12,	nAb5,	$0C,	nC6,	$12
	dc.b		nCs6,	$12,	nC6,	$1E,	nCs6,	$12,	nC6,	$0C
	dc.b		nEb6,	$30,	nAb6,	$60,	nFs6,	$60,	nRst,	$60
	dc.b		nEb5,	$12,	nF5,	$12,	nG5,	$0C,	nBb5,	$12
	dc.b		nAb5,	$12,	nF5,	$0C,	nFs5,	$12,	nBb5,	$12
	dc.b		nCs6,	$0C,	nC6,	$12,	nAb5,	$12,	nEb5,	$1E
	dc.b		nG5,	$12,	nBb5,	$0C,	nAb5,	$12,	nF5,	$12
	dc.b		nCs5,	$0C,	nBb5,	$12,	nCs6,	$12,	nFs6,	$0C
	dc.b		nEb6,	$12,	nC6,	$12,	nAb5,	$0C,	nRst,	$18
	dc.b		nEb5,	$30,	nCs5,	$30,	nEb5,	$18,	nC5,	$12
	dc.b		nCs5,	$12,	nEb5,	$0C,	nBb4,	$12,	nEb5,	$12
	dc.b		nBb5,	$0C,	nAb5,	$7F,	smpsNoAttack,	$11,	nC6,	$12
	dc.b		nCs6,	$12,	nC6,	$1E,	nCs6,	$12,	nC6,	$1E
	dc.b		nCs6,	$12,	nC6,	$1E,	nBb5,	$12,	nAb5,	$0C
	dc.b		nC6,	$12,	nCs6,	$12,	nC6,	$1E,	nCs6,	$12
	dc.b		nC6,	$0C,	nEb6,	$30,	nAb6,	$60,	nFs6,	$60
	dc.b		nRst,	$60,	nEb5,	$12,	nF5,	$12,	nG5,	$0C
	dc.b		nBb5,	$12,	nAb5,	$12,	nF5,	$0C,	nFs5,	$12
	dc.b		nBb5,	$12,	nCs6,	$0C,	nC6,	$12,	nAb5,	$12
	dc.b		nEb5,	$1E,	nG5,	$12,	nBb5,	$0C,	nAb5,	$12
	dc.b		nF5,	$12,	nCs5,	$0C,	nBb5,	$12,	nCs6,	$12
	dc.b		nFs6,	$0C,	nEb6,	$12,	nC6,	$12,	nAb5,	$0C
	dc.b		nRst,	$18,	nEb5,	$30,	nCs5,	$30,	nEb5,	$18
	dc.b		nC5,	$12,	nCs5,	$12,	nEb5,	$0C,	nBb4,	$12
	dc.b		nEb5,	$12,	nBb5,	$0C,	nAb5,	$7F,	smpsNoAttack,	$11
	dc.b		nC6,	$12,	nCs6,	$12,	nC6,	$1E,	nCs6,	$12
	dc.b		nC6,	$1E,	nCs6,	$12,	nC6,	$1E,	nBb5,	$12
	dc.b		nAb5,	$0C,	nC6,	$12,	nCs6,	$12,	nC6,	$1E
	dc.b		nCs6,	$12,	nC6,	$0C,	nEb6,	$30,	nAb6,	$60
	dc.b		nFs6,	$60,	nRst,	$2E
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		smpsModOn,	smpsModOn,	smpsModOn
	smpsStop

; PSG1 Data
S3Credits_PSG1:
	dc.b		nEb0,	$06,	nBb0,	$06,	nEb0,	$03,	nEb0,	$03
	dc.b		nBb0,	$03,	nEb0,	$03,	nRst,	$12,	nCs0,	$06
	dc.b		nAb0,	$03,	nCs0,	$03,	nCs0,	$06,	nAb0,	$03
	dc.b		nCs0,	$03,	nCs0,	$03,	nAb0,	$03,	nRst,	$18
	dc.b		nFs0,	$03,	nFs0,	$03,	nCs1,	$03,	nFs0,	$03
	dc.b		nFs0,	$03,	nFs0,	$03,	nCs1,	$03,	nFs0,	$03
	dc.b		nRst,	$12,	nAb0,	$03,	nAb0,	$03,	nEb1,	$06
	dc.b		nAb0,	$03,	nAb0,	$03,	nEb1,	$03,	nAb0,	$03
	dc.b		nAb0,	$03,	nAb1,	$03,	nAb0,	$03,	nAb1,	$03
	dc.b		nAb0,	$03,	nAb0,	$03,	nEb1,	$03,	nAb0,	$03
	dc.b		nAb0,	$03,	nEb0,	$03,	nBb0,	$03,	nEb0,	$06
	dc.b		nEb1,	$03,	nEb0,	$03,	nEb1,	$03,	nEb0,	$03
	dc.b		nEb0,	$03,	nBb0,	$03,	nRst,	$0F,	nEb0,	$06
	dc.b		nAb0,	$03,	nCs0,	$06,	nCs1,	$03,	nCs0,	$03
	dc.b		nCs1,	$03,	nCs0,	$03,	nCs0,	$03,	nAb0,	$06
	dc.b		nCs0,	$03,	nCs0,	$03,	nAb0,	$03,	nCs0,	$03
	dc.b		nCs0,	$03,	nCs0,	$03,	nFs0,	$03,	nFs0,	$03
	dc.b		nCs1,	$03,	nFs0,	$03,	nFs0,	$03,	nFs0,	$03
	dc.b		nCs1,	$03,	nFs0,	$03,	nRst,	$12,	nAb0,	$03
	dc.b		nAb0,	$03,	nEb1,	$09,	nAb0,	$03,	nAb1,	$03
	dc.b		nAb0,	$03,	nAb0,	$03,	nEb1,	$03,	nAb0,	$03
	dc.b		nAb1,	$03,	nAb0,	$03,	nRst,	$0F,	nEb0,	$06
	dc.b		nBb0,	$06,	nEb0,	$03,	nEb0,	$03,	nBb0,	$03
	dc.b		nEb0,	$03,	nRst,	$12,	nCs0,	$06,	nAb0,	$03
	dc.b		nCs0,	$03,	nCs0,	$06,	nAb0,	$03,	nCs0,	$03
	dc.b		nCs0,	$03,	nAb0,	$03,	nRst,	$18,	nFs0,	$03
	dc.b		nFs0,	$03,	nCs1,	$03,	nFs0,	$03,	nFs0,	$03
	dc.b		nFs0,	$03,	nCs1,	$03,	nFs0,	$03,	nRst,	$12
	dc.b		nAb0,	$03,	nAb0,	$03,	nEb1,	$06,	nAb0,	$03
	dc.b		nAb0,	$03,	nEb1,	$03,	nAb0,	$03,	nAb0,	$03
	dc.b		nAb1,	$03,	nAb0,	$03,	nAb1,	$03,	nAb0,	$03
	dc.b		nAb0,	$03,	nEb1,	$03,	nAb0,	$03,	nAb0,	$03
	dc.b		nEb0,	$03,	nBb0,	$03,	nEb0,	$06,	nEb1,	$03
	dc.b		nEb0,	$03,	nEb1,	$03,	nEb0,	$03,	nEb0,	$03
	dc.b		nBb0,	$03,	nRst,	$0F,	nEb0,	$06,	nAb0,	$03
	dc.b		nCs0,	$06,	nCs1,	$03,	nCs0,	$03,	nCs1,	$03
	dc.b		nCs0,	$03,	nCs0,	$03,	nAb0,	$06,	nCs0,	$03
	dc.b		nCs0,	$03,	nAb0,	$03,	nCs0,	$03,	nCs0,	$03
	dc.b		nCs0,	$03,	nFs0,	$03,	nFs0,	$03,	nCs1,	$03
	dc.b		nFs0,	$03,	nFs0,	$03,	nFs0,	$03,	nCs1,	$03
	dc.b		nFs0,	$03,	nRst,	$12,	nAb0,	$03,	nAb0,	$03
	dc.b		nEb1,	$09,	nAb0,	$03,	nAb1,	$03,	nAb0,	$03
	dc.b		nAb0,	$03,	nEb1,	$03,	nAb0,	$03,	nAb1,	$03
	dc.b		nAb0,	$03,	nRst,	$47,	$47,	$47,	$47,	$47
	dc.b		$47,	$47,	$47,	$47,	nEb0,	$06,	nBb0,	$06
	dc.b		nEb0,	$03,	nEb0,	$03,	nBb0,	$03,	nEb0,	$03
	dc.b		nRst,	$12,	nCs0,	$06,	nAb0,	$03,	nCs0,	$03
	dc.b		nCs0,	$06,	nAb0,	$03,	nCs0,	$03,	nCs0,	$03
	dc.b		nAb0,	$03,	nRst,	$18,	nFs0,	$03,	nFs0,	$03
	dc.b		nCs1,	$03,	nFs0,	$03,	nFs0,	$03,	nFs0,	$03
	dc.b		nCs1,	$03,	nFs0,	$03,	nRst,	$12,	nAb0,	$03
	dc.b		nAb0,	$03,	nEb1,	$06,	nAb0,	$03,	nAb0,	$03
	dc.b		nEb1,	$03,	nAb0,	$03,	nAb0,	$03,	nAb1,	$03
	dc.b		nAb0,	$03,	nAb1,	$03,	nAb0,	$03,	nAb0,	$03
	dc.b		nEb1,	$03,	nAb0,	$03,	nAb0,	$03,	nEb0,	$03
	dc.b		nBb0,	$03,	nEb0,	$06,	nEb1,	$03,	nEb0,	$03
	dc.b		nEb1,	$03,	nEb0,	$03,	nEb0,	$03,	nBb0,	$03
	dc.b		nRst,	$0F,	nEb0,	$06,	nAb0,	$03,	nCs0,	$06
	dc.b		nCs1,	$03,	nCs0,	$03,	nCs1,	$03,	nCs0,	$03
	dc.b		nCs0,	$03,	nAb0,	$06,	nCs0,	$03,	nCs0,	$03
	dc.b		nAb0,	$03,	nCs0,	$03,	nCs0,	$03,	nCs0,	$03
	dc.b		nFs0,	$03,	nFs0,	$03,	nCs1,	$03,	nFs0,	$03
	dc.b		nFs0,	$03,	nFs0,	$03,	nCs1,	$03,	nFs0,	$03
	dc.b		nRst,	$12,	nAb0,	$03,	nAb0,	$03,	nEb1,	$09
	dc.b		nAb0,	$03,	nAb1,	$03,	nAb0,	$03,	nAb0,	$03
	dc.b		nEb1,	$03,	nAb0,	$03,	nAb1,	$03,	nAb0,	$03
	dc.b		nRst,	$0F,	nEb0,	$06,	nBb0,	$06,	nEb0,	$03
	dc.b		nEb0,	$03,	nBb0,	$03,	nEb0,	$03,	nRst,	$12
	dc.b		nCs0,	$06,	nAb0,	$03,	nCs0,	$03,	nCs0,	$06
	dc.b		nAb0,	$03,	nCs0,	$03,	nCs0,	$03,	nAb0,	$03
	dc.b		nRst,	$18,	nFs0,	$03,	nFs0,	$03,	nCs1,	$03
	dc.b		nFs0,	$03,	nFs0,	$03,	nFs0,	$03,	nCs1,	$03
	dc.b		nFs0,	$03,	nRst,	$12,	nAb0,	$03,	nAb0,	$03
	dc.b		nEb1,	$06,	nAb0,	$03,	nAb0,	$03,	nEb1,	$03
	dc.b		nAb0,	$03,	nAb0,	$03,	nAb1,	$03,	nAb0,	$03
	dc.b		nAb1,	$03,	nAb0,	$03,	nAb0,	$03,	nEb1,	$03
	dc.b		nAb0,	$03,	nAb0,	$03,	nEb0,	$03,	nBb0,	$03
	dc.b		nEb0,	$06,	nEb1,	$03,	nEb0,	$03,	nEb1,	$03
	dc.b		nEb0,	$03,	nEb0,	$03,	nBb0,	$03,	nRst,	$0F
	dc.b		nEb0,	$06,	nAb0,	$03,	nCs0,	$06,	nCs1,	$03
	dc.b		nCs0,	$03,	nCs1,	$03,	nCs0,	$03,	nCs0,	$03
	dc.b		nAb0,	$06,	nCs0,	$03,	nCs0,	$03,	nAb0,	$03
	dc.b		nCs0,	$03,	nCs0,	$03,	nCs0,	$03,	nFs0,	$03
	dc.b		nFs0,	$03,	nCs1,	$03,	nFs0,	$03,	nFs0,	$03
	dc.b		nFs0,	$03,	nCs1,	$03,	nFs0,	$03,	nRst,	$12
	dc.b		nAb0,	$03,	nAb0,	$03,	nEb1,	$09,	nAb0,	$03
	dc.b		nAb1,	$03,	nAb0,	$03,	nAb0,	$03,	nEb1,	$03
	dc.b		nAb0,	$03,	nAb1,	$03,	nAb0,	$03,	nRst,	$6E
	dc.b		$6E,	$6E,	$6E,	$6E,	$6E,	$6E,	$6E,	$6E
	dc.b		$6E,	$6E,	$6E,	$6E,	$6E,	$6E,	$6E,	$6E
	dc.b		$6E,	$03
;	Set�PSG�Voice	#
	smpsPSGvoice	$00
	smpsStop

; PSG2 Data
S3Credits_PSG2:
	dc.b		nRst,	$01,	nEb1,	$06,	nBb1,	$06,	nEb1,	$03
	dc.b		nEb1,	$03,	nBb1,	$03,	nEb1,	$03,	nRst,	$12
	dc.b		nCs1,	$06,	nAb1,	$03,	nCs1,	$03,	nCs1,	$06
	dc.b		nAb1,	$03,	nCs1,	$03,	nCs1,	$03,	nAb1,	$03
	dc.b		nRst,	$18,	nFs1,	$03,	nFs1,	$03,	nCs2,	$03
	dc.b		nFs1,	$03,	nFs1,	$03,	nFs1,	$03,	nCs2,	$03
	dc.b		nFs1,	$03,	nRst,	$12,	nAb1,	$03,	nAb1,	$03
	dc.b		nEb2,	$06,	nAb1,	$03,	nAb1,	$03,	nEb2,	$03
	dc.b		nAb1,	$03,	nAb1,	$03,	nAb2,	$03,	nAb1,	$03
	dc.b		nAb2,	$03,	nAb1,	$03,	nAb1,	$03,	nEb2,	$03
	dc.b		nAb1,	$03,	nAb1,	$03,	nEb1,	$03,	nBb1,	$03
	dc.b		nEb1,	$06,	nEb2,	$03,	nEb1,	$03,	nEb2,	$03
	dc.b		nEb1,	$03,	nEb1,	$03,	nBb1,	$03,	nRst,	$0F
	dc.b		nEb1,	$06,	nAb1,	$03,	nCs1,	$06,	nCs2,	$03
	dc.b		nCs1,	$03,	nCs2,	$03,	nCs1,	$03,	nCs1,	$03
	dc.b		nAb1,	$06,	nCs1,	$03,	nCs1,	$03,	nAb1,	$03
	dc.b		nCs1,	$03,	nCs1,	$03,	nCs1,	$03,	nFs1,	$03
	dc.b		nFs1,	$03,	nCs2,	$03,	nFs1,	$03,	nFs1,	$03
	dc.b		nFs1,	$03,	nCs2,	$03,	nFs1,	$03,	nRst,	$12
	dc.b		nAb1,	$03,	nAb1,	$03,	nEb2,	$09,	nAb1,	$03
	dc.b		nAb2,	$03,	nAb1,	$03,	nAb1,	$03,	nEb2,	$03
	dc.b		nAb1,	$03,	nAb2,	$03,	nAb1,	$03,	nRst,	$0F
	dc.b		nEb1,	$06,	nBb1,	$06,	nEb1,	$03,	nEb1,	$03
	dc.b		nBb1,	$03,	nEb1,	$03,	nRst,	$12,	nCs1,	$06
	dc.b		nAb1,	$03,	nCs1,	$03,	nCs1,	$06,	nAb1,	$03
	dc.b		nCs1,	$03,	nCs1,	$03,	nAb1,	$03,	nRst,	$18
	dc.b		nFs1,	$03,	nFs1,	$03,	nCs2,	$03,	nFs1,	$03
	dc.b		nFs1,	$03,	nFs1,	$03,	nCs2,	$03,	nFs1,	$03
	dc.b		nRst,	$12,	nAb1,	$03,	nAb1,	$03,	nEb2,	$06
	dc.b		nAb1,	$03,	nAb1,	$03,	nEb2,	$03,	nAb1,	$03
	dc.b		nAb1,	$03,	nAb2,	$03,	nAb1,	$03,	nAb2,	$03
	dc.b		nAb1,	$03,	nAb1,	$03,	nEb2,	$03,	nAb1,	$03
	dc.b		nAb1,	$03,	nEb1,	$03,	nBb1,	$03,	nEb1,	$06
	dc.b		nEb2,	$03,	nEb1,	$03,	nEb2,	$03,	nEb1,	$03
	dc.b		nEb1,	$03,	nBb1,	$03,	nRst,	$0F,	nEb1,	$06
	dc.b		nAb1,	$03,	nCs1,	$06,	nCs2,	$03,	nCs1,	$03
	dc.b		nCs2,	$03,	nCs1,	$03,	nCs1,	$03,	nAb1,	$06
	dc.b		nCs1,	$03,	nCs1,	$03,	nAb1,	$03,	nCs1,	$03
	dc.b		nCs1,	$03,	nCs1,	$03,	nFs1,	$03,	nFs1,	$03
	dc.b		nCs2,	$03,	nFs1,	$03,	nFs1,	$03,	nFs1,	$03
	dc.b		nCs2,	$03,	nFs1,	$03,	nRst,	$12,	nAb1,	$03
	dc.b		nAb1,	$03,	nEb2,	$09,	nAb1,	$03,	nAb2,	$03
	dc.b		nAb1,	$03,	nAb1,	$03,	nEb2,	$03,	nAb1,	$03
	dc.b		nAb2,	$03,	nAb1,	$03,	nRst,	$5B,	$5B,	$5B
	dc.b		$5B,	$5B,	$5B,	$5B,	$5B,	$5B,	$5B,	$5B
	dc.b		$5B,	$5B,	$5B,	$5B,	$5B,	$5B,	$5B,	$5B
	dc.b		$5B,	$5B,	$5B,	$5B,	$5B,	$5B,	$5B,	$5B
	dc.b		$5B,	$5B,	$5B,	$5B,	$5B,	$5B,	$5B,	$5B
	dc.b		$5B,	$5B,	$07
;	Set�PSG�Voice	#
	smpsPSGvoice	$00
	smpsStop

; PSG3 Data
S3Credits_PSG3:
;	Set�PSG�WvForm	#
	smpsPSGform	$E7
	dc.b		nRst,	$7F,	$47
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
;	Set�PSG�Voice	#
	smpsPSGvoice	$00
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nC0,	$03
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
;	Set�Volume	value
	smpsSetVol	$02
;	Set�PSG�Voice	#
	smpsPSGvoice	$00
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nC0,	$03,	nRst,	$06
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
;	Set�Volume	value
	smpsSetVol	$02
;	Set�PSG�Voice	#
	smpsPSGvoice	$00
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nC0,	$03
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
;	Set�Volume	value
	smpsSetVol	$02
;	Set�PSG�Voice	#
	smpsPSGvoice	$00
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nC0,	$03,	nRst,	$06
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
;	Set�Volume	value
	smpsSetVol	$01
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
;	Set�Volume	value
	smpsSetVol	$01
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
;	Set�Volume	value
	smpsSetVol	$02
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
;	Set�Volume	value
	smpsSetVol	$01
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$09
	dc.b		nA5,	$03,	nA5,	$09,	nA5,	$03,	nA5,	$6B
	dc.b		smpsNoAttack,	$6B,	smpsNoAttack,	$6B,	smpsNoAttack,	$6B,	smpsNoAttack,	$6B
	dc.b		smpsNoAttack,	$6B,	smpsNoAttack,	$6B,	smpsNoAttack,	$6B,	smpsNoAttack,	$6B
	smpsStop

S3Credits_Voices:
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
