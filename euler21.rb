#!/usr/bin/env ruby
# Euler 21: Amicable numbers
# Clean up

require 'prime'

# Class extension
class Integer
  # Returns the sum of the divisors of an integer
  def sum_divisors
    (2..Math.sqrt(self)).select { |n| self%n == 0 }.reduce(1) do |sum, n|
      sum += n + self/n
    end
  end

  # Returns true if a number is amicable
  def amicable?
    a, b = self, self.sum_divisors
    a != b && b.sum_divisors == a
  end
end

# Returns the sum of all amicable numbers in range
def sum_amicable_numbers(range)
  array = []
  range.each do |a|
    next if array.include?(a)
    array += [a, a.sum_divisors] if a.amicable?
  end
  array.reduce(:+)
end

p sum_amicable_numbers((2..10_000))