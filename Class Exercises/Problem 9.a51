;multiply nos. stored at 9000h and 9001h and store the result in 9002h(LSB) and 9003h(MSB)

org 0000h
	mov dptr,#9000h     ;store location of first operand in dptr
	movx a,@dptr        ;move first operand into a
	mov b,a             ;copy the first opernad to b
	inc dptr            ;dptr incremented to location of next operand
	movx a,@dptr        ;move second operand into a
	mul ab              ;perform multiplication: a=lsb and b=msb
	inc dptr            ;dptr incremented to location of lsb of result
        movx @dptr,a        ;lsb in a stored at this location
	inc dptr            ;dptr incremented to location of msb of result
	mov a,b             ;msb moved to a since dptr related instructions are valid only with the accumulator
	movx @dptr,a        ;msb in a stored at this location
end
