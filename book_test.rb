novels ={
  Green_eggs: 5,
  Harry_Potter: 8,
  Way_of_Kings: 6
}
answer = "add", "update", "delete", "list"
#while answer == "add" or answer == "update" or answer == "delete" or answer == "list"
puts "What would you like to do? Options: (add)(update)(delete)(list) or you can (exit)"
answer = gets.chomp
  case answer
    when "add"
      puts "What book would you like to add?"
      book = gets.chomp
        if novels[book.to_sym].nil?
          puts "What rating from one to ten would you give this book?"
          rating = gets.chomp
          novels[book.to_sym] = rating.to_i
          puts "#{book} as been added to your hash with rating #{rating}"
        else
          puts "This book already exist"
        end

    when "update"
      puts "What book's rating would  you like to change?"
      book = gets.chomp
      if novels[book.to_sym].nil?
        puts "Book's not found!"
      else
        puts "What new rating would you give it?"
        rating = gets.chomp
        novels[book.to_sym] = rating.to_i
        puts "Your rating for #{book} has been updated to #{rating}!"
      end

    when "delete"
      puts "What book would you like remove?"
      book = gets.chomp.to_sym
      if novels[book.to_sym].nil?
        puts "Book not found!"
      else
        novels.delete(book)
      end

    when "list"
      novels.each {|key,value| puts "#{key}: #{value}"}

    else
      puts "Error! You've broken something!"
  end




      #begin when "exit"
        #puts "Sounds good for me!"
      #end
    #end

#puts "Here's what's in your hash now: #{novels} "
