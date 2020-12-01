/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.3.6
 * Brief description:design an algorithm to print the series upto n numbers.
 */
import java.util.*;
public class Section_2_3_6 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.print("Enter the last term of the series =  ");
		int n=sc.nextInt();
		int i;
		for(i=1;i<=n;i*=2)
		{
			System.out.println(" "+i+" ");
		}
		// TODO Auto-generated method stub

	}

}
