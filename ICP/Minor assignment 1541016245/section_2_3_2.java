/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.3.2
 * Brief description:design an algorithm that calculate the average of (n-1).
 */
import java.util.Scanner;
public class section_2_3_2 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the total number n = ");
		int n=sc.nextInt();
		int i;
		int s=0,avg;
		for(i=1;i<=n-1;i++)
		{
			System.out.println("enter the numbers = ");
			int x=sc.nextInt();
			s=s+x;
		}
		avg=s/n;
		System.out.println("the average of n numbers is =  "+avg);
		// TODO Auto-generated method stub

	}

}
