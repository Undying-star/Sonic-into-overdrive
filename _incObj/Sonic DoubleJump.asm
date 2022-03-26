; ---------------------------------------------------------------------------
; Subrotine to perform Double Jump
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

Sonic_DoubleJump:
        move.b    (v_jpadpress1).w,d0
        andi.b    #btnA,d0    ; is A
        beq.w    DJ_End        ; if not, branch 
        tst.b    ($FFFFFFEB).w; was doublejump flag set?
        bne.s    DJ_End    ; if yes, branch
        move.b    #1,($FFFFFFEB).w; if not, set doublejump flag
        move.b  #$13,$1C(a0) ; Play the victory animation
        move.w    #$A9,d0            ; play JD sound
        jsr    (PlaySound_Special).l   ;
        bclr    #4,obStatus(a0); clear double jump flag
        move.w    #-$600,obVelY(a0); set normal double jump speed
        btst    #6,obStatus(a0); is Sonic underwater?
        beq.s    DJ_End    ; if not, branch
        move.w    #-$800,obVelY(a0); set underwater double jump speed
DJ_End:
        rts        ; return or cancel double jump
; End of function Sonic_DoubleJump
