#old_roman_numerals.rb

def numeral_extract number

	numerals = [1000, 500, 100, 50, 10, 5, 1]
	numeral_text = ["M","D","C", "L", "X", "V", "I"]
	numeral_count = []
	numeral_string=""

	numerals.each do |numeral|
		if number % numeral  == 0
			numeral_count.push (number / numeral)
			break
		else 
			numeral_count.push (number/ numeral)
			number = number % numeral
		end

	end

i = 0
while i < numeral_count.length

	numeral_string += (numeral_text[i] * numeral_count[i]).to_s
	i += 1
end
#return numeral_count
puts numeral_string
end


"Insert a numebr to convert into old style roman numerals:"

input = gets.chomp.to_i

numeral_extract input
#I = 1 V = 5 X = 10 L = 50
#C = 100 D = 500 M = 1000