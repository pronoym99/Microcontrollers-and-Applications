;program to double the number in R2 and store the result in R3 and R4

org 0000h
	mov a,r2     ;store value of r2 in accumulator
	mov b,#02h   ;store 2h in B for multiplication
	mul ab       ;perform multiplication: a=lsb and b=msb of product
	mov r3,a     ;lsb moved to r3
	mov r4,b     ;msb moved to r4
end