#!/usr/bin/env ruby
# Euler 401: Sum of squares of divisors

require 'prime'

class Integer
  def sigma
    (1..self).select { |n| self % n == 0 }.map { |n| n ** 2 }.reduce(:+)
  end

  def sigma2
    (1..self).map { |n| n.sigma }.reduce(:+)
  end
end

start = Time.now
puts (10**15).sigma2 % 10**9
puts Time.now - start