/// week11-2.cpp
/// 為了解決 SOIT107_ADVANCE_009
/// 我們稍微複習一下「剝皮法」
#include <stdio.h>

int main()
{
    printf("請輸入 1 個數(ex. 183)");
    int n;
    scanf("%d", &n); ///  讀入  n
    int ans = 0; /// 想找到「最大的皮」

    while(n>0){ /// while 迴圈，一直剝皮
        if(n%10 > ans) ans = n%10; ///更大的皮
        printf("剝皮 %d\n", n%10);
        n/=10; /// 剝完皮， n 變小
    }

    printf("最大的皮是 %d\n", ans);
}
