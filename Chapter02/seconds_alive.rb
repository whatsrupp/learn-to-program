
#HOW LONG HAVE YOU BEEN ALIVE?

#Excersise to find out the amount of seconds since birth accounting for leap years
#Users Date of Birth Information
puts "What is your day of Birth?"
day_of_birth = Integer(gets.chomp)

puts "What is your month of Birth?"

month_of_birth = Integer(gets.chomp)	
print month_of_birth
puts "What is your year of Birth?"

year_of_birth = Integer(gets.chomp)

#year_of_birth = 1995
#month_of_birth = 8
#day_of_birth = 3

#Days in Month arrays
days_in_months_standard = [31,28,31,30,31,30,31,31,30,31,30,31]
days_in_months_leap = [31,29,31,30,31,30,31,31,30,31,30,31]

#If Statement to Find out amount of days in birth year
days_in_birth_year = 0 # to be able to start the loop

if year_of_birth % 4 == 0
	for days in 1 .. (month_of_birth-1)	
	days_in_birth_year += days_in_months_leap[days]
	end 
else
	for days in 1 .. (month_of_birth-1)	
	days_in_birth_year += days_in_months_standard[days]
	end
end 

days_in_birth_year += day_of_birth # add on the day of birth to the end of the calculation

#Find out the number of days in the current 4 year period that the birthdate is on
if year_of_birth % 4 == 0 
	birth_year_day_four_year = days_in_birth_year
else
	birth_year_day_four_year = (year_of_birth % 4 - 1) * 365 + 366 + days_in_birth_year
end

#Find out the number of days in the current 4 year period that today is on.
#NB this would be better done with a function but not 100% sure how to do that yet.
time=Time.new
current_day_of_year = time.yday
current_year = time.year
current_day_four_year = time.year % 4 
if current_year % 4 == 0
	current_day_four_year = current_day_of_year
else
	current_day_four_year = ((current_year % 4) -1) * 365 + 366 + current_day_of_year
end

#Finds the amount of blocks of 4 year cycles between the two years
year_blocks = current_year/4 - (year_of_birth/4 + 1 )
days_in_four_years = 366 + 3*365
days_alive = year_blocks * days_in_four_years + (days_in_four_years - birth_year_day_four_year) + current_day_four_year 
seconds_in_current_day = (time.hour * 60 * 60) + (time.min * 60) + time.sec 
seconds_alive = (days_alive * 24 * 60 * 60) + seconds_in_current_day

puts seconds_alive

	

