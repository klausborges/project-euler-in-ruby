#!/usr/bin/env ruby
# Euler 52: Permuted multiples

# Integer class extension
class Integer
  # Returns an array with an integer's digits
  def digits
    self.to_s.chars.map(&:to_i)
  end
end

# Returns the smallest integer with the property of having the same digits when
# multiplied by any n in range
def permuted_multiples(range)
  (1..Float::INFINITY).lazy.each do |n|
    return n if range.map { |x| n*x }.all? do |x|
      x.digits.sort == n.digits.sort
    end
  end
end

puts permuted_multiples((2..6))