ORG 100H
INCLUDE 'EMU8086.INC'

;REMEMBER SOME NOTES:
;SCAN_NUM USE CX REGISTER TO INPUT
;PRINT_NUM_UNS USE AX REGISTER TO PRINT 

;STR DB 'ABCDEFGHIJKLMLKJIHGFEDCBA',0     ;PALINDROME
STR DB 'ABCDEFGHIJKLMLKJJHGFEDCBA',0     ;NOT PALINDROME


MOV SI,0


FIND_LENGTH:
    CMP STR[SI], 0
    JE PRINT_LENGTH  
    
    
    INC SI
    
    JMP FIND_LENGTH
    

PRINT_LENGTH: 
    XOR AX,AX
    PRINT 'YOUR STRING LENGTH IS: $'
    MOV AX,SI
    CALL PRINT_NUM_UNS
    PRINTN 
    

MOV CX,0
SUB AX,1    
CHECK_PAL:  
    CMP AX,CX
    JLE MATCHED
    
    
    MOV SI,AX
    MOV BL,STR[SI]
    
    
    MOV SI,CX
    
    CMP STR[SI],BL
    JNE NOT_MATCHED     
    
    INC CX
    DEC AX
    
    JMP CHECK_PAL
    
    
NOT_MATCHED:
    PRINTN 'STRING IS NOT PALINDROME'  
    JMP DONE
      

MATCHED:
    PRINTN 'STRING IS PALINDROME'
         
DONE:  

    
    

PRINTN
PRINTN
PRINT 'THANKS FOR RUN THIS CODE...$'
DEFINE_SCAN_NUM      
DEFINE_PRINT_NUM_UNS 
END