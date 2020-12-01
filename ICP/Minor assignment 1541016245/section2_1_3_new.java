/*Author:Akash nilay
 * Regd.no.:1541016423
 * Branch:ECE
 * Section:A
 * Date:05.10.2015
 * Section:2.1.3
 * Brief description:design an algorithm that shows swapping between 4 numbers.
 */
import java.util.*;
public class section2_1_3_new {

	public static void main(String[] args) {
		int a,b,c,d;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the value of a = ");
		a=sc.nextInt();
		System.out.println("enter the value of b = ");
		b=sc.nextInt();
		System.out.println("enter the value of c = ");
		c=sc.nextInt();
		System.out.println("enter the value of d = ");
		d=sc.nextInt();
		d=a+(b+c+d);
		c=d-(b+c+a);
		b=d-(b+c+a);
		a=d-(b+c+a);
		d=d-(b+c+a);
		System.out.println("the interchanged value of a = "+a);
		System.out.println("the interchanged value of b = "+b);
		System.out.println("the interchanged value of c = "+c);
		System.out.println("the interchanged value of d = "+d);
	}
		// TODO Auto-generated method stub

	}
