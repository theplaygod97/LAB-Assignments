import java.util.*;
public class swap_2 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the first no");
		int x=sc.nextInt();
		System.out.println("Enter the second no");
		int y=sc.nextInt();
		x=x+y;
		y=x-y;
		x=x-y;
		System.out.print("After swapping the first no. is "+x);
		System.out.print(" and second no. is "+y);
				
		
		
		// TODO Auto-generated method stub

	}

}
