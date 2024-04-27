def is_valid(s)
  count = 1
  chislo = s[0]
  (1...s.length).each do |i|
    if s[i] == chislo
      count += 1
      return false if count > 3
    else
      count = 1
      chislo = s[i]
    end
  end
end

def perevod(s)
  pred_znach = 0
  summa = 0
  roman_numbers = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
  used_numbers = s.chars.to_a.uniq
  (s.length - 1).downto(0) do |i|
    znach = roman_numbers[s[i]]
    if znach < pred_znach
      summa -= znach
    else
      summa += znach
    end
    pred_znach = znach
  end
  puts summa
  used_numbers.each { |c| puts "#{c} = #{roman_numbers[c]} " }
end

number = gets.chomp
if is_valid(number)
  perevod(number)
else
  puts "the number is entered incorrectly"
end