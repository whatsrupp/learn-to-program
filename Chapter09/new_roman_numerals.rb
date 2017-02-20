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
return numeral_string
end

puts "Select a number between 0-3000 to convert to a roman numeral"
input = gets.chomp.to_i

old_style_numerals = numeral_extract input
puts old_style_numerals


modernise = {
	"VIIII" => "IX",
	"IIII" => "IV",
	"LXXXX" => "XC",
	"XXXX" => "XL",
	"DCCCC" => "CM",
	"CCCC" => "CD",
	}

modernise.each do |old_numeral, new_numeral|
old_style_numerals.gsub!(old_numeral, new_numeral)
end
puts  old_style_numerals