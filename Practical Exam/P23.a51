org 0000h
   ;Assume clock frequency = 12MHz
	mov tmod,#1h                                  ;T0 mode 1
	repeat:	setb p1.0                             ;set pin
	        acall delay1                          ;call small delay routine                         
	        clr p1.0                              ;clear pin
	        acall delay2                          ;call large delay routine
		setb p1.0                             ;set pin again
		acall delay3
	        sjmp repeat                           ;repeat indefinitely
		delay1:mov th0,#0fch                  ;delay routine for 1ms
		       mov tl0,#18h
		       sjmp sequence                  ;jump to timer stop sequence
		delay2:mov th0,#0ech                  ;delay routine for 5ms
		       mov tl0,#78h
		       sjmp sequence
		delay3:mov th0,#8ah                   ;delay routine for 30ms
		       mov tl0,#0d0h				   
	      sequence:setb tr0                       ;start timer 0
		  wait:jnb tf0,wait                   ;wait till T0 stops counting
		       clr tr0                        ;clear flags which were
		       clr tf0                        ;modified in the process
		       ret                            ;return to main program
end
