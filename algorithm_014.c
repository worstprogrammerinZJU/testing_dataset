// 源文件: 1032.c
// 编号: 14
// 提取自当前目录

#include <stdio.h>
int main()
{
	int n,i=4,m=5,j;
	scanf("%d",&n);
	while (m<n)
		m+=i++;
	j=m-n;
	m=2;
	if (j==1)
	{
		m++;
		j=i-1;
		i++;
	}
	while (m<i)
	{
		if (m!=j)
			printf("%d ",m);
		m++;
	}
	return 0;
}
