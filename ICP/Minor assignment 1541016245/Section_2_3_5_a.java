/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.3.5(a)
 * Brief description:design an algorithm that calculate the series.
 */
import java.util.Scanner;


public class Section_2_3_5_a {

	public static void main(String[] args) {
		int i,s=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the total number n = ");
		int n=sc.nextInt();
		for(i=1;i<=n;i++)
		{
			s=s+i;
			
		}
		System.out.println("the sum of series is = "+s);
		// TODO Auto-generated method stub

	}

}
