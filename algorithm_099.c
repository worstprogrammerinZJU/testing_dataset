// 源文件: 2017.c
// 编号: 99
// 提取自当前目录

#include <stdio.h>
int main()
{
    int n,i,a,b,s,t;
	scanf("%d",&n);
	while (n!=-1)
	{
		s=0;
		t=0;
		for (i=0;i<n;i++)
		{
			scanf("%d%d",&a,&b);
			s+=a*(b-t);
			t=b;
		}
		printf("%d miles\n",s);
		scanf("%d",&n);
	}
	return 0;
}
