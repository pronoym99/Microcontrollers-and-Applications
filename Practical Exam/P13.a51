org 0000h
	mov tmod,#1h                                  ;T0 mode 1
	repeat:	setb p1.0                             ;set pin
	        acall delay1                          ;call small delay routine                         
	        clr p1.0                              ;clear pin
	        acall delay2                          ;call large delay routine
	        sjmp repeat                           ;repeat indefinitely
			delay1:mov th0,#0fbh                  ;delay routine for 10ms
			       mov tl0,#0b4h
				   sjmp sequence                  ;jump to timer stop sequence
			delay2:mov th0,#0ech                  ;delay routine for 50ms
			       mov tl0,#78h
		       sequence:setb tr0                  ;start timer 0
				   wait:jnb tf0,wait              ;wait till T0 stops counting
				        clr tr0                   ;clear flags which were
					    clr tf0                   ;modified in the process
						ret                       ;return to main program
end