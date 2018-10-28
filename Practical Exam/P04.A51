org 0000h
	mov a,30h             ;move byte at 30h to acc.
	add a,31h             ;add byte at 31h to acc.
	jnc no_carry          ;if no carry is generated simply add the next no.
	inc 33h               ;else increment your msb
	no_carry:add a,32h    ;add the next number
	         jnc finish   ;if no carry is generated then finish operation
		 inc 33h      ;else increment your msb
finish:mov 34h,a          ;store msb in 34h as presribed in problem
end
