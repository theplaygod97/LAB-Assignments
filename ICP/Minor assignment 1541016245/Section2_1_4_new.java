/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.1.4
 * Brief description:design an algorithm that shows swapping between 2 numbers without using extra variables.
 */
import java.util.*;
public class Section2_1_4_new {

	public static void main(String[] args) {
		int a,b;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the value of a = ");
		a=sc.nextInt();
		System.out.println("enter the value of b = ");
		b=sc.nextInt();
		a=a+b;
		b=a-b;
		a=a-b;
		System.out.println("interchanged value of a = "+a);
		System.out.println("interchanged value of b = "+b);

		// TODO Auto-generated method stub

	}

}
