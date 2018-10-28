org 0000h
	mov r1,#0ah                   ;counter = 10
	mov dptr,#9000h               ;array starts here
	array_inc:movx a,@dptr        ;move content location in accumulator
	          inc a               ;increment content
	          movx @dptr,a        ;restore content
		  inc dptr            ;move to next location
		  djnz r1,array_inc   ;repeat process
end
