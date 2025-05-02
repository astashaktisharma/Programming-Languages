import java.util.Scanner;

public class GreetingProgram {
        public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        //Ask for the user name
        System.out.print("Please enter your name: ");
        String name = input.nextLine();

        // Greet the user
        System.out.println("Hello " + name + "!");

        input.close();
    }
}
