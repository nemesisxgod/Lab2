def vivod(s)
    index = 0

    i = 0
    while i < s.length
        if s[i] == '1'
            index = i
            i += 1
            while i < s.length && s[i] == '0'
                i += 1
            end
            if s[i] == '1' && i - index > 1
                puts s[index..i]
            end
            i -= 1
        end
        i += 1
    end
end

stroka = "101sdfsd100001"
vivod(stroka)