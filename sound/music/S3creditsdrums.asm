; =============================================================================================
; Project Name:		Credits
; Created:		1st May 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Credits_Header:
	smpsHeaderVoice	Credits_Voices
	smpsHeaderChan	$05,	$03
	smpsHeaderTempo	$02,	$0F

	smpsHeaderDAC	Credits_DAC
	smpsHeaderFM	Credits_FM1,	smpsPitch00,	$18
	smpsHeaderFM	Credits_FM2,	smpsPitch00,	$1B
	smpsHeaderFM	Credits_FM3,	smpsPitch00,	$23
	smpsHeaderFM	Credits_FM4,	smpsPitch00,	$08
	smpsHeaderPSG	Credits_PSG1,	smpsPitch00,	$00,	$00
	smpsHeaderPSG	Credits_PSG2,	smpsPitch00,	$00,	$00
	smpsHeaderPSG	Credits_PSG3,	smpsPitch00,	$00,	$02

; DAC Data
Credits_DAC:
	dc.b		nRst,	$7F,	$11,	dKick,	$30,	dKick,	$1E,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$0C,	dKick
	dc.b		$0C,	dKick,	$0C,	dKick,	$0C,	dKick,	$12,	dKick
	dc.b		$09,	dKick,	$09
	smpsStop

; FM1 Data
Credits_FM1:
	smpsFMvoice	$00
	dc.b		nRst,	$30,	nG3,	$18,	nEb3,	$18,	nF3,	$18
	dc.b		nCs3,	$18,	nFs3,	$18,	nEb3,	$18,	nC3,	$12
	dc.b		nCs3,	$12,	nEb3,	$0C,	nEb3,	$12,	nEb4,	$12
	dc.b		nBb3,	$0C,	nCs4,	$30,	nFs3,	$30,	nC3,	$30
	dc.b		nG3,	$18,	nEb3,	$18,	nF3,	$18,	nCs3,	$18
	dc.b		nFs3,	$18,	nEb3,	$18,	nC3,	$12,	nCs3,	$12
	dc.b		nEb3,	$0C,	nG3,	$30,	nF4,	$30,	nBb3,	$18
	dc.b		nAb4,	$18,	nAb3,	$30
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nEb4,	$12,	nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	dc.b		nFs2,	$12
	smpsAlterVol	$05
	dc.b		nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	dc.b		nF2,	$12
	smpsAlterVol	$05
	dc.b		nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	dc.b		nFs2,	$12
	smpsAlterVol	$05
	dc.b		nCs4,	$12,	nC4,	$0C
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nEb4,	$12,	nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	dc.b		nFs2,	$12
	smpsAlterVol	$05
	dc.b		nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nEb5,	$30
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nAb4,	$2D
	smpsAlterVol	$FB
	dc.b		nA2,	$03
	smpsAlterVol	$05
	dc.b		nCs5,	$30
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nFs4,	$30
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nB4,	$30,	nRst,	$60,	nEb3,	$12,	nF3,	$12
	dc.b		nG3,	$0C,	nBb3,	$12,	nAb3,	$12,	nF3,	$0C
	dc.b		nFs3,	$12,	nBb3,	$12,	nCs4,	$0C,	nC4,	$12
	dc.b		nAb3,	$12,	nEb3,	$1E,	nG3,	$12,	nBb3,	$0C
	dc.b		nAb3,	$12,	nF3,	$12,	nCs3,	$0C,	nFs3,	$12
	dc.b		nCs5,	$12,	nFs4,	$0C,	nEb5,	$12,	nC5,	$12
	dc.b		nAb4,	$0C,	nG3,	$18,	nEb3,	$18,	nF3,	$18
	dc.b		nCs3,	$18,	nFs3,	$18,	nEb3,	$18,	nC3,	$12
	dc.b		nCs3,	$12,	nEb3,	$0C,	nEb3,	$12,	nEb4,	$12
	dc.b		nBb3,	$0C,	nCs4,	$30,	nFs3,	$30,	nC3,	$30
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nEb4,	$12,	nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	dc.b		nFs2,	$12
	smpsAlterVol	$05
	dc.b		nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	dc.b		nF2,	$12
	smpsAlterVol	$05
	dc.b		nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	dc.b		nFs2,	$12
	smpsAlterVol	$05
	dc.b		nCs4,	$12,	nC4,	$0C
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nEb4,	$12,	nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	dc.b		nFs2,	$12
	smpsAlterVol	$05
	dc.b		nF4,	$12,	nEb4,	$0C
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nEb5,	$30
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nAb4,	$2D
	smpsAlterVol	$FB
	dc.b		nA2,	$03
	smpsAlterVol	$05
	dc.b		nCs5,	$30
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nFs4,	$30
	smpsAlterVol	$FB
	smpsAlterVol	$05
	dc.b		nB4,	$30
	smpsStop

; FM2 Data
Credits_FM2:
	smpsFMvoice	$00
	dc.b		nRst,	$30,	nEb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nE3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nE4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nE4,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nE4,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nE4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nE4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nA3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nA3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nA3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nA3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nA3,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nA3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nA3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nD3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nD3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nD3,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nD3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nD3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nD3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nB4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nG3,	$02
	dc.b		nRst,	$01,	nB4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nB4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nG3,	$02
	dc.b		nRst,	$01,	nB4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nB4,	$02
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nC5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nG4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nG4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF3,	$02,	nRst,	$01,	nBb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nC5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nF4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nF4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nE3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nE4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nE4,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nE4,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nE4,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nE4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nA3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nA3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nA3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nA3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nA3,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nA3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nA3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nD3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nD3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nD3,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nD3,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nD3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nD3,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nB4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nG3,	$02
	dc.b		nRst,	$01,	nB4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nB4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nG3,	$02
	dc.b		nRst,	$01,	nB4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nB4,	$02
	dc.b		nRst,	$01,	nG3,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nBb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nEb5,	$02
	smpsStop

; FM3 Data
Credits_FM3:
	smpsFMvoice	$00
	dc.b		nRst,	$30,	nEb3,	$02,	nRst,	$04,	nBb3,	$02
	dc.b		nRst,	$04,	nEb3,	$02,	nRst,	$01,	nEb3,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb3,	$02
	dc.b		nRst,	$13,	nCs3,	$02,	nRst,	$04,	nAb3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$04,	nAb3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$19,	nFs4,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nCs5,	$02,	nRst,	$01,	nFs4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$13,	nAb3,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$04,	nAb3,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$04,	nEb4,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nEb3,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$10,	nEb3,	$02
	dc.b		nRst,	$04,	nAb3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$04,	nCs4,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$04,	nCs3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$01,	nCs4,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$13,	nAb3,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$07,	nAb4,	$02
	dc.b		nRst,	$01,	nAb5,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$10,	nEb3,	$02
	dc.b		nRst,	$04,	nBb3,	$02,	nRst,	$04,	nEb3,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$13,	nCs3,	$02
	dc.b		nRst,	$04,	nAb3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$04,	nAb3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$19,	nFs4,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nCs5,	$02
	dc.b		nRst,	$01,	nFs4,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$13,	nAb3,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$04,	nAb3,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nAb4,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nEb3,	$02
	dc.b		nRst,	$01,	nBb3,	$02,	nRst,	$01,	nEb3,	$02
	dc.b		nRst,	$04,	nEb4,	$02,	nRst,	$01,	nEb3,	$02
	dc.b		nRst,	$01,	nEb4,	$02,	nRst,	$01,	nEb3,	$02
	dc.b		nRst,	$01,	nEb3,	$02,	nRst,	$01,	nBb3,	$02
	dc.b		nRst,	$10,	nEb3,	$02,	nRst,	$04,	nAb3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$04,	nCs4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$04,	nCs3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02
	dc.b		nRst,	$01,	nCs3,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nFs3,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$01,	nCs4,	$02
	dc.b		nRst,	$01,	nFs3,	$02,	nRst,	$13,	nAb3,	$02
	dc.b		nRst,	$01,	nAb3,	$02,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$07,	nAb4,	$02,	nRst,	$01,	nAb5,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nEb5,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02
	dc.b		nRst,	$50,	$50,	$50,	$50,	$50,	$50,	$50
	dc.b		$50,	nEb3,	$02,	nRst,	$04,	nBb3,	$02,	nRst
	dc.b		$04,	nEb3,	$02,	nRst,	$01,	nEb3,	$02,	nRst
	dc.b		$01,	nBb3,	$02,	nRst,	$01,	nEb3,	$02,	nRst
	dc.b		$13,	nCs3,	$02,	nRst,	$04,	nAb3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$04,	nAb3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$19,	nFs4,	$02,	nRst,	$01,	nFs4,	$02,	nRst
	dc.b		$01,	nCs5,	$02,	nRst,	$01,	nFs4,	$02,	nRst
	dc.b		$01,	nFs3,	$02,	nRst,	$01,	nFs3,	$02,	nRst
	dc.b		$01,	nCs4,	$02,	nRst,	$01,	nFs3,	$02,	nRst
	dc.b		$13,	nAb3,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nEb4,	$02,	nRst,	$04,	nAb3,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nEb4,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02,	nRst
	dc.b		$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nEb4,	$02,	nRst
	dc.b		$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nEb3,	$02,	nRst,	$01,	nBb3,	$02,	nRst
	dc.b		$01,	nEb3,	$02,	nRst,	$04,	nEb4,	$02,	nRst
	dc.b		$01,	nEb3,	$02,	nRst,	$01,	nEb4,	$02,	nRst
	dc.b		$01,	nEb3,	$02,	nRst,	$01,	nEb3,	$02,	nRst
	dc.b		$01,	nBb3,	$02,	nRst,	$10,	nEb3,	$02,	nRst
	dc.b		$04,	nAb3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$04,	nCs4,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nCs4,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$04,	nCs3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nFs3,	$02,	nRst,	$01,	nFs3,	$02,	nRst
	dc.b		$01,	nCs4,	$02,	nRst,	$01,	nFs3,	$02,	nRst
	dc.b		$01,	nFs3,	$02,	nRst,	$01,	nFs3,	$02,	nRst
	dc.b		$01,	nCs4,	$02,	nRst,	$01,	nFs3,	$02,	nRst
	dc.b		$13,	nAb3,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nEb5,	$02,	nRst,	$07,	nAb4,	$02,	nRst
	dc.b		$01,	nAb5,	$02,	nRst,	$01,	nAb4,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nEb5,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nAb4,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$10,	nEb3,	$02,	nRst
	dc.b		$04,	nBb3,	$02,	nRst,	$04,	nEb3,	$02,	nRst
	dc.b		$01,	nEb3,	$02,	nRst,	$01,	nBb3,	$02,	nRst
	dc.b		$01,	nEb3,	$02,	nRst,	$13,	nCs3,	$02,	nRst
	dc.b		$04,	nAb3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$04,	nAb3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$19,	nFs4,	$02,	nRst
	dc.b		$01,	nFs4,	$02,	nRst,	$01,	nCs5,	$02,	nRst
	dc.b		$01,	nFs4,	$02,	nRst,	$01,	nFs3,	$02,	nRst
	dc.b		$01,	nFs3,	$02,	nRst,	$01,	nCs4,	$02,	nRst
	dc.b		$01,	nFs3,	$02,	nRst,	$13,	nAb3,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nEb4,	$02,	nRst
	dc.b		$04,	nAb3,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nEb4,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nAb4,	$02,	nRst
	dc.b		$01,	nAb4,	$02,	nRst,	$01,	nAb4,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nEb4,	$02,	nRst,	$01,	nAb4,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nEb3,	$02,	nRst
	dc.b		$01,	nBb3,	$02,	nRst,	$01,	nEb3,	$02,	nRst
	dc.b		$04,	nEb4,	$02,	nRst,	$01,	nEb3,	$02,	nRst
	dc.b		$01,	nEb4,	$02,	nRst,	$01,	nEb3,	$02,	nRst
	dc.b		$01,	nEb3,	$02,	nRst,	$01,	nBb3,	$02,	nRst
	dc.b		$10,	nEb3,	$02,	nRst,	$04,	nAb3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$04,	nCs4,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nCs4,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$04,	nCs3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nCs3,	$02,	nRst
	dc.b		$01,	nCs3,	$02,	nRst,	$01,	nFs3,	$02,	nRst
	dc.b		$01,	nFs3,	$02,	nRst,	$01,	nCs4,	$02,	nRst
	dc.b		$01,	nFs3,	$02,	nRst,	$01,	nFs3,	$02,	nRst
	dc.b		$01,	nFs3,	$02,	nRst,	$01,	nCs4,	$02,	nRst
	dc.b		$01,	nFs3,	$02,	nRst,	$13,	nAb3,	$02,	nRst
	dc.b		$01,	nAb3,	$02,	nRst,	$01,	nEb5,	$02,	nRst
	dc.b		$07,	nAb4,	$02,	nRst,	$01,	nAb5,	$02,	nRst
	dc.b		$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nEb5,	$02,	nRst,	$01,	nAb3,	$02,	nRst
	dc.b		$01,	nAb4,	$02,	nRst,	$01,	nAb3,	$02
	smpsStop

; FM4 Data
Credits_FM4:
	smpsFMvoice	$00
	dc.b		nRst,	$30,	nEb1,	$06,	nRst,	$0F,	nEb1,	$03
	dc.b		nEb1,	$06,	nRst,	$12,	nCs1,	$06,	nRst,	$09
	dc.b		nCs1,	$06,	nRst,	$09,	nCs1,	$06,	nRst,	$0C
	dc.b		nFs1,	$06,	nRst,	$0F,	nFs1,	$03,	nFs1,	$06
	dc.b		nRst,	$12,	nAb1,	$06,	nRst,	$09,	nAb1,	$06
	dc.b		nRst,	$09,	nAb1,	$06,	nRst,	$0C,	nEb1,	$06
	dc.b		nRst,	$0F,	nEb1,	$03,	nEb1,	$06,	nRst,	$12
	dc.b		nCs1,	$06,	nRst,	$09,	nCs1,	$06,	nRst,	$09
	dc.b		nCs1,	$06,	nRst,	$0C,	nFs1,	$06,	nRst,	$0F
	dc.b		nFs1,	$03,	nFs1,	$06,	nRst,	$12,	nAb1,	$06
	dc.b		nRst,	$09,	nAb1,	$06,	nRst,	$09,	nAb1,	$06
	dc.b		nRst,	$0C,	nEb1,	$06,	nRst,	$0F,	nEb1,	$03
	dc.b		nEb1,	$06,	nRst,	$12,	nCs1,	$06,	nRst,	$09
	dc.b		nCs1,	$06,	nRst,	$09,	nCs1,	$06,	nRst,	$0C
	dc.b		nFs1,	$06,	nRst,	$0F,	nFs1,	$03,	nFs1,	$06
	dc.b		nRst,	$12,	nAb1,	$06,	nRst,	$09,	nAb1,	$06
	dc.b		nRst,	$09,	nAb1,	$06,	nRst,	$0C,	nEb1,	$06
	dc.b		nRst,	$0F,	nEb1,	$03,	nEb1,	$06,	nRst,	$12
	dc.b		nCs1,	$06,	nRst,	$09,	nCs1,	$06,	nRst,	$09
	dc.b		nCs1,	$06,	nRst,	$0C,	nFs1,	$06,	nRst,	$0F
	dc.b		nFs1,	$03,	nFs1,	$06,	nRst,	$12,	nAb1,	$06
	dc.b		nRst,	$09,	nAb1,	$06,	nRst,	$09,	nAb1,	$06
	dc.b		nRst,	$6A,	$6A,	$6A,	$6A,	$6A,	$6A,	nEb1
	dc.b		$06,	nRst,	$0F,	nEb1,	$03,	nEb1,	$06,	nRst
	dc.b		$12,	nCs1,	$06,	nRst,	$09,	nCs1,	$06,	nRst
	dc.b		$09,	nCs1,	$06,	nRst,	$0C,	nFs1,	$06,	nRst
	dc.b		$0F,	nFs1,	$03,	nFs1,	$06,	nRst,	$12,	nAb1
	dc.b		$06,	nRst,	$09,	nAb1,	$06,	nRst,	$09,	nAb1
	dc.b		$06,	nRst,	$0C,	nEb1,	$06,	nRst,	$0F,	nEb1
	dc.b		$03,	nEb1,	$06,	nRst,	$12,	nCs1,	$06,	nRst
	dc.b		$09,	nCs1,	$06,	nRst,	$09,	nCs1,	$06,	nRst
	dc.b		$0C,	nFs1,	$06,	nRst,	$0F,	nFs1,	$03,	nFs1
	dc.b		$06,	nRst,	$12,	nAb1,	$06,	nRst,	$09,	nAb1
	dc.b		$06,	nRst,	$09,	nAb1,	$06,	nRst,	$0C,	nEb1
	dc.b		$06,	nRst,	$0F,	nEb1,	$03,	nEb1,	$06,	nRst
	dc.b		$12,	nCs1,	$06,	nRst,	$09,	nCs1,	$06,	nRst
	dc.b		$09,	nCs1,	$06,	nRst,	$0C,	nFs1,	$06,	nRst
	dc.b		$0F,	nFs1,	$03,	nFs1,	$06,	nRst,	$12,	nAb1
	dc.b		$06,	nRst,	$09,	nAb1,	$06,	nRst,	$09,	nAb1
	dc.b		$06,	nRst,	$0C,	nEb1,	$06,	nRst,	$0F,	nEb1
	dc.b		$03,	nEb1,	$06,	nRst,	$12,	nCs1,	$06,	nRst
	dc.b		$09,	nCs1,	$06,	nRst,	$09,	nCs1,	$06,	nRst
	dc.b		$0C,	nFs1,	$06,	nRst,	$0F,	nFs1,	$03,	nFs1
	dc.b		$06,	nRst,	$12,	nAb1,	$06,	nRst,	$09,	nAb1
	dc.b		$06,	nRst,	$09,	nAb1,	$06
	smpsStop

; PSG3 Data
Credits_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$7F,	$77,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$09,	nA5,	$03,	nA5,	$09,	nA5
	dc.b		$03,	nA5,	$03
	smpsStop

; PSG1 Data
Credits_PSG1:

; PSG2 Data
Credits_PSG2:
	smpsStop

Credits_Voices:	even
