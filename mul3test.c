#include <stdio.h>

// 宣告組合語言函式
int mul3(int a, int b, int c);

int main() {
    int a = 4, b = 5, c = 6;
    int result = mul3(a, b, c);
    printf("mul3(%d,%d,%d)=%d\n", a, b, c, result);
    return 0;
}
