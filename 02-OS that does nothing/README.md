# This folder does nothing
## it is the introduction to assembly
```asm
; A simple boot sector program that loops forever
;loop function
loop:
    jmp loop ;go back to the loop

times 510-($-$$) db 0 ;510 0's boot sector
dw 0xaa55 ; magic number
```
basically it just loops forever
to run run 
```bash
make all
make qemu
```
it should open a window that does nothing
