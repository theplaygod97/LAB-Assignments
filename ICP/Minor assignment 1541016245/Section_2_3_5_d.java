/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.3.5(d)
 * Brief description:design an algorithm to calculate the sum of the series.
 */
import java.util.Scanner;


public class Section_2_3_5_d {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the total number n = ");
		int n=sc.nextInt();
		int count=1;
		double sum=0;
		while(count<=n)
		{
			sum=(sum+(1/count));
			count=count+1;
		}
		
		System.out.println("sum of series is = "+sum);
		
	}
		// TODO Auto-generated method stub

	}

