#include<stdio.h>
#include<stdlib.h>

int main()
{
int *ptr,sum=0,i;

ptr = (int *)malloc(sizeof(int));

for(i=0;i<2;i++)
    {
    printf("Enter number : ");
    scanf("%d",ptr);
    sum = sum + (*ptr);
    }

printf("nSum = %d",sum);
return(0);
}
