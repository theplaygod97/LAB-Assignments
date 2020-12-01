#include <stdio.h>
#define SIZE 50
struct student
{
char Name[30];
int roll;
float M1;
float M2;
float M3;
float avg;
};
typedef struct student student;
int main()
{
student s[SIZE];
int i;
for(i=0;i<=3;i++)
{
printf("Input Name,Roll,Mark 1,Mark 2,MArk 3");
gets(s[i].Name);
scanf("%d%f%f%f",&s[i].roll,&s[i].M1,&s[i].M2,&s[i].M3);
s[i].avg=(s[i].M1+s[i].M2+s[i].M3)/3;
if (s[i].avg>=50)
{
printf("Student has passed with an average of %f .",s[i].avg );
}
else
{
printf("Student has failed.Average = %f",s[i].avg);
}
}
return 0;
}
