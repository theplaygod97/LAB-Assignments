import java.util.Scanner;


public class grade_using_switch {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the mark");
	    int mark=sc.nextInt();
		int grade;
		grade=mark/10;
		switch(grade)
		{
		case (10):
			System.out.println("Grade O");
		break;
		case (9):
			System.out.println("Grade O");
		break;
		case (8):
			System.out.println("Grade E");
		break;
		case (7):
			System.out.println("Grade D");
		break;
		case (6):
			System.out.println("Grade C");
		break;
		case (5):
			System.out.println("Grade B");
		break;
		case (4):
			System.out.println("Grade A");
		break;
		
		default:
			System.out.println("You have failed Grade F");
		}
		// TODO Auto-generated method stub

	}

	

		// TODO Auto-generated method stub
		
	}





