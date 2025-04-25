/// week10-3.cpp
/// SOIT106_ADVANCE_001

#include <stdio.h>

int main(){
	int n;
	scanf("%d", &n);
	int ans=0, b = n; ///「b」是為了避免 n 被剝完皮，而備份
	while(n>0){

		ans = ans * 10 + n % 10; /// 把剝完的皮加總起來
		n = n/10;

	}

	printf("%d+%d=%d\n", b, ans, b+ans);
}
