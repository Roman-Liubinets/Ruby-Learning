puts "Який документ ви коче загрузити?"
document = gets.chomp

puts "Яке слово ви кочете видалити?"
delete_word = gets.chomp

puts "Яким словом ви хочете його замынити?"
 new_word = gets.chomp


target_document = document.split(" ")

target_document.each do |a_word|
  if a_word != delete_word
    print a_word + (" ")
  else
    print new_word + (" ")
  end
end
