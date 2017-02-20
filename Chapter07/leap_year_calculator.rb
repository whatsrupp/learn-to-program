puts "This is a calculator to print out all the leap years between two years!"

input_check = false
until input_check
	puts "Please pick a starting year..."
	current_year = gets.chomp.to_i
	puts "...and please pick an end year..."
	end_year = gets.chomp.to_i
	
	if current_year < end_year
		input_check = true

	elsif current_year == end_year
		puts "Needs to be different years"

	else
		puts "Staring year needs to be before the end year!"
	end
end



while current_year <= end_year
  if current_year % 4 == 0 && (current_year % 100 != 0 || current_year % 400 == 0) 
  	puts current_year
  end
 current_year += 1 
end

