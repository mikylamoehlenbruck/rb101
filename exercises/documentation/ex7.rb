=begin
modify:

s = 'abc'
puts s.public_methods.inspect

so it only prints methods defined by String class
=end

s = 'abc'
puts s.public_methods(false).inspect

=begin
public_methods(all=true)
Returns the list of public methods accessible to obj. If the all parameter is set to false,
only those methods in the receiver will be listed.
=end
