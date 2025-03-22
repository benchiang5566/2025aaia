
#include <stdio.h>///使用standard標準的input/output

int main()
{
	int a, b;///整數a,b
	scanf("%d%d",&a,&b);///毒入資料(小心"%d%d"後面要逗號
	///兩個%d%d  &  &
	printf("%d",a+b);///印出資料，答案印出來
}
