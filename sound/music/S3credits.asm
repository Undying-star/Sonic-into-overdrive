; =============================================================================================
; Project Name:		Credits
; Created:		1st May 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Credits_Header:
	smpsHeaderVoice	Credits_Voices
	smpsHeaderChan	$06,	$02
	smpsHeaderTempo	$02,	$15

	smpsHeaderDAC	Credits_DAC
	smpsHeaderFM	Credits_FM1,	smpsPitch00,	$08
	smpsHeaderFM	Credits_FM2,	smpsPitch00,	$0A
	smpsHeaderFM	Credits_FM3,	smpsPitch00,	$17
	smpsHeaderFM	Credits_FM4,	smpsPitch00,	$18
	smpsHeaderFM	Credits_FM5,	smpsPitch00,	$1B
	smpsHeaderPSG	Credits_PSG1,	smpsPitch00,	$03,	$1B
	smpsHeaderPSG	Credits_PSG2,	smpsPitch00,	$03,	$1B

; DAC Data
Credits_DAC:
	dc.b		nRst,	$7F,	$41
	smpsNoteFill	$03
Credits_Jump01:
	dc.b		nRst,	$0C
	smpsJump	Credits_Jump01

; FM1 Data
Credits_FM1:
	smpsFMvoice	$00
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
	smpsModSet	$18,	$02,	$0A,	$02
	smpsFMvoice	$02
	smpsAlterVol	$08
	dc.b		nAb2,	$30,	nFs2,	$30,	nF2,	$30,	nFs2,	$30
	dc.b		nAb2,	$2D,	nFs2,	$33,	nF2,	$30,	nE2,	$2D
	dc.b		nA2,	$33,	nD2,	$30,	nG2,	$30
	smpsAlterVol	$F8
Credits_Jump02:
	dc.b		nRst,	$60
	smpsFMvoice	$00
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F
	smpsFMvoice	$00
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F
	smpsFMvoice	$00
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F
	smpsFMvoice	$00
	dc.b		nEb2,	$03,	nRst,	$12,	nEb2,	$03,	nEb2,	$03
	dc.b		nRst,	$15,	nCs2,	$03,	nRst,	$0C,	nCs2,	$03
	dc.b		nRst,	$0C,	nCs2,	$03,	nRst,	$0F,	nFs2,	$03
	dc.b		nRst,	$12,	nFs2,	$03,	nFs2,	$03,	nRst,	$15
	dc.b		nAb2,	$03,	nRst,	$0C,	nAb2,	$03,	nRst,	$0C
	dc.b		nAb2,	$03,	nRst,	$0F
	smpsModSet	$18,	$02,	$0A,	$02
	smpsFMvoice	$02
	smpsAlterVol	$08
	dc.b		nAb2,	$30,	nFs2,	$30,	nF2,	$30,	nFs2,	$30
	dc.b		nAb2,	$2D,	nFs2,	$33,	nF2,	$30,	nE2,	$2D
	dc.b		nA2,	$33,	nD2,	$30,	nG2,	$30
	smpsAlterVol	$F8
	smpsJump	Credits_Jump02

; FM2 Data
Credits_FM2:
	smpsFMvoice	$01
	smpsNoteFill	$03
Credits_Jump03:
	smpsPan		panLeft,	$00
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
	smpsPan		panCentre,	$00
	smpsAlterVol	$04
	dc.b		nBb2,	$03,	nEb4,	$03,	nAb3,	$03,	nBb2,	$03
	dc.b		nEb4,	$03,	nAb3,	$03,	nBb2,	$03,	nEb4,	$03
	smpsAlterVol	$FF
	dc.b		nBb2,	$03,	nEb4,	$03,	nAb3,	$03,	nBb2,	$03
	dc.b		nEb4,	$03,	nBb2,	$03,	nBb3,	$03,	nBb2,	$03
	smpsAlterVol	$FF
	dc.b		nEb4,	$03,	nAb3,	$03,	nBb2,	$03,	nEb4,	$03
	dc.b		nBb2,	$03,	nEb4,	$03,	nAb3,	$03,	nBb2,	$03
	smpsAlterVol	$FF
	dc.b		nEb4,	$03,	nBb2,	$03,	nAb3,	$03,	nBb2,	$03
	dc.b		nEb4,	$03,	nBb2,	$03,	nAb3,	$03,	nEb4,	$03
	smpsAlterVol	$FF
	smpsJump	Credits_Jump03

; FM3 Data
Credits_FM3:
	smpsFMvoice	$02
	smpsModSet	$48,	$01,	$06,	$02
	dc.b		nRst,	$18,	nEb4,	$30,	nCs4,	$30,	nEb4,	$18
	dc.b		nC4,	$12,	nCs4,	$12,	nEb4,	$0C,	nBb3,	$12
	dc.b		nEb4,	$12,	nBb4,	$0C,	nAb4,	$7F,	smpsNoAttack,	$11
	dc.b		nRst,	$18,	nEb4,	$30,	nCs4,	$30,	nEb4,	$18
	dc.b		nC4,	$12,	nCs4,	$12,	nEb4,	$0C,	nEb4,	$30
	dc.b		nF4,	$30,	nFs4,	$18,	nAb4,	$18,	nAb4,	$30
	dc.b		nC5,	$12,	nCs5,	$12,	nC5,	$1E,	nCs5,	$12
	dc.b		nC5,	$1E,	nCs5,	$12,	nC5,	$1E,	nBb4,	$12
	dc.b		nAb4,	$0C,	nC5,	$12,	nCs5,	$12,	nC5,	$1E
	dc.b		nCs5,	$12,	nC5,	$0C,	nEb5,	$30,	nAb5,	$60
	dc.b		nFs5,	$60
Credits_Jump04:
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
	dc.b		nFs5,	$60
	smpsJump	Credits_Jump04

; FM4 Data
Credits_FM4:
	smpsPan		panRight,	$00
	smpsFMvoice	$02
	dc.b		nG4,	$30,	nF4,	$30,	nFs4,	$30,	nAb4,	$30
	dc.b		nEb4,	$30,	nCs4,	$30,	nFs4,	$30,	nC4,	$30
	dc.b		nG4,	$30,	nF4,	$30,	nFs4,	$30,	nAb4,	$30
	dc.b		nG4,	$30,	nAb4,	$30,	nBb4,	$30,	nC5,	$30
	dc.b		nEb5,	$12,	nF5,	$12,	nEb5,	$1E,	nF5,	$12
	dc.b		nEb5,	$1E,	nF5,	$12,	nEb5,	$1E,	nCs5,	$1E
	dc.b		nEb5,	$12,	nF5,	$12,	nEb5,	$1E,	nF5,	$12
	dc.b		nEb5,	$0C,	nAb5,	$60,	nCs6,	$60,	nB5,	$30
Credits_Jump05:
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
	smpsJump	Credits_Jump05

; FM5 Data
Credits_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$02
	smpsAlterNote	$03
	smpsFMvoice	$02
	smpsModSet	$48,	$01,	$06,	$02
	dc.b		$18,	nEb5,	$30,	nCs5,	$30,	nEb5,	$18,	nC5
	dc.b		$12,	nCs5,	$12,	nEb5,	$0C,	nBb4,	$12,	nEb5
	dc.b		$12,	nBb5,	$0C,	nAb5,	$7F,	smpsNoAttack,	$11,	nRst
	dc.b		$18,	nEb5,	$30,	nCs5,	$30,	nEb5,	$18,	nC5
	dc.b		$12,	nCs5,	$12,	nEb5,	$0C,	nEb5,	$30,	nF5
	dc.b		$30,	nFs5,	$18,	nAb5,	$18,	nAb5,	$30,	nC6
	dc.b		$12,	nCs6,	$12,	nC6,	$1E,	nCs6,	$12,	nC6
	dc.b		$1E,	nCs6,	$12,	nC6,	$1E,	nBb5,	$12,	nAb5
	dc.b		$0C,	nC6,	$12,	nCs6,	$12,	nC6,	$1E,	nCs6
	dc.b		$12,	nC6,	$0C,	nEb6,	$30,	nAb6,	$60,	nFs6
	dc.b		$60
Credits_Jump06:
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
	dc.b		nFs6,	$60
	smpsJump	Credits_Jump06

; PSG1 Data
Credits_PSG1:
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
	dc.b		$47,	$47,	$47,	$47
	smpsJump	Credits_PSG1

; PSG2 Data
Credits_PSG2:
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
	dc.b		nAb2,	$03,	nAb1,	$03,	nRst,	$47,	$47,	$47
	dc.b		$47,	$47,	$47,	$47,	$47,	$47
	smpsStop

Credits_Voices:
;	Voice 00
	smpsVcAlgorithm		$02
	smpsVcFeedback		$06
	smpsVcDetune		$00,	$00,	$00,	$01
	smpsVcCoarseFreq	$00,	$00,	$00,	$02
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$00,	$00,	$00,	$00
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$00,	$00,	$00,	$00
	smpsVcReleaseRate	$00,	$00,	$00,	$00
	smpsVcTotalLevel	$00,	$00,	$00,	$00

;	Voice 01
	smpsVcAlgorithm		$02
	smpsVcFeedback		$06
	smpsVcDetune		$00,	$00,	$00,	$01
	smpsVcCoarseFreq	$00,	$00,	$00,	$02
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$00,	$00,	$00,	$00
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$00,	$00,	$00,	$00
	smpsVcReleaseRate	$00,	$00,	$00,	$00
	smpsVcTotalLevel	$00,	$00,	$00,	$00

;	Voice 02
	smpsVcAlgorithm		$02
	smpsVcFeedback		$06
	smpsVcDetune		$00,	$00,	$00,	$01
	smpsVcCoarseFreq	$00,	$00,	$00,	$02
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$00,	$00,	$00,	$00
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$00,	$00,	$00,	$00
	smpsVcReleaseRate	$00,	$00,	$00,	$00
	smpsVcTotalLevel	$00,	$00,	$00,	$00
	even
