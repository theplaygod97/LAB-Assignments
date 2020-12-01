/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.2.2
 * Brief description:total number of positive and negative number.
 */
import java.util.*;
public class Section_2_2_2 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=0,po = 0,ne = 0;
		System.out.println("enter the number n = ");
		int n=sc.nextInt();
		while (i<n)
		{
			i=i+1;
			System.out.println("enter the number = ");
			int x=sc.nextInt();
			if(x>0)
			{
				po=po+1;
			}
			else
			{
				ne=ne+1;
			}
			
		}
		System.out.println("total positive numbers are = "+po);
		System.out.println("total negative numbers are = "+ne);
		// TODO Auto-generated method stub

	}

}
