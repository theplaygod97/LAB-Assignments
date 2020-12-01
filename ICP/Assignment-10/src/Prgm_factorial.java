import java.util.Scanner;
public class Prgm_factorial {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
	       System.out.print("Enter the n");
	       int n = scanner.nextInt();
	       System.out.print("Enter the x");
	       int x=scanner.nextInt();
	       int f=1;
	       int i=1;
		for(int s=1;i<=n;i++)
	       {
			if
			(i<=n)
	    	s=s*x;
	    	f=f*i;
	    	i=i+1;
	    	else
	    		System.out.println("result is"+s/f);
	       
		
		// TODO Auto-generated method stub
	       }
	}
}
