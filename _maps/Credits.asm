; ---------------------------------------------------------------------------
; Sprite mappings - "SONIC TEAM	PRESENTS" and credits
; ---------------------------------------------------------------------------
Map_Cred_internal:
		dc.w @staff-Map_Cred_internal
		dc.w @gameplan-Map_Cred_internal
		dc.w @program-Map_Cred_internal
		dc.w @character-Map_Cred_internal
		dc.w @design-Map_Cred_internal
		dc.w @soundproduce-Map_Cred_internal
		dc.w @soundprogram-Map_Cred_internal
		dc.w @thanks-Map_Cred_internal
		dc.w @presentedby-Map_Cred_internal
		dc.w @tryagain-Map_Cred_internal
		dc.w @sonicteam-Map_Cred_internal
@staff:	dc.b $D	;  SONIC TEAM STAFF |   OVERDRIVE    
		dc.b $90, 0, 0, $60, $C    ;Space

		dc.b $F8, 5, 0, $26, $C0	; O
		dc.b $F8, 0, 0, $60, $C    ;Space
		dc.b $F8, 5, 0, $0E, $E0	; E
		dc.b $F8, 5, 0, $22, $F0	; R
		dc.b $F8, 5, 0, $42, $0	; D
		dc.b $F8, 5, 0, $22, $10	; R
		dc.b $F8, 1, 0, $46, $20	; I
		dc.b $90, 0, 0, $60, $C    ;Space
		dc.b $F8, 5, 0, $0E, $38	; E
		dc.b $F8, 5, 0, $3E, $C0	; T
		dc.b $F8, 5, 0, $0E, $D0	; E
		dc.b $F8, 5, 0, 4, $E0		; A
		dc.b $F8, 9, 0, 8, $F0		; M
@gameplan:	dc.b $14	;  GAME PLAN CAROL YAS | DIRECTOR UNDYING STAR   
		dc.b $D8, 5, 0, $42, $C0	; D
		dc.b $D8, 1, 0, $46, $D0	; I
		dc.b $D8, 5, 0, $22, $D8	; R
		dc.b $D8, 5, 0, $0E, $E8	; E
		dc.b $D8, 5, 0, $1E, $F8	; C
		dc.b $D8, 5, 0, $3E, $8	; T
		dc.b $D8, 5, 0, $26, $18	; O
		dc.b $D8, 5, 0, $22, $28	; R
		dc.b $F8, 5, 0, $32, $94	; U
		dc.b $F8, 5, 0, $1A, $A4	; N
		dc.b $F8, 5, 0, $42, $B4	; D
		dc.b $F8, 5, 0, $2A, $C4	; Y
		dc.b $F8, 1, 0, $46, $D4	; I
		dc.b $F8, 5, 0, $1A, $DC	; N
		dc.b $F8, 5, 0, 0, $EC		; G
		dc.b $F8, 0, 0, $60, $C    ;Space
		dc.b $F8, 5, 0, $2E, $C	; S
		dc.b $F8, 5, 0, $3E, $1C	; T
		dc.b $F8, 5, 0, 4, $2C		; A
		dc.b $F8, 5, 0, $22, $3C	; R
@program:	dc.b $A			 ; PROGRAM YU 2
		dc.b $D8, 5, 0,	$12, $80
		dc.b $D8, 5, 0,	$22, $90
		dc.b $D8, 5, 0,	$26, $A0
		dc.b $D8, 5, 0,	0, $B0
		dc.b $D8, 5, 0,	$22, $C0
		dc.b $D8, 5, 0,	4, $D0
		dc.b $D8, 9, 0,	8, $E0
		dc.b 8,	5, 0, $2A, $E8
		dc.b 8,	5, 0, $32, $F8
		dc.b 8,	5, 0, $36, 8
@character:	dc.b $18		 ; CHARACTER DESIGN BIGISLAND
		dc.b $D8, 5, 0,	$1E, $88
		dc.b $D8, 5, 0,	$3A, $98
		dc.b $D8, 5, 0,	4, $A8
		dc.b $D8, 5, 0,	$22, $B8
		dc.b $D8, 5, 0,	4, $C8
		dc.b $D8, 5, 0,	$1E, $D8
		dc.b $D8, 5, 0,	$3E, $E8
		dc.b $D8, 5, 0,	$E, $F8
		dc.b $D8, 5, 0,	$22, 8
		dc.b $D8, 5, 0,	$42, $20
		dc.b $D8, 5, 0,	$E, $30
		dc.b $D8, 5, 0,	$2E, $40
		dc.b $D8, 1, 0,	$46, $50
		dc.b $D8, 5, 0,	0, $58
		dc.b $D8, 5, 0,	$1A, $68
		dc.b 8,	5, 0, $48, $C0
		dc.b 8,	1, 0, $46, $D0
		dc.b 8,	5, 0, 0, $D8
		dc.b 8,	1, 0, $46, $E8
		dc.b 8,	5, 0, $2E, $F0
		dc.b 8,	5, 0, $16, 0
		dc.b 8,	5, 0, 4, $10
		dc.b 8,	5, 0, $1A, $20
		dc.b 8,	5, 0, $42, $30
@design:	dc.b $14		 ; DESIGN JINYA	PHENIX RIE
		dc.b $D0, 5, 0,	$42, $A0
		dc.b $D0, 5, 0,	$E, $B0
		dc.b $D0, 5, 0,	$2E, $C0
		dc.b $D0, 1, 0,	$46, $D0
		dc.b $D0, 5, 0,	0, $D8
		dc.b $D0, 5, 0,	$1A, $E8
		dc.b 0,	5, 0, $4C, $E8
		dc.b 0,	1, 0, $46, $F8
		dc.b 0,	5, 0, $1A, 4
		dc.b 0,	5, 0, $2A, $14
		dc.b 0,	5, 0, 4, $24
		dc.b $20, 5, 0,	$12, $D0
		dc.b $20, 5, 0,	$3A, $E0
		dc.b $20, 5, 0,	$E, $F0
		dc.b $20, 5, 0,	$1A, 0
		dc.b $20, 1, 0,	$46, $10
		dc.b $20, 5, 0,	$50, $18
		dc.b $20, 5, 0,	$22, $30
		dc.b $20, 1, 0,	$46, $40
		dc.b $20, 5, 0,	$E, $48
@soundproduce:	dc.b $1F	;  PROGRAM YU 2 | SOUND DESIGN SONIX CHRON D AKRENIX
		dc.b $D8, 5, 0, $2E, $94	; S
		dc.b $D8, 5, 0, $26, $A4	; O
		dc.b $D8, 5, 0, $32, $B4	; U
		dc.b $D8, 5, 0, $1A, $C4	; N
		dc.b $D8, 5, 0, $42, $D4	; D
		dc.b $D8, 0, 0, $60, $C    ;Space
		dc.b $D8, 5, 0, $42, $F4	; D
		dc.b $D8, 5, 0, $0E, $4	; E
		dc.b $D8, 5, 0, $2E, $14	; S
		dc.b $D8, 1, 0, $46, $24	; I
		dc.b $D8, 5, 0, 0, $2C		; G
		dc.b $D8, 5, 0, $1A, $3C	; N
		dc.b $F8, 5, 0, $2E, $4	; S
		dc.b $F8, 5, 0, $26, $14	; O
		dc.b $F8, 5, 0, $1A, $24	; N
		dc.b $F8, 1, 0, $46, $34	; I
		dc.b $F8, 5, 0, $50, $3C	; X
		dc.b $F8, 5, 0, $1E, $A4	; C
		dc.b $F8, 5, 0, $3A, $B4	; H
		dc.b $F8, 5, 0, $22, $C4	; R
		dc.b $F8, 5, 0, $26, $D4	; O
		dc.b $F8, 5, 0, $1A, $E4	; N
		dc.b $F8, 0, 0, $60, $C    ;Space
		dc.b $F8, 5, 0, $42, $4	; D
		dc.b $18, 5, 0, 4, $E4		; A
		dc.b $18, 5, 0, $58, $F4	; K
		dc.b $18, 5, 0, $22, $4	; R
		dc.b $18, 5, 0, $0E, $14	; E
		dc.b $18, 5, 0, $1A, $24	; N
		dc.b $18, 1, 0, $46, $34	; I
		dc.b $18, 5, 0, $50, $3C	; X
@soundprogram:	dc.b $17		 ; SOUND PROGRAM JIMITA	MACKY
		dc.b $D0, 5, 0,	$2E, $98
		dc.b $D0, 5, 0,	$26, $A8
		dc.b $D0, 5, 0,	$32, $B8
		dc.b $D0, 5, 0,	$1A, $C8
		dc.b $D0, 5, 0,	$54, $D8
		dc.b $D0, 5, 0,	$12, $F8
		dc.b $D0, 5, 0,	$22, 8
		dc.b $D0, 5, 0,	$26, $18
		dc.b $D0, 5, 0,	0, $28
		dc.b $D0, 5, 0,	$22, $38
		dc.b $D0, 5, 0,	4, $48
		dc.b $D0, 9, 0,	8, $58
		dc.b 0,	5, 0, $4C, $D0
		dc.b 0,	1, 0, $46, $E0
		dc.b 0,	9, 0, 8, $E8
		dc.b 0,	1, 0, $46, $FC
		dc.b 0,	5, 0, $3E, 4
		dc.b 0,	5, 0, 4, $14
		dc.b $20, 9, 0,	8, $D0
		dc.b $20, 5, 0,	4, $E4
		dc.b $20, 5, 0,	$1E, $F4
		dc.b $20, 5, 0,	$58, 4
		dc.b $20, 5, 0,	$2A, $14
@thanks:	dc.b $1F		 ; SPECIAL THANKS FUJIO	MINEGISHI PAPA
		dc.b $D8, 5, 0,	$2E, $80
		dc.b $D8, 5, 0,	$12, $90
		dc.b $D8, 5, 0,	$E, $A0
		dc.b $D8, 5, 0,	$1E, $B0
		dc.b $D8, 1, 0,	$46, $C0
		dc.b $D8, 5, 0,	4, $C8
		dc.b $D8, 5, 0,	$16, $D8
		dc.b $D8, 5, 0,	$3E, $F8
		dc.b $D8, 5, 0,	$3A, 8
		dc.b $D8, 5, 0,	4, $18
		dc.b $D8, 5, 0,	$1A, $28
		dc.b $D8, 5, 0,	$58, $38
		dc.b $D8, 5, 0,	$2E, $48
		dc.b 0,	5, 0, $5C, $B0
		dc.b 0,	5, 0, $32, $C0
		dc.b 0,	5, 0, $4C, $D0
		dc.b 0,	1, 0, $46, $E0
		dc.b 0,	5, 0, $26, $E8
		dc.b 0,	9, 0, 8, 0
		dc.b 0,	1, 0, $46, $14
		dc.b 0,	5, 0, $1A, $1C
		dc.b 0,	5, 0, $E, $2C
		dc.b 0,	5, 0, 0, $3C
		dc.b 0,	1, 0, $46, $4C
		dc.b 0,	5, 0, $2E, $54
		dc.b 0,	5, 0, $3A, $64
		dc.b 0,	1, 0, $46, $74
		dc.b $20, 5, 0,	$12, $F8
		dc.b $20, 5, 0,	4, 8
		dc.b $20, 5, 0,	$12, $18
		dc.b $20, 5, 0,	4, $28
@presentedby:	dc.b $F			 ; PRESENTED BY	SEGA
		dc.b $F8, 5, 0,	$12, $80
		dc.b $F8, 5, 0,	$22, $90
		dc.b $F8, 5, 0,	$E, $A0
		dc.b $F8, 5, 0,	$2E, $B0
		dc.b $F8, 5, 0,	$E, $C0
		dc.b $F8, 5, 0,	$1A, $D0
		dc.b $F8, 5, 0,	$3E, $E0
		dc.b $F8, 5, 0,	$E, $F0
		dc.b $F8, 5, 0,	$42, 0
		dc.b $F8, 5, 0,	$48, $18
		dc.b $F8, 5, 0,	$2A, $28
		dc.b $F8, 5, 0,	$2E, $40
		dc.b $F8, 5, 0,	$E, $50
		dc.b $F8, 5, 0,	0, $60
		dc.b $F8, 5, 0,	4, $70
@tryagain:	dc.b 8			 ; TRY AGAIN
		dc.b $30, 5, 0,	$3E, $C0
		dc.b $30, 5, 0,	$22, $D0
		dc.b $30, 5, 0,	$2A, $E0
		dc.b $30, 5, 0,	4, $F8
		dc.b $30, 5, 0,	0, 8
		dc.b $30, 5, 0,	4, $18
		dc.b $30, 1, 0,	$46, $28
		dc.b $30, 5, 0,	$1A, $30
@sonicteam:	dc.b $14	;  SONIC TEAM PRESENTS | TEAM DYNAMICPRESENTS
		dc.b $E8, 5, 0, $3E, $A0	; T
		dc.b $E8, 5, 0, $0E, $B0	; E
		dc.b $E8, 5, 0, 4, $C0		; A
		dc.b $E8, 9, 0, 8, $D0		; M
		dc.b $E8, 0, 0, $60, $C   	 ; Space
		dc.b $E8, 5, 0, $42, $F4	; D
		dc.b $E8, 5, 0, $2A, $4	; Y
		dc.b $E8, 5, 0, $1A, $14	; N
		dc.b $E8, 5, 0, 4, $24		; A
		dc.b $E8, 9, 0, 8, $34		; M
		dc.b $E8, 1, 0, $46, $48	; I
		dc.b $E8, 5, 0, $1E, $50	; C

		dc.b 0,	5, 0, $12, $C0	; P
		dc.b 0,	5, 0, $22, $D0	; R
		dc.b 0,	5, 0, $E, $E0	; E
		dc.b 0,	5, 0, $2E, $F0	; S
		dc.b 0,	5, 0, $E, 0	; E
		dc.b 0,	5, 0, $1A, $10	; N
		dc.b 0,	5, 0, $3E, $20	; T
		dc.b 0,	5, 0, $2E, $30	; S
		even