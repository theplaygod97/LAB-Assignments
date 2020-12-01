import java.util.Scanner;


public class iterative_recipocal {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the value of m");
		int m=sc.nextInt();

		float  g1= (float) 0.1,g2,error;
		do{float x=m*g1;
		g2=g1*(2-x);
		error=Math.abs(g2-g1);
		g1=g2;
		}while(error>0.0001);
		float recipocal=g2;
		System.out.println("Answer is "+g2);
		}
		// TODO Auto-generated method stub

	}


