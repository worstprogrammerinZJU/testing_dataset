// 源文件: 1543.c
// 编号: 54
// 提取自当前目录

#include <stdio.h>
void cude (int n)
{
	int i,j,k,m=n*n*n,p,q,r;
	for (i=2;i<n-2;i++)
	{
		p=i*i*i;
		for (j=i+1;j<n;j++)
		{
			q=p+j*j*j;
			if (q>=m)
				break;
			for (k=j+1;k<n;k++)
			{
				r=q+k*k*k;
				if (r==m)
					printf("Cube = %d, Triple = (%d,%d,%d)\n",n,i,j,k);
				else if (r>m)
					break;
			}
		}
	}
}
int main()
{
	int n,i;
	scanf("%d",&n);
	for (i=6;i<=n;i++)
		cude(i);
	return 0;
}
