org 0000h	
	mov r0,#15h                 ;initialise source address
	mov r1,#51h                 ;initialise destination address
	mov r2,#14h                 ;initialise byte counter
	transfer:mov a,@r0          ;copy contents at source to accumulator
	         mov @r1,a          ;copy contents in accumulator to destination
			 inc r0             ;increment both 
			 inc r1             ;memory pointers
			 djnz r2,transfer   ;continue until all bytes have been transferred
end