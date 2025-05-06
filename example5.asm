global _start 

section .data
    addr db "yellow" ; pointer to some memory address, bytes yellow

section .text
_start: 
    mov eax, 4 ; sys_write system call
    mov ebx, 1 ; stdout file descr
    mov ecx, addr ; bytes to write
    mov edx, 6 ; number of bytes (yellow is 6 bytes)
    int 0x80
    mov eax, 1 ;sys_exit system call
    mov ebx, 0 ; exit status is 0
    int 0x80