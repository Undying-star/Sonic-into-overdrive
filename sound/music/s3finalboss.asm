; =============================================================================================
; Project Name:		FinalBoss
; Created:		21st May 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

FinalBoss_Header:
	smpsHeaderVoice	FinalBoss_Voices
	smpsHeaderChan	$06,	$02
	smpsHeaderTempo	$01,	$02

	smpsHeaderDAC	FinalBoss_DAC
	smpsHeaderFM	FinalBoss_FM1,	smpsPitch00,	$0E
	smpsHeaderFM	FinalBoss_FM2,	smpsPitch00,	$0C
	smpsHeaderFM	FinalBoss_FM3,	smpsPitch00,	$0E
	smpsHeaderFM	FinalBoss_FM4,	smpsPitch00,	$0E
	smpsHeaderFM	FinalBoss_FM5,	smpsPitch00,	$12
	smpsHeaderPSG	FinalBoss_PSG1,	smpsPitch00,	$02,	$00
	smpsHeaderPSG	FinalBoss_PSG2,	smpsPitch00,	$03,	$00

; DAC Data
FinalBoss_DAC:
	smpsSetTempoMod	$03
	dc.b		nRst,	$7F,	$7F,	$22,	dKick,	$24,	dSnare,	$1B
	dc.b		dKick,	$09,	dKick,	$24,	dSnare,	$1B,	dKick,	$09
	dc.b		dKick,	$24,	dSnare,	$1B,	dKick,	$09,	dKick,	$1B
	dc.b		dKick,	$09,	dSnare,	$09,	dKick,	$09,	dSnare,	$09
	dc.b		dSnare,	$2D,	dSnare,	$03,	dSnare,	$03,	dSnare,	$03
	dc.b		dSnare,	$03,	dKick,	$06,	dSnare,	$06
FinalBoss_Jump01:
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$0C
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$0C
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$0C
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$0C
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dKick,	$06,	dSnare,	$06,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$06,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dSnare,	$06,	dSnare,	$03,	dSnare,	$03
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dSnare,	$06,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$06,	dSnare,	$06
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$0C,	dKick,	$06
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$06,	dSnare,	$06,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$06,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$06,	dKick,	$06,	dKick,	$06,	dSnare,	$18
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$0C
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$0C,	dSnare,	$0C
	dc.b		dKick,	$06,	dKick,	$06,	dSnare,	$0C,	dKick,	$0C
	dc.b		dSnare,	$06,	dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	dc.b		dKick,	$0C,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$0C,	dKick,	$0C,	dSnare,	$06,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	$06,	dKick,	$06
	dc.b		dSnare,	$48,	dSnare,	$0C
	smpsJump	FinalBoss_Jump01

; FM1 Data
FinalBoss_FM1:
	smpsModSet	$0D,	$01,	$02,	$06
	dc.b		nRst,	$7F,	$59
	smpsFMvoice	$02
	dc.b		nE4,	$03,	nF4,	$03,	nG4,	$03,	nA4,	$03
	dc.b		nF4,	$03,	nG4,	$03,	nA4,	$03,	nB4,	$03
	dc.b		nG4,	$03,	nA4,	$03,	nB4,	$03,	nC5,	$03
	dc.b		nA4,	$03,	nB4,	$03,	nC5,	$03,	nD5,	$03
	dc.b		nB4,	$03,	nC5,	$03,	nD5,	$03,	nE5,	$03
	dc.b		nC5,	$03,	nD5,	$03,	nE5,	$03,	nF5,	$03
	dc.b		nG5,	$48,	nRst,	$7F,	$11,	nE4,	$03,	nF4
	dc.b		$03,	nG4,	$03,	nA4,	$03,	nF4,	$03,	nG4
	dc.b		$03,	nA4,	$03,	nB4,	$03,	nG4,	$03,	nA4
	dc.b		$03,	nB4,	$03,	nC5,	$03,	nA4,	$03,	nB4
	dc.b		$03,	nC5,	$03,	nD5,	$03,	nB4,	$03,	nC5
	dc.b		$03,	nD5,	$03,	nE5,	$03,	nC5,	$03,	nD5
	dc.b		$03,	nE5,	$03,	nF5,	$03,	nG5,	$3C
FinalBoss_Jump02:
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	dc.b		nRst,	$60,	nE3,	$02,	nF3,	$02,	nG3,	$02
	dc.b		nA3,	$02,	nB3,	$02,	nC4,	$02,	nE4,	$0C
	dc.b		nE3,	$02,	nF3,	$02,	nG3,	$02,	nA3,	$02
	dc.b		nB3,	$02,	nC4,	$02,	nE4,	$0C,	nRst,	$0C
	dc.b		nD5,	$03,	nRst,	$03,	nD5,	$03,	nRst,	$03
	dc.b		nE3,	$02,	nF3,	$02,	nG3,	$02,	nA3,	$02
	dc.b		nB3,	$02,	nC4,	$02,	nE4,	$0C,	nE3,	$02
	dc.b		nF3,	$02,	nG3,	$02,	nA3,	$02,	nB3,	$02
	dc.b		nC4,	$02,	nE4,	$0C,	nRst,	$0C,	nD5,	$03
	dc.b		nRst,	$03,	nD5,	$03,	nRst,	$03,	nE3,	$02
	dc.b		nF3,	$02,	nG3,	$02,	nA3,	$02,	nB3,	$02
	dc.b		nC4,	$02,	nE4,	$0C,	nE3,	$02,	nF3,	$02
	dc.b		nG3,	$02,	nA3,	$02,	nB3,	$02,	nC4,	$02
	dc.b		nE4,	$0C,	nRst,	$0C,	nD5,	$03,	nRst,	$03
	dc.b		nD5,	$03,	nRst,	$03,	nE3,	$02,	nF3,	$02
	dc.b		nG3,	$02,	nA3,	$02,	nB3,	$02,	nC4,	$02
	dc.b		nE4,	$0C,	nE3,	$02,	nF3,	$02,	nG3,	$02
	dc.b		nA3,	$02,	nB3,	$02,	nC4,	$02,	nE4,	$0C
	dc.b		nRst,	$3C
	smpsFMvoice	$03
	dc.b		nE4,	$12,	nB4,	$12,	nA4,	$0C,	nD5,	$12
	dc.b		nC5,	$12,	nB4,	$0C,	nC5,	$12,	nD5,	$12
	dc.b		nE5,	$0C,	nD5,	$12,	nA4,	$1E,	nE4,	$12
	dc.b		nB4,	$12,	nA4,	$0C,	nD5,	$12,	nE5,	$12
	dc.b		nFs5,	$0C,	nG5,	$12,	nA5,	$12,	nB5,	$0C
	dc.b		nD6,	$12,	nA5,	$1E,	nRst,	$60
	smpsJump	FinalBoss_Jump02

; FM2 Data
FinalBoss_FM2:
	smpsFMvoice	$00
	smpsModSet	$0D,	$01,	$02,	$06
	smpsPan		panCentre,	$00
	dc.b		nE2,	$63,	nE2,	$2D
	smpsPan		panCentre,	$00
	dc.b		nE2,	$63,	nE2,	$2D
	smpsPan		panCentre,	$00
	dc.b		nE2,	$63,	nE2,	$2D
	smpsPan		panCentre,	$00
	dc.b		nE2,	$63,	nE2,	$2D,	nE2,	$3C
FinalBoss_Jump03:
	dc.b		nE2,	$06,	nE2,	$06,	nB2,	$06,	nE2,	$06
	dc.b		nE2,	$06,	nD3,	$06,	nE2,	$06,	nE2,	$06
	dc.b		nCs3,	$06,	nE2,	$06,	nB2,	$06,	nE2,	$06
	dc.b		nA2,	$06,	nE2,	$06,	nE2,	$06,	nA2,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nA2,	$06,	nE2,	$06
	dc.b		nE2,	$06,	nB2,	$06,	nE2,	$06,	nE2,	$06
	dc.b		nD3,	$06,	nE2,	$06,	nE3,	$06,	nE2,	$06
	dc.b		nD3,	$06,	nE2,	$06,	nCs3,	$06,	nE2,	$06
	dc.b		nE2,	$06,	nE2,	$03,	nE2,	$03,	nA2,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nB2,	$06,	nE2,	$06
	dc.b		nE2,	$06,	nD3,	$06,	nE2,	$06,	nCs3,	$06
	dc.b		nE2,	$06,	nB2,	$06,	nE2,	$06,	nA2,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nE2,	$06,	nA2,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nB2,	$06,	nE2,	$06
	dc.b		nE2,	$06,	nD3,	$06,	nE2,	$06,	nE2,	$06
	dc.b		nCs3,	$06,	nE2,	$06,	nE2,	$06,	nB2,	$06
	dc.b		nD3,	$06,	nE2,	$06,	nE2,	$06,	nB2,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nD3,	$06,	nE2,	$06
	dc.b		nE2,	$06,	nCs3,	$06,	nE2,	$06,	nB2,	$06
	dc.b		nE2,	$06,	nA2,	$06,	nE2,	$06,	nE2,	$06
	dc.b		nA2,	$06,	nE2,	$06,	nE2,	$06,	nA2,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nB2,	$06,	nE2,	$06
	dc.b		nE2,	$06,	nD3,	$06,	nE2,	$06,	nE3,	$06
	dc.b		nE2,	$06,	nD3,	$06,	nE2,	$06,	nCs3,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nE2,	$03,	nE2,	$03
	dc.b		nA2,	$06,	nE2,	$06,	nE2,	$06,	nB2,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nD3,	$06,	nE2,	$06
	dc.b		nCs3,	$06,	nE2,	$06,	nB2,	$06,	nE2,	$06
	dc.b		nA2,	$06,	nE2,	$06,	nE2,	$06,	nE2,	$06
	dc.b		nA2,	$06,	nE2,	$06,	nE2,	$06,	nB2,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nD3,	$06,	nE2,	$06
	dc.b		nE2,	$06,	nCs3,	$06,	nE2,	$06,	nE2,	$06
	dc.b		nB2,	$06,	nD3,	$06,	nE2,	$06,	nA2,	$06
	dc.b		nB2,	$06,	nE2,	$06,	nE3,	$06,	nA2,	$06
	dc.b		nB2,	$06,	nE3,	$06,	nD2,	$06,	nG2,	$06
	dc.b		nA2,	$06,	nD2,	$06,	nD3,	$06,	nG2,	$06
	dc.b		nA2,	$06,	nD3,	$06,	nC2,	$06,	nC3,	$06
	dc.b		nRst,	$0C,	nC2,	$06,	nC3,	$06,	nRst,	$0C
	dc.b		nC2,	$06,	nC3,	$06,	nRst,	$0C,	nC2,	$06
	dc.b		nC3,	$06,	nRst,	$0C,	nC2,	$06,	nC3,	$06
	dc.b		nRst,	$0C,	nC2,	$06,	nC3,	$06,	nRst,	$0C
	dc.b		nC2,	$06,	nC3,	$06,	nRst,	$0C,	nC2,	$06
	dc.b		nC3,	$06,	nRst,	$0C,	nC2,	$06,	nC3,	$06
	dc.b		nRst,	$0C,	nC2,	$06,	nC3,	$06,	nRst,	$0C
	dc.b		nC2,	$06,	nC3,	$06,	nRst,	$06,	nD3,	$42
	dc.b		nE2,	$06,	nE2,	$06,	nB2,	$06,	nE2,	$06
	dc.b		nD3,	$06,	nE2,	$06,	nB2,	$06,	nD3,	$06
	dc.b		nD2,	$06,	nD2,	$06,	nA2,	$06,	nD2,	$06
	dc.b		nD3,	$06,	nC3,	$06,	nB2,	$06,	nA2,	$06
	dc.b		nC3,	$06,	nC3,	$06,	nG2,	$06,	nC3,	$06
	dc.b		nE3,	$06,	nG2,	$06,	nC3,	$06,	nD3,	$06
	dc.b		nD2,	$06,	nD2,	$06,	nA2,	$06,	nD2,	$06
	dc.b		nD3,	$06,	nA2,	$06,	nG2,	$06,	nD2,	$06
	dc.b		nE2,	$06,	nE2,	$06,	nB2,	$06,	nE2,	$06
	dc.b		nE3,	$06,	nE2,	$06,	nB2,	$06,	nE2,	$06
	dc.b		nFs2,	$06,	nFs2,	$06,	nFs3,	$06,	nFs2,	$06
	dc.b		nCs3,	$06,	nFs2,	$06,	nFs3,	$06,	nFs2,	$06
	dc.b		nG2,	$06,	nG2,	$06,	nG3,	$06,	nG2,	$06
	dc.b		nD3,	$06,	nG2,	$06,	nG3,	$06,	nG2,	$06
	dc.b		nA2,	$06,	nA2,	$06,	nE3,	$06,	nA2,	$06
	dc.b		nA3,	$06,	nE3,	$06,	nA2,	$06,	nA3,	$06
	dc.b		nRst,	$0C,	nBb2,	$48,	nRst,	$0C
	smpsJump	FinalBoss_Jump03

; FM3 Data
FinalBoss_FM3:
	smpsFMvoice	$01
	smpsModSet	$0D,	$01,	$02,	$06
	smpsPan		panRight,	$00
	dc.b		nG4,	$48,	nBb4,	$1B,	nA4,	$2D,	nG4,	$48
	dc.b		nBb4,	$1B,	nA4,	$2D,	nG4,	$48,	nBb4,	$1B
	dc.b		nA4,	$2D,	nG4,	$48,	nBb4,	$1B,	nA4,	$2D
	dc.b		nG4,	$3C
FinalBoss_Jump04:
	smpsFMvoice	$01
	dc.b		nG4,	$30,	nBb4,	$12,	nA4,	$12,	nA4,	$0C
	smpsFMvoice	$01
	dc.b		nG4,	$30,	nBb4,	$12,	nA4,	$12,	nA4,	$0C
	smpsFMvoice	$01
	dc.b		nG4,	$30,	nBb4,	$12,	nA4,	$12,	nA4,	$0C
	smpsFMvoice	$01
	dc.b		nG4,	$30,	nBb4,	$12,	nA4,	$12,	nA4,	$0C
	smpsFMvoice	$01
	dc.b		nG4,	$30,	nBb4,	$12,	nA4,	$12,	nA4,	$0C
	smpsFMvoice	$01
	dc.b		nG4,	$30,	nBb4,	$12,	nA4,	$12,	nA4,	$0C
	smpsFMvoice	$01
	dc.b		nG4,	$30,	nBb4,	$12,	nA4,	$12,	nA4,	$0C
	smpsFMvoice	$01
	dc.b		nG4,	$30,	nBb4,	$12,	nA4,	$12,	nA4,	$0C
	dc.b		nG4,	$30,	nFs4,	$12,	nD4,	$12,	nFs4,	$0C
	dc.b		nRst,	$0C,	nE4,	$0C,	nRst,	$0C,	nE4,	$0C
	dc.b		nRst,	$0C,	nFs4,	$03,	nRst,	$03,	nFs4,	$03
	dc.b		nRst,	$0F,	nE4,	$0C,	nRst,	$0C,	nE4,	$0C
	dc.b		nRst,	$0C,	nFs4,	$03,	nRst,	$03,	nFs4,	$03
	dc.b		nRst,	$0F,	nE4,	$0C,	nRst,	$0C,	nE4,	$0C
	dc.b		nRst,	$0C,	nFs4,	$03,	nRst,	$03,	nFs4,	$03
	dc.b		nRst,	$0F,	nE4,	$0C,	nRst,	$0C,	nE4,	$06
	dc.b		nFs4,	$2A,	nRst,	$18
	smpsFMvoice	$04
	dc.b		nG4,	$30,	nFs4,	$30,	nE4,	$30,	nFs4,	$30
	dc.b		nB4,	$30,	nD5,	$30,	nD5,	$30,	nFs5,	$30
	dc.b		nRst,	$0C,	nD5,	$48,	nRst,	$0C
	smpsJump	FinalBoss_Jump04

; FM4 Data
FinalBoss_FM4:
	smpsFMvoice	$01
	smpsModSet	$0D,	$01,	$02,	$06
	smpsPan		panLeft,	$00
	dc.b		nD4,	$48,	nFs4,	$1B,	nF4,	$2D,	nD4,	$48
	dc.b		nFs4,	$1B,	nF4,	$2D,	nD4,	$48,	nFs4,	$1B
	dc.b		nF4,	$2D,	nD4,	$48,	nFs4,	$1B,	nF4,	$2D
	dc.b		nD4,	$3C
FinalBoss_Jump05:
	smpsFMvoice	$01
	dc.b		nD4,	$30,	nFs4,	$12,	nF4,	$12,	nF4,	$0C
	smpsFMvoice	$01
	dc.b		nD4,	$30,	nFs4,	$12,	nF4,	$12,	nF4,	$0C
	smpsFMvoice	$01
	dc.b		nD4,	$30,	nFs4,	$12,	nF4,	$12,	nF4,	$0C
	smpsFMvoice	$01
	dc.b		nD4,	$30,	nFs4,	$12,	nF4,	$12,	nF4,	$0C
	smpsFMvoice	$01
	dc.b		nD4,	$30,	nFs4,	$12,	nF4,	$12,	nF4,	$0C
	smpsFMvoice	$01
	dc.b		nD4,	$30,	nFs4,	$12,	nF4,	$12,	nF4,	$0C
	smpsFMvoice	$01
	dc.b		nD4,	$30,	nFs4,	$12,	nF4,	$12,	nF4,	$0C
	smpsFMvoice	$01
	dc.b		nD4,	$30,	nFs4,	$12,	nF4,	$12,	nF4,	$0C
	dc.b		nE4,	$30,	nD4,	$12,	nA3,	$12,	nD4,	$0C
	dc.b		nRst,	$0C,	nC4,	$0C,	nRst,	$0C,	nC4,	$0C
	dc.b		nRst,	$0C,	nD4,	$03,	nRst,	$03,	nD4,	$03
	dc.b		nRst,	$0F,	nC4,	$0C,	nRst,	$0C,	nC4,	$0C
	dc.b		nRst,	$0C,	nD4,	$03,	nRst,	$03,	nD4,	$03
	dc.b		nRst,	$0F,	nC4,	$0C,	nRst,	$0C,	nC4,	$0C
	dc.b		nRst,	$0C,	nD4,	$03,	nRst,	$03,	nD4,	$03
	dc.b		nRst,	$0F,	nC4,	$0C,	nRst,	$0C,	nC4,	$03
	dc.b		nRst,	$03,	nD4,	$2A,	nRst,	$18
	smpsFMvoice	$04
	dc.b		nB4,	$30,	nA4,	$30,	nG4,	$30,	nA4,	$30
	dc.b		nE5,	$30,	nFs5,	$30,	nG5,	$30,	nA5,	$30
	dc.b		nRst,	$0C,	nE5,	$48,	nRst,	$0C
	smpsJump	FinalBoss_Jump05

; FM5 Data
FinalBoss_FM5:
	dc.b		nRst,	$09
	smpsModSet	$0D,	$01,	$02,	$06
	dc.b		$7F,	$59
	smpsFMvoice	$02
	dc.b		nE4,	$03,	nF4,	$03,	nG4,	$03,	nA4,	$03
	dc.b		nF4,	$03,	nG4,	$03,	nA4,	$03,	nB4,	$03
	dc.b		nG4,	$03,	nA4,	$03,	nB4,	$03,	nC5,	$03
	dc.b		nA4,	$03,	nB4,	$03,	nC5,	$03,	nD5,	$03
	dc.b		nB4,	$03,	nC5,	$03,	nD5,	$03,	nE5,	$03
	dc.b		nC5,	$03,	nD5,	$03,	nE5,	$03,	nF5,	$03
	dc.b		nG5,	$48,	nRst,	$7F,	$11,	nE4,	$03,	nF4
	dc.b		$03,	nG4,	$03,	nA4,	$03,	nF4,	$03,	nG4
	dc.b		$03,	nA4,	$03,	nB4,	$03,	nG4,	$03,	nA4
	dc.b		$03,	nB4,	$03,	nC5,	$03,	nA4,	$03,	nB4
	dc.b		$03,	nC5,	$03,	nD5,	$03,	nB4,	$03,	nC5
	dc.b		$03,	nD5,	$03,	nE5,	$03,	nC5,	$03,	nD5
	dc.b		$03,	nE5,	$03,	nF5,	$03,	nG5,	$3C
FinalBoss_Jump06:
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	smpsFMvoice	$02
	dc.b		nE5,	$0C,	nB4,	$0C,	nG5,	$0C,	nD5,	$0C
	dc.b		nFs5,	$0C,	nCs5,	$0C,	nF4,	$0C,	nF5,	$0C
	dc.b		nRst,	$60,	nE3,	$02,	nF3,	$02,	nG3,	$02
	dc.b		nA3,	$02,	nB3,	$02,	nC4,	$02,	nE4,	$0C
	dc.b		nE3,	$02,	nF3,	$02,	nG3,	$02,	nA3,	$02
	dc.b		nB3,	$02,	nC4,	$02,	nE4,	$0C,	nRst,	$0C
	dc.b		nD5,	$03,	nRst,	$03,	nD5,	$03,	nRst,	$03
	dc.b		nE3,	$02,	nF3,	$02,	nG3,	$02,	nA3,	$02
	dc.b		nB3,	$02,	nC4,	$02,	nE4,	$0C,	nE3,	$02
	dc.b		nF3,	$02,	nG3,	$02,	nA3,	$02,	nB3,	$02
	dc.b		nC4,	$02,	nE4,	$0C,	nRst,	$0C,	nD5,	$03
	dc.b		nRst,	$03,	nD5,	$03,	nRst,	$03,	nE3,	$02
	dc.b		nF3,	$02,	nG3,	$02,	nA3,	$02,	nB3,	$02
	dc.b		nC4,	$02,	nE4,	$0C,	nE3,	$02,	nF3,	$02
	dc.b		nG3,	$02,	nA3,	$02,	nB3,	$02,	nC4,	$02
	dc.b		nE4,	$0C,	nRst,	$0C,	nD5,	$03,	nRst,	$03
	dc.b		nD5,	$03,	nRst,	$03,	nE3,	$02,	nF3,	$02
	dc.b		nG3,	$02,	nA3,	$02,	nB3,	$02,	nC4,	$02
	dc.b		nE4,	$0C,	nE3,	$02,	nF3,	$02,	nG3,	$02
	dc.b		nA3,	$02,	nB3,	$02,	nC4,	$02,	nE4,	$0C
	dc.b		nRst,	$3D
	smpsFMvoice	$03
	dc.b		nE4,	$12,	nB4,	$12,	nA4,	$0C,	nD5,	$12
	dc.b		nC5,	$12,	nB4,	$0C,	nC5,	$12,	nD5,	$12
	dc.b		nE5,	$0C,	nD5,	$12,	nA4,	$1E,	nE4,	$12
	dc.b		nB4,	$12,	nA4,	$0C,	nD5,	$12,	nE5,	$12
	dc.b		nFs5,	$0C,	nG5,	$12,	nA5,	$12,	nB5,	$0C
	dc.b		nD6,	$12,	nA5,	$1E,	nRst,	$60
	smpsJump	FinalBoss_Jump06

; PSG1 Data
FinalBoss_PSG1:
	smpsModSet	$0D,	$01,	$02,	$06
	dc.b		nB0,	$48,	nCs1,	$1B,	nC1,	$2D,	nB0,	$48
	dc.b		nCs1,	$1B,	nC1,	$2D,	nB0,	$48,	nCs1,	$1B
	dc.b		nC1,	$2D,	nB0,	$48,	nCs1,	$1B,	nC1,	$2D
	dc.b		nB0,	$3C
FinalBoss_Jump07:
	dc.b		nB0,	$30,	nCs1,	$12,	nC1,	$12,	nC1,	$0C
	dc.b		nB0,	$30,	nCs1,	$12,	nC1,	$12,	nC1,	$0C
	dc.b		nB0,	$30,	nCs1,	$12,	nC1,	$12,	nC1,	$0C
	dc.b		nB0,	$30,	nCs1,	$12,	nC1,	$12,	nC1,	$0C
	dc.b		nB0,	$30,	nCs1,	$12,	nC1,	$12,	nC1,	$0C
	dc.b		nB0,	$30,	nCs1,	$12,	nC1,	$12,	nC1,	$0C
	dc.b		nB0,	$30,	nCs1,	$12,	nC1,	$12,	nC1,	$0C
	dc.b		nB0,	$30,	nCs1,	$12,	nC1,	$12,	nC1,	$0C
	dc.b		nC1,	$30,	nRst,	$7F,	$7F,	$7F,	$03,	nE2
	dc.b		$03,	nRst,	$09,	nD2,	$03,	nRst,	$03,	nE2
	dc.b		$03,	nRst,	$09,	nD2,	$03,	nRst,	$09,	nA1
	dc.b		$03,	nRst,	$33,	nE2,	$03,	nRst,	$09,	nD2
	dc.b		$03,	nRst,	$03,	nE2,	$03,	nRst,	$09,	nFs2
	dc.b		$03,	nRst,	$09,	nA1,	$03,	nRst,	$7F,	$7F
	dc.b		$49
	smpsJump	FinalBoss_Jump07

; PSG2 Data
FinalBoss_PSG2:
	smpsModSet	$0D,	$01,	$02,	$06
	dc.b		nRst,	$6A,	$6A,	$6A,	$6A,	$6A,	$6A
FinalBoss_Jump08:
	dc.b		nRst,	$7F,	$7F,	$7F,	$03,	nE1,	$06,	nB1
	dc.b		$06,	nE2,	$06,	nG1,	$06,	nG2,	$06,	nFs2
	dc.b		$06,	nD2,	$06,	nB1,	$06,	nRst,	$30,	nE1
	dc.b		$06,	nB1,	$06,	nE2,	$06,	nG1,	$06,	nG2
	dc.b		$06,	nFs2,	$06,	nD2,	$06,	nB1,	$06,	nRst
	dc.b		$30,	nE1,	$06,	nB1,	$06,	nE2,	$06,	nG1
	dc.b		$06,	nG2,	$06,	nFs2,	$06,	nD2,	$06,	nB1
	dc.b		$06,	nE1,	$06,	nCs2,	$06,	nFs2,	$06,	nCs2
	dc.b		$06,	nE1,	$06,	nC2,	$06,	nF2,	$06,	nC2
	dc.b		$06,	nE1,	$06,	nB1,	$06,	nE2,	$06,	nG1
	dc.b		$06,	nG2,	$06,	nFs2,	$06,	nD2,	$06,	nB1
	dc.b		$06,	nE1,	$06,	nCs2,	$06,	nFs2,	$06,	nCs2
	dc.b		$06,	nE1,	$06,	nC2,	$06,	nF2,	$06,	nC2
	dc.b		$06,	nE1,	$06,	nB1,	$06,	nE2,	$06,	nG1
	dc.b		$06,	nG2,	$06,	nFs2,	$06,	nD2,	$06,	nB1
	dc.b		$06,	nD1,	$06,	nA1,	$06,	nD2,	$06,	nFs1
	dc.b		$06,	nFs2,	$06,	nE2,	$06,	nD2,	$06,	nA1
	dc.b		$06,	nC1,	$06,	nG1,	$06,	nE2,	$06,	nD2
	dc.b		$06,	nG2,	$06,	nFs2,	$06,	nD2,	$06,	nG1
	dc.b		$06,	nC1,	$06,	nG1,	$06,	nE2,	$06,	nD2
	dc.b		$06,	nC1,	$06,	nG1,	$06,	nE2,	$06,	nD2
	dc.b		$06,	nG2,	$06,	nFs2,	$06,	nD2,	$06,	nG1
	dc.b		$06,	nC1,	$06,	nG1,	$06,	nE2,	$06,	nD2
	dc.b		$06,	nC1,	$06,	nG1,	$06,	nE2,	$06,	nD2
	dc.b		$06,	nG2,	$06,	nFs2,	$06,	nD2,	$06,	nG1
	dc.b		$06,	nC1,	$06,	nG1,	$06,	nE2,	$06,	nD2
	dc.b		$06,	nC1,	$06,	nG1,	$06,	nE2,	$06,	nD2
	dc.b		$06,	nG2,	$06,	nFs2,	$06,	nD2,	$06,	nA2
	dc.b		$06,	nG2,	$06,	nFs2,	$06,	nD2,	$06,	nA1
	dc.b		$06,	nG1,	$06,	nFs1,	$06,	nD1,	$06,	nRst
	dc.b		$1E,	nG2,	$06,	nRst,	$06,	nFs2,	$06,	nG2
	dc.b		$06,	nRst,	$06,	nFs2,	$06,	nRst,	$06,	nD2
	dc.b		$06,	nRst,	$06,	nE1,	$06,	nE2,	$06,	nD2
	dc.b		$06,	nB1,	$06,	nD2,	$06,	nRst,	$0C,	nG2
	dc.b		$06,	nRst,	$06,	nFs2,	$06,	nG2,	$06,	nRst
	dc.b		$06,	nA2,	$06,	nRst,	$06,	nD2,	$06,	nRst
	dc.b		$06,	nE1,	$06,	nD2,	$06,	nB1,	$06,	nA1
	dc.b		$06,	nG1,	$06,	nB1,	$03,	nRst,	$03,	nD2
	dc.b		$03,	nRst,	$03,	nG2,	$03,	nRst,	$03,	nD2
	dc.b		$03,	nRst,	$09,	nB1,	$03,	nRst,	$09,	nD2
	dc.b		$03,	nRst,	$03,	nA1,	$03,	nRst,	$03,	nD2
	dc.b		$03,	nRst,	$03,	nFs2,	$03,	nRst,	$03,	nD2
	dc.b		$03,	nRst,	$09,	nA1,	$03,	nRst,	$09,	nD2
	dc.b		$03,	nRst,	$03,	nG2,	$03,	nRst,	$03,	nD2
	dc.b		$03,	nRst,	$03,	nC2,	$03,	nRst,	$03,	nG2
	dc.b		$03,	nRst,	$09,	nA2,	$03,	nRst,	$09,	nG2
	dc.b		$03,	nRst,	$03,	nA1,	$03,	nRst,	$03,	nD2
	dc.b		$03,	nRst,	$03,	nFs2,	$03,	nRst,	$03,	nG2
	dc.b		$03,	nRst,	$03,	nFs2,	$03,	nRst,	$03,	nE2
	dc.b		$03,	nRst,	$03,	nD2,	$03,	nRst,	$03,	nA1
	dc.b		$03,	nRst,	$63
	smpsJump	FinalBoss_Jump08

FinalBoss_Voices:
	dc.b		$3A,$71,$0C,$33,$01,$1C,$16,$1D,$1F,$04,$06,$04,$08,$00,$01,$03
	dc.b		$00,$16,$17,$16,$A6,$25,$2F,$25,$00;			Voice 00
	dc.b		$04,$71,$41,$31,$31,$12,$12,$12,$12,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$23,$00,$23,$00;			Voice 01
	dc.b		$3A,$71,$0C,$33,$01,$1C,$16,$1D,$1F,$04,$06,$04,$08,$00,$01,$03
	dc.b		$00,$16,$17,$16,$A6,$25,$2F,$25,$00;			Voice 02
	dc.b		$04,$71,$41,$31,$31,$12,$12,$12,$12,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$23,$00,$23,$00;			Voice 03
	dc.b		$04,$71,$41,$31,$31,$12,$12,$12,$12,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$23,$00,$23,$00;			Voice 04
	even
