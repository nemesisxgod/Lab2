using System;
using System.Collections.Generic;

class Program
{
    static bool IsValid(string s)
    {
        int count = 1;
        char chislo = s[0];
        for (int i = 1; i < s.Length; i++)
        {
            if (s[i] == chislo)
            {
                count++;
                if (count > 3)
                {
                    return false;
                }
            }
            else
            {
                count = 1;
                chislo = s[i];
            }
        }
        return true;
    }

    static void Perevod(string s)
    {
        int predZnach = 0;
        int summa = 0;
        Dictionary<char, int> romanNumbers = new Dictionary<char, int>
        {
            {'I', 1}, {'V', 5}, {'X', 10}, {'L', 50}, {'C', 100}, {'D', 500}, {'M', 1000}
        };
        HashSet<char> usedNumbers = new HashSet<char>(s);
        for (int i = s.Length - 1; i >= 0; i--)
        {
            int znach = romanNumbers[s[i]];
            if (znach < predZnach)
            {
                summa -= znach;
            }
            else
            {
                summa += znach;
            }
            predZnach = znach;
        }
        Console.WriteLine(summa);
        foreach (var c in usedNumbers)
        {
            Console.Write($"{c} = {romanNumbers[c]} ");
        }
    }

    static void Main()
    {
        string number = Console.ReadLine();
        if (IsValid(number))
        {
            Perevod(number);
        }
        else
        {
            Console.WriteLine("the number is entered incorrectly");
        }
    }
}