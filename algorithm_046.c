// 源文件: 1455.c
// 编号: 46
// 提取自当前目录

#include<stdio.h>
int main()
{
	int n,i,d;
	scanf("%d",&n);
	for (i=0;i<n;i++)
	{
		scanf("%d",&d);
		printf("%d\n",(d/2)*((d-1)/2));
	}
	return 0;
}
