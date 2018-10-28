org 0000h
   ;Assume clock frequency = 12MHz
	mov tmod,#1h                                  ;T0 mode 1
	repeat:	mov p1,#55h                           ;sequence = 01010101b
	        acall delay                           ;call delay routine                         
	        mov p1,#0aah                          ;sequence = 10101010b
	        acall delay                           ;call delay routine again
	        sjmp repeat                           ;repeat indefinitely
			delay:mov th0,#0c5h                   ;delay routine for 15ms
			      mov tl0,#068h
				  setb tr0                        ;start timer 0
			 wait:jnb tf0,wait                    ;wait till T0 stops counting
				  clr tr0                         ;clear flags which were
				  clr tf0                         ;modified in the process
				  ret                             ;return to main program
end