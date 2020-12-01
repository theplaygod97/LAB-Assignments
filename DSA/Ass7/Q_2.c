#include <stdio.h>
#include <math.h>

struct Point {
    int x, y;
};
double getDistance(struct Point a, struct Point b);
int main()
{
    struct Point a,b;
    printf("Enter coordinate of point a: ");
    scanf("%lf %lf", &ax, &ay);
    printf("Enter coordinate of point b: ");
    scanf("%lf %lf", &bx, &by);
    getchar();
    printf("Distance between a and b: %lf\n",getDistance(a,b));
    return 0;
}
double getDistance(struct Point a, struct Point b)
{
    double distance;
    distance = sqrt((ax-bx)^2+(ay-by)^2);
    return distance;
}


