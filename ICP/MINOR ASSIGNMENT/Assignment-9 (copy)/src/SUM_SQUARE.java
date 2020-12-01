import java.util.Scanner;
public class SUM_SQUARE {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n,i,num,sum=0;
		float avg;
		System.out.print("Enter the total number: ");
		n=sc.nextInt();
		for (i=0;i<n;i++)
		{
			System.out.print("\nEnter a no. ");
			num=sc.nextInt();
			sum=sum+(num*num);
		}
		System.out.print("\nThe sum of squares of the numbers is: "+sum);
	}
		// TODO Auto-generated method stub

	}


