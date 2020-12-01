import java.util.Scanner;


public class gradation {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the mark");
		int mark=sc.nextInt();
		if (mark<40)
			System.out.println("Grade F");
		else if(mark>=40 && mark<50)
			System.out.println("Grade E");
		else if(mark>=50 && mark<60)
			System.out.println("Grade D");
		else if(mark>=60 && mark<70)
			System.out.println("Grade C");
		else if(mark>=70 && mark<80)
			System.out.println("Grade B");
		else if(mark>=80 && mark<90)
			System.out.println("Grade A");
		else if(mark>=90)
			System.out.println("Grade O");
		}
		// TODO Auto-generated method stub

}
