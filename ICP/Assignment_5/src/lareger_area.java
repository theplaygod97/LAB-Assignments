import java.util.Scanner;
public class lareger_area {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int a_1=12*34;
		int a_2=22*34;
		int a_3=32*34;
		String l=(a_1>a_2)?(a_1>a_3)?"a_1":"a_3":(a_2>a_3)?"a_2":"a_3";
		System.out.println("larger box which has larger area is "+l);
		
		
		
		// TODO Auto-generated method stub

	}

}
