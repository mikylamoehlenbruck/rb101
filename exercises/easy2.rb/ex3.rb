puts "Please enter the bill amount:"
bill_amount = gets.chomp.to_f

puts "What percentage would you like to tip?"
tip_percent = gets.chomp.to_f

tip_amount = (bill_amount * tip_percent) / 100
total = bill_amount + tip_amount

puts "The tip is $#{'%.2f' % tip_amount}"
puts "The total is $#{'%.2f' % total}"
