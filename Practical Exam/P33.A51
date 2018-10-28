org 0000h
	;assume byte = 23h whose occurrences needs to be counted
	mov r0,#50h                           ;initial location loaded
	mov r1,#30h                           ;50B to be scanned
	mov r2,#00h                           ;byte counter
	count:cjne @r0,#23h,move_ahead        ;byte not detected so move ahead
	      inc r2                          ;byte detected, r2+=1
          move_ahead:inc r0               ;move to next location
                     djnz r1,count        ;repeat until all bytes scanned
end					 