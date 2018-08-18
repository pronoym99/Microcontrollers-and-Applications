;program to toggle the bits of port 1 by sending the value 55h and AAh continuously with some delay between each issuing of the data

org 1000h
	mov a,#01h            ;the permanent counter
	;ports by default configured as output ports
	again:mov p1,#55h     ;move the first value
	      nop
		  nop
		  nop             ;indefinite delay 1
		  nop
		  mov p1,#0aah    ;move the second value
		  nop
		  nop
		  nop             ;indefinite delay 2
		  nop
		  jnz again    ;runs into an infinite loop since r1 was never modified
end