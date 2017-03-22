puts "Write a string:"
text = gets.chomp
text.downcase!
words = text.split

frequencies = Hash.new(0)
words.each do |item|
  frequencies[item]+=1
end

frequencies = frequencies.sort_by { |item, amount| amount  }
frequencies.reverse!
frequencies.each do |item, amount|
  puts item + " " + amount.to_s
end
