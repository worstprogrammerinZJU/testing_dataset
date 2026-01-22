// 源文件: 1844.c
// 编号: 86
// 提取自当前目录

#include <stdio.h>
int main()
{
	int n,s=1,i=1;
	scanf("%d",&n);
	while (s<n || (s-n)%2==1)
		s+=++i;
	printf("%d\n",i);
	return 0;
}
