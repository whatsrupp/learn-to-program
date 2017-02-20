puts "Insert the words you need sorted one by one using enter. Use Enter on a blank line to sort."

continue_loop = true
unsorted_array = []
while continue_loop
  user_input = gets.chomp

  if user_input == ""
  	continue_loop = false
  else
  unsorted_array.push (user_input)
  end
end

#Array Sort takes in an unsorted array and alphabetically sorts it regardless of capitalisations.
#It operates on two arrays in parallel
def array_sort unsorted_array
	
	unsorted_array = unsorted_array[0]
	unsorted_array_downcase = []

	unsorted_array.each do |word|
		unsorted_array_downcase.push word.downcase
	end

	current_smallest = unsorted_array_downcase [0]

	i=0
	j=0

	while i < unsorted_array.length do
		if unsorted_array_downcase[i] < current_smallest
			current_smallest = unsorted_array_downcase[i]
			j=i
		end

		i+=1
	end

	current_smallest = unsorted_array [j]
	unsorted_array.slice!(j)
	unsorted_array_downcase.slice!(j)

	return [current_smallest, unsorted_array]
end

#ruby_sorted = unsorted_array.sort
#puts "Ruby Sorted Array is #{ruby_sorted}" 

sorted_array = []

for i in 0 .. unsorted_array.length-1 do
	result = array_sort [unsorted_array]
	# result in form [word to append, new shorter unordered array]
	unsorted_array = result [1]
	sorted_array.push result[0]
	
end

puts "Manual sorted array is: #{sorted_array}"
