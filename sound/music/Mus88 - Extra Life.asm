; =============================================================================================
; Project Name:		Mus88ExtraLife
; Created:		5th August 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Mus88ExtraLife_Header:
;	Voice Pointer	location
	smpsHeaderVoice	Mus88ExtraLife_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$01
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$08

;	DAC Pointer	location
	smpsHeaderDAC	Mus88ExtraLife_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	Mus88ExtraLife_FM1,	smpsPitch00,	$15
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	Mus88ExtraLife_FM2,	smpsPitch00,	$10
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	Mus88ExtraLife_FM3,	smpsPitch00,	$0F
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	Mus88ExtraLife_FM4,	smpsPitch00,	$13
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	Mus88ExtraLife_FM5,	smpsPitch00,	$11
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	Mus88ExtraLife_PSG1,	smpsPitch00,	$02,	$2F

; DAC Data
Mus88ExtraLife_DAC:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		dSnare,	$09,	dSnare,	$03,	dSnare,	$02,	dSnare,	$01
	dc.b		dSnare,	$02,	dSnare,	$01,	dSnare,	$06,	dSnare,	$06
	dc.b		dSnare,	$03,	dSnare,	$03,	dSnare,	$02,	dSnare,	$01
	dc.b		dSnare,	$02,	dSnare,	$01,	dSnare,	$36
	smpsStop

; FM1 Data
Mus88ExtraLife_FM1:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nA5,	$0C,	nFs5,	$03,	nRst,	$03,	nE5,	$03
	dc.b		nRst,	$03,	nB5,	$06,	nE5,	$03,	nRst,	$03
	dc.b		nB5,	$06,	nD6,	$06,	nCs6,	$18
	smpsStop

; FM2 Data
Mus88ExtraLife_FM2:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$01
	dc.b		nE6,	$0C,	nCs6,	$03,	nRst,	$03,	nA5,	$03
	dc.b		nRst,	$03,	nAb6,	$06,	nB5,	$03,	nRst,	$03
	dc.b		nAb6,	$06,	nB6,	$06,	nRst,	$06
;	Set�FM�Voice	#
	smpsFMvoice	$04
	dc.b		nA4,	$04,	nCs5,	$04,	nE5,	$04,	nFs5,	$04
	dc.b		nAb5,	$04
	smpsStop

; FM3 Data
Mus88ExtraLife_FM3:
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$02
	dc.b		nA2,	$03,	nRst,	$03,	nA2,	$03,	nA2,	$03
	dc.b		nFs2,	$03,	nRst,	$03,	nE2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$09,	nB2,	$03,	nRst,	$09
	dc.b		nA2,	$03,	nRst,	$03,	nE2,	$03,	nRst,	$03
	dc.b		nA2,	$03,	nRst,	$03,	nE2,	$03,	nRst,	$03
	dc.b		nA2,	$03
	smpsStop

; FM4 Data
Mus88ExtraLife_FM4:
	dc.b		nRst,	$30
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Set�FM�Voice	#
	smpsFMvoice	$04
	dc.b		nA5,	$08,	nB4,	$04,	nD5,	$04,	nF5,	$04
	dc.b		nG5,	$04,	nA5,	$0C
	smpsStop

; FM5 Data
Mus88ExtraLife_FM5:
	dc.b		nRst,	$05
;	Panning	�	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter�Notes	value
	smpsAlterNote	$02
;	Set�FM�Voice	#
	smpsFMvoice	$00
	dc.b		nA5,	$0C,	nFs5,	$03,	nRst,	$03,	nE5,	$03
	dc.b		nRst,	$03,	nB5,	$06,	nE5,	$03,	nRst,	$03
	dc.b		nB5,	$06,	nD6,	$06,	nCs6,	$18
	smpsStop

; PSG1 Data
Mus88ExtraLife_PSG1:
	dc.b		nRst,	$30,	nC0,	$06,	nC0,	$06,	nC0,	$06
	dc.b		nC0,	$06,	nC0,	$18
	smpsStop

Mus88ExtraLife_Voices:
;	Voice 00
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

;	Voice 01
;	$04,$01,$00,$00,$00,$1F,$1F,$DD,$1F,$11,$0D,$05,$05,$00,$02,$02,$02,$65,$3A,$15,$1A,$27,$00,$13,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$01
	smpsVcRateScale		$00,	$03,	$00,	$00
	smpsVcAttackRate	$1F,	$1D,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$05,	$05,	$0D,	$11
	smpsVcDecayRate2	$02,	$02,	$02,	$00
	smpsVcDecayLevel	$01,	$01,	$03,	$06
	smpsVcReleaseRate	$0A,	$05,	$0A,	$05
	smpsVcTotalLevel	$00,	$13,	$00,	$27

;	Voice 02
;	$28,$39,$35,$30,$31,$1F,$1F,$1F,$1F,$0C,$0A,$07,$0A,$07,$07,$07,$09,$26,$16,$16,$F6,$17,$32,$14,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$05
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$03,	$03
	smpsVcCoarseFreq	$01,	$00,	$05,	$09
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$07,	$0A,	$0C
	smpsVcDecayRate2	$09,	$07,	$07,	$07
	smpsVcDecayLevel	$0F,	$01,	$01,	$02
	smpsVcReleaseRate	$06,	$06,	$06,	$06
	smpsVcTotalLevel	$00,	$14,	$32,	$17

;	Voice 03
;	$38,$72,$13,$71,$11,$D1,$52,$14,$14,$01,$07,$01,$01,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$1E,$1E,$1E,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$01,	$07,	$01,	$07
	smpsVcCoarseFreq	$01,	$01,	$03,	$02
	smpsVcRateScale		$00,	$00,	$01,	$03
	smpsVcAttackRate	$14,	$14,	$12,	$11
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$01,	$01,	$07,	$01
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$0F,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$1E,	$1E,	$1E

;	Voice 04
;	$3E,$38,$01,$7A,$34,$59,$D9,$5F,$9C,$0F,$04,$0F,$0A,$02,$02,$05,$05,$AF,$AF,$66,$66,$28,$00,$23,$00
;				#
	smpsVcAlgorithm		$06
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$07,	$00,	$03
	smpsVcCoarseFreq	$04,	$0A,	$01,	$08
	smpsVcRateScale		$02,	$01,	$03,	$01
	smpsVcAttackRate	$1C,	$1F,	$19,	$19
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0A,	$0F,	$04,	$0F
	smpsVcDecayRate2	$05,	$05,	$02,	$02
	smpsVcDecayLevel	$06,	$06,	$0A,	$0A
	smpsVcReleaseRate	$06,	$06,	$0F,	$0F
	smpsVcTotalLevel	$00,	$23,	$00,	$28
	even
