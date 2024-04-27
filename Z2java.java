import java.util.*;
import java.util.stream.Collectors;

public class Main {
    public static boolean isValid(String s) {
        int count = 1;
        char chislo = s.charAt(0);
        for (int i = 1; i < s.length(); i++) {
            if (s.charAt(i) == chislo) {
                count++;
                if (count > 3) {
                    return false;
                }
            } else {
                count = 1;
                chislo = s.charAt(i);
            }
        }
        return true;
    }

    public static void perevod(String s) {
        int predZnach = 0;
        int summa = 0;
        Map<Character, Integer> romanNumbers = new HashMap<>();
        romanNumbers.put('I', 1);
        romanNumbers.put('V', 5);
        romanNumbers.put('X', 10);
        romanNumbers.put('L', 50);
        romanNumbers.put('C', 100);
        romanNumbers.put('D', 500);
        romanNumbers.put('M', 1000);

        Set<Character> usedNumbers = new HashSet<>(s.chars().mapToObj(c -> (char) c).collect(Collectors.toList()));
        for (int i = s.length() - 1; i >= 0; i--) {
            int znach = romanNumbers.get(s.charAt(i));
            if (znach < predZnach) {
                summa -= znach;
            } else {
                summa += znach;
            }
            predZnach = znach;
        }
        System.out.println(summa);
        for (char c : usedNumbers) {
            System.out.print(c + " = " + romanNumbers.get(c) + " ");
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String number = scanner.next();
        if (isValid(number)) {
            perevod(number);
        } else {
            System.out.println("the number is entered incorrectly");
        }
    }
}