#coding: utf-8
year1 = ''
year2 = ''
puts 'Введите начальный и конечный год:'
year1 = gets.chomp.to_i
year2 = gets.chomp.to_i

puts 'Введенные года с ' + year1.to_s + ' по ' + year2.to_s +
while year1 != year2 + 1
    if year1.to_i % 4 == 0
    puts year1.to_s + ' год - является високосным'
    else
    puts year1.to_s + ' год - НЕ является високосным'
    end
    year1 = year1.to_i
    year1 = year1 + 1
    end
