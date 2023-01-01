#include <stdio.h>

extern "C" void __fastcall bubble_sort();

int main() {
    bubble_sort();
    return 0;
}

extern "C" int from_c(int n) {
    printf("%d\n", n);
    return 42;
}
