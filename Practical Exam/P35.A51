ORG 0000H
MOV R2,#00H ;EVEN COUNT
MOV R4,#00H ;ODD COUNT
MOV R3,#0AH
MOV R0,#30H
LOOP:MOV A,@R0
RRC A
JC AGAIN
INC R2
AGAIN:INC R0
DJNZ R3,LOOP
CLR C
MOV A,#0AH
SUBB A,R2
MOV R4,A
END
