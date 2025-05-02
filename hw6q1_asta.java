//diamond with asteriks
import java.util.Scanner;

public class hw6q1_asta {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the side length of the diamond: ");
        int n = input.nextInt();

        // Top half
        for (int i = 1; i <= n; i++) {
            System.out.print(" ".repeat(n - i));
            System.out.println("*".repeat(2 * i - 1));
        }

        // Bottom half
        for (int i = n - 1; i >= 1; i--) {
            System.out.print(" ".repeat(n - i));
            System.out.println("*".repeat(2 * i - 1));
        }

        input.close();
    }
}