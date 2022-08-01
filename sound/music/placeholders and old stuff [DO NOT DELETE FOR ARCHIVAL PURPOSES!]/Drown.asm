; =============================================================================================
; Project Name:		Drowning
; Created:		21st May 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Drowning_Header:
	smpsHeaderVoice	Drowning_Voices
	smpsHeaderChan	$06,	$00
	smpsHeaderTempo	$02,	$00

	smpsHeaderDAC	Drowning_DAC
	smpsHeaderFM	Drowning_FM1,	smpsPitch00,	$14
	smpsHeaderFM	Drowning_FM2,	smpsPitch00,	$14
	smpsHeaderFM	Drowning_FM3,	smpsPitch00,	$15
	smpsHeaderFM	Drowning_FM4,	smpsPitch00,	$11
	smpsHeaderFM	Drowning_FM5,	smpsPitch00,	$19

; DAC Data
Drowning_DAC:
	smpsPan		panCentre,	$00
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C,	dSnare,	$0C
	dc.b		dSnare,	$30
	smpsPan		panCentre,	$00
	smpsStop

; FM1 Data
Drowning_FM1:
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	smpsCall	Drowning_Call01
	smpsSetTempoMod	$03
	smpsCall	Drowning_Call01
	smpsSetTempoMod	$04
	smpsCall	Drowning_Call01
	smpsSetTempoMod	$06
	smpsCall	Drowning_Call01
	smpsSetTempoMod	$0A
	smpsCall	Drowning_Call01	
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD3,	$06,	nD4,	$06,	nD3,	$06,	nD4,	$06
	dc.b		nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4,	$06
	dc.b		nD4,	$06,	nRst,	$2A
	smpsPan		panCentre,	$00
	smpsFMvoice	$00
	smpsStop

; FM2 Data
Drowning_FM2:
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD2,	$06,	nD3,	$06,	nD2,	$06,	nD3,	$06
	dc.b		nEb2,	$06,	nEb3,	$06,	nEb2,	$06,	nEb3,	$06
	dc.b		nD3,	$06,	nRst,	$2A
	smpsPan		panCentre,	$00
	smpsFMvoice	$01
	smpsStop

; FM3 Data
Drowning_FM3:
	smpsPan		panCentre,	$00
	smpsFMvoice	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$02,	nEb2,	$02,	nD2,	$02,	nEb2,	$02
	dc.b		nD2,	$06,	nRst,	$2A
	smpsPan		panCentre,	$00
	smpsFMvoice	$02
	smpsStop

; FM4 Data
Drowning_FM4:
	smpsPan		panCentre,	$00
	smpsFMvoice	$03
	dc.b		nRst,	$03
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panRight,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panCentre,	$00
	dc.b		nD3,	$06,	nD4,	$06
	smpsPan		panLeft,	$00
	dc.b		nEb3,	$06,	nEb4,	$06
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$06,	nEb4,	$06,	nRst,	$2D
	smpsPan		panCentre,	$00
	smpsFMvoice	$03
	smpsStop

; FM5 Data
Drowning_FM5:
	smpsPan		panRight,	$00
	smpsFMvoice	$04
	dc.b		nRst,	$04
	smpsPan		panLeft,	$00
	dc.b		$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06,	nEb4
	dc.b		$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$04
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06
	dc.b		nEb4,	$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$04
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06
	dc.b		nEb4,	$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$04
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06
	dc.b		nEb4,	$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$04
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06
	dc.b		nEb4,	$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$04
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06
	dc.b		nEb4,	$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$04
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06
	dc.b		nEb4,	$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$04
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06
	dc.b		nEb4,	$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$04
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06
	dc.b		nEb4,	$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$04
	smpsPan		panLeft,	$00
	dc.b		smpsNoAttack,	$02,	nEb3,	$06,	nEb4,	$06,	nEb3,	$06
	dc.b		nEb4,	$04
	smpsPan		panRight,	$00
	dc.b		smpsNoAttack,	$02,	nE3,	$06,	nE4,	$06,	nE3,	$06
	dc.b		nE4,	$06,	nRst,	$2A
	smpsPan		panRight,	$00
	smpsFMvoice	$04
	smpsStop

Drowning_Call01:
	dc.b		nC4,	$06,	nC5,	nC4,	nC5,	nCs4,	nCs5,	nCs4
	dc.b		nCs5
	
Drowning_Voices:
	dc.b		$2C,$70,$40,$21,$60,$9F,$1F,$1F,$5F,$0C,$09,$0C,$15,$04,$04,$06
	dc.b		$06,$56,$46,$46,$4F,$0C,$00,$10,$00;			Voice 00
	dc.b		$3B,$3E,$42,$41,$33,$DE,$14,$1E,$14,$14,$0F,$0F,$00,$01,$00,$00
	dc.b		$00,$36,$25,$26,$29,$1F,$1E,$19,$00;			Voice 01
	dc.b		$27,$33,$72,$03,$01,$5F,$1C,$1A,$5B,$8B,$1F,$9D,$9C,$01,$00,$00
	dc.b		$00,$8B,$1A,$2A,$0F,$08,$07,$0C,$06;			Voice 02
	dc.b		$04,$71,$41,$31,$31,$12,$12,$12,$12,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$23,$00,$23,$00;			Voice 03
	dc.b		$3A,$71,$0C,$33,$01,$1C,$16,$1D,$1F,$04,$06,$04,$08,$00,$01,$03
	dc.b		$00,$16,$17,$16,$A6,$25,$2F,$25,$00;			Voice 04
	even
