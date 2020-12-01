
import java.util.*;
public class swap_3 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter first no");
		int x=sc.nextInt();
		System.out.println("Enter second no");
		int y=sc.nextInt();
		System.out.println("Enter third no");
		int z=sc.nextInt();
		        x=x+y+z; 
				y=x-y-z;
				z=x-y-z; 
				x=x-y-z;
		System.out.print("After swapping,we get first no is "+x);
		System.out.print(",second no is "+y);
		System.out.print(" and third no is "+z);

				
		// TODO Auto-generated method stub

	}

}
