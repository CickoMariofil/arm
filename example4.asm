global _start

section .text
_start:
    mov ebx, 1 ; start ebx at 1
    mov ecx, 4 ; number of iterations 

label:
    add ebx, ebx ; doubling ebx by adding to itself
    dec ecx ; decrementing ecx by 1, more efficient
    cmp ecx, 0 ; compare ecx with 0
    jg label ; back to label, we have to loop more
    mov eax, 1 ; sys_exit system call
    int 0x80