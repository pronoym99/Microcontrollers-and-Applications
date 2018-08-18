;program to swap the contents of R7 and R6 residing in bank 0

org 0000h
	xch a,r6     ;data in r6 excahnged with accumulator
	xch a,r7     ;data in r7 excahnged with accumulator
	xch a,r6     ;data in r6 excahnged with  accumulator
end