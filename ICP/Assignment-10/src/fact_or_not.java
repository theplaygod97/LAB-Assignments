import java.util.Scanner;


public class fact_or_not {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=1,fact=1,n;
		System.out.println("Enter number");
		n=sc.nextInt();
		while (i<=n)
		{
			i=i+1;
		fact=fact*i;
			if (fact==n)
			{
				break;
			}
		}
		if (fact==n)
		{
	System.out.println(n+" is factorial of "+i);
		}


	else
	{
	System.out.println(n +" is not the factorial of any number.");
}
		// TODO Auto-generated method stub

	}

}
