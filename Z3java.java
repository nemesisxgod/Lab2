import java.util.Scanner;

public class Main {
    public static void reverse(int numb) {
        int reversed = 0;
        while (numb != 0) {
            reversed = reversed * 10 + numb % 10;
            numb /= 10;
        }
        System.out.println(reversed);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++) {
            int chislo = scanner.nextInt();
            reverse(chislo);
        }
    }
}
