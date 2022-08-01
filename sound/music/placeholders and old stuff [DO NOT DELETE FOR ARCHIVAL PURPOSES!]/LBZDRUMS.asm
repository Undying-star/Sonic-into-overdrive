; =============================================================================================
; Project Name:		SBZ
; Created:		27th April 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

SBZ_Header:
	smpsHeaderVoice	SBZ_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$06

	smpsHeaderDAC	SBZ_DAC
	smpsHeaderFM	SBZ_FM1,	smpsPitch00,	$09
	smpsHeaderFM	SBZ_FM2,	smpsPitch00,	$0B
	smpsHeaderFM	SBZ_FM3,	smpsPitch00,	$18
	smpsHeaderFM	SBZ_FM4,	smpsPitch00,	$0A
	smpsHeaderFM	SBZ_FM5,	smpsPitch00,	$0C
	smpsHeaderPSG	SBZ_PSG1,	smpsPitch00,	$00,	$00
	smpsHeaderPSG	SBZ_PSG2,	smpsPitch00,	$00,	$00
	smpsHeaderPSG	SBZ_PSG3,	smpsPitch00,	$00,	$02

; DAC Data
SBZ_DAC:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$30,	dLowTimpani,	$12,	dLowTimpani,	$0F,	dVLowTimpani,	$03
	dc.b		dVLowTimpani,	$0C,	dLowTimpani,	$12,	dLowTimpani,	$0F,	dVLowTimpani,	$03
	dc.b		dVLowTimpani,	$0C,	dLowTimpani,	$12,	dMidTimpani,	$0F,	dVLowTimpani,	$03
	dc.b		dVLowTimpani,	$0C,	dLowTimpani,	$09,	dKick,	$09,	dLowTimpani,	$0F
	dc.b		dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$06,	dLowTimpani,	$09
	dc.b		dKick,	$09,	dLowTimpani,	$0F,	dVLowTimpani,	$03,	dVLowTimpani,	$06
	dc.b		dKick,	$06,	dLowTimpani,	$09,	dKick,	$09,	dLowTimpani,	$0F
	dc.b		dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$36,	dKick,	$18
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$1E
	dc.b		dKick,	$06,	dKick,	$03,	dKick,	$09,	dKick,	$18
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$1E
	dc.b		dKick,	$09,	dKick,	$09,	dKick,	$18,	dKick,	$06
	dc.b		dKick,	$09,	dKick,	$09,	dKick,	$1E,	dKick,	$09
	dc.b		dKick,	$09,	dKick,	$18,	dKick,	$06,	dKick,	$09
	dc.b		dKick,	$39,	dLowTimpani,	$09,	dLowTimpani,	$09,	dLowTimpani,	$0C
	dc.b		dKick,	$03,	dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$06
	dc.b		dLowTimpani,	$09,	dLowTimpani,	$09,	dLowTimpani,	$0C,	dKick,	$03
	dc.b		dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$06,	dLowTimpani,	$09
	dc.b		dLowTimpani,	$09,	dLowTimpani,	$0C,	dKick,	$03,	dVLowTimpani,	$03
	dc.b		dVLowTimpani,	$06,	dKick,	$06,	dLowTimpani,	$09,	dLowTimpani,	$09
	dc.b		dLowTimpani,	$0C,	dKick,	$03,	dVLowTimpani,	$03,	dVLowTimpani,	$06
	dc.b		dKick,	$06,	dLowTimpani,	$09,	dLowTimpani,	$09,	dLowTimpani,	$0C
	dc.b		dKick,	$03,	dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$06
	dc.b		dLowTimpani,	$09,	dLowTimpani,	$09,	dLowTimpani,	$0C,	dKick,	$03
	dc.b		dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$06,	dLowTimpani,	$09
	dc.b		dLowTimpani,	$09,	dLowTimpani,	$0C,	dKick,	$03,	dVLowTimpani,	$03
	dc.b		dVLowTimpani,	$06,	dKick,	$06,	dLowTimpani,	$09,	dLowTimpani,	$09
	dc.b		dLowTimpani,	$0C,	dKick,	$03,	dVLowTimpani,	$03,	dVLowTimpani,	$06
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$18
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$18
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$18
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$18
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$18
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$18
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$18
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$18
	dc.b		dKick,	$06,	dVLowTimpani,	$30,	dKick,	$09,	dKick,	$09
	dc.b		dKick,	$0F,	dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$06
	dc.b		dKick,	$09,	dKick,	$09,	dKick,	$0F,	dVLowTimpani,	$03
	dc.b		dVLowTimpani,	$06,	dKick,	$06,	dKick,	$09,	dKick,	$09
	dc.b		dKick,	$0F,	dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$06
	dc.b		dKick,	$30,	dKick,	$06,	dKick,	$03,	dKick,	$03
	dc.b		dKick,	$06,	dKick,	$1E,	dKick,	$18,	dKick,	$7F
	dc.b		nRst,	$7F,	nRst,	$3A,	dKick,	$12,	dKick,	$0F
	dc.b		dVLowTimpani,	$03,	dVLowTimpani,	$0C,	dKick,	$12,	dKick,	$0F
	dc.b		dVLowTimpani,	$03,	dVLowTimpani,	$0C,	dKick,	$12,	dKick,	$0F
	dc.b		dVLowTimpani,	$03,	dVLowTimpani,	$0C,	dKick,	$12,	dKick,	$0F
	dc.b		dVLowTimpani,	$03,	dVLowTimpani,	$0C,	dKick,	$09,	dKick,	$09
	dc.b		dKick,	$0C,	dKick,	$03,	dVLowTimpani,	$03,	dVLowTimpani,	$06
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$0C
	dc.b		dKick,	$03,	dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$06
	dc.b		dKick,	$09,	dKick,	$09,	dKick,	$0C,	dKick,	$03
	dc.b		dVLowTimpani,	$03,	dVLowTimpani,	$06,	dKick,	$06,	dKick,	$09
	dc.b		dKick,	$09,	dKick,	$0C,	dKick,	$03,	dVLowTimpani,	$03
	dc.b		dVLowTimpani,	$06,	dKick,	$7F,	nRst,	$7F,	nRst,	$28
	dc.b		dKick,	$09,	dKick,	$09,	dKick,	$0C,	dKick,	$0C
	dc.b		dKick,	$06,	dKick,	$09,	dKick,	$09,	dKick,	$0C
	dc.b		dKick,	$0C,	dKick,	$06,	dKick,	$30
	smpsPan		panCentre,	$00
	smpsStop

; FM1 Data
SBZ_FM1:
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	dc.b		nG2,	$09,	nD3,	$09,	nA3,	$0F,	nF3,	$03
	dc.b		nG3,	$06,	nD3,	$06,	nG2,	$09,	nD3,	$09
	dc.b		nA3,	$0F,	nF3,	$03,	nG3,	$06,	nD3,	$06
	dc.b		nG2,	$09,	nD3,	$09,	nA3,	$0F,	nF3,	$03
	dc.b		nG3,	$06,	nD3,	$06,	nG2,	$09,	nD3,	$09
	dc.b		nA3,	$0F,	nF3,	$03,	nG3,	$06,	nD3,	$06
	dc.b		nG2,	$09,	nD3,	$09,	nA3,	$0F,	nF3,	$03
	dc.b		nG3,	$06,	nD3,	$06,	nG2,	$09,	nD3,	$09
	dc.b		nA3,	$0F,	nF3,	$03,	nG3,	$06,	nD3,	$06
	dc.b		nG2,	$09,	nD3,	$09,	nA3,	$0F,	nF3,	$03
	dc.b		nG3,	$06,	nD3,	$06,	nRst,	$21,	nD3,	$03
	dc.b		nG3,	$06,	nD3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$09,	nA2,	$03,	nRst,	$15,	nA2,	$03
	dc.b		nF2,	$06,	nF2,	$06,	nFs2,	$09,	nG2,	$03
	dc.b		nRst,	$0C,	nG2,	$06,	nG3,	$03,	nBb2,	$03
	dc.b		nC3,	$06,	nC3,	$06,	nBb2,	$09,	nA2,	$03
	dc.b		nRst,	$15,	nA2,	$03,	nF2,	$06,	nF2,	$06
	dc.b		nFs2,	$09,	nG2,	$03,	nRst,	$0C,	nG2,	$06
	dc.b		nG3,	$03,	nBb2,	$03,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$09,	nA2,	$03,	nRst,	$15,	nA2,	$03
	dc.b		nF2,	$06,	nF2,	$06,	nFs2,	$09,	nG2,	$03
	dc.b		nRst,	$0C,	nG2,	$06,	nG3,	$03,	nBb2,	$03
	dc.b		nC3,	$06,	nC3,	$06,	nBb2,	$09,	nA2,	$03
	dc.b		nRst,	$15,	nA2,	$03,	nF2,	$06,	nF2,	$06
	dc.b		nFs2,	$09,	nG2,	$03,	nRst,	$0C,	nG2,	$06
	dc.b		nG3,	$03,	nBb2,	$03,	nG2,	$09,	nD3,	$09
	dc.b		nA3,	$0F,	nF3,	$03,	nG3,	$06,	nD3,	$06
	dc.b		nG2,	$09,	nD3,	$09,	nA3,	$0F,	nF3,	$03
	dc.b		nG3,	$06,	nD3,	$06,	nG2,	$09,	nD3,	$09
	dc.b		nA3,	$0F,	nF3,	$03,	nG3,	$06,	nD3,	$06
	dc.b		nG2,	$09,	nD3,	$09,	nA3,	$0F,	nF3,	$03
	dc.b		nG3,	$06,	nD3,	$06,	nG2,	$09,	nD3,	$09
	dc.b		nA3,	$0F,	nF3,	$03,	nG3,	$06,	nD3,	$06
	dc.b		nG2,	$09,	nD3,	$09,	nA3,	$0F,	nF3,	$03
	dc.b		nG3,	$06,	nD3,	$06,	nG2,	$09,	nD3,	$09
	dc.b		nA3,	$0F,	nF3,	$03,	nG3,	$06,	nD3,	$06
	dc.b		nG2,	$09,	nD3,	$09,	nA3,	$0F,	nF3,	$03
	dc.b		nG3,	$06,	nD3,	$06,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$09,	nA2,	$03,	nRst,	$15,	nA2,	$03
	dc.b		nF2,	$06,	nF2,	$06,	nFs2,	$09,	nG2,	$03
	dc.b		nRst,	$0C,	nG2,	$06,	nG3,	$03,	nBb2,	$03
	dc.b		nC3,	$06,	nC3,	$06,	nBb2,	$09,	nA2,	$03
	dc.b		nRst,	$15,	nA2,	$03,	nF2,	$06,	nF2,	$06
	dc.b		nFs2,	$09,	nG2,	$03,	nRst,	$0C,	nG2,	$06
	dc.b		nG3,	$03,	nBb2,	$03,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$09,	nA2,	$03,	nRst,	$15,	nA2,	$03
	dc.b		nF2,	$06,	nF2,	$06,	nFs2,	$09,	nG2,	$03
	dc.b		nRst,	$0C,	nG2,	$06,	nG3,	$03,	nBb2,	$03
	dc.b		nC3,	$06,	nC3,	$06,	nBb2,	$09,	nA2,	$03
	dc.b		nRst,	$15,	nA2,	$03,	nF2,	$06,	nF2,	$06
	dc.b		nFs2,	$09,	nG2,	$03,	nRst,	$0C,	nG2,	$06
	dc.b		nG3,	$03,	nBb2,	$03,	nG2,	$06,	nC3,	$06
	dc.b		nRst,	$7F,	$65,	nC3,	$06,	nC3,	$06,	nBb2
	dc.b		$09,	nA2,	$03,	nRst,	$15,	nA2,	$03,	nF2
	dc.b		$06,	nF2,	$06,	nFs2,	$09,	nG2,	$03,	nRst
	dc.b		$0C,	nG2,	$06,	nG3,	$03,	nBb2,	$03,	nC3
	dc.b		$06,	nC3,	$06,	nBb2,	$09,	nA2,	$03,	nRst
	dc.b		$15,	nA2,	$03,	nF2,	$06,	nF2,	$06,	nFs2
	dc.b		$09,	nG2,	$03,	nRst,	$0C,	nG2,	$06,	nG3
	dc.b		$03,	nBb2,	$03,	nC3,	$06,	nC3,	$06,	nBb2
	dc.b		$09,	nA2,	$03,	nRst,	$15,	nA2,	$03,	nF2
	dc.b		$06,	nF2,	$06,	nFs2,	$09,	nG2,	$03,	nRst
	dc.b		$0C,	nG2,	$06,	nG3,	$03,	nBb2,	$03,	nC3
	dc.b		$06,	nC3,	$06,	nBb2,	$09,	nA2,	$03,	nRst
	dc.b		$15,	nA2,	$03,	nF2,	$06,	nF2,	$06,	nFs2
	dc.b		$09,	nG2,	$03,	nRst,	$0C,	nG2,	$06,	nG3
	dc.b		$03,	nBb2,	$03,	nRst,	$7F,	$7F,	$7F,	$03
	dc.b		nC3,	$06,	nC3,	$06,	nBb2,	$09,	nA2,	$03
	dc.b		nRst,	$15,	nA2,	$03,	nF2,	$06,	nF2,	$06
	dc.b		nFs2,	$09,	nG2,	$03,	nRst,	$0C,	nG2,	$06
	dc.b		nG3,	$03,	nBb2,	$03,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$09,	nA2,	$03,	nRst,	$15,	nA2,	$03
	dc.b		nF2,	$06,	nF2,	$06,	nFs2,	$09,	nG2,	$03
	dc.b		nRst,	$0C,	nG2,	$06,	nG3,	$03,	nBb2,	$03
	dc.b		nC3,	$06,	nC3,	$06,	nBb2,	$09,	nA2,	$03
	dc.b		nRst,	$15,	nA2,	$03,	nF2,	$06,	nF2,	$06
	dc.b		nFs2,	$09,	nG2,	$03,	nRst,	$0C,	nG2,	$06
	dc.b		nG3,	$03,	nBb2,	$03,	nC3,	$06,	nC3,	$06
	dc.b		nBb2,	$09,	nA2,	$03,	nRst,	$15,	nA2,	$03
	dc.b		nF2,	$06,	nF2,	$06,	nFs2,	$09,	nG2,	$03
	dc.b		nRst,	$0C,	nG2,	$06,	nG3,	$03,	nBb2,	$03
	dc.b		nG2,	$06,	nC3,	$06,	nRst,	$24
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	smpsStop

; FM2 Data
SBZ_FM2:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nRst,	$7F,	$11,	nF6,	$03,	nRst,	$03,	nG6
	dc.b		$03,	nRst,	$03,	nD6,	$03,	nRst,	$03,	nF6
	dc.b		$01,	nRst,	$02,	nF6,	$03,	nRst,	$03,	nF6
	dc.b		$03,	nG6,	$03,	nRst,	$03,	nD6,	$03,	nRst
	dc.b		$03,	nF6,	$03,	nRst,	$33,	nF6,	$03,	nRst
	dc.b		$03,	nG6,	$03,	nRst,	$03,	nD6,	$03,	nRst
	dc.b		$03,	nF6,	$01,	nRst,	$02,	nF6,	$03,	nRst
	dc.b		$03,	nF6,	$03,	nG6,	$03,	nRst,	$03,	nD6
	dc.b		$03,	nRst,	$03,	nF6,	$03,	nRst,	$33,	nF6
	dc.b		$03,	nRst,	$03,	nG6,	$03,	nRst,	$03,	nD6
	dc.b		$03,	nRst,	$03,	nF6,	$01,	nRst,	$02,	nF6
	dc.b		$03,	nRst,	$03,	nF6,	$03,	nG6,	$03,	nRst
	dc.b		$03,	nRst,	$03,	nRst,	$03,	nRst,	$03,	nRst
	dc.b		$7F,	$7F,	$7F,	$36,	nF6,	$03,	nRst,	$03
	dc.b		nG6,	$03,	nRst,	$03,	nD6,	$03,	nRst,	$03
	dc.b		nF6,	$01,	nRst,	$02,	nF6,	$03,	nRst,	$03
	dc.b		nF6,	$03,	nG6,	$03,	nRst,	$03,	nD6,	$03
	dc.b		nRst,	$03,	nF6,	$03,	nRst,	$33,	nF6,	$03
	dc.b		nRst,	$03,	nG6,	$03,	nRst,	$03,	nD6,	$03
	dc.b		nRst,	$03,	nF6,	$01,	nRst,	$02,	nF6,	$03
	dc.b		nRst,	$03,	nF6,	$03,	nG6,	$03,	nRst,	$03
	dc.b		nD6,	$03,	nRst,	$03,	nF6,	$03,	nRst,	$33
	dc.b		nF6,	$03,	nRst,	$03,	nG6,	$03,	nRst,	$03
	dc.b		nD6,	$03,	nRst,	$03,	nF6,	$01,	nRst,	$02
	dc.b		nF6,	$03,	nRst,	$03,	nF6,	$03,	nG6,	$03
	dc.b		nRst,	$03,	nD6,	$03,	nRst,	$03,	nF6,	$03
	dc.b		nRst,	$33,	nF6,	$03,	nRst,	$03,	nG6,	$03
	dc.b		nRst,	$03,	nD6,	$03,	nRst,	$03,	nF6,	$01
	dc.b		nRst,	$02,	nF6,	$03,	nRst,	$03,	nF6,	$03
	dc.b		nG6,	$03,	nRst,	$03,	nD6,	$03,	nRst,	$03
	dc.b		nF6,	$03,	nRst,	$7F,	$7F,	$7F,	$66,	nF6
	dc.b		$03,	nRst,	$03,	nG6,	$03,	nRst,	$03,	nD6
	dc.b		$03,	nRst,	$03,	nF6,	$01,	nRst,	$02,	nF6
	dc.b		$03,	nRst,	$03,	nF6,	$03,	nG6,	$03,	nRst
	dc.b		$03,	nD6,	$03,	nRst,	$03,	nF6,	$03,	nRst
	dc.b		$33,	nF6,	$03,	nRst,	$03,	nG6,	$03,	nRst
	dc.b		$03,	nD6,	$03,	nRst,	$03,	nF6,	$01,	nRst
	dc.b		$02,	nF6,	$03,	nRst,	$03,	nF6,	$03,	nG6
	dc.b		$03,	nRst,	$51,	$51,	$51,	$51,	$51,	$51
	dc.b		$51,	$51,	$51,	$51,	$51,	$51,	$51,	$51
	dc.b		$51
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	smpsStop

; FM3 Data
SBZ_FM3:
	smpsPan		panCentre,	$00
	smpsFMvoice	$04
	dc.b		nRst,	$7F,	$7F,	$7F,	$06,	nEb6,	$05,	nRst
	dc.b		$04,	nEb6,	$09,	nEb6,	$06,	nRst,	$21,	nEb6
	dc.b		$09,	nEb6,	$03,	nRst,	$0C,	nEb6,	$0C,	nRst
	dc.b		$03,	nEb6,	$05,	nRst,	$04,	nEb6,	$09,	nEb6
	dc.b		$06,	nRst,	$21,	nEb6,	$09,	nEb6,	$03,	nRst
	dc.b		$0C
	smpsAlterVol	$05
	smpsAlterVol	$FB
	dc.b		nEb6,	$03
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nE6,	$01
	smpsAlterNote	$17
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	nF6,	$06,	nRst,	$03,	nEb6,	$05,	nRst
	dc.b		$04,	nEb6,	$09,	nEb6,	$06,	nRst,	$21,	nEb6
	dc.b		$09,	nEb6,	$03,	nRst,	$0C,	nEb6,	$0C,	nRst
	dc.b		$03,	nEb6,	$05,	nRst,	$04,	nEb6,	$09,	nEb6
	dc.b		$06,	nRst,	$21,	nEb6,	$09,	nEb6,	$03,	nRst
	dc.b		$0C
	smpsAlterVol	$05
	dc.b		nBb7,	$03
	smpsAlterNote	$80
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$06
	smpsAlterNote	$00
	dc.b		nRst,	$7F,	$7F,	$7F,	$06
	smpsAlterVol	$FB
	dc.b		nEb6,	$05,	nRst,	$04,	nEb6,	$09,	nEb6,	$06
	dc.b		nRst,	$21,	nEb6,	$09,	nEb6,	$03,	nRst,	$0C
	dc.b		nEb6,	$0C,	nRst,	$03,	nEb6,	$05,	nRst,	$04
	dc.b		nEb6,	$09,	nEb6,	$06,	nRst,	$21,	nEb6,	$09
	dc.b		nEb6,	$03,	nRst,	$0C
	smpsAlterVol	$05
	smpsAlterVol	$FB
	dc.b		nEb6,	$03
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nE6,	$01
	smpsAlterNote	$17
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	nF6,	$06,	nRst,	$03,	nEb6,	$05,	nRst
	dc.b		$04,	nEb6,	$09,	nEb6,	$06,	nRst,	$21,	nEb6
	dc.b		$09,	nEb6,	$03,	nRst,	$0C,	nEb6,	$0C,	nRst
	dc.b		$03,	nEb6,	$05,	nRst,	$04,	nEb6,	$09,	nEb6
	dc.b		$06,	nRst,	$21,	nEb6,	$09,	nEb6,	$03,	nRst
	dc.b		$0C
	smpsAlterVol	$05
	smpsAlterVol	$FB
	dc.b		nEb6,	$03
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nE6,	$01
	smpsAlterNote	$17
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	nF6,	$06,	nRst,	$7F,	$7F,	$7F,	$27
	smpsAlterVol	$05
	dc.b		nBb7,	$03
	smpsAlterNote	$80
	dc.b		smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$01,	smpsNoAttack,	$06
	smpsAlterNote	$00
	dc.b		nRst,	$03
	smpsAlterVol	$FB
	dc.b		nEb6,	$05,	nRst,	$04,	nEb6,	$09,	nEb6,	$06
	dc.b		nRst,	$21,	nEb6,	$09,	nEb6,	$03,	nRst,	$0C
	dc.b		nEb6,	$0C,	nRst,	$03,	nEb6,	$05,	nRst,	$04
	dc.b		nEb6,	$09,	nEb6,	$06,	nRst,	$21,	nEb6,	$09
	dc.b		nEb6,	$03,	nRst,	$0C
	smpsAlterVol	$05
	smpsAlterVol	$FB
	dc.b		nEb6,	$03
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nE6,	$01
	smpsAlterNote	$17
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	nF6,	$06,	nRst,	$7F,	$7F,	$7F,	$06
	dc.b		nEb6,	$05,	nRst,	$04,	nEb6,	$09,	nEb6,	$06
	dc.b		nRst,	$21,	nEb6,	$09,	nEb6,	$03,	nRst,	$0C
	dc.b		nEb6,	$0C,	nRst,	$03,	nEb6,	$05,	nRst,	$04
	dc.b		nEb6,	$09,	nEb6,	$06,	nRst,	$21,	nEb6,	$09
	dc.b		nEb6,	$03,	nRst,	$0C
	smpsAlterVol	$05
	smpsAlterVol	$FB
	dc.b		nEb6,	$03
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nE6,	$01
	smpsAlterNote	$17
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	nF6,	$06,	nRst,	$03,	nEb6,	$05,	nRst
	dc.b		$04,	nEb6,	$09,	nEb6,	$06,	nRst,	$21,	nEb6
	dc.b		$09,	nEb6,	$03,	nRst,	$0C,	nEb6,	$0C,	nRst
	dc.b		$03,	nEb6,	$05,	nRst,	$04,	nEb6,	$09,	nEb6
	dc.b		$06,	nRst,	$21,	nEb6,	$09,	nEb6,	$03,	nRst
	dc.b		$0C,	nEb6,	$0C,	nRst,	$30
	smpsPan		panCentre,	$00
	smpsFMvoice	$04
	smpsStop

; FM4 Data
SBZ_FM4:
	smpsPan		panLeft,	$00
	smpsFMvoice	$03
	dc.b		nRst,	$7F,	$7F,	$7F,	$27,	nC4,	$03,	nBb3
	dc.b		$03,	nG3,	$03,	nF3,	$03,	nRst,	$24,	nRst
	dc.b		$0C,	nRst,	$24,	nC4,	$03,	nBb3,	$03,	nG3
	dc.b		$03,	nF3,	$03,	nRst,	$24,	nG3,	$0C,	nRst
	dc.b		$24,	nC4,	$03,	nBb3,	$03,	nG3,	$03,	nF3
	dc.b		$03,	nRst,	$24,	nRst,	$0C,	nRst,	$24,	nC4
	dc.b		$03,	nBb3,	$03,	nG3,	$03,	nF3,	$03,	nRst
	dc.b		$24,	nG3,	$0C,	nRst,	$7F,	$7F,	$7F,	$27
	dc.b		nC4,	$03,	nBb3,	$03,	nG3,	$03,	nF3,	$03
	dc.b		nRst,	$24,	nG3,	$0C,	nRst,	$24,	nC4,	$03
	dc.b		nBb3,	$03,	nG3,	$03,	nF3,	$03,	nRst,	$24
	dc.b		nG3,	$0C,	nRst,	$24,	nC4,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nF3,	$03,	nRst,	$24,	nG3,	$0C
	dc.b		nRst,	$24,	nC4,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nF3,	$03,	nRst,	$24,	nG3,	$0C,	nRst,	$7F
	dc.b		$7F,	$16,	nRst,	$03,	nRst,	$03,	nRst,	$03
	dc.b		nRst,	$03,	nRst,	$24,	nRst,	$0C,	nRst,	$54
	dc.b		nRst,	$0C,	nRst,	$24,	nC4,	$03,	nBb3,	$03
	dc.b		nG3,	$03,	nF3,	$03,	nRst,	$24,	nG4,	$0C
	dc.b		nRst,	$24,	nC4,	$03,	nBb3,	$03,	nG3,	$03
	dc.b		nF3,	$03,	nRst,	$24,	nRst,	$0C,	nRst,	$7F
	dc.b		$7F,	$7F,	$27,	nC4,	$03,	nBb3,	$03,	nG3
	dc.b		$03,	nF3,	$03,	nRst,	$24,	nG4,	$0C,	nRst
	dc.b		$24,	nC4,	$03,	nBb3,	$03,	nG3,	$03,	nF3
	dc.b		$03,	nRst,	$24,	nG3,	$0C,	nRst,	$24,	nC4
	dc.b		$03,	nBb3,	$03,	nG3,	$03,	nF3,	$03,	nRst
	dc.b		$24,	nRst,	$0C,	nRst,	$24,	nC4,	$03,	nBb3
	dc.b		$03,	nG3,	$03,	nF3,	$03,	nRst,	$24
	smpsAlterVol	$06
	smpsAlterVol	$FA
	dc.b		nG3,	$03
	smpsAlterNote	$0D
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	nAb3,	$01
	smpsAlterNote	$1D
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	nA3,	$06,	nRst,	$30
	smpsPan		panLeft,	$00
	smpsAlterNote	$00
	smpsFMvoice	$03
	smpsStop

; FM5 Data
SBZ_FM5:
	smpsPan		panCentre,	$00
	smpsFMvoice	$02
	dc.b		nRst,	$60,	$60,	$60,	$60,	$60,	$60,	$60
	dc.b		$60,	nF4,	$24,	nE4,	$0C,	nD4,	$30,	nF4
	dc.b		$24,	nG4,	$0C,	nD4,	$30,	nF4,	$24,	nE4
	dc.b		$0C,	nD4,	$30,	nF4,	$24,	nG4,	$0C,	nD4
	dc.b		$30,	nBb4,	$48,	nC5,	$18,	nG4,	$60,	nBb4
	dc.b		$48,	nF4,	$12,	nE4,	$03,	nF4,	$03,	nC4
	dc.b		$66,	nRst,	$67,	$67,	$67,	$67,	$67,	$67
	dc.b		nF4,	$24,	nE4,	$0C,	nD4,	$30,	nF4,	$24
	dc.b		nG4,	$0C,	nD4,	$30,	nRst,	$68,	$68,	$68
	dc.b		$68,	$68,	$68
	smpsPan		panCentre,	$00
	smpsFMvoice	$02
	smpsStop

; PSG3 Data
SBZ_PSG3:
	smpsPSGform	$E7
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$33
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	smpsPSGvoice	$01
	smpsPSGvoice	$02
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$33
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$39
	dc.b		nA5,	$0C,	nA5,	$0C,	nA5,	$0C,	nA5,	$0C
	dc.b		nA5,	$0C,	nA5,	$0C,	nA5,	$0C,	nA5,	$0C
	dc.b		nA5,	$0C,	nA5,	$0C,	nA5,	$0C,	nA5,	$36
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	smpsPSGvoice	$01
	smpsPSGvoice	$02
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$33
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$03
	dc.b		nA5,	$03,	nA5,	$03,	nA5,	$03,	nA5,	$33
	smpsStop

; PSG1 Data
SBZ_PSG1:

; PSG2 Data
SBZ_PSG2:
	smpsStop

SBZ_Voices:
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

;	Voice 03
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

;	Voice 04
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
