// 源文件: 1607.c
// 编号: 62
// 提取自当前目录

#include<stdio.h>
int  main()
{
	double xinxi[100000],sum=0;
	int i;
	for (i=1;i<100000;i++)
	{
		sum+=1.000000/(2*i);
		xinxi[i]=sum;
	}
	printf("Cards  Overhang\n");
	while (scanf("%ld",&i)!=-1)
		printf("%5d%10.3f\n",i,xinxi[i]);
	return 0;
}
