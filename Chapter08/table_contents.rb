line_width = 60


page_numbers = [1,4,7]
chapter_headings = ["Getting Started", "Numbers","Letters"]
i=0
chapter_headings.length.times do
	  puts "Chapter #{i+1}: #{chapter_headings[i]}".ljust(line_width/2) + "Page #{page_numbers[i]}".rjust(line_width/2)
	  i+=1
end
