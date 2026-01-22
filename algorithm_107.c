// 源文件: 2109.c
// 编号: 107
// 提取自当前目录

#include<stdio.h>
#include<math.h>
int main()
{
 	double n,p;
 	while(scanf("%lf%lf",&n,&p)!=EOF)
		printf("%.0lf\n",pow(p,1/n));
 	return 0;
}
