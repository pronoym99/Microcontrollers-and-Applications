ORG 0000h
		MOV TMOD,#20h	; Timer 1 Mode 2
		MOV TH1,#0FDh	; Baud Rate 9600
		MOV SCON,#50h	; 8 bit UART
		MOV 31h,#'V'
		MOV 32h,#'E'
		MOV 33h,#'S'
		MOV 34h,#'I'
		MOV 35h,#'T'
		MOV R0,#31h		; 1st memory location
		MOV R1,#04h		; Load count
		SETB TR1		; Start timer
   LOOP:CLR TI
   		MOV SBUF,@R0
		INC R0
   HERE:JNB	TI,HERE		; WAIT FOR LAST BIT
   		DJNZ R1,LOOP
		CLR TI
END