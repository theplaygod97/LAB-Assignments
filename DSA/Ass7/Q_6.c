#include <stdio.h>
#include <stdlib.h>
 
struct complex
{
  int real, img;
};
 
int main()
{
  int choice, temp1, temp2, temp3;
  struct complex a, b, c;
 
  while(1)
  {
    printf("Press 1 to add\n");
    printf("Press 2 to subtract\n");
    printf("Press 3 to multiply\n");
    printf("Press 4 to divide\n");
    printf("Press 5 to exit.\n");
    printf("Enter your choice\n");
    scanf("%d",&choice);
 
    if( choice == 5)
      exit(0);
 
    if(choice >= 1 && choice <= 4)
    {
      printf("Enter a and b (a + ib) is the first complex number.");
      printf("\na = ");
      scanf("%d", &a.real);
      printf("b = ");
      scanf("%d", &a.img);
      printf("Enter c and d (c + id) is the second complex number.");
      printf("\nc = ");
      scanf("%d", &b.real);
      printf("d = ");
      scanf("%d", &b.img);
    }
    if ( choice == 1 )
    {
      c.real = a.real + b.real;
      c.img = a.img + b.img;
 
      if ( c.img >= 0 )
        printf("Sum = %d + %di",c.real,c.img);
      else
        printf("Sum = %d %di",c.real,c.img);
    }
    else if ( choice == 2 )
    {
      c.real = a.real - b.real;
      c.img = a.img - b.img;
 
      if ( c.img >= 0 )
        printf("Difference = %d + %di",c.real,c.img);
      else
        printf("Difference = %d %di",c.real,c.img);
    }
    else if ( choice == 3 )
    {
      c.real = a.real*b.real - a.img*b.img;
      c.img = a.img*b.real + a.real*b.img;
 
      if ( c.img >= 0 )
        printf("Multiplication = %d + %di",c.real,c.img);
      else
        printf("Multiplication = %d %di",c.real,c.img);
    }
    else if ( choice == 4 )
    {
      if ( b.real == 0 && b.img == 0 )
        printf("Division by 0 + 0i is not allowed.");
      else
      {
        temp1 = a.real*b.real + a.img*b.img;
        temp2 = a.img*b.real - a.real*b.img;
        temp3 = b.real*b.real + b.img*b.img;
 
        if ( temp1%temp3 == 0 && temp2%temp3 == 0 )
        {
          if ( temp2/temp3 >= 0)
            printf("Division of two complex numbers = %d + %di",temp1/temp3,temp2/temp3);
          else
            printf("Division of two complex numbers = %d %di",temp1/temp3,temp2/temp3);
        }
        else if ( temp1%temp3 == 0 && temp2%temp3 != 0 )
        {
          if ( temp2/temp3 >= 0)
            printf("Division of two complex numbers = %d + %d/%di",temp1/temp3,temp2,temp3);
          else
            printf("Division of two complex numbers = %d %d/%di",temp1/temp3,temp2,temp3);
        }
        else if ( temp1%temp3 != 0 && temp2%temp3 == 0 )
        {
          if ( temp2/temp3 >= 0)
            printf("Division of two complex numbers = %d/%d + %di",temp1,temp3,temp2/temp3);
          else
            printf("Division of two complex numbers = %d %d/%di",temp1,temp3,temp2/temp3);
        }
        else
        {
          if ( temp2/temp3 >= 0)
            printf("Division of two complex numbers = %d/%d + %d/%di",temp1,temp3,temp2,temp3);
          else
            printf("Division of two complex numbers = %d/%d %d/%di",temp1,temp3,temp2,temp3);
        }
      }
    }
    else
      printf("Invalid choice.");
  }
}
