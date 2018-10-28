org 0000h
	mov p2,#00h
	wait1:jnb p2.0,wait1
	      clr p1.0
       wait2:jnb p2.1,wait2
             setb p1.0
             sjmp wait1
end		  
	
