#!/usr/bin/env ruby
# Euler 001: Multiples of 3 and 5
# Complete!

def sum_multiples_of_3_and_5(range)
  s = 0
  range.map { |n| s += n if n % 3 == 0 || n % 5 == 0 }

  return s
end

puts sum_multiples_of_3_and_5((1...1000))