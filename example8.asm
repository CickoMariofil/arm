global _start

_start:
    call func
    mov eax, 1 ; system exit call
    mov ebx, 0
    int 0x80

func:
    push ebp ; push ebp to the stack in order to save it
    mov ebp, esp ; top of the stack to base pointer
    sub esp, 2
    mov [esp], byte 'H'
    mov [esp+1], byte 'i'
    mov eax, 4; sys write system call
    mov ebx, 1 ; stdout file desc
    mov ecx, esp ; bytes to write
    mov edx, 2 ;number of bytes (HI)
    int 0x80 ; system call
    mov esp, ebp
    pop ebp ; restore ebp
    ret