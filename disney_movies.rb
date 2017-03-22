def sortedlist(array, reverse=false)
  if
    reverse == false
    array.sort { |a,b| a<=>b}
  else
    array.sort { |a,b| b <=> a}
  end
end

disney_movies = ["Lion King","Little Mermaide", "Lady and the Tramp", "Fiding Nemo", "Toy Story  "]

puts "in reverse method: #{sortedlist(disney_movies, true)}"
