#!/usr/bin/env ruby
# Euler 36: Double-base palindromes

# Class extension
class String
  # Returns true if a string is a palindrome
  def palindrome?
    self == self.reverse
  end
end

# Returns the sum of all double base (bases 2 and 10) palindromic numbers
def sum_double_base_palindromes(range)
  range.select { |n| n.odd? && n.to_s.palindrome? && n.to_s(2).palindrome? }
    .reduce(:+)
end

puts sum_double_base_palindromes((1...1_000_000))
