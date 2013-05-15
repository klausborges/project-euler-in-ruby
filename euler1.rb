#!/usr/bin/env ruby
# Euler 1: Multiples of 3 and 5

# Returns the sum of all multiples of 3 and 5 within range
def sum_multiples_of_3_and_5(range)
  range.select { |n| n % 3 == 0 || n % 5 == 0 }.inject(:+)
end

puts sum_multiples_of_3_and_5((1...1000))
