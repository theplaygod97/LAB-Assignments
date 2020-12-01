import java.util.Scanner;


public class N_single_digit {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the number of digits");
		int n=sc.nextInt();
		int num=0,i=0;
		while(i<n)
		{
			i=i+1;
			
			System.out.println("Enter the digits ");
			int d=sc.nextInt();
			num=num*10+d;
			
		}
		System.out.println("The corresponding number is "+num);
		// TODO Auto-generated method stub

	}

}
