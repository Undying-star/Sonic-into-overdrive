; =============================================================================================
; Project Name:		Mus8BEnding
; Created:		5th August 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Mus8BEnding_Header:
;	Voice Pointer	location
	smpsHeaderVoice	Mus8BEnding_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$07,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$02
;	DAC Pointer	location
	smpsHeaderDAC	Mus8BEnding_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	Mus8BEnding_FM1,	smpsPitch00,	$10
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	Mus8BEnding_FM2,	smpsPitch00,	$11
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	Mus8BEnding_FM3,	smpsPitch00,	$15
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	Mus8BEnding_FM4,	smpsPitch00,	$15
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	Mus8BEnding_FM5,	smpsPitch00,	$12
;	FM6 Pointer	location	pitch		volume
	smpsHeaderFM	Mus8BEnding_FM6,	smpsPitch00,	$13
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Mus8BEnding_PSG1,	smpsPitch00,	$02,	$3B
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Mus8BEnding_PSG2,	smpsPitch00,	$00,	$38
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Mus8BEnding_PSG3,	smpsPitch00,	$02,	$36

; DAC Data
Mus8BEnding_DAC:
	dc.b		dKick,	$23,	dKick,	$05,	dKick,	$0A,	dKick,	$0A
	dc.b		dSnare,	$0A,	dSnare,	$05,	dSnare,	$05,	dKick,	$23
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	dSnare,	$14
	dc.b		dKick,	$23,	dKick,	$05,	dKick,	$0A,	dKick,	$0A
	dc.b		dSnare,	$14,	dKick,	$23,	dKick,	$05,	dKick,	$0A
	dc.b		dKick,	$0A,	dSnare,	$14,	dKick,	$23,	dKick,	$05
	dc.b		dKick,	$0A,	dKick,	$0A,	dSnare,	$14,	dKick,	$23
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	dSnare,	$14
	dc.b		dKick,	$23,	dKick,	$05,	dKick,	$0A,	dKick,	$0A
	dc.b		dSnare,	$14,	dKick,	$23,	dKick,	$05,	dKick,	$0A
	dc.b		dKick,	$0A,	dSnare,	$14,	dKick,	$23,	dKick,	$05
	dc.b		dKick,	$05,	dSnare,	$05,	dKick,	$0A,	dSnare,	$0A
	dc.b		dSnare,	$05,	dSnare,	$05,	dKick,	$14,	dSnare,	$0F
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	dSnare,	$14
	dc.b		dKick,	$14,	dSnare,	$0F,	dKick,	$05,	dKick,	$0A
	dc.b		dKick,	$0A,	dSnare,	$14,	dKick,	$14,	dSnare,	$0F
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	dSnare,	$14
	dc.b		dKick,	$14,	dSnare,	$0F,	dKick,	$05,	dKick,	$0A
	dc.b		dKick,	$0A,	dSnare,	$14,	dKick,	$14,	dSnare,	$0F
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	dSnare,	$14
	dc.b		dKick,	$14,	dSnare,	$0F,	dKick,	$05,	dKick,	$0A
	dc.b		dKick,	$0A,	dSnare,	$14,	dKick,	$14,	dSnare,	$0F
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	dSnare,	$14
	dc.b		dKick,	$0A,	dSnare,	$0A,	dSnare,	$0A,	dSnare,	$0A
	dc.b		dMidTimpani,	$05,	dMidTimpani,	$05,	dVLowTimpani,	$05,	dVLowTimpani,	$05
	dc.b		dLowTimpani,	$05,	dLowTimpani,	$05,	dVLowTimpani,	$05,	dVLowTimpani,	$05
	dc.b		dKick,	$14,	$84,	$0F,	dKick,	$05,	dKick,	$0A
	dc.b		dKick,	$0A,	$84,	$14,	dKick,	$14,	$84,	$0F
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	$84,	$0A
	dc.b		$84,	$05,	dSnare,	$05,	dKick,	$14,	$84,	$0F
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	$84,	$14
	dc.b		dKick,	$14,	$84,	$0F,	dKick,	$05,	dKick,	$0A
	dc.b		dKick,	$0A,	$84,	$0A,	$84,	$05,	dSnare,	$05
	dc.b		dKick,	$14,	$84,	$0F,	dKick,	$05,	dKick,	$0A
	dc.b		dKick,	$0A,	$84,	$14,	dKick,	$14,	$84,	$0F
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	$84,	$0A
	dc.b		$84,	$05,	dSnare,	$05,	dKick,	$14,	$84,	$0A
	dc.b		dKick,	$14,	$84,	$0A,	$84,	$0A,	$84,	$05
	dc.b		$84,	$05,	dKick,	$14,	$84,	$0A,	dKick,	$14
	dc.b		dLowTimpani,	$05,	dLowTimpani,	$05,	dVLowTimpani,	$05,	dVLowTimpani,	$05
	dc.b		dVLowTimpani,	$05,	dVLowTimpani,	$05,	dKick,	$14,	dSnare,	$0F
	dc.b		dKick,	$05,	dKick,	$0A,	dKick,	$0A,	dSnare,	$0F
	dc.b		dKick,	$05,	$85,	$41
	smpsStop

; FM1 Data
Mus8BEnding_FM1:
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nC3,	$32,	nG3,	$0A,	nE3,	$0A,	nD3,	$0A
	dc.b		nC3,	$78,	nF3,	$14,	nD3,	$14,	nE3,	$50
	dc.b		nEb3,	$28,	nF3,	$14,	nD3,	$14,	nE3,	$1E
	dc.b		nA2,	$1E,	nC3,	$14,	nD3,	$1E,	nG3,	$1E
	dc.b		nD3,	$14,	nA3,	$1E,	nG3,	$1E,	nD3,	$0F
	dc.b		nRst,	$19,	nB3,	$14,	nG3,	$0A,	nD3,	$0A
	dc.b		nG3,	$0A,	nAb3,	$0A
	smpsStop

; FM2 Data
Mus8BEnding_FM2:
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nRst,	$1E,	nG4,	$05,	nA4,	$05,	nG4,	$08
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01,	nG4,	$50,	nEb4,	$28,	nF4,	$14
	dc.b		nA4,	$14,	nG4,	$50,	nEb4,	$28,	nF4,	$14
	dc.b		nA4,	$14,	nE4,	$1E,	nG4,	$1E,	nE4,	$14
	dc.b		nE4,	$1E,	nG4,	$1E,	nE4,	$0A,	nRst,	$0A
	dc.b		nF4,	$1E,	nA4,	$1E,	nF4,	$14,	nC5,	$1E
	dc.b		nB4,	$1E,	nG4,	$14
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nE4,	$05,	nE4,	$05,	nD4,	$05,	nRst,	$05
	dc.b		nE4,	$05,	nRst,	$05,	nD4,	$05,	nE4,	$19
	dc.b		nRst,	$14,	nF4,	$05,	nF4,	$05,	nE4,	$05
	dc.b		nRst,	$05,	nF4,	$05,	nRst,	$05,	nE4,	$05
	dc.b		nF4,	$19,	nRst,	$14,	nE4,	$05,	nE4,	$05
	dc.b		nD4,	$05,	nRst,	$05,	nE4,	$05,	nRst,	$05
	dc.b		nD4,	$05,	nE4,	$19,	nRst,	$14,	nF4,	$05
	dc.b		nF4,	$05,	nE4,	$05,	nRst,	$05,	nF4,	$05
	dc.b		nRst,	$05,	nE4,	$05,	nF4,	$19,	nRst,	$14
;	Alter�Volume	value
	smpsAlterVol	$04
	dc.b		nC4,	$1E,	nA3,	$1E,	nC4,	$14,	nB3,	$1E
	dc.b		nD4,	$1E,	nB3,	$14,	nC4,	$1E,	nE4,	$14
	dc.b		nE4,	$0A,	nC4,	$14,	nRst,	$0A
;	Alter�Volume	value
	smpsAlterVol	$0A
	dc.b		nF4,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FE
	dc.b		nF4,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nF4,	$05,	nRst,	$05,	nF4,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FD
	dc.b		nF4,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nF4,	$05,	nRst,	$05,	nF4,	$0A,	nBb4,	$1E
	dc.b		nEb4,	$05,	nBb4,	$19,	nEb4,	$14,	nAb4,	$1E
	dc.b		nAb4,	$05,	nAb4,	$05,	nAb4,	$0A,	nG4,	$0A
	dc.b		nEb4,	$05,	nF4,	$0F,	nBb4,	$1E,	nEb4,	$05
	dc.b		nBb4,	$19,	nEb4,	$14,	nC5,	$1E,	nRst,	$0A
	dc.b		nAb4,	$05,	nRst,	$05,	nAb4,	$05,	nRst,	$05
	dc.b		nAb4,	$05,	nC5,	$05,	nRst,	$14,	nC4,	$05
	dc.b		nEb4,	$05,	nG4,	$0A,	nC4,	$05,	nEb4,	$05
	dc.b		nG4,	$28,	nRst,	$0A,	nC4,	$05,	nEb4,	$05
	dc.b		nG4,	$0A,	nC4,	$05,	nEb4,	$05,	nG4,	$28
;	Alter�Volume	value
	smpsAlterVol	$FD
	dc.b		nEb4,	$1E,	nF4,	$28,	nG4,	$05,	nF4,	$05
	dc.b		nEb4,	$1E,	nF4,	$1E,	nEb4,	$14
;	Alter�Volume	value
	smpsAlterVol	$03
	dc.b		nCs4,	$0A,	nEb4,	$05,	nCs4,	$0A,	nAb4,	$05
	dc.b		nCs5,	$0A,	nAb4,	$05,	nAb4,	$05,	nF4,	$05
	dc.b		nCs4,	$0F,	nG4,	$05,	nAb4,	$05,	nG4,	$41
	smpsStop

; FM3 Data
Mus8BEnding_FM3:
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$0A,	nE4,	$05,	nF4,	$05,	nE4,	$0B
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		nRst,	$74,	$74,	$74,	$74,	$74,	nB3,	$14
	dc.b		nG3,	$0A,	nD3,	$0A,	nG3,	$0A,	nAb3,	$0A
;	Alter�Volume	value
	smpsAlterVol	$0A
	dc.b		nA3,	$28
;	Alter�Volume	value
	smpsAlterVol	$F1
	dc.b		nG4,	$03,	nRst,	$02,	nC4,	$03,	nRst,	$02
	dc.b		nE4,	$03,	nRst,	$02,	nC4,	$03,	nRst,	$02
	dc.b		nG4,	$03,	nRst,	$02,	nC4,	$03,	nRst,	$02
	dc.b		nE4,	$03,	nRst,	$02,	nC4,	$03,	nRst,	$02
;	Alter�Volume	value
	smpsAlterVol	$0E
	dc.b		nBb3,	$28
;	Alter�Volume	value
	smpsAlterVol	$F2
	dc.b		nA4,	$03,	nRst,	$02,	nD4,	$03,	nRst,	$02
	dc.b		nF4,	$03,	nRst,	$02,	nD4,	$03,	nRst,	$02
	dc.b		nA4,	$03,	nRst,	$02,	nD4,	$03,	nRst,	$02
	dc.b		nF4,	$03,	nRst,	$02,	nD4,	$03,	nRst,	$02
;	Alter�Volume	value
	smpsAlterVol	$0F
	dc.b		nA3,	$28
;	Alter�Volume	value
	smpsAlterVol	$F1
	dc.b		nG4,	$03,	nRst,	$02,	nC4,	$03,	nRst,	$02
	dc.b		nE4,	$03,	nRst,	$02,	nC4,	$03,	nRst,	$02
	dc.b		nG4,	$03,	nRst,	$02,	nC4,	$03,	nRst,	$02
	dc.b		nE4,	$03,	nRst,	$02,	nC4,	$03,	nRst,	$02
;	Alter�Volume	value
	smpsAlterVol	$0E
	dc.b		nBb3,	$28
;	Alter�Volume	value
	smpsAlterVol	$F2
	dc.b		nA4,	$03,	nRst,	$02,	nD4,	$03,	nRst,	$02
	dc.b		nF4,	$03,	nRst,	$02,	nD4,	$03,	nRst,	$02
	dc.b		nA4,	$03,	nRst,	$02,	nD4,	$03,	nRst,	$02
	dc.b		nF4,	$03,	nRst,	$02,	nD4,	$03,	nRst,	$7F
	dc.b		$7F,	$67
;	Alter�Volume	value
	smpsAlterVol	$05
	dc.b		nEb4,	$05,	nBb4,	$14,	nEb4,	$14,	nAb4,	$23
	dc.b		nAb4,	$05,	nAb4,	$0A,	nG4,	$0A,	nEb4,	$05
	dc.b		nC4,	$0F,	nRst,	$23,	nEb4,	$05,	nBb4,	$14
	dc.b		nEb4,	$14,	nAb4,	$23,	nAb4,	$05,	nAb4,	$0A
	dc.b		nG4,	$0A,	nEb4,	$05,	nC4,	$0F,	nRst,	$0A
	dc.b		nC4,	$05,	nEb4,	$05,	nG4,	$05,	nRst,	$05
	dc.b		nC4,	$05,	nEb4,	$05,	nG4,	$28,	nBb4,	$0A
	dc.b		nC4,	$05,	nEb4,	$05,	nG4,	$05,	nRst,	$05
	dc.b		nC4,	$05,	nEb4,	$05,	nG4,	$28
;	Alter�Volume	value
	smpsAlterVol	$0A
	dc.b		nC4,	$0A,	nEb4,	$0A,	nAb3,	$0A,	nBb3,	$14
	dc.b		nC4,	$0A,	nRst,	$0A,	nAb3,	$05,	nAb3,	$05
	dc.b		nC4,	$0A,	nEb4,	$0A,	nAb3,	$0A,	nBb3,	$1E
	dc.b		nC4,	$14
;	Alter�Volume	value
	smpsAlterVol	$F6
	dc.b		nF4,	$0A,	nEb4,	$0A,	nF4,	$0A,	nAb4,	$0A
	dc.b		nF4,	$0A,	nCs4,	$0A,	nEb4,	$0A,	nF4,	$0A
	dc.b		nEb4,	$41
	smpsStop

; FM4 Data
Mus8BEnding_FM4:
;	Set�FM�Voice	#
	smpsFMvoice	$03
	dc.b		nRst,	$3C,	nG2,	$14,	nC3,	$1E,	nRst,	$05
	dc.b		nG2,	$05,	nC3,	$05,	nRst,	$05,	nC3,	$0A
	dc.b		nRst,	$0A,	nC3,	$05,	nG2,	$05,	nAb2,	$0F
	dc.b		nRst,	$14,	nF2,	$05,	nBb2,	$05,	nRst,	$05
	dc.b		nBb2,	$05,	nRst,	$0F,	nBb2,	$05,	nB2,	$05
	dc.b		nC3,	$1E,	nRst,	$05,	nG2,	$05,	nC3,	$05
	dc.b		nRst,	$05,	nC3,	$0A,	nRst,	$0A,	nC3,	$05
	dc.b		nG2,	$05,	nAb2,	$0F,	nRst,	$14,	nF2,	$05
	dc.b		nBb2,	$05,	nRst,	$05,	nBb2,	$05,	nRst,	$0F
	dc.b		nBb2,	$05,	nB2,	$05,	nA2,	$0A,	nRst,	$19
	dc.b		nE2,	$05,	nA2,	$05,	nRst,	$05,	nA2,	$05
	dc.b		nRst,	$05,	nA2,	$05,	nB2,	$05,	nC3,	$05
	dc.b		nCs3,	$05,	nD3,	$0F,	nRst,	$14,	nA2,	$05
	dc.b		nD3,	$05,	nRst,	$05,	nD3,	$05,	nRst,	$0F
	dc.b		nD3,	$05,	nRst,	$05,	nG2,	$0F,	nRst,	$1E
	dc.b		nD2,	$05,	nG2,	$05,	nRst,	$05,	nG2,	$05
	dc.b		nRst,	$0F,	nG2,	$14,	nRst,	$0F,	nD2,	$05
	dc.b		nG2,	$05,	nD2,	$05,	nG2,	$05,	nRst,	$05
	dc.b		nG2,	$0A,	nAb2,	$0A,	nA2,	$0F,	nRst,	$14
	dc.b		nE2,	$05,	nA2,	$05,	nRst,	$05,	nA2,	$0A
	dc.b		nRst,	$0A,	nA2,	$05,	nE2,	$05,	nBb2,	$0F
	dc.b		nRst,	$14,	nE2,	$05,	nBb2,	$05,	nRst,	$05
	dc.b		nBb2,	$0A,	nRst,	$0A,	nBb2,	$05,	nE2,	$05
	dc.b		nA2,	$0F,	nRst,	$14,	nE2,	$05,	nA2,	$05
	dc.b		nRst,	$05,	nA2,	$05,	nRst,	$05,	nA2,	$05
	dc.b		nE2,	$05,	nA2,	$05,	nE2,	$05,	nBb2,	$0F
	dc.b		nRst,	$14,	nF2,	$05,	nBb2,	$05,	nRst,	$05
	dc.b		nBb2,	$0A,	nRst,	$0A,	nBb2,	$05,	nBb2,	$05
	dc.b		nF2,	$0F,	nRst,	$14,	nC2,	$05,	nF2,	$05
	dc.b		nRst,	$05,	nF2,	$0A,	nRst,	$0A,	nF2,	$05
	dc.b		nFs2,	$05,	nG2,	$0F,	nRst,	$14,	nD2,	$05
	dc.b		nG2,	$05,	nRst,	$05,	nG2,	$0A,	nRst,	$0A
	dc.b		nG2,	$05,	nAb2,	$05,	nA2,	$14,	nRst,	$0F
	dc.b		nE2,	$05,	nA2,	$05,	nRst,	$05,	nA2,	$05
	dc.b		nRst,	$05,	nA2,	$05,	nRst,	$05,	nA2,	$05
	dc.b		nA2,	$05,	nRst,	$0A
;	Alter�Volume	value
	smpsAlterVol	$0A
	dc.b		nG2,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FE
	dc.b		nG2,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nG2,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nG2,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FE
	dc.b		nG2,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nG2,	$05,	nRst,	$05
;	Alter�Volume	value
	smpsAlterVol	$FD
	dc.b		nG2,	$05,	nG2,	$05,	nEb3,	$1E,	nRst,	$05
	dc.b		nEb3,	$05,	nD3,	$05,	nRst,	$05,	nD3,	$0A
	dc.b		nRst,	$0A,	nEb3,	$05,	nBb2,	$05,	nAb2,	$1E
	dc.b		nRst,	$05,	nAb2,	$05,	nBb2,	$05,	nRst,	$05
	dc.b		nBb2,	$0A,	nRst,	$0A,	nF3,	$05,	nBb2,	$05
	dc.b		nEb3,	$1E,	nRst,	$05,	nEb3,	$05,	nD3,	$05
	dc.b		nRst,	$05,	nD3,	$0A,	nRst,	$0A,	nEb3,	$05
	dc.b		nBb2,	$05,	nAb2,	$1E,	nRst,	$05,	nAb2,	$05
	dc.b		nBb2,	$05,	nRst,	$05,	nBb2,	$0A,	nRst,	$0A
	dc.b		nF3,	$05,	nBb2,	$05,	nC3,	$1E,	nRst,	$05
	dc.b		nC3,	$05,	nB2,	$05,	nRst,	$05,	nB2,	$0F
	dc.b		nRst,	$0F,	nBb2,	$1E,	nRst,	$05,	nBb2,	$05
	dc.b		nA2,	$05,	nRst,	$05,	nA2,	$0F,	nRst,	$0F
	dc.b		nAb2,	$1E,	nBb2,	$28,	nEb3,	$05,	nBb2,	$05
	dc.b		nAb2,	$1E,	nBb2,	$1E,	nBb2,	$0A,	nC3,	$0A
	dc.b		nCs3,	$23,	nAb2,	$05,	nCs3,	$05,	nRst,	$05
	dc.b		nCs3,	$0A,	nRst,	$14,	nEb2,	$41
	smpsStop

; FM5 Data
Mus8BEnding_FM5:
;	Set�FM�Voice	#
	smpsFMvoice	$04
	dc.b		nRst,	$5A,	nC6,	$05,	nC6,	$05,	nC6,	$0A
	dc.b		nD6,	$05,	nF6,	$0A,	nRst,	$05,	nE6,	$05
	dc.b		nRst,	$05,	nD6,	$05,	nRst,	$05,	nC6,	$05
	dc.b		nRst,	$05,	nEb6,	$0A,	nF6,	$05,	nC6,	$41
	dc.b		nRst,	$0A,	nC6,	$05,	nC6,	$05,	nC6,	$0A
	dc.b		nD6,	$05,	nF6,	$0A,	nRst,	$05,	nE6,	$05
	dc.b		nRst,	$05,	nD6,	$05,	nRst,	$05,	nC6,	$05
	dc.b		nRst,	$05,	nEb6,	$0A,	nF6,	$05,	nC6,	$41
	dc.b		nRst,	$28,	nE6,	$0A,	nC6,	$0A,	nE6,	$05
	dc.b		nC6,	$0A,	nD6,	$28,	nC6,	$05,	nE6,	$0A
	dc.b		nC6,	$05,	nRst,	$05,	nE6,	$05,	nC6,	$0A
	dc.b		nD6,	$50,	nRst,	$7D,	nE5,	$14,	nRst,	$0A
	dc.b		nC5,	$0A,	nF5,	$1E,	nC5,	$32,	nRst,	$28
	dc.b		nE5,	$14,	nRst,	$0A,	nC5,	$0A,	nF5,	$1E
	dc.b		nC5,	$32,	nRst,	$0A,	nF5,	$05,	nG5,	$05
	dc.b		nA5,	$05,	nRst,	$05,	nF5,	$05,	nG5,	$05
	dc.b		nF6,	$1E,	nE6,	$0A,	nF6,	$0A,	nE6,	$05
	dc.b		nA5,	$05,	nB5,	$05,	nRst,	$05,	nD6,	$05
	dc.b		nA5,	$05,	nB5,	$0A,	nE6,	$0A,	nF6,	$14
	dc.b		nE6,	$0A,	nA5,	$05,	nB5,	$05,	nC6,	$05
	dc.b		nRst,	$05,	nA5,	$05,	nB5,	$05,	nC6,	$28
;	Alter�Volume	value
	smpsAlterVol	$07
	dc.b		nG5,	$05
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nA5,	$05
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nC6,	$14
;	Alter�Volume	value
	smpsAlterVol	$15
	dc.b		nD6,	$05
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nE6,	$05
;	Alter�Volume	value
	smpsAlterVol	$FD
	dc.b		nD6,	$05
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nE6,	$05
;	Alter�Volume	value
	smpsAlterVol	$FD
	dc.b		nF6,	$05
;	Alter�Volume	value
	smpsAlterVol	$FE
	dc.b		nG6,	$05
;	Alter�Volume	value
	smpsAlterVol	$FD
	dc.b		nF6,	$05
;	Alter�Volume	value
	smpsAlterVol	$FD
	dc.b		nG6,	$05
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nA6,	$05
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nB6,	$05,	nRst,	$0A
;	Alter�Volume	value
	smpsAlterVol	$04
	dc.b		nEb6,	$05,	nD6,	$0F,	nEb6,	$05,	nBb5,	$0F
	dc.b		nEb6,	$05,	nD6,	$0F,	nEb6,	$05,	nC6,	$23
	dc.b		nRst,	$05,	nAb6,	$05,	nC7,	$0A,	nBb6,	$0A
	dc.b		nG6,	$05,	nAb6,	$0F,	nRst,	$0A,	nEb6,	$05
	dc.b		nD6,	$0F,	nEb6,	$05,	nBb5,	$0F,	nEb6,	$05
	dc.b		nD6,	$0F,	nEb6,	$05,	nC6,	$23,	nRst,	$05
	dc.b		nAb6,	$05,	nC7,	$0A,	nBb6,	$0A,	nG6,	$05
	dc.b		nAb6,	$0F
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nG6,	$23,	nG6,	$05,	nF6,	$0A,	nG6,	$0A
	dc.b		nEb6,	$05,	nF6,	$0A,	nG6,	$28,	nG6,	$05
	dc.b		nF6,	$0A,	nG6,	$0A,	nEb6,	$05,	nEb6,	$0F
;	Alter�Volume	value
	smpsAlterVol	$04
	dc.b		nC7,	$0A,	nBb6,	$0A,	nG6,	$0A,	nAb6,	$28
	dc.b		nG6,	$05,	nG6,	$05,	nC7,	$0A,	nBb6,	$0A
	dc.b		nG6,	$0A,	nAb6,	$1E,	nBb6,	$14,	nBb6,	$7F
	dc.b		smpsNoAttack,	$12
	smpsStop

; FM6 Data
Mus8BEnding_FM6:
;	Set�FM�Voice	#
	smpsFMvoice	$05
	dc.b		nC4,	$14,	nE4,	$14,	nG4,	$28,	nE4,	$50
	dc.b		nEb4,	$28,	nF4,	$14,	nD4,	$14,	nE4,	$50
	dc.b		nEb4,	$28,	nF4,	$14,	nD4,	$14,	nA3,	$19
	dc.b		nRst,	$05,	nE3,	$19,	nA3,	$14,	nF3,	$1E
	dc.b		nD3,	$1E,	nC4,	$32,	nBb3,	$1E,	nD3,	$0F
	dc.b		nRst,	$05,	nG3,	$14,	nD3,	$14,	nC4,	$14
	dc.b		nB3,	$14,	nRst,	$05,	nE4,	$28
;	Alter�Volume	value
	smpsAlterVol	$0A
	dc.b		nA4,	$14,	nG4,	$14
;	Alter�Volume	value
	smpsAlterVol	$F6
	dc.b		nF4,	$50,	nE4,	$28
;	Alter�Volume	value
	smpsAlterVol	$0A
	dc.b		nA4,	$14,	nG4,	$14
;	Alter�Volume	value
	smpsAlterVol	$F6
	dc.b		nF4,	$50,	nF4,	$50,	nD4,	$3C,	nB3,	$14
	dc.b		nA3,	$1E,	nE4,	$1E,	nA4,	$14
;	Alter�Volume	value
	smpsAlterVol	$19
	dc.b		nG4,	$0A
;	Alter�Volume	value
	smpsAlterVol	$F7
	dc.b		nG4,	$0A
;	Alter�Volume	value
	smpsAlterVol	$FA
	dc.b		nG4,	$0A
;	Alter�Volume	value
	smpsAlterVol	$FC
	dc.b		nG4,	$0A
;	Alter�Volume	value
	smpsAlterVol	$FB
	dc.b		nG4,	$0A
;	Alter�Volume	value
	smpsAlterVol	$FF
	dc.b		nG4,	$0A,	nG4,	$0A,	nG4,	$0A
	smpsStop

; PSG1 Data
Mus8BEnding_PSG1:
	dc.b		nRst,	$5F,	$5F,	$5F,	$5F,	$5F,	$5F,	$5F
	dc.b		$5F,	$5F,	$5F,	$5F,	$5F,	$5F,	$5F,	$5F
	dc.b		$5F,	nG2,	$28
	smpsStop

; PSG2 Data
Mus8BEnding_PSG2:
	dc.b		nRst,	$78,	$78,	$78,	$78,	$78,	$78,	$78
	dc.b		$78,	$78,	$78,	$78,	$78,	$78,	$78,	nC3
	dc.b		$14,	nF1,	$0A,	nEb1,	$0A,	nB2,	$0A,	nF1
	dc.b		$0A,	nEb1,	$0A,	nF1,	$0A,	nBb2,	$0A,	nEb1
	dc.b		$05,	nC1,	$19,	nA2,	$28,	nAb2,	$1E,	nBb2
	dc.b		$28,	nC3,	$05,	nBb2,	$05,	nAb2,	$1E,	nBb2
	dc.b		$1E,	nBb2,	$0A,	nC3,	$0A
	smpsStop

; PSG3 Data
Mus8BEnding_PSG3:
;	Set�PSG�WvForm	#
	smpsPSGform	$E7
	dc.b		nC0,	$1E,	nG1,	$05,	nA1,	$05,	nG1,	$08
;	Alter�Notes	value
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	nG0,	$01
;	Alter�Notes	value
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$04
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FC
	dc.b		nE0,	$01
;	Alter�Notes	value
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01,	nD0,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01
;	Alter�Notes	value
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01,	nG1,	$50,	nEb1,	$28,	nF1,	$14
	dc.b		nA1,	$14,	nG1,	$50,	nEb1,	$28,	nF1,	$14
	dc.b		nA1,	$14,	nE1,	$1E,	nG1,	$1E,	nE1,	$14
	dc.b		nE1,	$1E,	nG1,	$1E,	nE1,	$0A,	nRst,	$0A
	dc.b		nF1,	$1E,	nA1,	$1E,	nF1,	$14,	nC2,	$1E
	dc.b		nB1,	$1E,	nG1,	$14
;	Set�Volume	value
	smpsSetVol	$FF
	dc.b		nE1,	$05,	nE1,	$05,	nD1,	$05,	nRst,	$05
	dc.b		nE1,	$05,	nRst,	$05,	nD1,	$05,	nE1,	$19
	dc.b		nRst,	$14,	nF1,	$05,	nF1,	$05,	nE1,	$05
	dc.b		nRst,	$05,	nF1,	$05,	nRst,	$05,	nE1,	$05
	dc.b		nF1,	$19,	nRst,	$14,	nE1,	$05,	nE1,	$05
	dc.b		nD1,	$05,	nRst,	$05,	nE1,	$05,	nRst,	$05
	dc.b		nD1,	$05,	nE1,	$19,	nRst,	$14,	nF1,	$05
	dc.b		nF1,	$05,	nE1,	$05,	nRst,	$05,	nF1,	$05
	dc.b		nRst,	$05,	nE1,	$05,	nF1,	$19,	nRst,	$14
;	Set�Volume	value
	smpsSetVol	$01
	dc.b		nC1,	$1E,	nA0,	$1E,	nC1,	$14,	nB0,	$1E
	dc.b		nD1,	$1E,	nB0,	$14,	nC1,	$1E,	nE1,	$14
	dc.b		nE1,	$0A,	nC1,	$14,	nRst,	$0A
;	Set�Volume	value
	smpsSetVol	$04
	dc.b		nF1,	$05,	nRst,	$05
;	Set�Volume	value
	smpsSetVol	$FF
	dc.b		nF1,	$05,	nRst,	$05,	nF1,	$05,	nRst,	$05
	dc.b		nF1,	$05,	nRst,	$05
;	Set�Volume	value
	smpsSetVol	$FF
	dc.b		nF1,	$05,	nRst,	$05
;	Set�Volume	value
	smpsSetVol	$FE
	dc.b		nF1,	$05,	nRst,	$05,	nF1,	$0A,	nBb1,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$14
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nEb1,	$05,	nBb1,	$0F
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nEb1,	$14,	nAb1,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$14
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nAb1,	$05,	nAb1,	$05,	nAb1,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nG1,	$0A,	nEb1,	$05,	nF1,	$0F,	nBb1,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$14
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nEb1,	$05,	nBb1,	$0F
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nEb1,	$14,	nC2,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$14,	nRst,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nAb1,	$05,	nRst,	$05
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nAb1,	$05,	nRst,	$05,	nAb1,	$05,	nC2,	$05
	dc.b		nRst,	$14
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nC1,	$05,	nEb1,	$05,	nG1,	$0A,	nC1,	$05
	dc.b		nEb1,	$05,	nG1,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$1E,	nRst,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$36
	dc.b		nC1,	$05,	nEb1,	$05,	nG1,	$0A,	nC1,	$05
	dc.b		nEb1,	$05,	nG1,	$0A
;	Set�PSG�Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$1E,	nRst,	$0A,	nA5,	$1E,	nA5,	$32
	dc.b		nA5,	$1E,	nA5,	$7F,	smpsNoAttack,	$3A
	smpsStop

Mus8BEnding_Voices:
;	Voice 00
;	$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01,$01,$17,$97,$27,$47,$1C,$22,$15,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$04,	$06,	$07,	$05
	smpsVcCoarseFreq	$01,	$01,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$01
	smpsVcAttackRate	$1A,	$18,	$16,	$11
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$01,	$01,	$05
	smpsVcDecayRate2	$01,	$01,	$01,	$09
	smpsVcDecayLevel	$04,	$02,	$09,	$01
	smpsVcReleaseRate	$07,	$07,	$07,	$07
	smpsVcTotalLevel	$00,	$15,	$22,	$1C

;	Voice 01
;	$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01,$01,$17,$97,$27,$47,$1C,$22,$15,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$04,	$06,	$07,	$05
	smpsVcCoarseFreq	$01,	$01,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$01
	smpsVcAttackRate	$1A,	$18,	$16,	$11
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$01,	$01,	$05
	smpsVcDecayRate2	$01,	$01,	$01,	$09
	smpsVcDecayLevel	$04,	$02,	$09,	$01
	smpsVcReleaseRate	$07,	$07,	$07,	$07
	smpsVcTotalLevel	$00,	$15,	$22,	$1C

;	Voice 02
;	$3A,$01,$01,$01,$02,$8D,$07,$07,$52,$09,$00,$00,$03,$01,$02,$02,$00,$52,$02,$02,$28,$18,$22,$18,$00
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$02,	$01,	$01,	$01
	smpsVcRateScale		$01,	$00,	$00,	$02
	smpsVcAttackRate	$12,	$07,	$07,	$0D
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$03,	$00,	$00,	$09
	smpsVcDecayRate2	$00,	$02,	$02,	$01
	smpsVcDecayLevel	$02,	$00,	$00,	$05
	smpsVcReleaseRate	$08,	$02,	$02,	$02
	smpsVcTotalLevel	$00,	$18,	$22,	$18

;	Voice 03
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

;	Voice 04
;	$3D,$01,$00,$01,$02,$12,$1F,$1F,$14,$07,$02,$02,$0A,$05,$05,$05,$05,$2F,$2F,$2F,$AF,$1C,$00,$02,$00
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$02,	$01,	$00,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$14,	$1F,	$1F,	$12
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$02,	$02,	$07
	smpsVcDecayRate2	$05,	$05,	$05,	$05
	smpsVcDecayLevel	$0A,	$02,	$02,	$02
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$02,	$00,	$1C

;	Voice 05
;	$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01,$01,$17,$97,$27,$47,$1C,$22,$15,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$04,	$06,	$07,	$05
	smpsVcCoarseFreq	$01,	$01,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$01
	smpsVcAttackRate	$1A,	$18,	$16,	$11
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$01,	$01,	$05
	smpsVcDecayRate2	$01,	$01,	$01,	$09
	smpsVcDecayLevel	$04,	$02,	$09,	$01
	smpsVcReleaseRate	$07,	$07,	$07,	$07
	smpsVcTotalLevel	$00,	$15,	$22,	$1C

;	Voice 06
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

;	Voice 07
;	$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01,$01,$17,$97,$27,$47,$1C,$22,$15,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$04,	$06,	$07,	$05
	smpsVcCoarseFreq	$01,	$01,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$01
	smpsVcAttackRate	$1A,	$18,	$16,	$11
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$01,	$01,	$05
	smpsVcDecayRate2	$01,	$01,	$01,	$09
	smpsVcDecayLevel	$04,	$02,	$09,	$01
	smpsVcReleaseRate	$07,	$07,	$07,	$07
	smpsVcTotalLevel	$00,	$15,	$22,	$1C
	even
