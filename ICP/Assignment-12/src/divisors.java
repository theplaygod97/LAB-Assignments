import java.util.Scanner;


public class divisors {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the value of no");
		double no=sc.nextDouble();
		int d,r,count=0;
		r=(int)Math.sqrt(no);
		d=1;
		while (d<=r)
		{
	if(no%d==0)
	{
if(no/d==d)
{
System.out.println("Divisor is "+d);
}
else
{
int x=(int) (no/d);
System.out.println("Answer is "+d+","+x);
}
	}
count=count+2;
}
		d=d+1;

System.out.println("No of div ="+count);
		// TODO Auto-generated method stub

	}
}

