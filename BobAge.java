import java.util.Scanner;

public class BobAge {
        public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        //Ask for the user name
        System.out.print("Please enter your name: ");
        String name = input.nextLine();

        // Greet the user
        System.out.println("Hello " + name + "!");

        //Ask for the user age
        System.out.print("How old are you? ");
        int age = input.nextInt();

        //Calculate age in 10 years
        int FutureAge = age + 10;
        System.out.println("In ten years " + name + " will be " + FutureAge + " years old.");

        input.close();
    }
}
