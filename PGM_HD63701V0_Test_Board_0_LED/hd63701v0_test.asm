        cpu 6301

	; Reset vector
	org $FFFE
resvec:
	FDB    start

        org $F000
        
; HD63701V0C RAM $0040-$00FF (192 B)
;RAMVAL1		equ		$0040
	; comment

start:
	LDAA	#$FF
	STAA	$0000

	LDAA	#$AA
	STAA	$0002
	JMP	start

	END
	
	; EXAMPLES
;
	; Add immediate(IMMED)
	;ADDA	#20		; dec
	;ADDA	#$20		; hex
	;ADDA	#%11100111		; bin
	;ADDA	#'a'		; ascii
	
	; Add abusolute addressing(DIRECT)
	;ADDA	$0001
	;ADDA	RAMVAL1
 