/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.3.8
 * Brief description:design an algorithm that calculate the sum of series.
 */
import java.util.Scanner;


public class section_2_3_8 {

	public static void main(String[] args) {
		int count=1,p=1,sum=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the last number of the series = ");
		int n=sc.nextInt();
		while(count<=n)
		{
			System.out.println(count*p);
			sum=sum+(count*p);
			p=(-1)*p;
			count=count+2;
		}
		System.out.println("the result of series is = "+sum);
		// TODO Auto-generated method stub

	}

}
