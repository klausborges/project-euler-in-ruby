#!/usr/bin/env ruby
# Euler 37: Truncatable primes

require 'prime'

# Class extension
class Integer
  # Returns an array with n truncated from the left
  def truncate_left
    (0...self.to_s.size).each.map { |n| self % 10**(self.to_s.size - n) }
  end

  # Returns an array with n truncated from the right
  def truncate_right
    (1..self.to_s.size).each.map { |n| self / 10**(self.to_s.size - n) }
  end

  # Returns true if all truncated versions of an integer are prime
  def truncatable_primes?
    (self.truncate_right + self.truncate_left).all? { |n| n.prime? }
  end

  # Returns true if a number is a candidate for truncatable prime, checking
  # if the right digit is (2, 3, 5, 7), the left (3, 7) and the middle digits
  # are odd
  def candidate?
    self > 11 && [3, 7].include?(self%10) &&
    [2, 3, 5, 7].include?(self/10**(self.to_s.size-1)) &&
    self.to_s[1..-2].chars.map(&:to_i).all? { |n| n.odd? }
  end
end

# Returns the sum of all eleven truncatable primes
def sum_truncatable_primes
  Prime.each_with_object([]) do |n, a|
    next unless n.candidate?
    a << n if n.truncatable_primes?
    break a.reduce(:+) if a.size == 11
  end
end

puts sum_truncatable_primes