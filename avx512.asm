global avx512              ; export symbol to C++

section .data
seq: db 'ACGTACGTACGTACGT', 0

section .text
avx512:
    ; First argument in Linux x86-64 is RDI
    mov rax, rdi            ; copy output pointer into rax (not needed, just demo)
    mov byte [rdi], 'X'     ; store a test character into buffer
    ret


