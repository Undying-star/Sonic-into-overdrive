; ---------------------------------------------------------------------------
; Sprite mappings - zone title cards
; ---------------------------------------------------------------------------
Map_Card:	dc.w M_Card_GHZ-Map_Card
		dc.w M_Card_LZ-Map_Card
		dc.w M_Card_MZ-Map_Card
		dc.w M_Card_SLZ-Map_Card
		dc.w M_Card_SYZ-Map_Card
		dc.w M_Card_SBZ-Map_Card
		dc.w M_Card_Zone-Map_Card
		dc.w M_Card_Act1-Map_Card
		dc.w M_Card_Act2-Map_Card
		dc.w M_Card_Act3-Map_Card
		dc.w M_Card_Oval-Map_Card
		dc.w M_Card_FZ-Map_Card
M_Card_GHZ:	dc.b $B	;  GREEN HILLS
		dc.b $F8, 5, 0, $18, $A4
		dc.b $F8, 5, 0, $3A, $B4	
		dc.b $F8, 5, 0, $10, $C4	
		dc.b $F8, 5, 0, $10, $D4	
		dc.b $F8, 5, 0, $2E, $E4	
		dc.b $F8, 0, 0, $56, $F4	
		dc.b $F8, 5, 0, $1C, $4
		dc.b $F8, 1, 0, $20, $14
		dc.b $F8, 5, 0, $26, $1C	
		dc.b $F8, 5, 0, $26, $2C
		dc.b $F8, 5, 0, $3E, $3C	
		even
M_Card_LZ:	dc.b 9			; LABYRINTH
		dc.b $F8, 5, 0,	$26, $BC
		dc.b $F8, 5, 0,	0, $CC
		dc.b $F8, 5, 0,	4, $DC
		dc.b $F8, 5, 0,	$4A, $EC
		dc.b $F8, 5, 0,	$3A, $FC
		dc.b $F8, 1, 0,	$20, $C
		dc.b $F8, 5, 0,	$2E, $14
		dc.b $F8, 5, 0,	$42, $24
		dc.b $F8, 5, 0,	$1C, $34
		even
M_Card_MZ:	dc.b $E	;  CHEMICAL PLANT
		dc.b $F8, 5, 0, 8, $84
		dc.b $F8, 5, 0, $1C, $94
		dc.b $F8, 5, 0, $10, $A4	
		dc.b $F8, 5, 0, $2A, $B4	
		dc.b $F8, 1, 0, $20, $C4	
		dc.b $F8, 5, 0, 8, $CC
		dc.b $F8, 5, 0, 0, $DC	
		dc.b $F8, 5, 0, $26, $EC
		dc.b $F8, 0, 0, $56, $FC	
		dc.b $F8, 5, 0, $36, $C
		dc.b $F8, 5, 0, $26, $1C
		dc.b $F8, 5, 0, 0, $2C		
		dc.b $F8, 5, 0, $2E, $3C	
		dc.b $F8, 5, 0, $42, $4C	
		even
M_Card_SLZ:	dc.b $F	;  SYLMANIA CASTLE
		dc.b $F8, 5, 0, $3E, $84
		dc.b $F8, 5, 0, $4A, $94	
		dc.b $F8, 5, 0, $26, $A4	
		dc.b $F8, 5, 0, $2A, $B4	
		dc.b $F8, 5, 0, 0, $C4		
		dc.b $F8, 5, 0, $2E, $D4	
		dc.b $F8, 1, 0, $20, $E4	
		dc.b $F8, 5, 0, 0, $EC		
		dc.b $F8, 0, 0, $56, $FC	
		dc.b $F8, 5, 0, 8, $C		
		dc.b $F8, 5, 0, 0, $1C		
		dc.b $F8, 5, 0, $3E, $2C	
		dc.b $F8, 5, 0, $42, $3C	
		dc.b $F8, 5, 0, $26, $4C	
		dc.b $F8, 5, 0, $10, $5C	
		even
M_Card_SYZ:	dc.b 9	;  SPARKLING
		dc.b $F8, 5, 0, $3E, $C4
		dc.b $F8, 5, 0, $36, $D4	
		dc.b $F8, 5, 0, 0, $E4		
		dc.b $F8, 5, 0, $3A, $F4	
		dc.b $F8, 5, 0, $22, $4	
		dc.b $F8, 5, 0, $26, $14	
		dc.b $F8, 1, 0, $20, $24	
		dc.b $F8, 5, 0, $2E, $2C	
		dc.b $F8, 5, 0, $18, $3C	
		even
M_Card_SBZ:	dc.b $A			; SCRAP BRAIN
		dc.b $F8, 5, 0,	$3E, $AC
		dc.b $F8, 5, 0,	8, $BC
		dc.b $F8, 5, 0,	$3A, $CC
		dc.b $F8, 5, 0,	0, $DC
		dc.b $F8, 5, 0,	$36, $EC
		dc.b $F8, 5, 0,	4, $C
		dc.b $F8, 5, 0,	$3A, $1C
		dc.b $F8, 5, 0,	0, $2C
		dc.b $F8, 1, 0,	$20, $3C
		dc.b $F8, 5, 0,	$2E, $44
		even
M_Card_Zone:	dc.b 4			; ZONE
		dc.b $F8, 5, 0,	$4E, $E0
		dc.b $F8, 5, 0,	$32, $F0
		dc.b $F8, 5, 0,	$2E, 0
		dc.b $F8, 5, 0,	$10, $10
		even
M_Card_Act1:	dc.b 2			; ACT 1
		dc.b 4,	$C, 0, $53, $EC
		dc.b $F4, 2, 0,	$57, $C
M_Card_Act2:	dc.b 2			; ACT 2
		dc.b 4,	$C, 0, $53, $EC
		dc.b $F4, 6, 0,	$5A, 8
M_Card_Act3:	dc.b 2			; ACT 3
		dc.b 4,	$C, 0, $53, $EC
		dc.b $F4, 6, 0,	$60, 8
M_Card_Oval:	dc.b $D			; Oval
		dc.b $E4, $C, 0, $70, $F4
		dc.b $E4, 2, 0,	$74, $14
		dc.b $EC, 4, 0,	$77, $EC
		dc.b $F4, 5, 0,	$79, $E4
		dc.b $14, $C, $18, $70,	$EC
		dc.b 4,	2, $18,	$74, $E4
		dc.b $C, 4, $18, $77, 4
		dc.b $FC, 5, $18, $79, $C
		dc.b $EC, 8, 0,	$7D, $FC
		dc.b $F4, $C, 0, $7C, $F4
		dc.b $FC, 8, 0,	$7C, $F4
		dc.b 4,	$C, 0, $7C, $EC
		dc.b $C, 8, 0, $7C, $EC
		even
M_Card_FZ:	dc.b 5			; FINAL
		dc.b $F8, 5, 0,	$14, $DC
		dc.b $F8, 1, 0,	$20, $EC
		dc.b $F8, 5, 0,	$2E, $F4
		dc.b $F8, 5, 0,	0, 4
		dc.b $F8, 5, 0,	$26, $14
		even