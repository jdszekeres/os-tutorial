mov ah, 0x0e ; tty mode
mov al, 'H' ;move h to al (A.k.A print "h")
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10
int 0x10
mov al, ' '
int 0x10
mov al, 'w'
int 0x10
mov al, 'o'
int 0x10
mov al, 'r'
int 0x10
mov al, 'l'
int 0x10
mov al, 'd'
int 0x10
mov al, ' '

jmp $ ; jump to current address = infinite loop

;magic number
times 510 - ($-$$) db 0
dw 0xaa55