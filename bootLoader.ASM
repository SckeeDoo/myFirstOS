mov ax, 9ch
mov ss, ax
mov sp, 4096d
mov ax, 7c0h
mov ds, ax


mov  dx, msg
mov al, 37h
int 10h
jmp $

times 510-($-$$) db 0
dw 0xAA55