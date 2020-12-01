import java.util.Scanner;


public class GENERATION {

	public static void main(String[] args) {
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter the YEAR");
			int year=sc.nextInt();
			if (year<1966)
				System.out.println("old");
			else if(year>=1966 && year<1980)
				System.out.println("X gen");
			else if(year>=1981 && year<1999)
				System.out.println("Y gen");
			else if(year>=2000 && year<2012)
				System.out.println("Z gen");
			else if(year>=2012)
				System.out.println("kid");
			}
		// TODO Auto-generated method stub

	}


