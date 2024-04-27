def vivod(s):
    index = 0

    i = 0
    for i in range(0, len(s)):
        if s[i] == '1':
            index = i
            i += 1
            while i < len(s) and s[i] == '0':
                i += 1
            if i < len(s) and s[i] == '1' and i - index > 1:
                print(s[index:i+1])
            i -= 1

stroka = "101sdfd100001"
vivod(stroka)