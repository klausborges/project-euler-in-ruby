#!/usr/bin/env ruby
# Euler 38: Pandigital multiples

# Integer class extension
class Integer
  # Returns true if a number is pandigital
  def pandigital?
    self.to_s.chars.map(&:to_i).sort == (1..9).to_a
  end
end

# Returns the largest pandigital 9-digit number formed as the concatenated
# product of an integer with [1, 2, ..., n]
# Mathematically optimized to perform the task
def largest_pandigital
  (9234..9500).map { |n| n*10**5 + n*2 }.select{ |n| n.pandigital? }.max
end

puts largest_pandigital

# Brute force solution

# Returns the concatenated product of n and range
# e.g. 9 * (1..3) = 9 * [1, 2, 3] = 91827
# def concatenated_product(n, range)
#   range.map { |i| (i*n).to_s }.join.to_i
# end

# Returns the largest pandigital 9-digit number obtained by the concatenated
# products of an integer and [1, 2, ..., n]
# def largest_pandigital
#   max = 0
#   (2..8).to_a.reverse.each do |i|
#     p i
#     (1..Float::INFINITY).lazy.each do |n|
#       num = c# oncatenated_product(n, (1..i))
#       max = num if num.pandigital? && num > max
#       break if num.to_s.length > 9
#     end
#   end
#
#  max
# end