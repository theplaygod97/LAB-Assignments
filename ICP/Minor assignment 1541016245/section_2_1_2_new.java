/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.1.2
 * Brief description:design an algorithm that shows swapping between 2 numbers without using extra variables.
 */
import java.util.*;
public class section_2_1_2_new {

	public static void main(String[] args) {
		int a,b,c;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the value of a = ");
		a=sc.nextInt();
		System.out.println("enter the value of b = ");
		b=sc.nextInt();
		System.out.println("enter the value of c = ");
		c=sc.nextInt();
		a=a+(b+c);
		b=a-(b+c);
		c=a-(b+c);
		a=a-(b+c);
		System.out.println("interchanged value of a = "+a);
		System.out.println("interchanged value of b = "+b);
		System.out.println("interchanged value of c = "+c);
		// TODO Auto-generated method stub

	}

}
