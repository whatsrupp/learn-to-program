#sort_array.rb

def shuffle_array (unshuffled_array)
shuffled_array =[]
puts "This is the original array: #{unshuffled_array}"

unshuffled_array.length.times do 
	index_range = unshuffled_array.length 
	random_index = rand (index_range)
	shuffled_array << unshuffled_array[random_index]
	unshuffled_array.delete_at(random_index)
end

puts "This is the shuffled array: #{shuffled_array}"


end
	
shuffle_array([1,2,3,4,5,5,6,7,8])