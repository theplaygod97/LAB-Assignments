import java.util.Scanner;

import java.util.Scanner;
public class Age_message {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the age");
		int age=sc.nextInt();
		if (age<16)
			System.out.println("You can't drive.");
		else if(age>=16 && age<17)
			System.out.println("You can drive but can't vote.");
		else if(age>=18 && age<24)
			System.out.println("You can vote but can't rent a car.");
		else if(age>=25)
			System.out.println("You can do pretty much anything.");
		}
		// TODO Auto-generated method stub

	}
