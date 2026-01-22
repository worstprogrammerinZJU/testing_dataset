// 源文件: 2027.c
// 编号: 100
// 提取自当前目录

#include <stdio.h>
int main()
{
    int t,a,b;
    scanf("%d",&t);
    while(t-->0)
    {
        scanf("%d%d",&a,&b);
        printf("%s BRAINS\n",(a<b?"NO":"MMM"));
    }    
	return 0;
}
