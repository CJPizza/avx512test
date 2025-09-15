global avx512

section .data
seq: db 'ACGTACGTACGTACGT'

section .text

; void avx512(char* out);
avx512:
    vmovdqu8 zmm0, [rel seq]

    vextracti32x4 xmm1, zmm0, 0 

    movdqu [rdi], xmm1

    ret

