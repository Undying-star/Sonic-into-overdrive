; =============================================================================================
; Project Name:		Test
; Created:		22nd April 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Test_Header:
;	Voice Pointer	location
	smpsHeaderVoice	Test_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$00

;	DAC Pointer	location
	smpsHeaderDAC	Test_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	Test_FM1,	smpsPitch00,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	Test_FM2,	smpsPitch00,	$00
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	Test_FM3,	smpsPitch00,	$00
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	Test_FM4,	smpsPitch00,	$00
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	Test_FM5,	smpsPitch00,	$00
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Test_PSG1,	smpsPitch00,	$00,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Test_PSG2,	smpsPitch00,	$00,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Test_PSG3,	smpsPitch00,	$00,	$00
	dc.b		$00,	$00,	$00,	$00

; FM2 Data
Test_FM2:

; FM3 Data
Test_FM3:

; FM4 Data
Test_FM4:

; FM5 Data
Test_FM5:

; PSG1 Data
Test_PSG1:

; PSG2 Data
Test_PSG2:

; PSG3 Data
Test_PSG3:
	smpsStop

; FM1 Data
Test_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$05
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$0A
	dc.b		nG2,	$03,	nF3,	nB3,	nAb2,	$33
	smpsStop

; DAC Data
Test_DAC:
	dc.b		dKick,	$0C,	dSnare,	dTimpani,	$84,	$85,	$86,	$87
	dc.b		dHiTimpani,	dMidTimpani,	dLowTimpani,	dVLowTimpani,	$48
	smpsStop

Test_Voices:
;	Voice 00
;	$3C,$00,$00,$00,$00,$1F,$1F,$1F,$1F,$1F,$09,$00,$1F,$03,$00,$00,$00,$0F,$FF,$FF,$0F,$23,$00,$20,$12
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$00
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$1F,	$00,	$09,	$1F
	smpsVcDecayRate2	$00,	$00,	$00,	$03
	smpsVcDecayLevel	$00,	$0F,	$0F,	$00
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$12,	$20,	$00,	$23
	even
