;program to turn an led on and off(with some delay) which is interfaced to pin P0.2

org 0000h
	;pins are configured as output by default
	clr p0.2     ;led lights up: 8051 is better at sinking the current than sourcing it
	acall delay  ;call delay routine
setting:setb p0.2    ;led turned off
sjmp finish
	
	delay:mov r0,#0ffh
somewhere:mov r1,#0ffh
    there:mov r2,#0ffh
     here:djnz r2,here
	      djnz r1,there
	      djnz r0,somewhere
		  sjmp setting
finish:
end


		   
	  

	