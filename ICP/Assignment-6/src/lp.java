import java.util.Scanner;


public class lp {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the year");
		int year=sc.nextInt();
       
        //if year is divisible by 4, it is a leap year
       
        if((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0)))
                System.out.println("Year " + year + " is a leap year");
        else
                System.out.println("Year " + year + " is not a leap year");
}

		// TODO Auto-generated method stub

	}


