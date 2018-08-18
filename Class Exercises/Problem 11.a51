;program to load the accumulator with 55h and complememt the accumulator 700 times

org 0000h
	mov a,#55h           ;required content moved to accumulator
	mov r0,#46h          ;counter 1=70d
	next:mov r1,#0ah     ;counter 2=10d
	here:cpl a           ;complementation
	     djnz r1,here    ;count 70 times
		 djnz r0,next    ;count 70 times a total of 10 times
end
	