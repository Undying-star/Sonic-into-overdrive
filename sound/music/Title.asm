; =============================================================================================
; Project Name:		test
; Created:		2nd May 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

test_Header:
;	Voice Pointer	location
	smpsHeaderVoice	test_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$02,	$24

;	DAC Pointer	location
	smpsHeaderDAC	test_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	test_FM1,	smpsPitch00,	$11
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	test_FM2,	smpsPitch00,	$13
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	test_FM3,	smpsPitch00,	$16
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	test_FM4,	smpsPitch00,	$1D
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	test_FM5,	smpsPitch00,	$13
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	test_PSG1,	smpsPitch00,	$00,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	test_PSG2,	smpsPitch00,	$00,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	test_PSG3,	smpsPitch00,	$05,	$02

; DAC Data
test_DAC:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		dKick,	$07,	dSnare,	$07,	dSnare,	$07,	dSnare,	$05
	dc.b		dSnare,	$02,	dKick,	$07,	dSnare,	$07,	dKick,	$07
	dc.b		dSnare,	$07,	dKick,	$07,	dSnare,	$07,	dKick,	$07
	dc.b		dSnare,	$07,	dKick,	$07,	dSnare,	$07,	dKick,	$07
	dc.b		dSnare,	$07,	dKick,	$07,	dSnare,	$07,	dKick,	$05
	dc.b		dSnare,	$01,	dSnare,	$01,	dSnare,	$05,	dSnare,	$02
	dc.b		dKick,	$07,	dSnare,	$07,	dSnare,	$02,	dSnare,	$03
	dc.b		dSnare,	$02,	dSnare,	$07,	dSnare,	$04,	dSnare,	$0A
	dc.b		dSnare,	$07,	$85,	$77
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	smpsStop

; FM1 Data
test_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nRst,	$1C,	nA2,	$03,	nRst,	$04,	nA2,	$03
	dc.b		nRst,	$04,	nE2,	$03,	nRst,	$04,	nE2,	$03
	dc.b		nRst,	$04,	nG2,	$0A,	nRst,	$01,	nB2,	$0A
	dc.b		nD3,	$07,	nA2,	$03,	nRst,	$04,	nA2,	$03
	dc.b		nRst,	$04,	nE2,	$03,	nRst,	$04,	nE2,	$03
	dc.b		nRst,	$04,	nD3,	$0A,	nRst,	$01,	nCs3,	$0A
	dc.b		nB2,	$07,	nRst,	$07,	nA1,	$07,	nRst,	$07
	dc.b		nA1,	$07,	nRst,	$04,	nAb2,	$0A,	nA2,	$03
	dc.b		nRst,	$04,	nA1,	$3E,	nRst,	$39
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
	smpsStop

; FM2 Data
test_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nRst,	$23,	nCs5,	$0A,	nRst,	$04,	nCs5,	$03
	dc.b		nRst,	$04,	nD5,	$0A,	nRst,	$01,	nB4,	$11
	dc.b		nCs5,	$03,	nRst,	$04,	nCs5,	$03,	nRst,	$04
	dc.b		nCs5,	$03,	nRst,	$04,	nA4,	$03,	nRst,	$04
	dc.b		nG4,	$0A,	nRst,	$01,	nB4,	$0A,	nRst,	$07
	dc.b		nA4,	$03,	nRst,	$04,	nCs5,	$03,	nRst,	$04
	dc.b		nA5,	$03,	nRst,	$04,	nE5,	$0A,	nRst,	$01
	dc.b		nAb5,	$0A,	nA5,	$03,	nRst,	$7B
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$01
	smpsStop

; FM3 Data
test_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nRst,	$1C,	nCs5,	$03,	nRst,	$04,	nE5,	$03
	dc.b		nRst,	$04,	nCs5,	$03,	nRst,	$04,	nA4,	$03
	dc.b		nRst,	$04,	nB4,	$07,	nRst,	$04,	nB4,	$11
	dc.b		nE5,	$03,	nRst,	$04,	nE5,	$03,	nRst,	$04
	dc.b		nA4,	$03,	nRst,	$04,	nA4,	$03,	nRst,	$04
	dc.b		nD5,	$07,	nRst,	$04,	nD5,	$11,	nCs5,	$07
	dc.b		nRst,	$07,	nE5,	$07,	nRst,	$0B,	nC5,	$0A
	dc.b		nE5,	$07,	nRst,	$77
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$02
	smpsStop

; FM4 Data
test_FM4:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$03
	dc.b		nRst,	$7F,	$3B,	nC5,	$7A
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$03
	smpsStop

; FM5 Data
test_FM5:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$03
;	Set FM Voice	#
	smpsFMvoice	$04
	dc.b		nRst,	$23,	nCs5,	$0A,	nRst,	$04,	nCs5,	$03
	dc.b		nRst,	$04,	nD5,	$0A,	nRst,	$01,	nB4,	$11
	dc.b		nCs5,	$03,	nRst,	$04,	nCs5,	$03,	nRst,	$04
	dc.b		nCs5,	$03,	nRst,	$04,	nA4,	$03,	nRst,	$04
	dc.b		nG4,	$0A,	nRst,	$01,	nB4,	$0A,	nRst,	$07
	dc.b		nA4,	$03,	nRst,	$04,	nCs5,	$03,	nRst,	$04
	dc.b		nA5,	$03,	nRst,	$04,	nE5,	$0A,	nRst,	$01
	dc.b		nAb5,	$0A,	nA5,	$03,	nRst,	$7B
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Notes	value
	smpsAlterNote	$00
;	Set FM Voice	#
	smpsFMvoice	$04
	smpsStop

; PSG3 Data
test_PSG3:
;	Set PSG WvForm	#
	smpsPSGform	$E7
	dc.b		nRst,	$1C,	nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$07
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nA5,	$7F,	smpsNoAttack,	$14
	smpsStop

; PSG1 Data
test_PSG1:

; PSG2 Data
test_PSG2:
	smpsStop

test_Voices:
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
;	$3B,$00,$71,$71,$01,$1F,$16,$0F,$12,$00,$00,$00,$88,$00,$00,$00,$00,$00,$01,$01,$16,$19,$17,$19,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$07,	$07,	$00
	smpsVcCoarseFreq	$01,	$01,	$01,	$00
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$12,	$0F,	$16,	$1F
	smpsVcAmpMod		$04,	$00,	$00,	$00
	smpsVcDecayRate1	$08,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$01,	$00,	$00,	$00
	smpsVcReleaseRate	$06,	$01,	$01,	$00
	smpsVcTotalLevel	$00,	$19,	$17,	$19

;	Voice 04
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
