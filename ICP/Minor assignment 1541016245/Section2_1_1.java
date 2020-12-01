import java.util.*;
public class Section2_1_1 {

	public static void main(String[] args) {
		String x="";
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the content of glass 1 (g1) = ");
		String g1=sc.next();
		System.out.println("enter the content of glass 2 (g2) = ");
		String g2=sc.next();
		x=g2;
		g2=g1;
		g1=x;
		System.out.println("glass 1 = "+g1+"     glass 2 = "+g2);
		
		
		// TODO Auto-generated method stub

	}

}
