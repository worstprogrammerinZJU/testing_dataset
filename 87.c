// 源文件: 1852.c
// 编号: 87
// 提取自当前目录

#include<stdio.h>
int main()
{
	int T,t,i,j,n,l,max,min;
	scanf("%d",&T);
	for (t=0;t<T;t++)
	{
		scanf("%d%d",&l,&n);
		min=0;
		max=0;
		for (i=0;i<n;i++)
		{
			scanf("%d",&j);
			j=(j+j)>l ? l-j : j;
			if (j>min)
				min=j;
			if (l-j>max)
				max=l-j;
		}
		printf("%d %d\n",min,max);
	}
	return 0;
}
