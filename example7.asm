global _start

_start:
    call func
    mov eax, 1 ; system exit call
    int 0x80

func:
    mov ebx, 42
    pop eax ; pop return address to eax, which call operation previously pushed onto the stack
    jmp eax ; or return instead of pop and jmp