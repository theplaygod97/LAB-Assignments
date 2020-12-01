/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.3.4
 * Brief description:calculation of harmonic mean.
 */
import java.util.Scanner;
public class section_2_3_4 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n,i;
		double s=0,h;
		System.out.print("Enter the total numbers =  ");
		n=sc.nextInt();
		for (i=0;i<n;i++)
		{
			System.out.println("enter the number = ");
			double x=sc.nextDouble();
			s=s+(1/x);
		}
		h=n/s;
		System.out.println("harmonic mean is = "+h);
	}


		// TODO Auto-generated method stub
		}
	


	


