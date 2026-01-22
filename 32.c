// 源文件: 1218.c
// 编号: 32
// 提取自当前目录

#include <stdio.h>
#include <math.h>
int main()
{
	int n,k,i=1;
	scanf("%d",&n);
	while (i<=n)
	{
		scanf("%d",&k);
		printf("%d\n",(int)sqrt(k));
		i++;
	}
	return 0;
}
