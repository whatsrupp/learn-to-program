class OrangeTree
	@@number_of_trees = 0

	#attr_reader @height:, @lifespan:, @age

	def initialize
		@height = 0 #in m
		@lifespan = (20 + rand(11)) # in years
		@age = 0
		@oranges = 0 
		@@number_of_trees += 1
		puts "An orange tree seed begins to take root"

	end

	public
		
	def pick_orange
		if @oranges>0 
			puts "You pick and orange from the tree"
			@oranges -= 1
			puts "There are now #{@oranges} left"
		else
			puts "There are no more oranges on the tree"
		end
	end

	def wait_a_year
		one_year_passes

	end

	def stats
		puts "Your tree:
		Is #{@height}m
		Is #{@age} years old
		Has #{@oranges} oranges
		"
	end

	private
	def one_year_passes
		@oranges = 0 #oranges drop from the tree 
		@age += 1
		
		if @age > @lifespan
			tree_dies
		else
			puts "It's #{@age} years since this your tree was planted!"
		end

		if @age > 5 && @age <15
			@oranges += 30 + rand(21)
		elsif @age >= 15
			@oranges += 40 + rand(41)
		end

		if @height < 6
			@height += 0.5 + rand
		end

	end

	def tree_dies
		@@number_of_trees -= 1
		puts "The orange tree withers and dies"
		exit


	end

end

my_tree = OrangeTree.new
#
puts "Press enter to wait a year"
while true
puts "Enter: wait a year.    's' to see stats.    'e' to eat an orange."
	input = gets.chomp
	case input
	when "" then my_tree.wait_a_year
	when "s" then my_tree.stats
	when "e" then my_tree.pick_orange
	else 
		puts "not a valid input"
	end
end

