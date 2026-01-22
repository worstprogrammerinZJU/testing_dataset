// 源文件: 1003.c
// 编号: 4
// 提取自当前目录

#include <stdio.h>
int main()
{
	int i;
	double n,m=0;
	scanf("%lf",&n);
	while(n!=0)
	{
		for (i=2;m<n;i++)
		{
			m+=1/(double)i;
		}
		printf("%d card(s)\n",i-2);
		scanf("%lf",&n);
		m=0;
	}
	return 0;
}
