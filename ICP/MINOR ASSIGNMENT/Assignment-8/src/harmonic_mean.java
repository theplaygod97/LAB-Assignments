import java.util.Scanner;
public class harmonic_mean {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n,i,num;
		float sum=0,HM;
		System.out.print("Enter the total numbers: ");
		n=sc.nextInt();
		for (i=0;i<n;i++)
		{
			System.out.print("\nEnter the no. ");
			num=sc.nextInt();
			sum=sum+(1/num);
		}
		HM=n/sum;
		System.out.print("The Harmonic Mean is:"+HM);
	}


		// TODO Auto-generated method stub
		}
	


	


