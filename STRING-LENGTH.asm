ORG 100H
INCLUDE 'EMU8086.INC'

;REMEMBER SOME NOTES:
;SCAN_NUM USE CX REGISTER TO INPUT
;PRINT_NUM_UNS USE AX REGISTER TO PRINT 

STR DB 'ABCDKDSFLJSLFJLS',0

MOV SI,0
MOV AH,2

FIND_LENGTH:
    CMP STR[SI], 0
    JE DONE  
   
    INC SI    
    JMP FIND_LENGTH
    

DONE: 
    XOR AX,AX
    PRINT 'YOUR STRING LENGTH IS: $'
    MOV AX,SI
    CALL PRINT_NUM_UNS    

PRINTN
PRINTN
PRINT 'THANKS FOR RUN THIS CODE...$'
DEFINE_SCAN_NUM      
DEFINE_PRINT_NUM_UNS 
END
