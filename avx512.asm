section .data
    seq db 'ACGTACGTACGTACGT'

section .text
    global avx512

; void avx512(char* out);

avx512:
    vmovdqu8 zmm0, [rel seq]

    vextracti32x4 xmm1, zmm0, 0

    movdqu [rdi], xmm1

    ret
