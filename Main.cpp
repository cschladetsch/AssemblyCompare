#include <stdio.h>
#include <assert.h>

extern "C" int retcon();
extern "C" int bubble_sort(int *, int);

void print(int* n, int c) {
    while (c-- > 0) {
        printf("%d ", n[c]);
    }
}


int main() {
    int n[] = { 3,2,1 };
    int ret = bubble_sort(n, 3);
    print(n, 3);
    return 0;
}

extern "C" int from_c(int n) {
    printf("%d\n", n);
    return 123;
}
