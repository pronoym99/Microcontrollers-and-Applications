org 0000h
	mov a,#1h                 ;load initial pattern here
	mov r1,#07h               ;7 iterations remaining
	mov tmod,#01h             ;T0 Mode 1
        mov tl0,#0b0h            ;settings for 50ms
	mov th0,#3ch
	back:mov p1,a             ;p1 <- A
	     rl a                 ;rotate left by one bit
             mov p1,a            ;restore value in port
	     acall delay          ;call delay routine twice
	     acall delay          ;for 100ms delay
	     djnz r1,back         ;repeat until last pattern
	     sjmp finish          ;terminate program
       delay:setb tr0             ;start timer 0
        wait:jnb tf0,wait         ;wait till T0 overflows
	     clr tr0              ;clear flags which were
	     clr tf0              ;modified in the process
	     ret                  ;return to main program
finish:
end
