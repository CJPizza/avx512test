option casemap:none
public avx512

.data
seq db 'ACGTACGTACGTACGT'  ; DNA bases (ASCII)

.code
avx512 proc
    vmovdqu8 zmm0, ZMMWORD PTR [seq]

    vextracti32x4 xmm1, zmm0, 0

    movdqu XMMWORD PTR [rcx], xmm1

    ret
avx512 endp

end
