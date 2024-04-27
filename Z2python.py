def is_valid(s):
    count = 1
    chislo = s[0]
    for i in range(1, len(s)):
        if s[i] == chislo:
            count += 1
            if count > 3:
                return False
        else:
            count = 1
            chislo = s[i]
    return True

def perevod(s):
    pred_znach = 0
    summa = 0
    roman_numbers = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
    used_numbers = set(s)
    for i in range(len(s) - 1, -1, -1):
        znach = roman_numbers[s[i]]
        if znach < pred_znach:
            summa -= znach
        else:
            summa += znach
        pred_znach = znach
    print(summa)
    for c in used_numbers:
        print(c + ' = ' + str(roman_numbers[c]), end=' ')


number = input().strip()
if is_valid(number):
    perevod(number)
else:
    print("the number is entered incorrectly")