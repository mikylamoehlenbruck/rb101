name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# both variables will print BOB
# upcase! is a mutating method
# since save_name and name both point to the same String object,
# the #ucpase! method will mutate the String object,
# resulting in both variables now point to BOB
