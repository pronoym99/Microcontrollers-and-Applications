ORG 0000h
		MOV DPTR,#2345h	
		MOVX A,@DPTR		; MOVE 1ST NUMBER INTO A FROM LOCATION 2345h
		MOV B,A			; 1ST NUMBER MOVED INTO B
		INC DPTR
		MOVX A,@DPTR		; MOVE 2ND NUMBER INTO A FROM LOCATION 2346h
		MUL AB			; MULTIPLY TWO NUMBERS
		INC DPTR
		MOVX @DPTR,A		; LOWER BYTE OF RESULT IN LOCATION 2347H
		INC DPTR
		MOV A,B			; UPPER BYTE OF RESULT IN A
		MOVX @DPTR,A		; UPPER BYTE OF RESULT IN LOCATION 2348H
END
