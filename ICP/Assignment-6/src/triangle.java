import java.util.Scanner;


public class triangle {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the side 1 of triangle");
		float a=sc.nextFloat();
		System.out.println("Enter the side 2 of triangle");
		float b=sc.nextFloat();
		System.out.println("Enter the side 3 of triangle");
		float c=sc.nextFloat();
		if (a==b && b==c && c==a)
			System.out.println("The triangle is equilateral");
		else if(a==b||b==c||c==a)
			System.out.println("The triangle is isosceles");
		else 
			System.out.println("The triangle is irregular");
		
	
		// TODO Auto-generated method stub

	}

}
