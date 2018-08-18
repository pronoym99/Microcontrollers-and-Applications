;program to place the number 3Bh in internal RAM locations 30h to 32h

org 0000h
	mov 30h,#3bh     ;move the immediate value 
	mov 31h,#3bh     ;of 3bh in each of
	mov 32h,#3bh     ;the registers
end
	