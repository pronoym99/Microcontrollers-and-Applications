ORG 0000H
MOV A, #10H; 	COMMON COUNTER FOR BOTH, VALUE AND COUNT COUNT IS #0FH BUT SET TO 1 VALUE HIGHER
MOV R0, #30H; 	POINTER
L1:	DEC A; 		COUNT/VALUE IN A WILL BE DECREMENTED TO #0FH IN INITIAL ITERATION AND THEN CONTINUE TILL #00H AS USUAL
	MOV @R0, A;	COPY ACC TO LOCATION
	INC R0; 	INCR POINTER
	JNZ L1;		JNZ CHECKS ACCUMULATOR IF IT'S ZERO BY DEFAULT. WILL JUMP TO LABEL L1 IF A NOT ZERO 
END

; THE CODE IS WRITTEN WITH SINGLE REGISTER FOR BOTH COUNT AND VALUE.
;SO USING DJNZ AT END OF LOOP WILL CAUSE THE LAST #00H TO NOT TRANSFER AS THE LOOP WILL END AFTER #01H
;DECREMENTING COUNT AT BEGINNING OF LOOP BLOCK L1 AND SETTING THE COUNT ONE VALUE HIGHER SOLVES THIS
;ONE CAN USE TWO SEPARATE REGISTERS FOR COUNT #10H AND VALUE #0FH AND USE DJNZ AT END WITHOUT DECREMENTING COUNT AT LOOPS BEGINNING
;WHICH IS ALSO TOTALLY CORRECT.
