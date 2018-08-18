;program to exchange the contents of SP and PSW

org 0000h
	xch a,sp     ;data in sp excahnged with accumulator
	xch a,psw    ;data in psw excahnged with accumulator
	xch a,sp     ;data in sp excahnged with  accumulator
end