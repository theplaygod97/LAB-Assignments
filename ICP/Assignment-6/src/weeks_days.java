import java.util.Scanner;


public class weeks_days {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter num");
	    int num=sc.nextInt();
	    switch(num)
	    {
	    case 1:
	    	System.out.println("sunday");
			break;
	    case 2:
	    	System.out.println("monday");
			break;
	    case 3:
	    	System.out.println("tuesday");
			break;
	    case 4:
	    	System.out.println("wednesday");
			break;
	    case 5:
	    	System.out.println("thrusday");
			break;
	    case 6:
	    	System.out.println("friday");
			break;
	    case 7:
	    	System.out.println("saturaday");
			break;
	   default:
	    	System.out.println("not valid no");
			break;
	    }
		 
		// TODO Auto-generated method stub

	}

}
