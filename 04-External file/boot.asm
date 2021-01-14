[org 0x7c00] ; tell the assembler that our offset is bootsector code

; The main routine makes sure the parameters are ready and then calls the function
mov bx, HELLO ;move hello world to bx in memory
call print ;then from memory print hello world

call print_nl ;newline

mov bx, GOODBYE ;same thig as hello but goodbye
call print;call print again

call print_nl

; that's it! we can hang now
jmp $

;include print.asm
%include "print.asm"



; data
HELLO:
    db 'Hello, World', 0

GOODBYE:
    db 'Goodbye', 0

;magic number
times 510-($-$$) db 0
dw 0xaa55