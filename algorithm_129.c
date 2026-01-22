// 源文件: 2316.c
// 编号: 129
// 提取自当前目录

#include<stdio.h>
int main()
{
	int i;
	char s[11],t[11];
	scanf("%s",s);
	while (scanf("%s",t)!=EOF)
	{
		for (i=0;t[i]!='\0';i++)
		{
			s[i]+=t[i]-'0';
			if (s[i]>'9')
				s[i]-=10;
		}
	}
	printf("%s\n",s);
	return 0;
}
