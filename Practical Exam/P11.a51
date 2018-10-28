org 0000h

mov a,55h                     ;store your byte in accumulator
mov r1,#08h                   ;byte = 8 bits
clr c                         ;clear carry before further operations
mov r2,#00h                   ;counter for 1s
one_check:rlc a               ;rotate through cy flag
          jnc repeat          ;0 detected, repeat operation
		  inc r2              ;1 detected, r2+=1
   repeat:djnz r1,one_check	  ;move to next bit

end  