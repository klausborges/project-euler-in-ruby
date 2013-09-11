#!/usr/bin/env ruby
# Euler 55: Lychrel numbers

# Integer class extension
class Integer
  # Returns the reversed number
  def reverse
    self.to_s.reverse.to_i
  end

  # Returns true if the number is a palindrome
  def palindrome?
    self == self.reverse
  end

  # Returns true if the number is a Lychrel number
  MAX_ITER = 50
  def lychrel?
    n = self
    MAX_ITER.times do
      n = n + n.reverse
      return false if n.palindrome?
    end
    true
  end
end

# Returns the number of Lychrel numbers in range
def lychrel_numbers(range)
  range.select{ |n| n if n.lychrel? }.size
end

puts lychrel_numbers((1..10_000))