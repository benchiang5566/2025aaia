/// week10-2.cpp

#include <stdio.h>

int main(){
    printf("請輸入1個正整數: ");
    int n;
    scanf("%d", &n); ///ex. 輸入 397
    ///printf("個位數是 %d\n", n%10);
    ///printf("十位數是 %d\n", n/10 %10);
    ///printf("百位數是 %d\n", n/100 %10);
       while(n>0){ /// 如果還有剩下 n 就繼續
        printf("數字 %d剝皮後:%d\n", n, n%10); ///剝皮
        n=n / 10; /// 數字變小了 變 1 / 10
        }
}
