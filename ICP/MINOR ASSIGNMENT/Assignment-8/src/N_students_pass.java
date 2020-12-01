import java.util.Scanner;
public class N_students_pass {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int count=0,marks;
		System.out.println("Enter the number of the student");
		int n=sc.nextInt();
		System.out.println("Enter marks");
		int passcount=0;
		while(count<n)
		{
			marks=sc.nextInt();
			if(marks>=40)
			{
				passcount=passcount+1;
			}
			count++;
		
		}
		System.out.println("Number of students passed = "+passcount);
		
		// TODO Auto-generated method stub

	}

}
