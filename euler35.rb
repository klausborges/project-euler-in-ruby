#!/usr/bin/env ruby
# Euler 235: Distinct powers

require 'prime'

# Integer class extension
class Integer
  # Returns an array of integers with all possible rotations
  def rotations
    n, a = self.to_s.size-1, [self]
    n.times { a << (a.last % 10**n)*10 + a.last/10**n }
    a
  end

  # Returns true if all rotations of a number are prime, false otherwise
  def prime_rotations?
    # Checks if there are any digits that aren't prime
    a = self.to_s.chars.map(&:to_i)
    return false if self > 9 && !(a & [0, 2, 4, 5, 6, 8]).empty?
    # Otherwise checks for prime rotations
    self.rotations.each { |n| return false if !Prime.prime?(n) }
  end
end

# Returns the number of all circular primes up to upper_bound
def circular_primes(upper_bound)
  Prime.each(upper_bound).select { |n| n.prime_rotations? }.size
end

puts circular_primes(1_000_000)