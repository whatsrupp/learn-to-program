#Deaf Gran 

puts "You pull up to the old person's home in your sky blue honda accord.
As you try to shut the door the AA road map falls out of the side pocket and hits the wet concrete beside you.
Sighing, you wipe it off and sling it into the messy side seat and lock up. 
You haven't seen Gran for a while, not for any reason other than that it's easy to forget to do it.
What makes it especially hard is that she never seems to be able to hear you.
You walk up to her open ground floor window she notices you and turns in her swivel chair to face you,
she looks at you a bit vacantly so you speak up:"

continue_loop = true
bye_count = 0

while continue_loop do 

	input = gets.chomp
	shouted_input = input.upcase

	if input == "BYE"
	  bye_count += 1

	  if bye_count >= 3
	  	continue_loop = false
	  	puts "Gran looks a bit sad that you want to go, maybe try and be more assertive!"
	  end

	elsif input == shouted_input
	  year = rand(101) +1900

	  puts "No not since #{year}!"
		
	else
	  puts "Gran looks a bit irritated,"
	  puts "HUH?! SPEAK UP, SONNY!"
	  puts "She continues to stare at you in a confused manner:"
	end
end