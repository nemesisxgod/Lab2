def reverse(numb):
    reversed_num = 0
    while numb:
        reversed_num = reversed_num * 10 + numb % 10
        numb //= 10
    print(reversed_num)

n = int(input())
for i in range(n):
    chislo = int(input())
    reverse(chislo)