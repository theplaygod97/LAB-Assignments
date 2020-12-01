/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.3.5(b)
 * Brief description:design an algorithm to calculate the sum of the series.
 */
import java.util.Scanner;


public class Section_2_3_5_b {

	public static void main(String[] args) {
		int count=1,sum=0,term=1;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the total number n = ");
		int n=sc.nextInt();
		while (count<=n)
			{
			sum=sum+term;
			term=term+2;
			count=count+1;
			}
			System.out.println("sum of series = "+sum);
				// TODO Auto-generated method stub

	}

}
