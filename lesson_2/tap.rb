(1..10).tap { |x| p x }
(1..10).to_a.tap { |x| p x }
(1..10).select {|x| x.even? }.tap { |x| p x }
(1..10).map {|x| x*x }.tap { |x| p x }

p (1..10)
p (1..10).to_a
p (1..10).select {|x| x.even? }
p (1..10).map {|x| x*x }
