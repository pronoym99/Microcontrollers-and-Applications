org 0000h
	mov p1,#00h
	mov p2,#00h
	check:jnb p2.0,decrement
	      clr p2.1
	      inc p1
	      acall delay
	      sjmp check
decrement:jnb p2.1,check
          clr p2.0
          dec p1
	  acall delay
	  sjmp check
		  
    delay:mov r1,#0ffh
	   h1:mov r2,#0ffh
	   h2:mov r3,#0ffh
	   h3:djnz r3,h3
	      djnz r2,h2
	      djnz r1,h1
	   ret
	      
end
