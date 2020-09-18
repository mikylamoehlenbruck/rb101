=begin
understand the problem
- write a method that takes an array
- method counts number of occurances in array
- words in array are case sensitive
- print each element with how many times it occurs

input/output
- input
  - array of strings
- output
  - string and integer
- rules
  - array is case-sensitive

test cases
count_occurances(['hello', 'goodbye', 'hello'])
hello => 2
goodbye => 1

algorithm
- define a method that accepts 1 argument
- group the elements into a hash, then count the values
- iterate through the array and
  count the number of occurances for each element
- print the word and number of occurances
=end

def count_occurances(array)
  hashed_array = array.group_by do |word|
    word
  end

  hashed_array.map do |k, v|
    puts "#{k} => #{v.count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurances(vehicles)
