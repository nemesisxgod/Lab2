import java.util.Scanner;

public class Main {
    public static void vivod(String s) {
        int index = 0;

        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == '1') {
                index = i;
                i++;
                while (i < s.length() && s.charAt(i) == '0') {
                    i++;
                }
                if (i < s.length() && s.charAt(i) == '1' && i - index > 1) {
                    System.out.println(s.substring(index, i + 1));
                }
                i--;
            }
        }
    }

    public static void main(String[] args) {
        String stroka = "101sdfsd100001";
        vivod(stroka);
    }
}