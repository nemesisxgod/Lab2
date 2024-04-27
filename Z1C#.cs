using System;

class Program
{
    static void Vivod(string s)
    {
        int index = 0;

        for (int i = 0; i < s.Length; i++)
        {
            if (s[i] == '1')
            {
                index = i;
                i++;
                while (i < s.Length && s[i] == '0')
                {
                    i++;
                }
                if (s[i] == '1' && i - index > 1)
                {
                    Console.WriteLine(s.Substring(index, i - index + 1));
                }
                i--;
            }
        }
    }

    static void Main()
    {
        string stroka = "101sfsddf100001";
        Vivod(stroka);
    }
}