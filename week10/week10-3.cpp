/// week10-3.cpp
/// SOIT106_ADVANCE_001

#include <stdio.h>

int main(){
	int n;
	scanf("%d", &n);
	int ans=0, b = n; ///�ub�v�O���F�קK n �Q�駹�֡A�ӳƥ�
	while(n>0){

		ans = ans * 10 + n % 10; /// ��駹���֥[�`�_��
		n = n/10;

	}

	printf("%d+%d=%d\n", b, ans, b+ans);
}
