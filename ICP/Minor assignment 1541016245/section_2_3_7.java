
/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.3.7
 * Brief description:design an algorithm to display the series upto n numbers.
 */
import java.util.Scanner;


public class section_2_3_7 {

	public static void main(String[] args) {
		int count=1,p=1;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the total number n = ");
		int n=sc.nextInt();
		while(count<=n)
		{
			System.out.println(+p);
			p=(-1)*p;
			count=count+1;
		}
		// TODO Auto-generated method stub

	}

}
