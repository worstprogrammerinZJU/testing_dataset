// 源文件: 1663.c
// 编号: 68
// 提取自当前目录

#include <stdio.h>
int main()
{
	int n,i,x,y;
	scanf("%d",&n);
	for (i=0;i<n;i++)
	{
		scanf("%d%d",&x,&y);
		if (x!=y && x-2!=y)
			printf("No Number\n");
		else printf("%d\n",x+y-x%2);
	}
	return 0;
}
