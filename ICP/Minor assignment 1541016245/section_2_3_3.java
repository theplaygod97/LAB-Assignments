/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.3.3
 * Brief description:design an algorithm that calculate the square of n numbers.
 */
import java.util.*;
public class section_2_3_3 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n,i,num,sum=0;
		System.out.print("Enter the total number =  ");
		n=sc.nextInt();
		for (i=0;i<n;i++)
		{
			System.out.print("\nEnter a no. ");
			num=sc.nextInt();
			sum=sum+(num*num);
		}
		System.out.print("\nThe sum of squares of the numbers is =  "+sum);
	}
		// TODO Auto-generated method stub

	}
