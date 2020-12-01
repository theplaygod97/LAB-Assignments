import java.util.Scanner;
public class as_3_1 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("enter the value of m");
	int m=sc.nextInt();
	float g1,g2;
	g2=m/2;
	do
	{
		g1=g2;
		g2=(g1+(m/g1))/2;
	}
	while((g1-g2)>0.001);
	float sqrt=g2;
	System.out.println(+sqrt);
	int r=(int)sqrt;
	if((g2-r)>0.01)
	{
		int p=r+1;
		System.out.println(+p);
	}
	else
	{
		System.out.println(+sqrt);
	}

		// TODO Auto-generated method stub
}
}

