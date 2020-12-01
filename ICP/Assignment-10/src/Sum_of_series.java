import java.util.Scanner;


public class Sum_of_series {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the number of digits = ");
		int n=sc.nextInt();
		int i=1,fact=1,fs=1;
		while (i<=n)
		{
			fact=i*fact;
			fs=fs+fact;
			System.out.println("Factorial of "+i+" is "+fact);
			i=i+1;
		}
		System.out.println("sum of series = "+fs);
		// TODO Auto-generated method stub

	}

}
