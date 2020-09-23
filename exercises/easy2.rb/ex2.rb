SQRMETERS_TO_SQRFEET = 10.7639
SQRFEET_TO_SQRINCHES = 12**2
SQRINCHES_TO_SQRCM = 100**2

def get_length_meters
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f
end

def get_width_meters
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f
end

def gets_length_feet
  puts "Enter the length of the room in feet:"
  length = gets.chomp.to_f
end

def gets_width_feet
  puts "Enter the width of the room in feet:"
  width = gets.chomp.to_f
end

length_meters = get_length_meters
width_meters = get_width_meters

sqr_meters = (length_meters * width_meters).round(2)
sqr_feet = (sqr_meters * SQRMETERS_TO_SQRFEET).round(2)

puts "The area of the room is #{sqr_meters} square meters (#{sqr_feet} square feet)"

length_feet = gets_length_feet
width_feet = gets_width_feet

sqr_feet = (length_feet * width_feet).round(2)
sqr_inches = (sqr_feet * SQRFEET_TO_SQRINCHES).round(2)
sqr_cm = (sqr_inches * SQRINCHES_TO_SQRCM).round(2)

puts "The area of the room is #{sqr_feet} square feet, #{sqr_inches} square inches and #{sqr_cm} square centimeters"
