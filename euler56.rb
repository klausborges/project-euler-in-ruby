#!/usr/bin/env ruby
# Euler 56: Powerful digit sum

# Integer class extension
class Integer
  # Returns the sum of all digits in an integer
  def sum_digits
    self.to_s.chars.map(&:to_i).inject(:+)
  end
end

# Returns the biggest sum of digits in the numbers a**b, with a, b  in range
def powerful_sum(range)
  max = 0
  range.each do |a|
    range.each do |b|
      max = (a**b).sum_digits if (a**b).sum_digits > max
    end
  end

  max
end

puts powerful_sum((1...200))