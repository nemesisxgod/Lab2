def reverse(numb)
    reversed = 0
    while numb != 0
        reversed = reversed * 10 + numb % 10
        numb /= 10
    end
    puts reversed
end

n = gets.chomp.to_i
n.times do
    chislo = gets.chomp.to_i
    reverse(chislo)
end