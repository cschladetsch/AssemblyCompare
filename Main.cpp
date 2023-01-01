#include <stdio.h>
#include <assert.h>

extern "C" int __fastcall bubble_sort();

int main() {
    int ret = bubble_sort();
    assert(ret == 123);
    return 0;
}

extern "C" int from_c(int n) {
    printf("%d\n", n);
    return 123;
}
