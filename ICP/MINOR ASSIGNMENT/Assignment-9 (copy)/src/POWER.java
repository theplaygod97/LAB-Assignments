import java.util.Scanner;
public class POWER {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n,i;
		System.out.print("Enter the total no. of terms ");
		n=sc.nextInt();
		for (i=1;i<=n;i++)
		{
			double x=Math.pow(2,i);
			System.out.print(x+" ");
		}
		// TODO Auto-generated method stub

	}

}
