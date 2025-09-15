#include <iostream>
#include <immintrin.h> 

extern "C" void avx512(char* out);

int main() {
    alignas(16) char buffer[16] = { 0 };

    avx512(buffer);

    std::cout << "bases: ";
    for (int i = 0; i < 16; i++) {
        std::cout << buffer[i] << ' ';
    }
    std::cout << "\n";

    return 0;
}

