import java.util.*;

public class bmi_1 {
    public static void main(String[] args){

    	Scanner sc=new Scanner(System.in);

        System.out.print("Enter your weight in kg: ");
        double weight = sc.nextDouble();

        System.out.print("Enter your height in meter: ");
        double height = sc.nextDouble();

        double bmi = ((weight)/(height * height));

        System.out.printf("Your BMI is "+bmi);

        if (bmi<18.5)
			System.out.println(" - underweight");
		else if(bmi>=18.5 && bmi<24.9)
			System.out.println(" - Normal weight");
		else if(bmi>=25 && bmi<29.9)
			System.out.println(" - overweight");
		else if(bmi>=30)
			System.out.println(" - obese");
		}
    
               // TODO Auto-generated method stub

	}

