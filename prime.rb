puts "To get started, what is your starting number"
start_num = gets.to_i
puts "Exellent, and what is your ending number?"
end_num = gets.to_i

while start_num <= end_num
  prime_flag = true
  x = 2

  while (x <= start_num/2)
    if (start_num % x == 0)
      prime_flag = false
      break
    end
    x +=1
  end

  if prime_flag
    puts "A prime number> " + start_num.to_s
  end
  start_num +=1
end
