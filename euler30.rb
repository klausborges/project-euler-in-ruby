#!/usr/bin/env ruby
# Problem 30: Digit fifth powers

# Integer class extension
class Integer
  # Returns an array with the number's digits
  def digits
    self.to_s.chars.map(&:to_i)
  end
end

# Returns the sum of all numbers in (10..354294) which are equal to the sum of
# the fifth power of their digits
def digit_fifth_powers
  (10..354294).select { |n|
    n == n.digits.map { |x| x**5 }.reduce(:+)
  }.reduce(:+)
end

puts digit_fifth_powers