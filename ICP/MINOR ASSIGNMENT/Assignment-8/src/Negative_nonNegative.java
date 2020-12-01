import java.util.Scanner;
public class Negative_nonNegative {

public static void main(String[]args){
	Scanner sc=new Scanner(System.in);
	int num1,i,n=0,p=0,num2;
	System.out.println("Enter the total numbers ");
	num1=sc.nextInt();
	for  (i=0;i<num1;i++)
	{
		System.out.println("enter a no-");
		num2=sc.nextInt();
		if (num2>0)
		{
			p=p+1;
		}
		else
		{
			n=n+1;
		}
		
	}
	System.out.println("the total number of positive integers:" +p+ "and negative no: "+n);
		// TODO Auto-generated method stub

	}

}
