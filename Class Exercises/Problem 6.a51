;program to complement every bit in R6(Bank 0)

org 0000h
	mov a,r6     ;load r6 into accumulator for complementaion
	cpl a        ;complement accumulator
	mov r6,a     ;restore value in r6
end