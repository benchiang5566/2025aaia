/// week14-4.cpp
/// UVA11063 : B2-Sequence
#include <stdio.h>
int main()
{
	int N, t=1;
	int a[100];
	while(scanf("%d", &N)==1){ /// Part1: part
		int bad=0; /// Part 3: Bad or not bad
		for(int i=0; i<N; i++){ /// Part 1: Part 1
			scanf("%d", &a[i]); /// Part 1: Part 1
			if(i>0 && a[i-1] >= a[i]) bad = 1; /// Part5: bigger-bigger
		}
	if(a[0]<1) bad=1; ///Part 3
	int table[20002] = {}; /// Part 6: table not equal
	for(int i=0; i<N; i++){
		for(int j=i; j<N; j++){
			int now = a[i]+a[j];
			if(table[now]>0) bad = 1; /// Part 6
			table[now]++;
		}
	}
	/// Part 2: Output, Part4: if(bad==0) else
	if(bad==0) printf("Case #%d: It is a B2-Sequence.\n\n", t);
	else printf("Case #%d: It is not a B2-Sequence.\n\n", t);
	t++;
	}
}
