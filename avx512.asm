section .text
global _start
_start:
    mov eax, 60     ; sys_exit
    xor edi, edi
    syscall



