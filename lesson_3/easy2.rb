=begin
# question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.has_key?("Spot")
p ages.include?("Spot")
p ages.key?("Spot")
p ages.member?("Spot")

# question 2

munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.swapcase!
puts munsters_description.capitalize!
puts munsters_description.downcase!
puts munsters_description.upcase!

# question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
p ages

# question 4
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.include?("Dino")
# answer = advice.match?("Dino")

# question 5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

# question 6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
p flintstones

# question 7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino", "Hoppy")
p flintstones

# question 8

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0..44)
p advice

# bonus: if you just use String#slice, the sliced string would still return, but advice would not be altered
# answer = advice.slice!(0, advice.index('house'))

# question 9

statement = "The Flintstones Rock!"
p statement.count('t')

# question 10

title = "Flintstone Family Members"
puts title.center(40)
=end
