using System;

class Program
{
    static void Reverse(int numb)
    {
        int reversed = 0;
        while (numb != 0)
        {
            reversed = reversed * 10 + numb % 10;
            numb /= 10;
        }
        Console.WriteLine(reversed);
    }

    static void Main()
    {
        int n = int.Parse(Console.ReadLine());
        for (int i = 0; i < n; i++)
        {
            int chislo = int.Parse(Console.ReadLine());
            Reverse(chislo);
        }
    }
}