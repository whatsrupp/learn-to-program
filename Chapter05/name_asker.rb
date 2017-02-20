puts "Hello, what is your name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets. chomp

full_name = "#{first_name} #{middle_name} #{last_name}"

number_letters_in_name = first_name.length + middle_name.length + last_name.length

puts "Eyup, glad to meet you #{full_name}!"
puts "Did you know there are #{number_letters_in_name} letters in your full name?"

puts "Now, what is your favourite number #{first_name}?"
favourite_number = gets.chomp.to_i

suggested_new_number = favourite_number + 1
puts "Hmm I don't like #{favourite_number}, how about #{suggested_new_number}? It's bigger and better."



	
