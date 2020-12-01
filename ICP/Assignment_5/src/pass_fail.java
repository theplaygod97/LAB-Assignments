import java.util.Scanner;


public class pass_fail {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the mark of student");
		int x=sc.nextInt();
		if (x>=40)
			System.out.println("Congratulation!You have passed the exam.");
		else
				System.out.println("sorry,you have not passed the exam.");
		}
}
		// TODO Auto-generated method stub

	
