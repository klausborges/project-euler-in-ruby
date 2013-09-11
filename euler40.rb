#!/usr/bin/env ruby
# Euler 40: Champernowne's constant

# Returns the product of the nth digits of the fractional part of the number
# created by concatenating positive integers in range
def champernowne_constant(range)
  fraction, n = '', 1
  while fraction.size < range.last
    fraction << n.to_s
    n += 1
  end
  [1, 10, 100, 1000, 10_000, 100_000, 1_000_000].map { |i|
    fraction[i-1].to_i
  }.inject(:*)
end

puts champernowne_constant((1..1_000_000))