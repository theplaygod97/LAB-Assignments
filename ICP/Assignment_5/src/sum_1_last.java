import java.util.Scanner;


public class sum_1_last {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the 4 digit no");
		int x=sc.nextInt();
		int sum;
		sum=(x%10)+(x/1000);
		System.out.println("sum of first and last digit = "+sum);
		// TODO Auto-generated method stub

	}

}
