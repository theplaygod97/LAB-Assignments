#include <stdio.h>
#include <stdlib.h>
int main(){
    int i,n;
    float *data;
    printf("Enter total number of elements(1 to 100): ");
    scanf("%d",&n);
    data=(float*)malloc(sizeof(float));
    if(data==NULL)
    {
        printf("Error!!! memory not allocated.");
        exit(0);
    }
    printf("\n");
    for(i=0;i<n;++i)
    {
       printf("Enter Number %d: ",i+1);
       scanf("%f",data+i);
    }
    for(i=1;i<n;++i)
    {
       if(*data<*(data+i)) 
           *data=*(data+i);
    }
    printf("Largest element = %.2f",*data);
    return 0;
}
