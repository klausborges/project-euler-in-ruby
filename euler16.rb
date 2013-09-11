#!/usr/bin/env ruby
# Euler 16: Power digit sum

# Returns the sum of the digits of the number n
def digit_sum(n)
  n.to_s.chars.map(&:to_i).inject(:+)
end

puts digit_sum(2**1000)