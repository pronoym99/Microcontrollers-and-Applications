org 0000h
	mov p2,#00h                            ;configure as input
	clr p1.0                               ;initially LED is ON
	wait_for_press:jnb p2.0,act            ;if sw is not pressed switch OFF LED
	               clr p1.0                ;switch ON the LED
		       sjmp wait_for_press     ;wait for another press
		   act:setb p1.0               ;LED switched OFF
		       sjmp wait_for_press     ;wait for another press
end
