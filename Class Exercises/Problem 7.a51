;program to set and clear bit 7 of internal RAM address 28h without changing any other bits in byte

org 0000h
	setb 28h.7
	clr 28h.7
end