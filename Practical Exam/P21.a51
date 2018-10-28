  ORG 0000h
  MOV A,#38h	; Initialize LCD with 2 LINES 5*7 MATRIX
  ACALL COMMAND
  MOV A,#0Eh	; Display On Cursor On
  ACALL COMMAND
  MOV A,#01h	; Clear Display Screen
  ACALL COMMAND
  MOV A,#06h	; Increment counter	
  ACALL COMMAND
  MOV A,#80h	; Move cursor to the beginning of 1st line
  ACALL COMMAND
  MOV A,#'A'
  ACALL DATA_DISPLAY
  MOV A,#'B'
  ACALL DATA_DISPLAY
  MOV A,#'I'
  ACALL DATA_DISPLAY
  MOV A,#'N'
  ACALL DATA_DISPLAY
  MOV A,#'-'
  ACALL DATA_DISPLAY
  MOV A,#'4'
  ACALL DATA_DISPLAY
  MOV A,#'5'
  ACALL DATA_DISPLAY
  HERE: SJMP HERE
  

  COMMAND: ACALL READY
  		   MOV P1,A
		   CLR P2.0		; Instruction
		   CLR P2.1		; Write mode
		   SETB P2.2	
		   CLR P2.2		; High to low pulse to enable pin
		   RET


  DATA_DISPLAY: ACALL READY
  				MOV P1,A
				SETB P2.0		; DATA REGISTER
				CLR P2.1		; WRITE MODE
				SETB P2.2		; Enable LCD controller
				ACALL DELAY
				CLR P2.2
				RET

  READY: SETB P1.7			   ; Make busy pin high
  		 CLR P2.0			   ; Instruction
		 SETB P2.1			   ; Read mode
	BACK:CLR P2.2
		 ACALL DELAY
		 SETB P2.2
		 JB P1.7,BACK		   ; Check whether LCD is busy
		 RET

  DELAY:
  		MOV R3,#50
  HERE2:MOV R4,#255
  HERE1:DJNZ R4,HERE1
  		DJNZ R3,HERE2
		RET



END