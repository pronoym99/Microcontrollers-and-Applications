org 0000h
	;assume buzzer to be connected to P1.0
       mov tmod,#01h         ;T0 Mode 1
	mov th0,#0fbh         ;settings for 10ms delay     
	mov tl0,#0b4h
	clr p1.0              ;clear pin initially
	buzz:setb p1.0        ;turn ON buzzer
	     acall delay      ;call delay=10ms
	     clr p1.0         ;turn OFF buzzer
	     acall delay
	     acall delay      ;call delay thrice for delay=3ms
	     acall delay
	     sjmp buzz        ;repeat indefinitely
		 
	delay:setb tr0        ;start timer 0
	 wait:jnb tf0,wait    ;wait till T0 stops counting
	      clr tr0         ;clear flags which were
	      clr tf0         ;modified in the process
	      ret             ;return to main program
		  
end
	
