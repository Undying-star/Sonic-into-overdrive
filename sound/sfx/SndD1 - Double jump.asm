; =============================================================================================
; Project Name:		Double
; Created:		24th March 2022
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Double_Header:
	smpsHeaderVoice	Double_Voices
	smpsHeaderChan	$01,	$01
	smpsHeaderTempo	$9B,	$DF

	smpsHeaderDAC	Double_DAC
	smpsHeaderPSG	Double_PSG1,	smpsPitch08lo+$02,	$05,	$F002
	dc.b		$01
	smpsCall	Double_Call01
	dc.b		$15
	smpsStop

Double_Voices:
	dc.b		;			Voice 00
	even
