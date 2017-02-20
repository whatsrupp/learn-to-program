current_time = Time.new
time_at_birth = Time.new(1995, 3, 8, 8, 31)

puts current_time
puts time_at_birth
seconds_alive = current_time - time_at_birth

puts seconds_alive.floor
billion_seconds = time_at_birth + 1000000000
puts billion_seconds