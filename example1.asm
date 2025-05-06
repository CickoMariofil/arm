global _start:

_start:
    
    mov eax, 1 ;system exit call, success
    mov ebx, 42 ;exit status code
    sub ebx, 29 ;substract from ebx
    int 0x80 ;syscall